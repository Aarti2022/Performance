#!/bin/bash

# List of URLs 
declare -a urls=("https://www.gasb.org/" "https://www.gasb.org/about-us" "https://www.gasb.org/about-us/board-members" "https://www.gasb.org/about-us/governmental-accounting-standards-advisory-council" "https://www.gasb.org/academics" "https://www.gasb.org/standards-and-guidance" "https://www.gasb.org/standards-and-guidance/pronouncements" "https://www.gasb.org/projects/current-projects" "https://www.gasb.org/projects/other-research-and-staff-projects")

# Loop through URLs
for url in "${urls[@]}" 
do
   echo "Generating report for $url"
   # Run Lighthouse and generate HTML report
   Lighthouse "$url" --output html --C:\Users\arti.tripathi\Desktop\Python_Script\Reports"$(echo $url | sed 's/https\?:\/\///').html"
done

echo "Reports generated successfully!"
