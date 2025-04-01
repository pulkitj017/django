# Function to get installed packages and their versions
function Get-InstalledPackages {
    $packages = & pip list --format=json | ConvertFrom-Json
    $installedPackages = @{}
    foreach ($package in $packages) {
        $installedPackages.Add($package.name, $package.version)
    }
    return $installedPackages
}

# Function to get latest versions of packages
function Get-LatestVersions {
    $outdatedPackages = & pip list --outdated --format=json | ConvertFrom-Json
    $latestVersions = @{}
    foreach ($package in $outdatedPackages) {
        $latestVersions.Add($package.name, $package.latest_version)
    }
    return $latestVersions
}

# Function to get license information for a package
function Get-PackageLicense($packageName) {
    $packageInfo = & pip show $packageName
    foreach ($line in $packageInfo) {
        if ($line -match '^License:\s+(.+)') {
            return $matches[1].Trim()
        }
    }
    return "License information not found"
}

# Main script
$installedPackages = Get-InstalledPackages
$latestVersions = Get-LatestVersions

# File to save the output
$outputFile = "dependencies_list.txt"

# Write header to the file
$tableHeader = "Package Name".PadRight(30) + "Installed Version".PadRight(20) + "Latest Version".PadRight(20) + "License"
$tableSeparator = "=" * $tableHeader.Length

Add-Content -Path $outputFile -Value $tableHeader
Add-Content -Path $outputFile -Value $tableSeparator

# Write package information to the file
foreach ($packageName in $installedPackages.Keys) {
    $installedVersion = $installedPackages[$packageName]
    $latestVersion = $latestVersions[$packageName]
    if (-not $latestVersion) {
        $latestVersion = $installedVersion
    }
    $packageLicense = Get-PackageLicense $packageName
    $tableRow = $packageName.PadRight(30) + $installedVersion.PadRight(20) + $latestVersion.PadRight(20) + $packageLicense
    Add-Content -Path $outputFile -Value $tableRow
}

Write-Host "Dependency information has been saved to $outputFile"
