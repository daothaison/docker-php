# NOTE: This file was generated via generate.sh. Don't edit it directly

variable "REGISTRY" {
    default = "ghcr.io"
}

variable "REPO" {
    default = "daothaison/php"
}

target "8_4_15-fpm-alpine3_21" {
    context = "./8.4/alpine3.21/fpm"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-fpm-alpine3.21"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-fpm-alpine3.21",
        "${REGISTRY}/${REPO}:8-alpine3.21",
        "${REGISTRY}/${REPO}:8-fpm-alpine",
        "${REGISTRY}/${REPO}:8-alpine",
        "${REGISTRY}/${REPO}:8.4-fpm-alpine3.21",
        "${REGISTRY}/${REPO}:8.4-alpine3.21",
        "${REGISTRY}/${REPO}:8.4-fpm-alpine",
        "${REGISTRY}/${REPO}:8.4-alpine",
        "${REGISTRY}/${REPO}:8.4.15-fpm-alpine3.21",
        "${REGISTRY}/${REPO}:8.4.15-alpine3.21",
        "${REGISTRY}/${REPO}:8.4.15-fpm-alpine",
        "${REGISTRY}/${REPO}:8.4.15-alpine",
        "${REGISTRY}/${REPO}:fpm-alpine3.21",
        "${REGISTRY}/${REPO}:alpine3.21",
        "${REGISTRY}/${REPO}:fpm-alpine",
        "${REGISTRY}/${REPO}:alpine",
    ]
}

target "8_4-fpm-alpine3_21" {
    inherits = ["8_4_15-fpm-alpine3_21"]
}

target "8_4_15-nginx-alpine3_21" {
    context = "./8.4/alpine3.21/nginx"
    cache-from = [
        "${REGISTRY}/${REPO}:8.4-nginx-alpine3.21"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-nginx-alpine3.21",
        "${REGISTRY}/${REPO}:8-nginx-alpine",
        "${REGISTRY}/${REPO}:8.4-nginx-alpine3.21",
        "${REGISTRY}/${REPO}:8.4-nginx-alpine",
        "${REGISTRY}/${REPO}:8.4.15-nginx-alpine3.21",
        "${REGISTRY}/${REPO}:8.4.15-nginx-alpine",
        "${REGISTRY}/${REPO}:nginx-alpine3.21",
        "${REGISTRY}/${REPO}:nginx-alpine",
    ]
}

target "8_4-nginx-alpine3_21" {
    inherits = ["8_4_15-nginx-alpine3_21"]
}
