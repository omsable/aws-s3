import sys
import json
import re


def main(arg, output):
    if arg == 'ls':
        pattern = re.compile(
            r'(?P<date>[\d\-]+\s[\d\:]+)\s+(?P<size>\d+)\s+(?P<path>.+)'
        )
        return json.dumps(
            [
                pattern.match(line).groupdict()
                for line in output.splitlines()
            ]
        )

    # [TODO] support more argument output types

    else:
        return output


if __name__ == '__main__':
    sys.stdout.write(
        main(sys.argv[1], sys.argv[2])
    )
