#!/bin/bash
set -o errexit

source .github/workflows/scripts/check-maven-distribution-settings.sh

echo "::group::Creating the release and distributing it"
mvn ${MAVEN_DEFAULT_ARGS} build-helper:parse-version release:prepare release:perform \
	-Darguments="${MAVEN_DEFAULT_ARGS} ${MAVEN_ADDITIONAL_ARGS_FOR_RELEASING_PACKAGE}" \
	-Dgoals="deploy" \
	-DtagNameFormat="${TAG_NAME_FORMAT}" \
	-DdevelopmentVersion="${NEXT_DEVELOPMENT_VERSION}" \
	-DscmCommentPrefix="${GIT_COMMIT_MESSAGE_PREFIX}"
echo "::endgroup::"
