`inline-java` Hello World
=========================

On Ubuntu 16.04/amd64 (may work on other distro versions too) as root or via `sudo`:

    apt-add-repository ppa:hvr/ghc
    apt update
    apt install cabal-install-head ghc-8.0.2 openjdk-8-jdk-headless gradle spark

Then as non-`root` user in the source folder:

    PATH=/opt/ghc/bin:$PATH
    cabal new-build
