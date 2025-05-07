@echo off
title Docsify Server - http://localhost:3000
color 0A


REM 启动 docsify serve，并保持窗口不关闭
start "Docsify Server" cmd /k "npx docsify serve index && pause"

REM 等待 2 秒确保服务器启动
timeout /t 2 >nul

REM 自动打开浏览器访问 localhost:3000
start "" "http://localhost:3000"

REM 关闭当前批处理窗口（只保留 docsify 窗口）
exit