from setuptools import setup
import glob

setup(
    name="cijoe-pkg-liblightnvm",
    version="0.0.1",
    description="CIJOE CNEX Package",
    author="Simon A. F. Lund",
    author_email="slund@cnexlabs.com",
    url="https://github.com/safl/cijoe-pkg-liblightnvm",
    license="BSD-2",
    install_requires=[
        "cijoe (>=0.0.3)"
    ],
    zip_safe=False,
    data_files=[
         ("share/cijoe/envs", glob.glob("envs/*")),

         ("share/cijoe/testcases", glob.glob("testcases/*")),
         ("share/cijoe/testsuites", glob.glob("testsuites/*")),
         ("share/cijoe/testplans", glob.glob("testplans/*"))
    ]
)