#!/bin/bash

# 设置脚本名称和版本
SCRIPT_NAME="npm-restart.sh"
VERSION="1.0.0"

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # 恢复默认颜色

# 打印脚本标题
echo -e "${GREEN}==> ${SCRIPT_NAME} v${VERSION}${NC}"
echo -e "${YELLOW}正在准备重启项目...${NC}"

# 检查 Node.js 是否已安装
if ! command -v node &> /dev/null; then
    echo -e "${RED}错误: 未找到 Node.js。请确保 Node.js 已安装并添加到系统 PATH。${NC}"
    exit 1
fi

# 检查 npm 是否已安装
if ! command -v npm &> /dev/null; then
    echo -e "${RED}错误: 未找到 npm。请确保 Node.js 已正确安装。${NC}"
    exit 1
fi

# 检查 package.json 是否存在
if [ ! -f "package.json" ]; then
    echo -e "${RED}错误: 当前目录下未找到 package.json 文件。${NC}"
    echo -e "${RED}请确保脚本在项目根目录下运行。${NC}"
    exit 1
fi

# 获取项目名称
PROJECT_NAME=$(basename "$(pwd)")

# 执行 npm run restart
echo -e "${YELLOW}==> 在项目 ${GREEN}${PROJECT_NAME}${YELLOW} 中执行 ${GREEN}npm run restart${YELLOW}...${NC}"
npm run restart

# 检查命令执行状态
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ 命令执行成功${NC}"
else
    echo -e "${RED}✗ 命令执行失败${NC}"
fi

echo -e "${YELLOW}==> 脚本执行完成${NC}"