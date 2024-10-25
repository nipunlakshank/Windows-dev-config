function touch($path){
	New-Item -Path $path -ItemType File -Force
}
