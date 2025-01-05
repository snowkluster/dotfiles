#!/bin/sh

pipx install python-lsp-server
pipx inject python-lsp-server python-lsp-ruff python-lsp-black
