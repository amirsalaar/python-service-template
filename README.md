##### Table of Contents

[How To Use This Template Repository](#how-to-use-this-template-repository) |
[Quick Start](#quick-start) |
[Python Version Management](#python-version-management) |
[Package Management](#package-management) |
[Pre-commit Hooks](#pre-commit-hooks)

# python-service-template

A standard template for creating Python projects.

This template is intended to be used with the Python repositories. It provides a
standard structure for Python projects, including a `pyproject.toml` file, a and some base configurations and base packages. We recommend using this template as a starting point for all Python projects.

# How To Use This Template Repository

To get started to use this template for your project, you can simply click on __"Use this template"__ button on the GitHub UI and then select __"Create new repository"__.
Then, follow the prompt to create a new repository off of this template.

🚨 For any feature requests and bugs, please create an issue on GitHub repository of the template.

# Quick Start

After creating a new repository off of this template, you can follow the steps below to get started.

1. If you prefer another Python version, `.python-version` file can be updated to reflect the preferred Python version.
    Otherwise, you can run `pyenv local | xargs pyenv install` to install the recommended version mentioned in `.python-version`
    (see [Python Version Management](#python-version-management) section for more information).
2. Create and activate a virtual environment with `poetry shell` (see [Package Management](#package-management) section for more information).
3. After creating and activating your virtual environment, you can install the dependencies with `poetry install`.
4. Install the pre-commit hooks with `pre-commit install` (see [Pre-commit Hooks](#pre-commit-hooks) section for more information).
5. Update the `README.md` file with your new project information.
6. Update the `[tool.poetry]` section of `pyproject.toml` file with your new project information.

# Python Version Management

We use `pyenv` to manage Python versions. This is a tool that allows you to install and manage multiple versions of Python on your machine. It is similar to `nvm` for Node.js. and `rbenv` for Ruby.

# Package Management

We are using `poetry` to manage our Python packages. This is a new package manager that is gaining popularity in the Python community. It is similar to `pipenv` and `pip` in that it manages dependencies and virtual environments. It is also similar to `npm` in that it uses a `pyproject.toml` file to manage dependencies. The main difference is that `poetry` is more strict about the versions of dependencies that are installed. This is a good thing, as it helps to ensure that the code is reproducible.

We will also recommend using `poetry` to manage and initialized your virtual envs since it provides a quite simple interface to initialize and and activate your virtual envs.

## Project Python Version

As of now, we have not migrated our boxes and default projects to use Python versions greater than 3.9. So this project will use the latest version of Python 3.9.15 until we have migrated our boxes and default projects to use Python 3.10 or later versions.

Assuming that you have `pyenv` installed, you can install the latest version of Python recommended in `.python-version` file, by running the following command:

```bash
pyenv local | xargs pyenv install # reads the python version from .python-version file and pipe it to `pyenv install`
```

## `poetry` Configuration

`poetry` configuration file is stored at:

- For macOS, this config file is stored at `~/Library/Preferences/pypoetry/config.toml`.
- For Linux, this config file is stored at `~/.config/pypoetry/config.toml`.

In order for `poetry` to create virtual environments within the project with your preferred Python version, add the following configuration to your poetry `config.toml` file:

```toml
[virtualenvs]
in-project = true # creates the virtualenv in the project directory
prefer-active-python = true # uses the active python version
```

> For further information on the usage of `poetry` configuration, you can run `poetry config --help`.

## Create A Virtual Environment With `poetry`

- To create and activate `poetry` virtual environment, run:

```bash
poetry shell
```

- Then, to install `poetry` packages in the virtual environment created by `poetry` from the last step, run:

```bash
poetry install
```

> If `poetry` got stuck at installation of a package, you may try running `poetry cache clear --all .`

- You can check out and verify the information of your virtual environment created by `poetry`, run the following command:

```bash
poetry env info
```

# Pre-commit Hooks

We are using pre-commit library to manage our pre-commit hooks. This library allows us to easily manage and configure our pre-commit hooks.
It also allows us to easily share our pre-commit hooks across projects.
The hooks are defined in the `.pre-commit-config.yaml` file and the hooks are run automatically when you commit your code.

## Install Pre-commit Hooks

```bash
pre-commit install
```
