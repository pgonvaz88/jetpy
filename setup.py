from setuptools import setup, find_packages

setup(
    name="jetpy",
    version="0.1",
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            'jetc=jetpy.cli:main',
        ],
    },
)
