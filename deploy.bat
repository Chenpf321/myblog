@echo off
cd /d D:\Tools\hugo_extended_withdeploy\myblog

:: 1检查 SSH 连接
ssh -T git@github.com
if %ERRORLEVEL% NEQ 1 (
    echo.
    echo SSH failed，please check your local SSH Key added in GitHub
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
echo Hugo pushed，trigger GitHub Actions deploy
echo ==============================
pause