FROM alpine:3.20

RUN apk add --no-cache ca-certificates bash

COPY --from=headscale/headscale:0.29.7 /ko-app/headscale /usr/bin/headscale

ENTRYPOINT ["headscale"]
CMD ["serve"]
