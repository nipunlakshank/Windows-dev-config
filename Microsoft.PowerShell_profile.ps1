oh-my-posh init pwsh --config 'C:\Users\nipun\AppData\Local\Programs\oh-my-posh\themes/star.omp.json' | Invoke-Expression

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function source(){
	. $args
}

function Change-Theme(){
	param (
		[string]$name,
		[bool]$save = $false
	)

	
	oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/$name.omp.json" | Invoke-Expression
	
	if($save){

		$content = Get-Content $PROFILE | Select-Object -Skip 1

		.{
			"oh-my-posh init pwsh --config '$env:POSH_THEMES_PATH/$name.omp.json' | Invoke-Expression"
			$content
		} | 
		Set-Content $PROFILE
	}
}

function Edit-Profile(){
	vim $PROFILE
}

function Load-Profile(){
	. $PROFILE
}

function httpd-config(){
	vim C:\Users\nipun\AppData\Roaming\Apache24\conf\httpd.conf
}

function sites(){
	cd $HOME\dev\Sites
	ls
}

. $HOME\.config\powershell\alias.ps1
