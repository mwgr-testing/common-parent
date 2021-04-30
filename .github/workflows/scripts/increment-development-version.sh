#!/bin/bash
set -o errexit

echo "::group::Incrementing development version"
mvn ${MAVEN_DEFAULT_ARGS} build-helper:parse-version versions:set versions:commit -DnewVersion="${NEXT_DEVELOPMENT_VERSION}"
git commit --all --message="${GIT_COMMIT_MESSAGE}"
git push
echo "::endgroup::"
