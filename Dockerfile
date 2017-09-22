# version: 0.0.1
# description: Racket language Dockerfile

FROM debian:sid

LABEL MAINTAINER "VS <github@roundside.com>"
RUN apt-get update && apt-get upgrade -yqq \
    && apt-get install libedit2 racket -yqq --no-install-recommends \
    && apt-get clean

CMD ["racket"]
