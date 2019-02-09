# 🚀 promptless

<a href="https://discord.gg/BtnTPFF"><img src="https://img.shields.io/discord/440354555197128704.svg"></a>
<a href="https://travis-ci.org/dylanaraps/promptless"><img src="https://travis-ci.org/dylanaraps/promptless.svg?branch=master"></a>
<a href=""><img src="https://img.shields.io/badge/coverage-100%25-green.svg"></a>
<a href="https://repology.org/metapackage/promptless"><img src="https://repology.org/badge/tiny-repos/promptless.svg" alt="Packaging status"></a>

A super fast and extremely minimal shell prompt.

### Features

- Fast
- Minimal
- Lightweight
- POSIX sh (*no external commands*)
- No Dependencies
- Works in all shells (*that use `$PS1`*).


### Philosophy

`promptless` follows the [suckless philosophy](https://suckless.org/philosophy/) and is simple by design. The code-base has a focus on elegance and clarity. The prompt is entirely hackable. Unnecessary and unworthy features need to be patched in.


### Installation

**Secure and Safe**

```sh
curl "https://raw.githubusercontent.com/dylanaraps/promptless/master/install.sh" | sh
```

**Manual**

```sh
# Inside your .bashrc, .zshrc, etc.
. /path/to/promptless.sh
```

### Tests

Run `./test.sh` to run unit tests on `promptless`.

**NOTE**: The testing framework requires `bash` since its **ROBUST**.
