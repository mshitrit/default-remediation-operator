#!/bin/bash
echo "starting codacy upload for commit: ${GITHUB_SHA}"
#testRes=$(go test ./... -coverprofile=coverage.out)
#echo  "test result: ${testRes}"
res=$(godacov -t f5843f341b5a4f6cbc58c06caec64685 -r ./cover.out -c "${GITHUB_SHA}")
echo  "upload result: ${res}"
