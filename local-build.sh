#!/usr/bin/env bash

BRANCH=test

rm -f org.gnome.Books.flatpak
rm -rf _build ; mkdir _build
rm -rf _repo ; mkdir _repo

flatpak-builder --ccache --force-clean --default-branch=$BRANCH _build org.gnome.Books.json --repo=_repo
flatpak build-bundle _repo org.gnome.Books.flatpak org.gnome.Books $BRANCH
