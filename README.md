# HERE Map Making CLI 

This repository is a [homebrew tap](https://docs.brew.sh) for the Maps CLI.

## Introduction

The Maps CLI
allows you to access Map Making Functionality from the command
line. As opposed to the HERE platform portal graphic user interface, the Maps CLI offers
a text-based interface and enables developers to implement automated actions
on [Platform Map Making](https://platform.here.com/mapmaking/).

For the terms and conditions covering this documentation, see the
[HERE Documentation License](https://legal.here.com/en-gb/terms/documentation-license).

Data privacy is of fundamental importance to HERE and our customers.
We practice data minimization and don’t collect data we don’t need. And we promote
pseudonymity for data subjects wherever a service does not require personal
information to function. We employ privacy by design in services we develop.
We strive to go beyond mere regulatory compliance and make privacy an integral
part of our corporate culture. We believe that our approach to privacy is vital
to earning and retaining the trust of our customers – and the bedrock of our
future success as a data-driven location platform.

For more information on how data privacy is of fundamental importance to HERE
and our customers, see the [HERE Privacy Charter](https://www.here.com/here-privacy-charter).

### Why Use the Maps CLI

The Maps CLI allows you to:

- [Configure Maps CLI](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/maps-commands.html#configure).
  Typically, you can configure credentials to work with a map project and switch the Maps CLI to work with different map projects.
- [Manage map projects](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/maps-project-commands.html).
  You can create and delete map projects, branch projects, list available map projects, and get detailed information about specific map projects.
- [Upload and retrieve data to/from the input catalog](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/maps-input-commands.html).
  You can upload and retrieve data to and from input interactive map layers.
- [Upload and retrieve data to/from the livemap catalog](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/maps-commands.html).
  You can upload and retrieve data to and from livemap interactive map layers.
- [Execute HERE Map Making processes](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/maps-commands.html).
  You can execute available Map Making processes like conflate, validate, rebase, and more.
- [Export GeoParquet and GeoJson data](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/maps-commands.html).
  You can export `GeoParquet` and `GeoJson` data from the `livemap`.

## Prerequisites

You need to install [Homebrew](https://brew.sh/), a package manager for macOS and Linux.
To install Homebrew, follow the instructions on the official page.


## Installation

To install the latest version of Maps CLI, use the following command:

```
brew install heremaps/map-making-cli/maps
```

If you want to update the Maps CLI, run the following command:

```
brew upgrade maps
```

To remove the package, run the following command:

```
brew uninstall maps
```


## Next Steps

- [Set up your credentials](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/configuration.html)
- [Introduction to command syntax](https://www.here.com/docs/bundle/maps-user-guide-java-scala/page/topics/command-syntax.html)

## License

Copyright (C) 2018-2024 HERE Europe B.V.

Unless otherwise noted in LICENSE files for specific files or directories, the LICENSE in the root applies to all content in this repository.

