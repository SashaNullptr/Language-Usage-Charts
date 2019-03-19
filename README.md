# Language Usage Charts

## What is this project?

This project started life as a way to add Github language usage-esque
graphics to an independent CI/CD pipeline.

## Installation

### System Dependencies

This package relies on Github Linguist which in turn relies on `charlock_holmes`
and `rugged`. These dependencies require _quite_ a few system packages to work
properly.

If you're using a Debian variant distro all dependencies can be installed via:

```shell
sudo apt-get install cmake pkg-config libicu-dev zlib1g-dev libcurl4-openssl-dev libssl-dev ruby-dev
```

### Package installation

From the project root directory (the one containing the `.gempspec` file)
run the following command.

```shell
bundle exec rake install
```

## Usage

Once things have been installed with bundle language usage charts can be generated
from anywhere using `generate_usage_chart $OPTS`. The following options are
supported.

| Option        | Usage                             | Example             |
|---------------|-----------------------------------|---------------------|
| `-r`. `--repo`| Path to a git repository.         | "."                 |
| `-o`, `--out` | Path where usage chart should go. | "./usage_chart.png" |

Example usage:

```shell
generate_usage_chart -r "." -o "./language_usage_chart.png"
```
