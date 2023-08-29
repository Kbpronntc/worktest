#!/bin/bash
source ./url.sh
HTTP_CODE=$(curl --write-out "%{http_code}\n" "$URL1" --output output.txt --silent)
echo $URL1 $HTTP_CODE

function testEndpointAvailability {
    # -L is used to ensure cURL follows up to 30 status changes through to the end.
    # Without the -L, cURL will stop at the Apache reverse-proxy 301 status instead of listening for
    # the eventual response.
    endpointResponse=$(curl -oL --write-out '%{http_code}\n' --silent --head "${endpointToValidate}")

    if ! [[ -z "${endpointResponse}" ]]
    then
        if ! [[ "${endpointResponse}" -eq "200" ]]
        then
            logThis "${tfAdminLogDir}/${tfAdminLogFile}" "HTTP Response was: ${endpointResponse}" "INFO"
        else
            logThis "${tfAdminLogDir}/${tfAdminLogFile}" "HTTP Response was OK: ${endpointResponse}" "INFO"
        fi
    fi
}
