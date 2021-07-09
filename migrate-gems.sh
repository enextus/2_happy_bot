#!/bin/bash
# copy is a misnomer; it's actually LIST + INSTALL
# --from 2.2.1 [--to other-version-else-whatever-is-currently-set]
#
# TODO: install only most-recent version that's installed in FROM
# TODO: use gem names only from FROM, install latest available version (might be more recent than in FROM)
# TODO: pass arguments to gem command (e.g. --no-document)

CURRENT_VERSION=`rbenv version | cut -d' ' -f1`
GEM_LIST_ARGS="--local"

while [[ $# -gt 0 ]]; do
  option="$1"

  case $option in
    --from)
    FROM="$2"
    shift
    ;;
    --to)
    TO="$2"
    shift
    ;;
  esac
  shift # past argument or value
done

if [ -z "${FROM}" ]; then
  FROM="${CURRENT_VERSION}"
fi

if [ -z "${TO}" ]; then
  TO="${CURRENT_VERSION}"
fi

echo ">>> Install gems from v${FROM} to v${TO}"

# Get gems and versions, reformat to GEMNAME:version[,version[...]]
gems=(`RBENV_VERSION=${FROM} gem list ${GEM_LIST_ARGS} | sed -e 's/[\(\)]//g' -e 's/, /,/g' -e 's/ /:/'`)

for geminfo in "${gems[@]}"; do
  gem=`echo $geminfo | cut -d: -f1`
  versions=(`echo $geminfo | sed -e 's/^.*://' -e 's/,/ /g'`)
  for version in "${versions[@]}"; do
    installed=`RBENV_VERSION=${TO} gem query -i $gem -v $version`
    if [ "${installed}" == "false" ]; then
      echo ">>> Installing ${gem} ${version}:"
      RBENV_VERSION=${TO} gem install $gem -v $version
    else
      echo ">>> ${gem} ${version} already installed"
    fi
    echo ""
  done
done
