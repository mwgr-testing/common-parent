#!/bin/bash
set -o errexit

echo "::group::Generating the site documentation and deploying it"
mvn ${MAVEN_DEFAULT_ARGS} ${MAVEN_ADDITIONAL_ARGS_FOR_DEPLOYING_SITE} clean site-deploy
echo "::endgroup::"
