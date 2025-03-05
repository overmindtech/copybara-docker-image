# Copybara Docker Image

This repository builds and publishes a Docker image for [Google's Copybara](https://github.com/google/copybara) tool on a weekly schedule using GitHub Actions.

## Overview

Copybara is a tool that helps with transforming and moving code between repositories. This project creates a Docker image that includes Copybara, making it easy to use in CI/CD pipelines or other containerized environments.

## Workflow Configuration

The workflow is defined in weekly-workflow.yml and is scheduled to run once a week (at midnight on Sunday). This ensures that the Docker image stays up-to-date with the latest changes from the Copybara repository.

The workflow:

1. Uses [Depot](https://depot.dev/) for faster container builds
2. Builds multi-platform images (for both `linux/amd64` and `linux/arm64`)
3. Generates a Software Bill of Materials (SBOM)
4. Pushes the resulting image to GitHub Container Registry (GHCR)

## Docker Image

The Docker image is built using the configuration in images-bake.hcl and is available at:

```
ghcr.io/overmindtech/copybara-docker-image/copybara:main
```
