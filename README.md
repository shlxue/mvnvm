# Maven Version Manager

[![Atlassian license](https://img.shields.io/badge/license-Apache%202.0-blue.svg?style=flat-square)](LICENSE) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](CONTRIBUTING.md)

A simpler way to invoke maven and manage the version of maven within your team.

http://mvnvm.org

## Usage

Set the Maven version with `mvn_version` in `mvnvm.properties` in your project directory:

    $ cat mvnvm.properties
    mvn_version=3.8.6
    
Alternatively, set properties in `${HOME}/.mvnvm.properties` to apply to all projects for your user.
	
## Advanced Usage

| Properties valid in `mvnvm.properties` | Command line argument equivalent | Description                                                                                                     |
|----------------------------------------|----------------------------------|-----------------------------------------------------------------------------------------------------------------|
| `mvn_version`                          | `--mvn-version`                  | sets the version of Maven to use. The default is the newest version of Maven as of the release of mvnvm in use. |
| `user_uri`                             | `--apache-mirror`                | sets a specific Apache mirror from which to retrieve Maven                                                      |
| `central_uri`                          | `--central-mirror`               | sets a specific URI to use in place of Maven Central                                                            |
| `local_dir`                            | _none_                           | sets the directory where mvnvm stores Maven installations. The default is `${HOME}/.mvnvm`.                     |
| `mvn_opts`                             | _none_                           | sets the content of the `MAVEN_OPTS` environment variable when executing `mvn`                                  |

Other command line arguments:

* `--download-only` - downloads Maven but does not execute it
* `--home` - prints the `M2_HOME` directory and exits
* `--mvnvm-version` - shows the `mvnvm` version and exits
* `-d` - enables `mvnvm` debug

All other command line arguments are passed to `mvn`.

## Contributions

Contributions to MVNVM are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details. 

## License

Copyright (c) [2013] - [2022] Atlassian and others.
Apache 2.0 licensed, see [LICENSE](LICENSE) file.

[![With â¤ï¸ from Atlassian](https://raw.githubusercontent.com/atlassian-internal/oss-assets/master/banner-cheers.png)](https://www.atlassian.com)
