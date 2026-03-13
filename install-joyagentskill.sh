#!/bin/bash
# 设置 npm 官方 registry 并全局安装 joyagentskill

set -e

# 切换到非 workspace 目录，避免 npm config 报 ENOWORKSPACES
cd "$HOME" || true

echo "Setting npm registry to https://registry.npmjs.org/..."
npm config set registry https://registry.npmjs.org/ --location=user

echo "Installing joyagentskill globally..."
npm install -g joyagentskill

echo "Done. Run 'joyagentskill --help' to verify."
