@echo off
set first_input=%1
if %first_input%=="-h" or "--help" (
echo Usage:
echo 	move-a-dir.bat "source_folder_path" "destination_folder_path"
exit /b
) else (
set source_path=%first_input%
set dest_path=%2
robocopy %source_path% %dest_path% /E /MOVE /IS
mkdir %source_path%
exit /b
)