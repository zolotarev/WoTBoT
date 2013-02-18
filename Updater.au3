#include <ProgressConstants.au3>

$FileToUpdate = "WoTBoT.exe"
$FileToDownload = "WoTBoT.exe"
$FileDownloadURL = "http://sd.its.bz/wot/"
$FileToReplace = (@ScriptDir & "\" & $FileToUpdate)
$KillCommand = "tskill WoTBot -a"

Updater()

Func Updater()
	RunWait($KillCommand)
	FileRecycle(@ScriptDir & "\" & $FileToUpdate)
	$FileSize = InetGetSize($FileDownloadURL & $FileToDownload, 1)
	Local $FileDownloading = InetGet($FileDownloadURL & $FileToDownload, @ScriptDir & "\" & $FileToDownload, 1, 1) ;1 for Force redownload, 1 for Do not wait till downloaded and go next
	ProgressOn("Download progress", "Downloading file ", "0 %") ;start progress bar windows
	Do
		$FileDownloadingInfo = InetGetInfo($FileDownloading)
		ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $FileDownloadingInfo = ' & $FileDownloadingInfo[3] & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
		$FilePercentDownloaded = Round($FileDownloadingInfo[0] * 100 / $FileSize, 2)
		ProgressSet($FilePercentDownloaded, $FilePercentDownloaded & " %")
		Sleep(100)
	Until InetGetInfo($FileDownloading, 2)
	InetClose($FileDownloading)
	ProgressOff()
	ProgressSet(100, "100%", "Download completed.")
	Sleep(1000)
	MsgBox(0, 'Information', 'Update Complete !', 5)
	Run(@ScriptDir & "\" & $FileToUpdate)
EndFunc   ;==>Updater