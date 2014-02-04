#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <SliderConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=D:\Poprygun\Projects\Binary\WoTBoT\MainForm.kxf
$Form1_1 = GUICreate("WoT-BoT", 630, 764, -1, -1)
$Group6 = GUICtrlCreateGroup("О программе", 8, 8, 617, 177)
$Icon1 = GUICtrlCreateIcon("D:\Poprygun\Projects\Binary\ITS-control\images\logo.ico", -1, 16, 24, 48, 48)
$Label1 = GUICtrlCreateLabel("Программа представляет собой простейший настраиваемый бот для игры WorldOfTanks.", 72, 56, 461, 17)
$Label2 = GUICtrlCreateLabel("WoT-BoT v0.34", 72, 32, 94, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label3 = GUICtrlCreateLabel("В данной версии бот умеет двигаться вперёд, поворачивать, разворачиваться искать цель и стрелять по ней.", 16, 72, 568, 17)
$Label4 = GUICtrlCreateLabel("Выбор танков для боя осуществляется автоматически из выбранных активными танков первых пяти слотов.", 16, 88, 564, 17)
$Label5 = GUICtrlCreateLabel("Следуйте инструкциям для корректной работы бота. Если что-то не так: bel_poprygun@pisem.net", 16, 112, 494, 17)
$Label6 = GUICtrlCreateLabel("И помните: жульничать не хорошо... Но на войне все средства хороши! ;-)", 16, 128, 378, 17)
$Label7 = GUICtrlCreateLabel("PS: Автор не несёт ответственности за Ваши действия в игре с использованием бота и любые последствия.", 16, 160, 604, 20)
GUICtrlSetFont(-1, 8, 800, 2, "Trebuchet MS")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("Настройка бота", 8, 192, 617, 289)
$Group2 = GUICtrlCreateGroup("Выбор танков для игры", 16, 344, 137, 97)
$slot1 = GUICtrlCreateCheckbox("1", 32, 368, 25, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$slot2 = GUICtrlCreateCheckbox("2", 64, 368, 25, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$slot3 = GUICtrlCreateCheckbox("3", 32, 392, 25, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$slot4 = GUICtrlCreateCheckbox("4", 64, 392, 25, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$slot5 = GUICtrlCreateCheckbox("5", 32, 416, 25, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label8 = GUICtrlCreateLabel("Преднастройка игры", 16, 216, 129, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Tes = GUICtrlCreateLabel("Бот работает с запущенным и залогиненым приложением WoT Client. Клиент должен выполняться в оконном", 16, 232, 568, 17)
$Label9 = GUICtrlCreateLabel("режиме с разрешением 1024x768. Перед запуском бота необходимо выполнить настройку клиента:", 16, 248, 519, 17)
$Label10 = GUICtrlCreateLabel("+ Сделать прозрачным 'Маркер орудия' в 'Аркадном' и 'Снайперском' режимах", 16, 264, 405, 17)
$Label11 = GUICtrlCreateLabel("+ Выключить отображение любой информации о разрушенных танках", 16, 280, 359, 17)
$Label12 = GUICtrlCreateLabel("+ Карта должна быть самого маленького размера, управление - по-умолчанию", 16, 296, 408, 17)
$Label14 = GUICtrlCreateLabel("+ Танки должны автоматически ремонтироваться и пополняться снарядами, не используйте САУ", 16, 312, 506, 17)
$startButton = GUICtrlCreateButton("СТАРТ!", 288, 448, 163, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label19 = GUICtrlCreateLabel("Запуск всегда начинается с ангара!", 16, 456, 223, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$updateButton = GUICtrlCreateButton("Проверить обновления", 456, 448, 163, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Group3 = GUICtrlCreateGroup("Настройка движения (вероятности)", 360, 344, 257, 97)
$Label16 = GUICtrlCreateLabel("Разговорчики", 368, 368, 75, 17)
$Label17 = GUICtrlCreateLabel("Поворот на ходу", 368, 392, 87, 17)
$Label18 = GUICtrlCreateLabel("Остановка", 368, 416, 59, 17)
$talks_editor_p = GUICtrlCreateLabel("0", 456, 368, 26, 17)
$turns_editor_p = GUICtrlCreateLabel("0", 456, 392, 26, 17)
$ostanovka_p = GUICtrlCreateLabel("0", 456, 416, 26, 17)
$Label27 = GUICtrlCreateLabel("%", 488, 416, 12, 17)
$Label23 = GUICtrlCreateLabel("%", 488, 392, 12, 17)
$Label25 = GUICtrlCreateLabel("%", 488, 368, 12, 17)
$talks_editor = GUICtrlCreateSlider(504, 368, 110, 17)
$turns_editor = GUICtrlCreateSlider(504, 392, 110, 17)
$ostanovka = GUICtrlCreateSlider(504, 416, 110, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group4 = GUICtrlCreateGroup("Опции поведения", 160, 344, 193, 97)
$iskatCeli = GUICtrlCreateCheckbox("Искать цели", 168, 368, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$strelyat = GUICtrlCreateCheckbox("Стрелять по целям", 168, 392, 153, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$ostanovkaPriCeli = GUICtrlCreateCheckbox("Остановка при наведении", 168, 416, 153, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group5 = GUICtrlCreateGroup("Статистические показатели", 8, 488, 617, 65)
$Label13 = GUICtrlCreateLabel("Время работы:", 16, 512, 107, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$workTimeLabel = GUICtrlCreateLabel("0", 127, 512, 42, 17)
$Label22 = GUICtrlCreateLabel("Количество боёв:", 184, 528, 107, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$fightCountLabel = GUICtrlCreateLabel("0", 295, 528, 42, 17)
$Label26 = GUICtrlCreateLabel("Из них был убит:", 352, 528, 107, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$deathCountLabel = GUICtrlCreateLabel("0", 463, 528, 42, 17)
$Label15 = GUICtrlCreateLabel("Выстрелов всего:", 184, 512, 107, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$firesCountLabel = GUICtrlCreateLabel("0", 295, 512, 42, 17)
$Label28 = GUICtrlCreateLabel("Средний бой:", 16, 528, 107, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Label29 = GUICtrlCreateLabel("0", 127, 528, 42, 17)
$Label30 = GUICtrlCreateLabel("Остался живым:", 352, 512, 107, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$aliveCountLabel = GUICtrlCreateLabel("0", 463, 512, 42, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Tab1 = GUICtrlCreateTab(7, 560, 617, 193)
$TabSheet1 = GUICtrlCreateTabItem("Статус работы бота")
$logs = GUICtrlCreateEdit("", 18, 625, 601, 121, BitOR($GUI_SS_DEFAULT_EDIT,$ES_READONLY))
$Label21 = GUICtrlCreateLabel("Текущий статус", 19, 585, 99, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$currentStatusLabel = GUICtrlCreateLabel("Ничего не делаем", 18, 601, 602, 17)
$TabSheet2 = GUICtrlCreateTabItem("История изменений")
$Edit1 = GUICtrlCreateEdit("", 11, 585, 609, 164, BitOR($GUI_SS_DEFAULT_EDIT,$ES_READONLY))
GUICtrlSetData(-1, StringFormat("Версия 0.34:\r\n+ Исправлена работа "&Chr(34)&"Поворот на ходу"&Chr(34)&" и "&Chr(34)&"Остановка на ходу"&Chr(34)&"\r\n+ Исправлена обработка выживания\r\n+ Добавлена статистика работы бота"))
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

#include <Date.au3>

;============= ГЛОБАЛЬНЫЕ ПЕРЕМЕННЫЕ =============
Dim $_slot[7][3];
;====================== ИНИЦИАЛИЗАЦИЯ ============

$_slot[0][0] = 0
$_slot[0][1] = 0
$_slot[0][2] = 0

$_slot[1][0] = 1
$_slot[1][1] = 205
$_slot[1][2] = 666

$_slot[2][0] = 1
$_slot[2][1] = 380
$_slot[2][2] = 666

$_slot[3][0] = 1
$_slot[3][1] = 536
$_slot[3][2] = 666

$_slot[4][0] = 1
$_slot[4][1] = 710
$_slot[4][2] = 666

$_slot[5][0] = 1
$_slot[5][1] = 880
$_slot[5][2] = 666

$_slot[6][0] = 0

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)
Opt("SendKeyDownDelay", 100)
Opt("MouseClickDownDelay", 100)
HotKeySet("{END}", "gameStop")

Dim $coord[3]
Global $x
Global $y
Global $color = 0xf1160b ; red
Global $dirt = 8
Global $margin = 20
Global $margin2 = 10
Global $tankIndex = 1
Global $exePath = "C:\Games\World_of_Tanks\WoTLauncher.exe"
Global $_talks = 0
Global $_turns = 2
Global $_stops = 2

Global $_searchTarget = 1
Global $_fires = 1
Global $_stopsOnTargetting = 1
Global $_log = "WoT-BoT v1.34"
Global $_logIndex = 0
Global $fightCount = 0
Global $deathCount = 0
Global $aliveCount = 0
Global $firesCount = 0
Global $workBegin = 0;


mainGUI()

;=============== ОСНОВНОЙ GUI ЦИКЛ ===================
Func mainGUI()
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				closeApp()

			Case $startButton
				writeLog("Запуск бота")
				HotKeySet("{END}", "gameStop")
				start()

			Case $updateButton
				writeLog("Проверка обновлений")
				checkUpdate()

			Case $talks_editor
				$value = GUICtrlRead($talks_editor)
				GUICtrlSetData($talks_editor_p, $value)
				$_talks = $talks_editor;

			Case $turns_editor
				$value = GUICtrlRead($turns_editor)
				GUICtrlSetData($turns_editor_p, $value)
				$_turns = $turns_editor;

			Case $ostanovka
				$value = GUICtrlRead($ostanovka)
				GUICtrlSetData($ostanovka_p, $value)
				$_stops = $ostanovka;

			Case $ostanovkaPriCeli
				If (GUICtrlRead($nMsg) = $GUI_CHECKED) Then
					$_stopsOnTargetting = 1
				Else
					$_stopsOnTargetting = 0
				EndIf

			Case $strelyat
				If (GUICtrlRead($nMsg) = $GUI_CHECKED) Then
					$_fires = 1
				Else
					$_fires = 0
				EndIf

			Case $iskatCeli
				If (GUICtrlRead($nMsg) = $GUI_CHECKED) Then
					$_searchTarget = 1
				Else
					$_searchTarget = 0
				EndIf

			Case $slot1 Or $slot2 Or $slot3 Or $slot4 Or $slot5
				setSlotsValue($nMsg)
		EndSwitch
	WEnd
EndFunc   ;==>mainGUI
;=============== БЛОК ФУНКЦИЙ=====================

;=== Запись лога
Func writeLog($log)
	If ($log <> "") Then
		$_logIndex = $_logIndex + 1

		GUICtrlSetData($currentStatusLabel, $log)
		GUICtrlSetData($deathCountLabel, $deathCount)
		GUICtrlSetData($fightCountLabel, $fightCount)
		GUICtrlSetData($aliveCountLabel, $aliveCount)
		GUICtrlSetData($firesCountLabel, $firesCount)
		Local $h = 0
		Local $m = 0
		Local $s = 0
		If $workBegin == 0 Then
			GUICtrlSetData($workTimeLabel, "---")
		Else
			_TicksToTime(TimerDiff($workBegin), $h, $m, $s)
			GUICtrlSetData($workTimeLabel, $h & ":" & $m & ":" & $s)
		EndIf

		If ($_logIndex > 50) Then
			$_logIndex = 0;
			GUICtrlSetData($logs, @CR & @LF & $log)
		Else
			GUICtrlSetData($logs, @CR & @LF & $log, 1)
		EndIf
		ToolTip("")
		ToolTip($log)
		$_log = $_log & @CRLF & $log
	EndIf
EndFunc   ;==>writeLog

Func checkUpdate()
	writeLog("Проверка обновлений..")
	$FileToUpdate = "WoTBoT.exe";
	$FileToDownload = "WoTBoT.exe";
	$FileDownloadURL = "http://sd.its.bz/wot/"
	$FileToReplace = (@ScriptDir & "\" & $FileToUpdate)
	$FileSize = InetGetSize($FileDownloadURL & $FileToDownload, 1)
	$LocalFileSize = FileGetSize(@ScriptDir & "\" & $FileToUpdate)
	If ($FileSize <> 0) And ($LocalFileSize <> $FileSize) Then
		writeLog("Обнаружено обновление. Обновляемся..")
		Run(@ScriptDir & "\updater.exe")
		Exit
	Else
		writeLog("Обновлений нет");
	EndIf
EndFunc   ;==>checkUpdate

;=== Запись значений активности слотов
Func setSlotsValue($nMsg)
	$value = GUICtrlRead($nMsg)

	Switch $nMsg
		Case $slot1
			If ($value = $GUI_CHECKED) Then
				$_slot[1][0] = 1
				writeLog("Слот1 активен")
			Else
				$_slot[1][0] = 0
				writeLog("Слот1 не активен")
			EndIf
		Case $slot2
			If ($value = $GUI_CHECKED) Then
				$_slot[2][0] = 1
				writeLog("Слот2 активен")
			Else
				$_slot[2][0] = 0
				writeLog("Слот2 не активен")
			EndIf
		Case $slot3
			If ($value = $GUI_CHECKED) Then
				$_slot[3][0] = 1
				writeLog("Слот3 активен")
			Else
				$_slot[3][0] = 0
				writeLog("Слот3 не активен")
			EndIf
		Case $slot4
			If ($value = $GUI_CHECKED) Then
				$_slot[4][0] = 1
				writeLog("Слот4 активен")
			Else
				$_slot[4][0] = 0
				writeLog("Слот4 не активен")
			EndIf
		Case $slot5
			If ($value = $GUI_CHECKED) Then
				$_slot[5][0] = 1
				writeLog("Слот5 активен")
			Else
				$_slot[5][0] = 0
				writeLog("Слот5 не активен")
			EndIf
	EndSwitch
EndFunc   ;==>setSlotsValue

;=== Вероятность остановки во время прямого движения
Func doStop()
	If Random(0, Random(0, 1000) < $_stops) Then
		writeLog("Будем стоять")
		Send("{ц up}")
		Send("{w up}")
		Sleep(Random(500, 3000))
		Send("{ц down}")
		Send("{w down}")
	EndIf
EndFunc

;=== Вероятность поворота во время прямого движения
;=== Два условия для исключения значения 50, иначе перевес в одну сторону
Func doTurn()
	If Random(0, Random(0, 1000) < $_turns) Then
		writeLog("Будем поворачивать")
		Local $rndm = Random(0, 100)
		If ($rndm > 50) Then
			writeLog("Вправо!")
			Send("{в down}")
			Send("{d down}")
			Sleep(Random(500, 2000))
			Send("{в up}")
			Send("{d up}")
		ElseIf ($rndm < 50) Then
			writeLog("Влево!")
			Send("{ф down}")
			Send("{a down}")
			Sleep(Random(500, 2000))
			Send("{ф up}")
			Send("{a up}")
		EndIf
	EndIf
EndFunc   ;==>doTurn

Func doDetour()
	Sleep(500)
	Send("{ц up}")
	Send("{w up}")
	Sleep(500)
	Send("{ы down}")
	Send("{s down}")
	Sleep(Random(3000, Random(4000, 6000)))
	$direction = ""
	If (Random(0, 100) > 50) Then
		$direction = "right"
		Send("{в down}")
		Send("{d down}")
		Sleep(Random(500, Random(1000, 3000)))
		Send("{в up}")
		Send("{d up}")
	Else
		$direction = "left"
		Send("{ф down}")
		Send("{a down}")
		Sleep(Random(500, Random(1000, 3000)))
		Send("{ф up}")
		Send("{a up}")
	EndIf
	Sleep(Random(200, Random(300, 2000)))
	Send("{ы up}")
	Send("{s up}")
	Sleep(Random(200, Random(300, 3000)))
	Send("{ц down}")
	Send("{w down}")
	Sleep(Random(200, Random(300, 5000)))
	If ($direction == "left") Then
		Send("{в down}")
		Send("{d down}")
		Sleep(Random(500, Random(1000, 3000)))
		Send("{в up}")
		Send("{d up}")
	Else
		Send("{ф down}")
		Send("{a down}")
		Sleep(Random(500, Random(1000, 3000)))
		Send("{ф up}")
		Send("{a up}")
	EndIf
EndFunc   ;==>doDetour

;=== Отключение, перезапуск сервера, обрыв связи...
Func checkOffline()
	If (PixelGetColor(640, 439) == 0xA7A399) Then
		writeLog('Похоже порвалась связь.')
		Sleep(100)
		MouseClick("left", 640, 439, 2, 100)
		Sleep(3000)
		Return True
	Else
		Return False
	EndIf
EndFunc   ;==>checkOffline

Func checkLogin()
	If (PixelGetColor(472, 613) == 0x9C1620) Then
		writeLog("О, форма входа. Заходим.")
		WinActivate("[TITLE:WoT Client]")
		MouseClick("Left", 472, 613)
		Sleep(5000)
		Return True
	Else
		Return False
	EndIf
EndFunc   ;==>checkLogin

Func checkResultWindowOpened()
	If (PixelGetColor(15, 40) == 0xE8E8D9) Then
		writeLog("Открыто окно результатов. Закроем.")
		MouseClick("Left", 1007, 40)
		Sleep(2000)
	EndIf
EndFunc   ;==>checkResultWindowOpened

;=============== ОСНОВНОЙ ИГРОВОЙ БЛОК ===========
Func start()
	$workBegin = TimerInit()
	writeLog('Ищем запущенную игру')
	Sleep(1000)
	WinActivate("[TITLE:WoT Client]")
	Local $hWnd = WinWait("[TITLE:WoT Client]", "", 10)

	If ($hWnd == 0) Then
		writeLog("Танки не запущены. Выходим.")
		Sleep(5000)
		mainGUI()
	EndIf

	While WinActive("[TITLE:WoT Client]")

		;=== Форма входа
		checkLogin()

		;=== Отключение, перезапуск сервера, обрыв связи...
		If checkOffline() Then
			checkLogin()
		EndIf

		checkResultWindowOpened()

		Sleep(5000)
		writeLog("Прокрутка до первых танков")
		Sleep(1000)
		MouseClick("Left", 110, 665, 10)
		Sleep(1000)
		MouseClick("Left", 110, 665, 10)
		Sleep(1000)

		If ($_slot[$tankIndex][0] == 1) Then
			writeLog("Пробуем танк №" & $tankIndex)
			MouseClick("Left", $_slot[$tankIndex][1], $_slot[$tankIndex][2], 3)
			Sleep(1000)
		Else
			writeLog("Танк №" & $tankIndex & " не участвует в игре. Ищем дальше.")
		EndIf
		If (PixelGetColor(470, 38) == 0xDB2A22) And ($_slot[$tankIndex][0] == 1) Then

			;=== Проверим обновления бота перед входом в бой
			checkUpdate()

			GUICtrlSetData($currentStatusLabel, "Боевой процесс", 1)

			$fightCount = $fightCount + 1

			writeLog("Входим в бой")
			Sleep(1000)
			MouseClick("primary", 470, 38)
			Sleep(1000)
			MouseClick("primary", 471, 39)
			Sleep(1000)
			MouseClick("primary", 472, 37)

			writeLog("Ожидание начала отсчёта")
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(455, 195) <> 0xF4EFE8 And Not checkOffline()
				Sleep(1000)
			WEnd
			If checkLogin() Then ContinueLoop

			writeLog("Ждём начала боя")
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(455, 195) = 0xF4EFE8 And Not checkOffline()
				Sleep(1000)
			WEnd
			If checkLogin() Then ContinueLoop

			;Бой
			writeLog("Бой начинается")
			Send("{UP down}")
			Sleep(500)
			Send("{UP up}")
			writeLog('Выровняли камеру')
			Sleep(1000)
			If ($_searchTarget == 1) Then Send("{LEFT down}")
			Sleep(1000)
			Send("{ц down}")
			Sleep(1000)
			Send("{w down}")
			Sleep(5000)
			Send("{-}", 0)
			Sleep(500)
			writeLog('Уменьшили миникарту')
			Sleep(500)
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(697, 98) <> 0x8A8970 And PixelGetColor(290, 723) <> 0xAE3F28 And PixelGetColor(59, 666) <> 0xDFDECF And	PixelGetColor(470, 38) <> 0xDB2A22 And PixelGetColor(674, 49) <> 0x595A47
				Local $begin = TimerInit()

				;=== Форма входа
				If checkLogin() Then ExitLoop

				;=== Отключение, перезапуск сервера, обрыв связи...
				If checkOffline() Then
					If checkLogin() Then ExitLoop
				EndIf

				;==== Выравнивание прицела
				If (Random(0, 10000) > 9980) Then

					writeLog("Выравнивание прицела")
					Send("{HOME}")
					Send("{UP 5}")
				EndIf
				;==== Поиск цели

				;=== Ищем цель на экране
				$coord = PixelSearch(0, 30, 1024, 530, $color, $dirt, 1)
				If Not @error Then
					$x = $coord[0]
					$y = $coord[1]
					writeLog("Нашли то-то красное. Проверим, насколько оно крупное")
					$coord = PixelSearch($x + 2, $y + 2, $x + 5, $y + 5, $color, $dirt, 1)
					If Not @error Then
						$x = $coord[0]
						$y = $coord[1]
						writeLog("Ого, какое жирное!")
						writeLog("Перестали крутить башней")
						If ($_searchTarget == 1) Then Send("{LEFT up}")
						Sleep(100)

						If ($_stopsOnTargetting == 1) Then
							writeLog("Стоп машина!")
							Send("{ц up}")
							Send("{w up}")
						EndIf


						writeLog("Цель обнаружена! Наводимся..")
						If (Random(0, Random(0, 10000)) < $_talks) Then
							Send("{ENTER}")
							Sleep(100)
							Send("Вижу гада!", 1)
							Sleep(100)
							Send("{ENTER}")
							Sleep(100)
						EndIf

						writeLog("Сейчас наведёмся...")
						While WinActive("[TITLE:WoT Client]") And (($x < 500 - $margin) Or ($x > 500 + $margin) Or ($y < 300 - $margin) Or ($y > 300 + $margin)) And (($x <> -1) And ($y <> -1)) And PixelGetColor(290, 723) <> 0xAE3F28
							If ($x > 500) Then
								Send("{RIGHT}")
							Else
								Send("{LEFT}")
							EndIf

							If ($y > 300) Then
								Send("{DOWN}")
							Else
								Send("{UP}")
							EndIf

							$coord = PixelSearch(0, 30, 1024, 530, $color, $dirt, 1)
							If Not @error Then
								$x = $coord[0]
								$y = $coord[1]
							Else
								$x = -1
								$y = -1
							EndIf
						WEnd


						Send("{LSHIFT}", 0)
						If (Not @error) Then
							writeLog("Готово. Теперь целимся в снайпере.")
							Sleep(500)
						EndIf

						While WinActive("[TITLE:WoT Client]") And (($x < 500 - $margin2) Or ($x > 500 + $margin2) Or ($y < 370 - $margin2) Or ($y > 370 + $margin2)) And (($x <> -1) And ($y <> -1)) And PixelGetColor(290, 723) <> 0xAE3F28
							If ($x > 512) Then
								Send("{RIGHT}")
							Else
								Send("{LEFT}")
							EndIf

							If ($y > 370) Then
								Send("{DOWN}")
							Else
								Send("{UP}")
							EndIf
							$coord = PixelSearch(0, 30, 1024, 530, $color, $dirt)
							If Not @error Then
								$x = $coord[0]
								$y = $coord[1]
							Else
								$x = -1
								$y = -1
							EndIf
						WEnd

						If ($x <> -1) And ($y <> -1) Then
							writeLog("Огонь!")
							Sleep(100)
							If ($_fires == 1) Then
								$firesCount = $firesCount + 1
								MouseClick("Left", 512, 384)
							EndIf
							If (Random(0, Random(0, 1000)) < $_talks) Then
								Send("{ENTER}")
								Sleep(100)
								Send("Получи гад!", 1)
								Sleep(100)
								Send("{ENTER}")
								Sleep(100)
							EndIf
							Sleep(200)
						Else
							writeLog("Эх, упустил...")
							If (Random(0, Random(0, 1000)) < $_talks) Then
								Send("{ENTER}")
								Sleep(100)
								Send("Ушёл..", 1)
								Sleep(100)
								Send("{ENTER}")
								Sleep(100)
							EndIf
						EndIf

						Send("{LSHIFT}", 0)
						Sleep(500)

						If ($_stopsOnTargetting == 1) Then
							writeLog("Ладно, едем дальше")
							Send("{ц down}")
							Send("{w down}")
						EndIf

						Sleep(2000)
						If ($_searchTarget == 1) Then Send("{LEFT down}")
						Sleep(200)
					Else
						writeLog("Не, слишком мелкое. Ну его.")
					EndIf
				EndIf

				;=== Скорость=0, возможно мы упёрлись
				If (PixelGetColor(68, 602) == 0x817C54) Then
					writeLog('Похоже мы упёрлись. Попробуем ещё немного поддать.')
					doTurn()
					Sleep(2000)
					If (PixelGetColor(68, 602) == 0x817C54) Then
						;=== Объезд препятствия во время прямого движения
						writeLog("Да, мы упёрлись. Выполняем объезд.")
						doDetour()
					EndIf
				EndIf

				;=== Поворот во время прямого движения
				doTurn()

				;=== Остановка
				doStop()


				;=== Отправка команде типовых сообщений
				If (Random(0, Random(0, 10000)) < $_talks) Then
					If (Random(0, 10000) > 5000) Then
						Send("{F5}")
					Else
						Send("{F4}")
					EndIf
				EndIf

				;=== Отключение, перезапуск сервера, обрыв связи...
				If checkOffline() Then
					ExitLoop
				EndIf

				Local $dif = TimerDiff($begin)
				;writeLog("Time Difference = " & $dif)
			WEnd

			writeLog("Вышли из боя")
			Send("{ц up}")
			Send("{w up}")
			Sleep(3000)


			If WinActive("[TITLE:WoT Client]") And PixelGetColor(290, 723) == 0xAE3F28 Then

				$deathCount = $deathCount + 1
				writeLog("Нас убили. Печалька.")
				Sleep(3000)

				writeLog("Выходим в ангар")
				Sleep(1000)

				Send("{ESC}")
				Sleep(3000)

				MouseClick("Left", 520, 342, 3)
				Sleep(3000)
				MouseClick("Left", 540, 442, 3)
				Sleep(1000)
			else
				Sleep(5000)
				writeLog("Похоже я выжил!")
				$aliveCount = $aliveCount + 1
				Send("{ESC}")
				checkResultWindowOpened()
				Sleep(3000)
			EndIf
		Else
			Sleep(5000)
			writeLog("Прокрутка до первых танков")
			Sleep(1000)
			MouseClick("Left", 110, 665, 10)
			Sleep(1000)
			MouseClick("Left", 110, 665, 10)
			Sleep(1000)

			writeLog("Ищем активный танк в ангаре.")

			If ($_slot[$tankIndex][0] == 0) Then
				$tankIndex = $tankIndex + 1
			EndIf

			If ($tankIndex > 5) Then $tankIndex = 1

			Sleep(1000)
			If (PixelGetColor(470, 38) <> 0xDB2A22) And ($_slot[$tankIndex][0] == 1) Then
				writeLog("Танк не может играть. Ищем дальше.")
				$tankIndex = $tankIndex + 1
			EndIf

			If ($tankIndex > 5) Then $tankIndex = 1
		EndIf
	WEnd

	writeLog("Скрипт завершён.")
	Sleep(3000)
EndFunc   ;==>start

Func nope()
EndFunc   ;==>nope

Func gameStop()
	writeLog("Игровой скрипт приостановлен")
	FileWrite("actions.log", $_log)
	MsgBox(4096, "WoTBoT", "История действий сохранена в файл actions.log", 10)
	HotKeySet("{END}", "nope")
	WinActivate("WoT-BoT")
	mainGUI()
EndFunc   ;==>gameStop

Func closeApp()
	FileWrite("actions.log", $_log)
	MsgBox(4096, "WoTBoT", "История действий сохранена в файл actions.log", 10)
	Exit
EndFunc   ;==>closeApp