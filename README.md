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

To get started using this template for your project, you can simply click on **"Use this template"** button on the GitHub UI and then select **"Create new repository"**.
Then, follow the prompt to create a new repository off of this template.


# Quick Start

After creating a new repository off of this template, you can follow the steps below to get started.

1. If you prefer another Python version, `.python-version` file can be updated to reflect the preferred Python version.
    Otherwise, you can run `pyenv local | xargs pyenv install` to install the recommended version mentioned in `.python-version`
    (see [Python Version Management](#python-version-management) section for more information).
2. Create and activate a virtual environment with `uv venv` and `source .venv/bin/activate` (see [Package Management](#package-management) section for more information).
3. After creating and activating your virtual environment, you can install the dependencies with `uv sync`.
4. Install the pre-commit hooks with `pre-commit install` (see [Pre-commit Hooks](#pre-commit-hooks) section for more information).
5. Update the `README.md` file with your new project information.
6. Update the `[project]` section of `pyproject.toml` file with your new project information.

# Python Version Management

We use `pyenv` to manage Python versions. This is a tool that allows you to install and manage multiple versions of Python on your machine. It is similar to `nvm` for Node.js. and `rbenv` for Ruby.

# Package Management

We use `uv` to manage Python packages and virtual environments. `uv` is a fast Python package installer and resolver written in Rust, designed to be a drop-in replacement for `pip` and `pip-tools`. It provides excellent performance and reliable dependency resolution.

`uv` creates virtual environments within the project directory by default when using `uv venv`, which helps keep dependencies isolated and project-specific.

## Project Python Version

As of now, we have updated this project to use Python 3.13.3, providing access to the latest Python features and improvements.

Assuming that you have `pyenv` installed, you can install the latest version of Python recommended in `.python-version` file, by running the following command:

```bash
pyenv local | xargs pyenv install # reads the python version from .python-version file and pipe it to `pyenv install`
```

## Create A Virtual Environment With `uv`

- To create a virtual environment with `uv`, run:

```bash
uv venv
```

- To activate the virtual environment, run:

```bash
source .venv/bin/activate
```

- Then, to install packages in the virtual environment from the `pyproject.toml` file, run:

```bash
uv sync
```

- To install specific dependency groups (e.g., development dependencies), run:

```bash
uv sync --group dev
```

- To add a new dependency, use:

```bash
uv add package-name
```

- To add a development dependency, use:

```bash
uv add --group dev package-name
```

- You can check your virtual environment information by running:

```bash
uv info
```

## Additional uv Features

- To update the lock file with the latest dependencies:

```bash
uv lock --upgrade
```

- To run a command in the virtual environment without activating it:

```bash
uv run python your_script.py
```

- To run a specific dependency group:

```bash
uv run --group dev pytest
```

- To remove a dependency:

```bash
uv remove package-name
```

# Pre-commit Hooks

We are using pre-commit library to manage our pre-commit hooks. This library allows us to easily manage and configure our pre-commit hooks.
It also allows us to easily share our pre-commit hooks across projects.
The hooks are defined in the `.pre-commit-config.yaml` file and the hooks are run automatically when you commit your code.

## Install Pre-commit Hooks

After activating your virtual environment with `source .venv/bin/activate`, you can install the pre-commit hooks by running the following command:

```bash
pre-commit install
```
