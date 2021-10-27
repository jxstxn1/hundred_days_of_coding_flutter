#!/usr/bin/env bash

CWD=$PWD
CLI_PACKAGE_DIR=$(dirname "$(dirname "$0")")

cd "${CLI_PACKAGE_DIR}" || exit

  echo "Installing hdc command line application..."

  # export pub from .flutter dir
  REPO_ROOT=$(git rev-parse --show-cdup)
  DART_SDK="${REPO_ROOT}.flutter/bin/cache/dart-sdk"
  PUB="$DART_SDK/bin/pub"
  DART="$DART_SDK/bin/dart"

  if [ ! -d "$DART_SDK" ]; then
    echo 'missing flutter sdk'
    sh "${REPO_ROOT}flutterw"
  fi

  # build
  printf -- "- Getting dependencies\n"
  $PUB get >/dev/null 2>&1
  printf -- "\033[1A\033[2K✔ Getting dependencies\n"
  printf -- "- Bundling assets\n"
  rm -rf build
  mkdir -p build
  printf -- "\033[1A\033[2K✔ Bundling assets\n"
  printf -- "- Compiling hdc cli\n"
  CLI_COMMITS=$(git rev-list --count HEAD .)
  EXE="build/hdc_cli-${CLI_COMMITS}.exe"
  $DART compile exe -o "${EXE}" bin/hdc.dart >/dev/null 2>&1
  printf -- "\033[1A\033[2K✔ Compiling hdc cli\n"


  if [ ! -f '/usr/local/bin/hdc' ] ; then
    # when not linked globally
    if [ -t 0 ] ; then
      # stdin exits, human ist interacting with script
      read -p "Do you want to install the hdc cli globally? (y/n) " x
      if [ "$x" = "y" ] ; then
        sudo rm /usr/local/bin/hdc > /dev/null 2>&1 || true
        HDC_SH="$(realpath "${REPO_ROOT}hdc")"
        sudo ln -s "${HDC_SH}" /usr/local/bin/hdc
        echo ""
        echo "You can now use 'hdc' from everywhere"
        echo ""
      fi
    fi
  fi

cd "${CWD}" || exit
