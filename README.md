# Language Usage Charts

## What is this project?

This project started life as a way to add Github language usage-esque
graphics to an independent CI/CD pipeline.

## Installation

This package relies on Github Linguist which in turn relies on `charlock_holmes`
and `rugged`. These dependencies require _quite_ a few system packages to work
properly.

If you're using a Debian variant distro all dependencies can be installed via:

```shell
sudo apt-get install cmake pkg-config libicu-dev zlib1g-dev libcurl4-openssl-dev libssl-dev ruby-dev
```
