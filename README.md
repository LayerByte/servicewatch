# servicewatch

## Overview

Render a compact dashboard of selected systemd unit states. This repository is an original, self-contained Bash learning project. School Purpose Only.

## Features

- Performs its core monitoring workflow locally with deterministic, inspectable output.
- Validates arguments and reports operational errors with non-zero exit codes or clear UI feedback.
- Uses only platform APIs or the language standard library unless the build manifest states otherwise.

## Installation

Requires Bash 4+. Run `chmod +x servicewatch.sh` or invoke it with `bash servicewatch.sh`.

## Usage

`./servicewatch.sh UNIT...`

## Examples

```text
$ ./servicewatch.sh UNIT...
```

## Technical Details

The implementation focuses on monitoring fundamentals and keeps data on the local device. Source is intentionally compact enough to study while still handling invalid input and normal edge cases.

## Limitations

Requires systemctl and a systemd host.


## Contributing

Open an issue with a reproducible example before proposing broad behavioral changes. Keep patches focused, documented, and covered by a practical test when possible.
