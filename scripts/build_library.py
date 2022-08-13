#!/usr/bin/env python3

import argparse
import glob
import os.path
import re
import sys
from collections import defaultdict
from dataclasses import dataclass
from typing import Generator, List

FOOTPRINT_BLACKLIST = [
    "4ms-footprints",
    "-legacy",
    "obsolete",
    "Example",
    "src/",
    "spice/",
    "projects/",
]
SYMBOL_BLACKLIST = ["obsolete", "Example", "src/", "spice/", "projects/", "-legacy"]


def main():
    args = do_args_stuff()

    if args.kind == "footprint":
        target_list = find_footprints()
        root = "fp_lib_table"
    elif args.kind == "symbol":
        target_list = find_symbols()
        root = "sym_lib_table"
    else:
        print("wut")
        sys.exit(1)

    existing: List[TableEntry] = list(parse_existing_table(args.table))
    new_ones: List[TableEntry] = repo_entries(target_list)
    libs = merge_tables(existing, new_ones)
    libs = fix_duplicate_names(libs)

    print(f"({root}\n  " + "\n  ".join(te.to_line() for te in libs) + "\n)")


def escape(thing):
    """make strings suitable for sexps"""
    if " " in thing:
        thing = '"' + thing + '"'
    return thing


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
        # if not attrs["options"]:
        #     attrs["options"] = '""'
        # if not attrs["descr"]:
        #     attrs["descr"] = '""'
        # print(attrs)
        return TableEntry(**attrs)

    def to_line(self):
        dis = ""
        if self.disabled:
            dis = "(disabled)"
        return (
            f"(lib "
            f'(name "{self.name}")'
            f'(type "{self._type}")'
            f'(uri "{escape(self.uri)}")'
            f'(options "{self.options}")'
            f'(descr "{self.descr}")'
            f"{dis})"
        )


def merge_tables(existing, from_repos):
    existing_names = [line.name for line in existing]
    ex = list(existing)
    for lib in from_repos:
        if lib.name not in existing_names:
            ex.append(lib)
    return ex


def fix_duplicate_names(libs):
    counts = defaultdict(int)
    for lib in libs:
        name = lib.name
        if counts[name] > 0:
            lib.name = f"{name}-{counts[name]}"
        counts[name] += 1
    return libs


def repo_entries(paths):
    for path in paths:
        uri = "${CONFIG_CHECKOUT}/" + path
        name, ext = os.path.splitext(os.path.basename(path))
        lib_type = "KiCad"
        if ext == ".lib":
            lib_type = "Legacy"
        yield TableEntry(name=name, _type=lib_type, uri=uri, options="", descr="")


def parse_existing_table(path: str) -> Generator[TableEntry, None, None]:
    try:
        with open(path, "r") as table_file:
            for line in table_file.readlines()[1:-1]:
                if not line.strip().startswith("#"):
                    entry = TableEntry.from_line(line)
                    if entry:
                        yield entry
    except FileNotFoundError:
        return


# def reconcile_tables(table: str, targets, root, lib_type):
#     def format_lib_line(target):
#         pth = "${CONFIG_CHECKOUT}/" + target
#         name = os.path.splitext(os.path.basename(target))[0]
#         return (
#             f'  (lib (name "{name}")(type "{lib_type}")(uri "{pth}")(options "")(descr ""))'
#         )

#     return "\n".join(
#         itertools.chain([f"({root}"], map(format_lib_line, targets), [")"])
#     )


def find_footprints():
    def good(path):
        return not any(ble in path for ble in FOOTPRINT_BLACKLIST)

    return filter(good, glob.glob("**/*.pretty", recursive=True))


def find_symbols():
    def good(path):
        return not any(ble in path for ble in SYMBOL_BLACKLIST)

    return filter(
        good,
        glob.glob("**/*.kicad_sym", recursive=True)
        + glob.glob("**/*.lib", recursive=True),
    )


def do_args_stuff():
    parser = argparse.ArgumentParser()
    parser.add_argument("kind")
    # path to existing library table file
    parser.add_argument("table")
    return parser.parse_args()


# just stolen from rosettacode

SEXP_TERM_REGEX = r"""(?mx)
    \s*(?:
        (?P<brackl>\()|
        (?P<brackr>\))|
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
