# 🚀 promptless

<a href="https://discord.gg/BtnTPFF"><img src="https://img.shields.io/discord/440354555197128704.svg"></a>
<a href="https://travis-ci.org/dylanaraps/promptless"><img src="https://travis-ci.org/dylanaraps/promptless.svg?branch=master"></a>
<a href=""><img src="https://img.shields.io/badge/coverage-100%25-green.svg"></a>
<a href=""><img src="https://img.shields.io/github/size/dylanaraps/promptless/promptless.sh.svg?style=flat"></a>
<a href=""><img src="https://img.shields.io/snyk/vulnerabilities/npm/promptless.svg?style=flat"></a>
<a href="https://repology.org/metapackage/promptless"><img src="https://repology.org/badge/tiny-repos/promptless.svg" alt="Packaging status"></a>

A super fast and extremely minimal shell prompt.

## Features

- Fast
- Minimal
- Lightweight
- POSIX sh (*no external commands*)
- No dependencies
- Works in all shells (*that use `$PS1`*).

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Philosophy](#philosophy)
* [Installation](#installation)
* [Tests](#tests)
* [Hacking](#hacking)
* [Compile time options](#compile-time-options)

<!-- vim-markdown-toc -->


## Philosophy

`promptless` follows the [suckless philosophy](https://suckless.org/philosophy/) and is simple by design. The codebase has a focus on elegance and clarity. The prompt is entirely hackable. Unnecessary and unworthy features need to be patched in.


## Installation

**Secure and Safe**

```sh
curl "https://raw.githubusercontent.com/dylanaraps/promptless/master/install.sh" | sh
```

**Webscale**

```sh
npm install promptless
```

**Run with Docker**

```sh
docker build -t promptless .
docker run -it promptless
```

**Distros**

- Arch: `promptless` in the AUR.

**Manual**

```sh
# Inside your .bashrc, .zshrc, etc.
. /path/to/promptless.sh
```

## Tests

Run `./test.sh` to run unit tests on `promptless`.

**NOTE**: The testing framework requires `bash` since it's **ROBUST**.


## Hacking

An array of intelligent patches are available in the `patches/` subdirectory. Patches for color support are not available as just like scroll-back, colors are bloat.


## Compile time options

You can customize the prompt character at compile time.

```sh
make CHAR=">"
```
