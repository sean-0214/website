# PowerShell script to copy images from the Sean Notion website export to each style directory

# Source directory containing Sean's images
$sourceDir = "C:\Users\user\Downloads\Sean Notion wesbite 12.6.2025\Sean Chiang 13bc09d0140080d2908de8ad20c968b3"

# Array of style directories
$styleDirs = @(
    "saleh",
    "jeremy",
    "eugene",
    "lex", 
    "sahil", 
    "ricky"
)

# Create images directory if it doesn't exist
$mainImagesDir = ".\images"
if (-not (Test-Path $mainImagesDir)) {
    New-Item -ItemType Directory -Path $mainImagesDir
    Write-Host "Created main images directory: $mainImagesDir"
}

# Copy main images to the shared images directory
Copy-Item -Path "$sourceDir\bb761bd2-12d5-4900-9783-9f6bc09f51a4.png" -Destination "$mainImagesDir\profile.jpg" -Force
Copy-Item -Path "$sourceDir\Cityu.jpg" -Destination "$mainImagesDir\cityu.jpg" -Force
Copy-Item -Path "$sourceDir\axaa.png" -Destination "$mainImagesDir\axa.png" -Force
Copy-Item -Path "$sourceDir\oakcean.jpg" -Destination "$mainImagesDir\oakcean.jpg" -Force
Copy-Item -Path "$sourceDir\HSba.png" -Destination "$mainImagesDir\hsba.png" -Force
Write-Host "Copied main images to shared directory"

# Process each style directory
foreach ($styleDir in $styleDirs) {
    # Create directory path
    $targetDir = ".\$styleDir"
    
    # Copy profile image to each style directory
    Copy-Item -Path "$mainImagesDir\profile.jpg" -Destination "$targetDir\profile.jpg" -Force
    
    # Create images subdirectory in each style
    $styleImagesDir = "$targetDir\images"
    if (-not (Test-Path $styleImagesDir)) {
        New-Item -ItemType Directory -Path $styleImagesDir
    }
    
    # Copy work/project images to each style's images directory
    Copy-Item -Path "$mainImagesDir\cityu.jpg" -Destination "$styleImagesDir\cityu.jpg" -Force
    Copy-Item -Path "$mainImagesDir\axa.png" -Destination "$styleImagesDir\axa.png" -Force
    Copy-Item -Path "$mainImagesDir\oakcean.jpg" -Destination "$styleImagesDir\oakcean.jpg" -Force
    Copy-Item -Path "$mainImagesDir\hsba.png" -Destination "$styleImagesDir\hsba.png" -Force
    
    Write-Host "Images copied to $styleDir style"
}

Write-Host "All images have been successfully copied to each style directory."
Write-Host "You can now run View_Website_Styles.bat to preview all website styles."
