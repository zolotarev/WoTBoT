#include <ProgressConstants.au3>

$FileToUpdate = "WoTBoT.exe"
$FileToDownload = "WoTBoT.rar"
$FileDownloadURL = "http://sd.its.bz/wot/"
$FileToReplace = (@ScriptDir & "\" & $FileToUpdate)
$Decompressor = "UnRAR.exe"
$DecompressCommand = ($Decompressor & " x -o+ " & $FileToDownload)
$KillCommand = "tskill WoTBot -a"

Updater()
Func Updater()
  FileRecycle(@ScriptDir & "\" & $FileToDownload)
	ProcessWaitClose($FileToUpdate) ;Wait for process to close before file will be available for replacement
	$FileSize = InetGetSize($FileDownloadURL & $FileToDownload, 1)
	$FileDownloading = InetGet($FileDownloadURL & $FileToDownload, @ScriptDir & "\" & $FileToDownload, 1, 1) ;1 for Force redownload, 1 for Do not wait till downloaded and go next
	ProgressOn("Download progress", "Downloading file ", "0 %") ;start progress bar windows
	For $i = 1 To $FileSize Step 1
		$FileDownloadingInfo = InetGetInfo($FileDownloading)
		$FilePercentDownloaded = Round($FileDownloadingInfo[0] * 100 / $FileSize, 2)
		ProgressSet($FilePercentDownloaded, $FilePercentDownloaded & " %")
		Sleep(100)
		If InetGetInfo($FileDownloading, 2) Then
			InetClose($FileDownloading)
			ExitLoop
		Else
			ContinueLoop
		EndIf
	Next
	ProgressOff()
	ProgressSet(100, "100%", "Download completed.")

	RunWait($KillCommand)
	RunWait($DecompressCommand)
	FileMove(@ScriptDir & "\" & $FileToUpdate, @ScriptDir & "\" & $FileToUpdate, 1)
	FileRecycle(@ScriptDir & "\" & $FileToDownload) ;erase downloaded file
	MsgBox(0, 'Information', 'Update Complete !')
EndFunc   ;==>Updater
