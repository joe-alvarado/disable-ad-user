# Simple Disable AD User Script by Joe Alvarado

# Prints to console
Write-Output `n "
########################### 
##                       ##
##    Disable AD User    ##
##                       ##
###########################" `n

# Starts a loop 
 Do {

# Assigns variable to user input
$aduser = Read-Host -Prompt 'Enter Domain Username'

# PS command to pull user info with properties specified
Get-ADUser $aduser -Properties * | Select-Object GivenName, Surname, DisplayName, SamAccountName, userPrincipalName, Description, Manager, EmailAddress, Enabled, Department, Office, LockedOut, LockOutTime, AccountExpirationDate, PasswordExpired, PasswordLastSet

# PS command to disable above user, prompts for confirmation.
Disable-ADAccount $aduser -Confirm

# Prints to console
Write-Output `n "Done!" `n
}

# Infinite loop
 While ($true)
