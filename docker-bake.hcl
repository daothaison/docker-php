# NOTE: This file was generated via generate.sh. Don't edit it directly

variable "REGISTRY" {
    default = "ghcr.io"
}

variable "REPO" {
    default = "daothaison/php"
}

target "8_4_15-fpm-buster" {
    context = "./8.4/buster/fpm"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-fpm-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-fpm-buster",
        "${REGISTRY}/${REPO}:8-buster",
        "${REGISTRY}/${REPO}:8.4-fpm-buster",
        "${REGISTRY}/${REPO}:8.4-buster",
        "${REGISTRY}/${REPO}:8.4.15-fpm-buster",
        "${REGISTRY}/${REPO}:8.4.15-buster",
        "${REGISTRY}/${REPO}:fpm-buster",
        "${REGISTRY}/${REPO}:buster",
    ]
}

target "8_4-fpm-buster" {
    inherits = ["8_4_15-fpm-buster"]
}

target "8_4_15-nginx-buster" {
    context = "./8.4/buster/nginx"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-nginx-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-nginx-buster",
        "${REGISTRY}/${REPO}:8.4-nginx-buster",
        "${REGISTRY}/${REPO}:8.4.15-nginx-buster",
        "${REGISTRY}/${REPO}:nginx-buster",
    ]
}

target "8_4-nginx-buster" {
    inherits = ["8_4_15-nginx-buster"]
}

target "8_4_15-fpm-alpine3_18" {
    context = "./8.4/alpine3.18/fpm"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-fpm-alpine3.18"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-fpm-alpine3.18",
        "${REGISTRY}/${REPO}:8-alpine3.18",
        "${REGISTRY}/${REPO}:8-fpm-alpine",
        "${REGISTRY}/${REPO}:8-alpine",
        "${REGISTRY}/${REPO}:8.4-fpm-alpine3.18",
        "${REGISTRY}/${REPO}:8.4-alpine3.18",
        "${REGISTRY}/${REPO}:8.4-fpm-alpine",
        "${REGISTRY}/${REPO}:8.4-alpine",
        "${REGISTRY}/${REPO}:8.4.15-fpm-alpine3.18",
        "${REGISTRY}/${REPO}:8.4.15-alpine3.18",
        "${REGISTRY}/${REPO}:8.4.15-fpm-alpine",
        "${REGISTRY}/${REPO}:8.4.15-alpine",
        "${REGISTRY}/${REPO}:fpm-alpine3.18",
        "${REGISTRY}/${REPO}:alpine3.18",
        "${REGISTRY}/${REPO}:fpm-alpine",
        "${REGISTRY}/${REPO}:alpine",
    ]
}

target "8_4-fpm-alpine3_18" {
    inherits = ["8_4_15-fpm-alpine3_18"]
}

target "8_4_15-nginx-alpine3_18" {
    context = "./8.4/alpine3.18/nginx"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-nginx-alpine3.18"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-nginx-alpine3.18",
        "${REGISTRY}/${REPO}:8-nginx-alpine",
        "${REGISTRY}/${REPO}:8.4-nginx-alpine3.18",
        "${REGISTRY}/${REPO}:8.4-nginx-alpine",
        "${REGISTRY}/${REPO}:8.4.15-nginx-alpine3.18",
        "${REGISTRY}/${REPO}:8.4.15-nginx-alpine",
        "${REGISTRY}/${REPO}:nginx-alpine3.18",
        "${REGISTRY}/${REPO}:nginx-alpine",
    ]
}

target "8_4-nginx-alpine3_18" {
    inherits = ["8_4_15-nginx-alpine3_18"]
}
