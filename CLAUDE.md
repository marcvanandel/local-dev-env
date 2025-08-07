# Claude Development Context

This repository documents the setup and configuration of a local development environment across different platforms (Windows, WSL Ubuntu).

## Repository Structure

- `wsl_ubuntu/` - WSL Ubuntu environment setup and scripts
- `windows/` - Windows-specific configurations (PowerShell profiles)
- `LenovoP52.md` - Hardware-specific documentation

## Common Tasks

When updating software installation documentation:
- Add new tools to the "Installed software" section in the relevant README.md
- Use current syntax for package managers (e.g., asdf v0.18.0+ uses `-u` flag for global installs)
- Follow existing formatting patterns for consistency

## Development Environment

Current asdf version: v0.18.0 (uses `-u` flag for global installations)