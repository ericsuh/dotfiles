#!/usr/bin/env python3

import errno
import os
import sys

def main(args):
    dirname = os.path.dirname(args[0])
    files_dir = os.path.join(dirname, 'files')
    with open(os.path.join(dirname, 'mapping.txt')) as path_mapping:
        mapping = [line.strip().split('\t') for line in path_mapping]
    for filename, destination_path in mapping:
        destination_path = os.path.expanduser(destination_path)
        destination_dir = os.path.dirname(destination_path)
        try:
            os.makedirs(destination_dir)
            print("Created directory {}".format(destination_dir))
        except OSError as e:
            if e.errno != errno.EEXIST:
                raise
        print("Linking {}".format(destination_path))
        # os.symlink(os.path.join(files_dir, filename), destination_path)
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
