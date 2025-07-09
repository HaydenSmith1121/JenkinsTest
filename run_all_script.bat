@echo off
setlocal enabledelayedexpansion

REM 获取当前目录下所有.py脚本
for %%i in (*.py) do (
    echo [%date% %time%] 正在执行: %%i
    python "%%i" >> all_scripts.log 2>&1
    if !errorlevel! equ 0 (
        echo [%date% %time%] %%i 执行成功
    ) else (
        echo [%date% %time%] %%i 执行失败
    )
)

echo [%date% %time%] 所有脚本执行完成 >> all_scripts.log