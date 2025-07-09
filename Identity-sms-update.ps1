# Ensure the Active Directory module is imported
Import-Module ActiveDirectory

# Prompt user for a mobile/cell number
$StudentMobile = Read-Host "Enter your Mobile/Cell number (e.g., +614xxxxxxxx)"

# Define users and assign the mobile number.
$users = @(
    @{ Name = "mike"},
    @{ Name = "carlos"},
    @{ Name = "cindy"},
    @{ Name = "tom"},
    @{ Name = "john"},
    @{ Name = "pamela"},
    @{ Name = "paul"}
)

# Update mobile number for each user
foreach ($user in $users) {
    try {
        Set-ADUser -Identity $user.Name -MobilePhone $StudentMobile
        Write-Host "Updated mobile number for $($user.Name) to $StudentMobile"
    } catch {
        Write-Warning "Failed to update mobile number for $($user.Name): $_"
    }
}