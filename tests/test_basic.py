from microapp import MicroappProject

import os

here = os.path.dirname(os.path.abspath(__file__))
namelist = os.path.join(here, "data.nl")
jsondata = os.path.join(here, "data.txt")

def test_basic():

    prj = MicroappProject()
    cmd = "nmlread %s -o %s" % (namelist, jsondata)

    ret, fwds = prj.run_command(cmd)

    assert ret == 0
    assert os.path.exists(jsondata)

    os.remove(jsondata)
