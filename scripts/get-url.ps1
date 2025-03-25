# Get the public IP address from the instance metadata
$publicIp = Invoke-RestMethod -Uri http://169.254.169.254/latest/meta-data/public-ipv4

# Octopus variable placeholder
$portNumber = "#{Project.IIS.PortNumber}"

# Output in the desired format
Write-Host "publicip:$publicIp:$portNumber"
