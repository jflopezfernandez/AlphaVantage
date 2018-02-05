
Clear-Host

# List of Services that require terminating:
# 1. AppXSvc
# 2. ClickToRunSvc
# 3. ftpsvc
# 4. IISADMIN
# 5. LanmanServer
# 6. LanmanWorkstation
# 7. VaultSvc

# Download a File From the Internet
# ==============================================================================
# $sourceFile = "https://ftp.gnu.org/gnu/wget/wget-1.19.4.tar.gz"
# $destination = "C:\Users\jflop\Desktop\wget-test.tar.gz"
#
# Invoke-WebRequest $sourceFile -OutFile $destination

# Alpha Vantage API Key: U1I2GXHD9DYTW8GS
$url = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=MSFT&interval=1min&apikey=U1I2GXHD9DYTW8GS"

$json = Invoke-RestMethod $url
$data = $json | ConvertFrom-Json

foreach ($line in $data | Get-Member) {
	Write-Host $data.$($line.Name).("1. open")
}
