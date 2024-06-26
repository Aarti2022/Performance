@echo off
rem List of URLs
set urls=("https://fasb.org/" "https://fasb.org/about-us" "https://fasb.org/about-us/standard-setting-process" "https://fasb.org/about-us/post-implementation-review-process" "https://fasb.org/about-us/board-members" "https://fasb.org/standards/accounting-standard-updates" "https://fasb.org/standards/accounting-standard-updated-effective-date" "https://fasb.org/projects/current-projects" "https://fasb.org/projects/recently-completed-projects")

rem Set output directory
set outputDir=C:\Users\arti.tripathi\Documents\self study

rem Loop through URLs
for %%i in %urls% do (
   echo Generating report for %%i
   rem Run Lighthouse and generate HTML report
   lighthouse "%%i" --output html --output-path "%outputDir%\%%~ni.html"
)

echo Reports generated successfully!
