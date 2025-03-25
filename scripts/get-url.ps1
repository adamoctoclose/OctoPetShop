# Get the public IP address from the instance metadata
$publicIp = Invoke-RestMethod -Uri http://169.254.169.254/latest/meta-data/public-ipv4

# Octopus variable placeholder
$portNumber = '#{Project.IIS.PortNumber}'

# Combine parts into a single string
$output = "publicip:${publicIp}:${portNumber}"

# Output the result
Write-Highlight $output
