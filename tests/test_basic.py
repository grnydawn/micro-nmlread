from microapp import MicroappProject

import os

here = os.path.dirname(os.path.abspath(__file__))
app = os.path.join(here, "..", "nmlread.py")
namelist = os.path.join(here, "data.nl")
jsondata = os.path.join(here, "data.json")

def test_basic():

    prj = MicroappProject()
    cmd = "%s %s -o %s" % (app, namelist, jsondata)

    ret = prj.main(cmd)

    assert ret == 0
    assert os.path.exists(jsondata)

    os.remove(jsondata)
