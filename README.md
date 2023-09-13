# Checksum Action

## Description

`checksum-action` is a GitHub Action that generates SHA256 checksums for multiple files in your GitHub repository. It allows you to specify a pattern for matching files and optionally specify a suffix for the generated checksum files.

## Inputs

### `pattern`

**Required** The pattern used to search for files (glob format). For example:

```yaml
pattern: "*.txt"
```

This would match all `.txt` files in the repository.

### `suffix`

**Optional** The suffix to append to the generated checksum files. Default is `checksum`.

For example, given a file `example.txt`, if the suffix is set to `checksum`, the generated checksum file will be `example.txt.checksum`.

## Example Usage

Here's a basic example that demonstrates how to use `checksum-action` in a workflow:

```yaml
name: Generate Checksums

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Generate checksums
        uses: Solratic/checksum-action@v1
        with:
          pattern: "<your folder>/*.txt"
          suffix: "checksum"

      - name: Commit changes
        uses: EndBug/add-and-commit@v9
        with:
          default_author: github_actions
```

This workflow will be triggered on a push to the `main` branch. It will:

1. Checkout the repository
2. Generate SHA256 checksums for all `.txt` files in the repository
3. Append `.checksum` to the generated checksum files.
4. You would see `<your folder>/<file>.txt.checksum` in your repository.

## Docker Container

This action runs on a Docker container, specified in the `Dockerfile` in this repository.

## Contributing

Feel free to open issues or pull requests if you want to improve this GitHub action.

## License

Please see the [LICENSE](LICENSE.md) file for details on how the code in this repo is licensed.
