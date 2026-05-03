#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/gen/go"
PROTO_FILE="${ROOT_DIR}/douyin.proto"

if ! command -v protoc >/dev/null 2>&1; then
  echo "Error: protoc is not installed." >&2
  echo "Please install protoc first." >&2
  exit 1
fi

if ! command -v protoc-gen-go >/dev/null 2>&1; then
  echo "Error: protoc-gen-go is not installed." >&2
  echo "Install it with: go install google.golang.org/protobuf/cmd/protoc-gen-go@latest" >&2
  exit 1
fi

mkdir -p "${OUT_DIR}"

protoc \
  --proto_path="${ROOT_DIR}" \
  --go_out="${OUT_DIR}" \
  --go_opt=paths=source_relative \
  "${PROTO_FILE}"

echo "Go protobuf files generated in ${OUT_DIR}"
