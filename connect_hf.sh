#!/bin/bash

# 检查.env文件是否存在
if [ -f .env ]; then
    # 从.env文件加载环境变量
    export $(cat .env | xargs)
fi

# 检查HF_TOKEN是否设置
if [ -z "$HF_TOKEN" ]; then
    echo "请设置HF_TOKEN环境变量或在.env文件中配置"
    exit 1
fi

huggingface-cli login --token $HF_TOKEN --add-to-git-credential
HF_USER=$(huggingface-cli whoami | head -n 1)
echo $HF_USER