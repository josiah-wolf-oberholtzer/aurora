#!/usr/bin/env python

from distutils.core import setup

install_requires = (
    'abjad',
    )

def main():
    setup(
        author='Joséphine Wolf Oberholtzer',
        author_email='josephine.wolf.oberholtzer@gmail.com',
        install_requires=install_requires,
        name='aurora',
        packages=('aurora',),
        url='https://github.com/josephine-wolf-oberholtzer/aurora',
        version='0.1',
        zip_safe=False,
        )


if __name__ == '__main__':
    main()
