@echo off
del /Q /F "%cd%/publish/" > NUL
dotnet publish -c Release -r win-x64 -f netcoreapp3.1 --self-contained false --output ./publish RadioTerm.sln 

rem Self-contained trimmed win10-x64: (~35MiB)
rem dotnet publish -c Release -r win-x64 -f netcoreapp3.1 --self-contained true -p:PublishSingleFile=true --output ./publish RadioTerm.sln 