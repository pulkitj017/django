param (
    [string]$LicenseFile = "licenses.txt",
    [string]$OutdatedFile = "outdated-dependencies.txt",
    [string]$DependencyFile = "dependency.txt"
)

# Function to read installed packages and their versions from dependency.txt
function Get-InstalledPackages {
    $installedPackages = @{}
    $dependencyLines = Get-Content -Path $DependencyFile
    foreach ($line in $dependencyLines) {
        $line = $line.Trim()
        if ($line -match '^(?<name>\S+)\s+(?<version>\S+)$') {
            $installedPackages[$matches.name] = $matches.version
        }
    }
    return $installedPackages
}

# Function to read latest versions of packages from outdated-dependencies.txt
function Get-LatestVersions {
    $latestVersions = @{}
    $outdatedLines = Get-Content -Path $OutdatedFile
    foreach ($line in $outdatedLines) {
        $line = $line.Trim()
        if ($line -match '^(?<name>\S+)\s+(?<version>\S+)\s+(?<latest_version>\S+)\s+\S*$') {
            $latestVersions[$matches.name] = $matches.latest_version
        }
    }
    return $latestVersions
}

# Function to read license information from licenses.txt
function Get-Licenses {
    $licenses = @{}
    $licenseLines = Get-Content -Path $LicenseFile
    foreach ($line in $licenseLines) {
        $line = $line.Trim()
        if ($line -match '^\|\s*(?<name>[^\|]+?)\s*\|\s*(?<version>[^\|]+?)\s*\|\s*(?<license>[^\|]+?)\s*\|.*$') {
            $licenses[$matches.name.Trim()] = $matches.license.Trim()
        }
    }
    return $licenses
}

# Main script
$installedPackages = Get-InstalledPackages
$latestVersions = Get-LatestVersions
$licenses = Get-Licenses

# Output file for combined data
$outputFile = "combined_dependencies.txt"

# Write header to the output file
$tableHeader = "Package Name".PadRight(30) + "Installed Version".PadRight(20) + "Latest Version".PadRight(20) + "License"
$tableSeparator = "=" * $tableHeader.Length

# Clear output file if it exists
if (Test-Path $outputFile) {
    Clear-Content -Path $outputFile
}

Add-Content -Path $outputFile -Value $tableHeader
Add-Content -Path $outputFile -Value $tableSeparator

# Write package information to the output file
foreach ($packageName in $installedPackages.Keys) {
    $installedVersion = $installedPackages[$packageName]
    $latestVersion = $installedVersion
    if ($latestVersions.ContainsKey($packageName)) {
        $latestVersion = $latestVersions[$packageName]
    }
    $packageLicense = "License information not found"
    if ($licenses.ContainsKey($packageName)) {
        $packageLicense = $licenses[$packageName]
    }

    # Skip any lines that are not valid package entries
    if ($packageName -match '^\S+$') {
        $tableRow = $packageName.PadRight(30) + $installedVersion.PadRight(20) + $latestVersion.PadRight(20) + $packageLicense
        Write-Host "Writing row: $tableRow"  # Output each row to the console for debugging
        Add-Content -Path $outputFile -Value $tableRow
    } else {
        Write-Host "Skipping invalid package name: $packageName"  # Debug output for invalid package names
    }
}

Write-Host "Combined dependency information has been saved to $outputFile"
