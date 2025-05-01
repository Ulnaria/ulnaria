# Ulnaria Core Integration
https://ulnaria.flutterflow.app

## What is *Ulnaria Core*?
Ulnaria Core connects to the decentralized Ulnaria exchange to fully download and validate transactions and code. It includes a wallet, a swap engine, market data, an NFT marketplace, staking, and a graphical user interface.

PS: We would like to point out here that we are primarily inspired by the parent blockchain, Bitcoin, and the work carried out by its development team, Bitcoin Core.

More information about Ulnaria Core is available in the docs.

## License
Ulnaria Core is published under the MIT License. See COPYING for more information or https://opensource.org/licenses/MIT.

## Development Process
The main branch is regularly compiled (see doc/build-*.md for instructions) and tested, but its complete stability is not guaranteed. Tags are regularly created from the release branches to indicate new official and stable versions of Ulnaria Core.

The repository https://github.com/ulnaria-core/ui is used exclusively for GUI development. Its main branch is identical in all Monotree repositories. Release branches and tags do not exist; therefore, please do not fork this repository except for development purposes.

The contribution flow is described in CONTRIBUTING.md, and useful tips for developers are available in doc/developer-notes.md.

## Testing
Regarding testing, we would like to point out that the turnaround time is relatively long due to the fact that we cannot analyze all requests in an optimal time frame given the workload. Therefore, we strongly recommend that you be patient with test validation and, where possible, encourage you to help us by testing other people's pull requests. This is critical to the security of our ecosystem.

## Automated Testing
Developers are strongly recommended to write unit tests for new code and submit new unit tests for old code. Unit tests can be compiled and run (provided they were not disabled when generating the build system) with: ctest. More details on running and extending unit tests can be found in /src/test/README.md.

There are also regression and integration tests written in Python. These tests can be run (if the test dependencies are installed) with: build/test/functional/test_runner.py (assuming build matches your build directory).

Continuous integration (CI) systems ensure that every pull request is compiled for Windows, Linux, and macOS, and that unit and consistency tests are run automatically.

## Manual Quality Assurance (QA) Testing
Changes should be tested by someone other than the developer who wrote the code. This is especially important for large or high-risk changes. It's helpful to add a test plan to the pull request description if testing the changes isn't straightforward.

## Important: We don't accept translation changes as GitHub pull requests because the next pull from Transifex would automatically overwrite them.
