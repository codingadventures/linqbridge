@echo off
setlocal
pushd "%~dp0"
hg kwdemo 2>nul > nul
if %errorlevel% neq 0 goto :nohgkwext
if not exist .hg goto :norepo
ver > nul
if exist .hg\hgrc findstr keywordmaps .hg\hgrc > nul
if errorlevel 1 (
    call :addkws ^
    && echo keyword expansion configured ^
    && echo don't forget to `hg kwexpand`
) else (
    echo keywords appear already configured
    echo don't forget to `hg kwexpand`
)
goto :EOF

:norepo
echo abort: no repository found in '%cd%' (.hg not found)!
exit /b 1

:nohgkwext
echo hg not installed or not found in PATH!
echo perhaps hg keyword extension is not enabled; see:
echo http://mercurial.selenic.com/wiki/KeywordExtension
exit /b 1

:addkws
setlocal
call :hgrckw >> .hg\hgrc
goto :EOF

:hgrckw
setlocal
echo.
echo [keyword]
echo src/Action.cs=
echo src/DelegatingComparer.cs=
echo src/Enumerable.cs=
echo src/Enumerable.g.tt=
echo src/ExtensionAttribute.cs=
echo src/Func.cs=
echo src/IGrouping.cs=
echo src/ILookup.cs=
echo src/IOrderedEnumerable.cs=
echo src/Lookup.cs=
echo src/OrderedEnumerable.cs=
echo src/Public.cs=
echo.
echo [keywordmaps]
echo Id = {file^|basename} {node^|short} {date^|utcdate} {author^|user}
goto :EOF
