#!/usr/bin/env python3

import argparse
from dataclasses import dataclass
import itertools
import re
import os.path
import glob
import sys


def main():
    args = do_args_stuff()

    table: List[TableEntry] = parse_existing_table(args.table)

    if args.kind == "footprint":
        target_list = find_footprints()
        lib_type = "KiCad"
        root = "fp_lib_table"
    elif args.kind == "symbol":
        target_list = find_symbols()
        lib_type = "Legacy"
        root = "sym_lib_table"
    else:
        print("wut")
        sys.exit(1)

    print(reconcile_tables(table, target_list, root, lib_type))


def parse_existing_table(path):
    pass


def reconcile_tables(table, targets, root, lib_type):
    def format_lib_line(target):
        pth = "${CONFIG_CHECKOUT}/" + target
        name = os.path.splitext(os.path.basename(target))[0]
        return (
            f'  (lib (name {name})(type {lib_type})(uri {pth})(options "")(descr ""))'
        )

    return "\n".join(
        itertools.chain([f"({root}"], map(format_lib_line, targets), [")"])
    )


def find_footprints():
    def good(path):
        return (
            ("obsolete" not in path)
            and ("Example" not in path)
            and ("src/" not in path)
        )

    return filter(good, glob.glob("**/*.pretty", recursive=True))


def find_symbols():
    def good(path):
        return (
            ("obsolete" not in path)
            and ("Example" not in path)
            and ("src/" not in path)
        )

    return filter(good, glob.glob("**/*.lib", recursive=True))


def do_args_stuff():
    parser = argparse.ArgumentParser()
    parser.add_argument("kind")
    # path to existing library table file
    parser.add_argument("table")
    return parser.parse_args()


@dataclass(order=False)
class TableEntry:
    name: str
    _type: str
    uri: str
    options: str
    descr: str
    disabled: bool = False

    @classmethod
    def from_line(cls, row_string):
        parsed = parse_sexp(row_string)[1:]
        # the disabled flag is just a single token, rather than a k/v pair like
        # all the other fields
        for i, pair in enumerate(parsed):
            if len(pair) == 1:
                parsed[i] = [pair[0], True]
        attrs = dict(parsed)
        attrs["_type"] = attrs["type"]
        del attrs["type"]
        # setting these as defaults on the dataclass just gets them
        # overwritten by the empty string from the parsed sexp
        if not attrs["options"]:
            attrs["options"] = '""'
        if not attrs["descr"]:
            attrs["descr"] = '""'
        print(attrs)
        return TableEntry(**attrs)

    def to_line(self):
        dis = ""
        if self.disabled:
            dis = "(disabled)"
        return (
            f"(lib "
            f"(name {self.name})"
            f"(type {self._type})"
            f"(uri {self.uri})"
            f"(options {self.options})"
            f"(descr {self.descr})"
            f"{dis})"
        )


# just stolen from rosettacode

SEXP_TERM_REGEX = r"""(?mx)
    \s*(?:
        (?P<brackl>\()|
        (?P<brackr>\))|
        (?P<num>\-?\d+\.\d+|\-?\d+)|
        (?P<sq>"[^"]*")|
        (?P<s>[^(^)\s]+)
       )"""


def parse_sexp(sexp):
    stack = []
    out = []
    for termtypes in re.finditer(SEXP_TERM_REGEX, sexp):
        term, value = [(t, v) for t, v in termtypes.groupdict().items() if v][0]
        if term == "brackl":
            stack.append(out)
            out = []
        elif term == "brackr":
            assert stack, "Trouble with nesting of brackets"
            tmpout, out = out, stack.pop(-1)
            out.append(tmpout)
        elif term == "num":
            v = float(value)
            if v.is_integer():
                v = int(v)
            out.append(v)
        elif term == "sq":
            out.append(value[1:-1])
        elif term == "s":
            out.append(value)
        else:
            raise NotImplementedError("Error: %s, %s" % (term, value))
    assert not stack, "Trouble with nesting of brackets"
    return out[0]


if __name__ == "__main__":
    main()
