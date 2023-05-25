FROM alpine:3.18

RUN apk update \
    && apk --no-cache add curl

RUN addgroup -S argocd && adduser -S argocd -G argocd

WORKDIR /tmp

RUN curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 \
    && install -m 555 argocd-linux-amd64 /usr/local/bin/argocd \
    && rm argocd-linux-amd64

USER argocd
