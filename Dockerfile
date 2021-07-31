FROM alpine:3
RUN apk add --no-cache fdupes bash
WORKDIR /app
CMD bash -c 'fdupes -r -1 /app | while read line; do master=""; for file in ${line[*]}; do if [ "x${master}" == "x" ]; then master=$file; else ln -f "${master}" "${file}"; fi; done; done'