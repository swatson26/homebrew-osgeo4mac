#!/usr/bin/env bash
###########################################################################
#    homebrew-qgisdev travis ci - install.sh
#    ---------------------
#    Date                 : Dec 2016
#    Copyright            : (C) 2016 by Boundless Spatial, Inc.
#    Author               : Larry Shaffer
#    Email                : lshaffer at boundlessgeo dot com
###########################################################################
#                                                                         #
#   This program is free software; you can redistribute it and/or modify  #
#   it under the terms of the GNU General Public License as published by  #
#   the Free Software Foundation; either version 2 of the License, or     #
#   (at your option) any later version.                                   #
#                                                                         #
###########################################################################

set -e

for f in ${CHANGED_FORMULAE};do
  echo "Installing dependencies for changed formula ${f}..."
  # add verbosity to ensure Travis doesn't complain about no output
  brew install -v --only-dependencies ${TRAVIS_REPO_SLUG}/${f}
done
