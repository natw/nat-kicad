#!/usr/bin/env python3

import argparse
import itertools
import os.path
import glob
import sys


def main():
    args = do_args_stuff()

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

    print(format_lib_file(target_list, root, lib_type))


def format_lib_file(targets, root, lib_type):
    def format_lib_line(target):
        abspath = os.path.abspath(target)
        name = os.path.splitext(os.path.basename(target))[0]
        return f'  (lib (name "{name}")(type "{lib_type}")(uri "{abspath}")(options "")(descr ""))'

    return "\n".join(
        itertools.chain([f"({root}"], map(format_lib_line, targets), [")"])
    )


def find_footprints():
    return glob.glob("**/*.pretty", recursive=True)


def find_symbols():
    return glob.glob("**/*.lib", recursive=True)


def do_args_stuff():
    parser = argparse.ArgumentParser()
    parser.add_argument("kind")
    return parser.parse_args()


if __name__ == "__main__":
    main()
