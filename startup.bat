@echo off
title 项目重启脚本

echo 正在准备重启项目...

rem 检查 Node.js 是否已安装
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo 错误: 未找到 Node.js。请确保 Node.js 已安装并添加到系统 PATH。
    goto :end
)

rem 检查 npm 是否已安装
where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo 错误: 未找到 npm。请确保 Node.js 已正确安装。
    goto :end
)

rem 检查 package.json 是否存在
if not exist "package.json" (
    echo 错误: 当前目录下未找到 package.json 文件。
    echo 请确保脚本在项目根目录下运行。
    goto :end
)

rem 执行 npm run restart
echo 正在执行 "npm run restart"...
npm run restart

:end
echo 脚本执行完成。按任意键退出...
pause >nul