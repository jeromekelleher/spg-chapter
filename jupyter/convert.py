"""
Convert images names to something useful.

Run

$ jupyter nbconvert msprime-chapter-examples.ipynb --to latex

first
"""

import glob
import shutil

notebook_name = "msprime-chapter-examples"

k = 1
for j in range(100):
    globname = "{}_files/{}_{}_*.pdf".format(notebook_name, notebook_name, j)
    files = glob.glob(globname)
    if len(files) > 0:
        assert len(files) == 1
        dest = "../images/plot_{}.pdf".format(k)
        k += 1
        print(files[0], "->", dest)
        shutil.copyfile(files[0], dest)

