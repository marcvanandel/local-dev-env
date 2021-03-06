#!/usr/bin/env bash
CONFIG_DIR=/c/.data/kube

function print_usage {
    echo "Usage: loadkube <kube bundle>"
    echo ""
    echo "To connect to a PLP Kubernetes cluster:"
    echo "  1. Download a client bundle from https://<master_url>:8443/manage/profile/clientbundle/"
    echo "  2. Extract this in CONFIG_DIR/[container-name].[segment]"
    echo "     NOTE: CONFIG_DIR is currently set to [$CONFIG_DIR]"
    echo "  3. Open bash and run: loadkube <[container-name].[segment]>"
    echo ""
}

function set_bundle() {
    BUNDLE="$1"
    BUNDLE_DIR="$CONFIG_DIR/$BUNDLE"

    echo "Loading bundle [$BUNDLE] from [$BUNDLE_DIR]"

    pushd $BUNDLE_DIR
    . env.sh
    popd

    export KUBE_BUNDLE=$BUNDLE
}

if [ "$*" == "" ] || [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ "$1" == "--usage" ]
 then
    print_usage
 else
    set_bundle
fi

