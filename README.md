# Ulnaria Core Integration
https://ulnaria.flutterflow.app

## What is *Ulnaria Core*?
Ulnaria Core connects to the decentralized Ulnaria exchange to fully download and validate transactions and code. It includes a wallet, a swap engine, market data, an NFT marketplace, staking, and a graphical user interface.

PS: We would like to point out here that we are primarily inspired by the parent blockchain, Bitcoin, and the work carried out by its development team, Bitcoin Core.

More information about Ulnaria Core is available in the docs.

## License
Ulnaria Core is published under the MIT License. See COPYING for more information or https://opensource.org/licenses/MIT.

## Development Process
The main branch is regularly compiled and tested, but its complete stability is not guaranteed. Tags are regularly created from the release branches to indicate new official and stable versions of Ulnaria Core.

The https://github.com/ulnaria-core/ui repository is used exclusively for GUI development. Its main branch is identical in all Monotree repositories. Release branches and tags do not exist; therefore, please do not fork this repository except for development purposes.

Le dépôt https://github.com/ulnaria-core/ui est utilisé exclusivement pour le développement d'interfaces graphiques. Sa branche principale est identique dans tous les dépôts Monotree. Les branches de publication et les balises n'existent pas ; par conséquent, veuillez ne pas dupliquer ce dépôt, sauf à des fins de développement.

## Testing
Regarding testing, we would like to point out that the turnaround time is relatively long due to the fact that we cannot analyze all requests in an optimal time frame given the workload. Therefore, we strongly recommend that you be patient with test validation and, where possible, encourage you to help us by testing other people's pull requests. This is critical to the security of our ecosystem.

## Automated Testing
Developers are strongly recommended to write unit tests for new code and submit new unit tests for old code. Unit tests can be compiled and run (provided they were not disabled when generating the build system).

There is also space for regression and integration tests written in Python and/or Dart. These tests can be run (if the test dependencies are installed).
Continuous integration (CI) systems ensure that every pull request is compiled for Windows, Linux, and macOS, and that unit and consistency tests are run automatically.

## Manual Quality Assurance (QA) Testing
Changes should be tested by someone other than the developer who wrote the code. This is especially important for large or high-risk changes. It's helpful to add a test plan to the pull request description if testing the changes isn't straightforward.

