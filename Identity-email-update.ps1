# Ensure the Active Directory module is imported
Import-Module ActiveDirectory

# Prompt user for an email address
$StudentEmail = Read-Host "Enter your email address (e.g., student@example.com)"

# Define users and assign the email address
$users = @(
    @{ Name = "mike" },
    @{ Name = "carlos" },
    @{ Name = "cindy" },
    @{ Name = "tom" },
    @{ Name = "john" },
    @{ Name = "paul" }
)

# Update email address for each user
foreach ($user in $users) {
    try {
        Set-ADUser -Identity $user.Name -EmailAddress $StudentEmail
        Write-Host "Updated email address for $($user.Name) to $StudentEmail"
    } catch {
        Write-Warning "Failed to update email address for $($user.Name): $_"
    }
}
