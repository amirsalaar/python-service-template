##### Table of Contents

[Getting Started](#getting-started) |
[Python Version Management](#python-version-management) |
[Package Management](#package-management) |
[Pre-commit Hooks](#pre-commit-hooks)

# python-service-template

A standard template for creating Python projects.

This template is intended to be used with the Python repositories. It provides a
standard structure for Python projects, including a `pyproject.toml` file, a and some base configurations and base packages. We recommend using this template as a starting point for all Python projects.

# Getting Started

To get started to use this template for your project, you can simply click on __"Use this template"__ button on the GitHub UI and then select __"Create new repository"__. Then you new repository will be created based off of this template.

# Python Version Management

We use `pyenv` to manage Python versions. This is a tool that allows you to install and manage multiple versions of Python on your machine. It is similar to `nvm` for Node.js. and `rbenv` for Ruby.

# Package Management

We are using `poetry` to manage our Python packages. This is a new package manager that is gaining popularity in the Python community. It is similar to `pipenv` and `pip` in that it manages dependencies and virtual environments. It is also similar to `npm` in that it uses a `pyproject.toml` file to manage dependencies. The main difference is that `poetry` is more strict about the versions of dependencies that are installed. This is a good thing, as it helps to ensure that the code is reproducible.

We will also recommend using `poetry` to manage and initialized your virtual envs since it provides a quite simple interface to initialize and and activate your virtual envs.

## Project Python Version

As of now, we have not migrated our boxes and default projects to use Python versions greater than 3.9. So this project will use the latest version of Python 3.9.15 until we have migrated our boxes and default projects to use Python 3.10 or later versions.

Assuming that you have `pyenv` installed, you can install the latest version of Python 3.9.15 by running the following command:

```bash
pyenv install 3.9.15
```

## `poetry` Configuration

In order for `poetry` to create virtual environments within the project with your preferred python version add the following configuration to your poetry config file.

- For macOS, this config file is stored at `~/Library/Preferences/pypoetry/config.toml`.
- For Linux, this config file is stored at `~/.config/pypoetry/config.toml`.

You can add the following configuration to your `config.toml` file:

```toml
[virtualenvs]
in-project = true # creates the virtualenv in the project directory
prefer-active-python = true # uses the active python version
```

Now to check the information of your virtual environment created by `poetry`, run the following command:

```bash
poetry env info
```

> For further information on the usage of `poetry` configuration, you can run `poetry config --help`.

> If `poetry` got stuck at installation of a package, you may try running `poetry cache clear --all .`

## Create a Virtual Environment With `poetry`

```bash
poetry shell # creates a virtual env named .venv and activates it
```

# Pre-commit Hooks

We are using pre-commit library to manage our pre-commit hooks. This library allows us to easily manage and configure our pre-commit hooks. It also allows us to easily share our pre-commit hooks across projects. The hooks are defined in the `.pre-commit-config.yaml` file and the hooks are run automatically when you commit your code.

## Install Pre-commit Hooks

```bash
pre-commit install
```
