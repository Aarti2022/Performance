# List of URLs
$urls = @(
    "https://fasb.org/",
    "https://fasb.org/about-us",
    "https://fasb.org/about-us/standard-setting-process",
    "https://fasb.org/about-us/post-implementation-review-process",
    "https://fasb.org/about-us/board-members",
    "https://fasb.org/standards/accounting-standard-updates",
    "https://fasb.org/standards/accounting-standard-updated-effective-date",
    "https://fasb.org/projects/current-projects",
    "https://fasb.org/projects/recently-completed-projects"
)

# Loop through URLs
foreach ($url in $urls) {
    Write-Output "Generating report for $url"
    # Generate file name from URL
    $fileName = ($url -replace "https?://", "").Replace("/", "_") + ".html"
    # Run Lighthouse and generate HTML report
    & "Lighthouse" $url --output html --output-path "C:\Users\arti.tripathi\Desktop\Python_Script\Generatedreport\$fileName"
}

Write-Output "Reports generated successfully!"
