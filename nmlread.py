"Microapp f90nml module wrapper for reading Fortran namelist"

import sys
import os
import f90nml
import shutil
import json

from typing import Any

from microapp import App


def tostr(text, encoding=None):

    try:
        if encoding is not None:
            text = str(text, encoding)

        elif sys.stdout.encoding:
            text = str(text, sys.stdout.encoding)

        else:
            text = str(text, "utf-8")

    except TypeError:
        pass

    return text


class NamelistReader(App):

    _name_ = "nmlread"
    _version_ = "0.1.1"
    _description_ = "Microapp Fortran namelist reader"
    _long_description_ = "Microapp Fortran namelist reader"
    _author_ = "Youngsung Kim"
    _author_email_ = "youngsung.kim.act2@gmail.com"
    _url_ = "https://github.com/grnydawn/micro-nmlread"

    def __init__(self, mgr):

        self.add_argument("namelist", type=str, help="namelist file")
        self.add_argument("-o", "--outfile", type=str, help="file path to namelist in json format")
        self.add_argument("-f", "--format", type=str, help="output format")

        self.register_forward("data", type=Any, help="namelist json object")

    def perform(self, mgr, args):

        namelist = tostr(args.namelist["_"])

        parser = f90nml.Parser()

        if os.path.exists(namelist):
            nml = parser.read(namelist)

        else:
            nml = parser.reads(namelist)

        import pdb; pdb.set_trace()

        if args.outfile:

            #output_file = open(args.outfile["_"], 'w') if output_fname else sys.stdout
            output_file = open(args.outfile["_"], 'w')
            output_fmt = args.format["_"]

            if output_fmt == 'json':
                input_data = nml.todict(complex_tuple=True)
                json.dump(input_data, output_file,
                          indent=4, separators=(',', ': '))
                output_file.write('\n')

            elif output_fmt == 'yaml':
                input_data = nml.todict(complex_tuple=True)
                yaml.dump(input_data, output_file,
                          default_flow_style=False)

            # Cleanup
            output_file.close()

        self.add_forward(data=nml)
