:: Thanks Rebar for this great idea
@echo off
setlocal
set reposcript=%~f0
python.exe "%reposcript:.cmd=%" %*
