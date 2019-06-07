#!/bin/bash

set -e

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
scripts="$dir/scripts"

function build {
	export PROJECT_PATH=app/code
	bash $scripts/composer.sh install
	bash $scripts/npm.sh install
	bash $scripts/bower.sh install
}

function build_update {
	export PROJECT_PATH=app/code
	bash $scripts/composer.sh update
	bash $scripts/npm.sh update
	bash $scripts/bower.sh update
}

function npm {
	export PROJECT_PATH=app/code
	bash $scripts/npm.sh install
}

function bower {
	export PROJECT_PATH=app/code
	bash $scripts/bower.sh install
}

function watch {
	export PROJECT_PATH=app/code
	bash $scripts/gulp.sh watch
}

function gulp_build {
	export PROJECT_PATH=app/code
	bash $scripts/gulp.sh build
}


if [[ $# -ne 1 ]]; then
	action="build"
else
	action="$1"
fi

case "$action" in
	build)
		build
		;;
	build_update)
	    build_update
	    ;;
	watch)
		watch
		;;
    npm)
		npm
		;;
    bower)
		bower
		;;
    gulp_build)
		gulp_build
		;;
esac