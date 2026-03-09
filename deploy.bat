@echo off
cd /d D:\Tools\hugo_extended_withdeploy\myblog

:: 1检查 SSH 连接
ssh -T git@github.com
if %ERRORLEVEL% NEQ 1 (
    echo.
    echo SSH 连接失败，请检查本地 SSH Key 是否添加到 GitHub
    echo ==============================
    pause
    exit /b
)

:: 2添加所有更改
git add .

:: 3️提交改动
git commit -m "Update Hugo project and workflow"

:: 4️推送到 GitHub main 分支
git push -u origin main

echo.
echo ==============================
echo Hugo 项目已 push，GitHub Actions 自动部署已触发
echo ==============================
pause