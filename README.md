# Noah

> A collection of scripts for launching popular containers.

## Introduction

This project is a collection of cross-platform scripts for running popular
containers. The aim is to provide a collection of scripts to launch
self-terminating containers across Linux, MacOSX and Windows hosts which
maintain data persistence. These are likely to be useful during development but
also make good points of reference.

## Usage

Clone this repo onto your system by running the following command from a
terminal/prompt.

```bash
git clone https://github.com/krb-oss/noah ~/noah
```

Once the command above completes change into the newly created directory and
follow an example below based on your operating system.

#### Linux/MacOSX

Linux and MacOSX can both use the available shell scripts within the `shell`
directory.

```text
./shell/redis.sh
```

#### Windows

Windows hosts must use the `.bat` scripts available in the `bat` directory.
When you launch any of the Windows scripts for the first time, you will be
asked for your password in order to create a shared volume. This allows data
persistence for each container.

```text
.\bat\redis.bat
```

**NOTE** If you get an `Error starting userland proxy` message, please open the
Docker settings and disable `Experimental Features`, this [issue] has been
reported.

[issue]: https://github.com/docker/for-win/issues/573

## License

[BSD](LICENSE) © [@KRB OSS](https://github.com/krb-oss/)
