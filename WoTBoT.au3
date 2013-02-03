#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <SliderConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Opt("TrayMenuMode", 1)
#Region ### START Koda GUI section ### Form=D:\Profiles\Admin\Мои документы\WotBot\mainForm.kxf
$Form1_1 = GUICreate("WoT-BoT", 629, 762, -1, -1)
GUISetIcon("F:\Games\World_of_Tanks\WorldOfTanks.exe", -1)
$Group6 = GUICtrlCreateGroup("О программе", 8, 8, 617, 177)
$Icon1 = GUICtrlCreateIcon("F:\Games\World_of_Tanks\WorldOfTanks.exe", -1, 16, 24, 48, 48)
$Label1 = GUICtrlCreateLabel("Программа представляет собой простейший настраиваемый бот для игры WorldOfTanks.", 72, 56, 461, 17)
$Label2 = GUICtrlCreateLabel("WoT-BoT v0.32", 72, 32, 94, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label3 = GUICtrlCreateLabel("В данной версии бот умеет двигаться вперёд, поворачивать, разворачиваться искать цель и стрелять по ней.", 16, 72, 568, 17)
$Label4 = GUICtrlCreateLabel("Выбор танков для боя осуществляется автоматически из выбранных активными танков первых пяти слотов.", 16, 88, 564, 17)
$Label5 = GUICtrlCreateLabel("Следуйте инструкциям для корректной работы бота. Если что-то не так: bel_poprygun@pisem.net", 16, 112, 494, 17)
$Label6 = GUICtrlCreateLabel("И помните: жульничать не хорошо... Но на войне все средства хороши! ;-)", 16, 128, 378, 17)
$Label7 = GUICtrlCreateLabel("PS: Автор не несёт ответственности за Ваши действия в игре с использованием бота и любые последствия.", 16, 160, 604, 20)
GUICtrlSetFont(-1, 8, 800, 2, "Trebuchet MS")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("Настройка бота", 8, 200, 617, 393)
$Group2 = GUICtrlCreateGroup("Слот 1", 24, 376, 113, 57)
$slot1 = GUICtrlCreateCheckbox("Использовать", 32, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("Слот 2", 144, 376, 113, 57)
$slot2 = GUICtrlCreateCheckbox("Использовать", 152, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group4 = GUICtrlCreateGroup("Слот 3", 264, 376, 113, 57)
$slot3 = GUICtrlCreateCheckbox("Использовать", 272, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group5 = GUICtrlCreateGroup("Слот 4", 384, 376, 113, 57)
$slot4 = GUICtrlCreateCheckbox("Использовать", 392, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group7 = GUICtrlCreateGroup("Слот 5", 504, 376, 113, 57)
$slot5 = GUICtrlCreateCheckbox("Использовать", 512, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label8 = GUICtrlCreateLabel("Преднастройка игры", 16, 224, 129, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Tes = GUICtrlCreateLabel("Бот работает с запущенным и залогиненым приложением WoT Client. Клиент должен выполняться в оконном", 16, 240, 568, 17)
$Label9 = GUICtrlCreateLabel("режиме с разрешением 1024x768. Перед запуском бота необходимо выполнить настройку клиента: ", 16, 256, 519, 17)
$Label10 = GUICtrlCreateLabel("+ Сделать прозрачным 'Маркер орудия' в 'Аркадном' и 'Снайперском' режимах", 16, 272, 405, 17)
$Label11 = GUICtrlCreateLabel("+ Выключить отображение любой информации о разрушенных танках", 16, 288, 359, 17)
$Label12 = GUICtrlCreateLabel("+ Карта должна быть самого маленького размера, управление - по-умолчанию", 16, 304, 408, 17)
$Label13 = GUICtrlCreateLabel("Выбор танков для игры", 16, 352, 145, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Label14 = GUICtrlCreateLabel("+ Танки должны автоматически ремонтироваться и пополняться снарядами, не используйте САУ", 16, 320, 506, 17)
$Label15 = GUICtrlCreateLabel("Настройка движения (вероятности)", 16, 456, 217, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$razgovor = GUICtrlCreateSlider(192, 480, 230, 17, 0)
GUICtrlSetLimit(-1, 10000, 0)
$Label16 = GUICtrlCreateLabel("Разговорчики", 16, 480, 75, 17)
$Label17 = GUICtrlCreateLabel("Поворот на ходу", 16, 504, 87, 17)
$povorot = GUICtrlCreateSlider(192, 504, 230, 17, 0)
GUICtrlSetLimit(-1, 10000, 0)
GUICtrlSetData(-1, 5000)
$Label18 = GUICtrlCreateLabel("Остановка", 16, 528, 59, 17)
$ostanovka = GUICtrlCreateSlider(192, 528, 230, 17, 0)
GUICtrlSetLimit(-1, 10000, 0)
GUICtrlSetData(-1, 1000)
$ostanovkaPriCeli = GUICtrlCreateCheckbox("Остановка при наведении", 280, 560, 153, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$iskatCeli = GUICtrlCreateCheckbox("Искать цели", 16, 560, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$strelyat = GUICtrlCreateCheckbox("Стрелять по целям", 120, 560, 153, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$startButton = GUICtrlCreateButton("СТАРТ!", 448, 488, 163, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label19 = GUICtrlCreateLabel("Запуск всегда начинается с ангара!", 400, 464, 223, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$stopButton = GUICtrlCreateButton("Стоп (END на клавиатуре)", 448, 520, 163, 65)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$povorot_p = GUICtrlCreateLabel("0", 120, 504, 50, 17)
$Label23 = GUICtrlCreateLabel("%", 176, 504, 12, 17)
$razgovor_p = GUICtrlCreateLabel("0", 120, 480, 50, 17)
$Label25 = GUICtrlCreateLabel("%", 176, 480, 12, 17)
$ostanovka_p = GUICtrlCreateLabel("0", 120, 528, 50, 17)
$Label27 = GUICtrlCreateLabel("%", 176, 528, 12, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group8 = GUICtrlCreateGroup("Статус работы бота", 9, 600, 615, 153)
$logs = GUICtrlCreateEdit("", 16, 632, 601, 113, BitOR($ES_AUTOVSCROLL,$ES_READONLY,$ES_WANTRETURN,$WS_VSCROLL))
$Label20 = GUICtrlCreateLabel("История операций", 17, 616, 114, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Label21 = GUICtrlCreateLabel("Текущий статус", 193, 616, 99, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$status = GUICtrlCreateLabel("Ничего не делаем", 296, 616, 322, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
TraySetIcon("F:\Games\World_of_Tanks\WorldOfTanks.exe", -1)
TraySetClick("0")
$MenuItem1 = TrayCreateItem("О программе")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###



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

writeLog("WoT-BoT v1.3")
Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)
Opt("SendKeyDownDelay", 100)
Opt("MouseClickDownDelay", 100)
HotKeySet("{END}", "endpos")

Dim $coord[3]
Local $x
Local $y
Local $color = 0xf1160b ; red
Local $dirt = 8
Local $margin = 20
Local $margin2 = 10
Local $tankIndex = 1
Local $exePath = "C:\Games\World_of_Tanks\WoTLauncher.exe"
Local $_razgovor = 0
Local $_povorot = 5000
Local $_ostanovka = 1000

Local $_iskatCeli = 1
Local $_strelyat = 1
Local $_ostanovkaPriCeli = 1



;=============== ОСНОВНОЙ ЦИКЛ ===================
While 1
  $nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $startButton
			writeLog("Запуск бота")
			start()

		Case $razgovor
			$value = Round(GUICtrlRead($razgovor)/10000*100)
			GUICtrlSetData($razgovor_p, $value)
			$_razgovor = 10000 - $razgovor;

		Case $povorot
			$value = Round(GUICtrlRead($povorot)/10000*100)
			GUICtrlSetData($povorot_p, $value)
			$_povorot = 10000 - $povorot;

		Case $ostanovka
			$value = Round(GUICtrlRead($ostanovka)/10000*100)
			GUICtrlSetData($ostanovka_p, $value)
			$_ostanovka = 10000 - $ostanovka;

		Case $ostanovkaPriCeli
			If (GUICtrlRead($nMsg) = $GUI_CHECKED) Then
				$_ostanovkaPriCeli = 1
			Else
				$_ostanovkaPriCeli = 0
			EndIf

		Case $strelyat
			If (GUICtrlRead($nMsg) = $GUI_CHECKED) Then
				$_strelyat = 1
			Else
				$_strelyat = 0
			EndIf

		Case $iskatCeli
			If (GUICtrlRead($nMsg) = $GUI_CHECKED) Then
				$_iskatCeli = 1
			Else
				$_iskatCeli = 0
			EndIf

		Case $slot1 Or $slot2 Or $slot3 Or $slot4 Or $slot5
			setSlotsValue($nMsg)
	EndSwitch
WEnd

;=============== БЛОК ФУНКЦИЙ=====================

;=== Запись лога
Func writeLog($log)
	If ($log <> "") Then
		;$text = GUICtrlRead($logs)
		GUICtrlSetData($logs, @CR & @LF & $log, 1)
		ToolTip("")
		ToolTip($log)
	EndIf
EndFunc   ;==>writeLog

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

;=============== ОСНОВНОЙ ИГРОВОЙ БЛОК ===========
Func start()


	writeLog('Ищем запущенную игру')
	Sleep(1000)
	WinActivate("[TITLE:WoT Client]")


	While WinActive("[TITLE:WoT Client]")
		GUICtrlSetData($status, "Работа в ангаре", 1)

		while (PixelGetColor(530, 489) == 0x100f0b)
			writeLog("Открыто окно результатов. Закроем.")
			MouseClick("Left", 1006, 78)
			Sleep(1000)
		WEnd

		If ($_slot[$tankIndex][0] == 1) Then
			writeLog("Пробуем танк №" & $tankIndex)
			MouseClick("Left", $_slot[$tankIndex][1], $_slot[$tankIndex][2], 3)
			sleep(1000)
		Else
			writeLog("Танк №" & $tankIndex & " не участвует в игре. Ищем дальше.")
		EndIf
		If (PixelGetColor(470, 38) == 0xDB2A22) And ($_slot[$tankIndex][0] == 1) Then

			GUICtrlSetData($status, "Боевой процесс", 1)

			writeLog("Входим в бой")
			Sleep(1000)
			MouseClick("primary", 470, 38)
			Sleep(1000)
			MouseClick("primary", 471, 39)
			Sleep(1000)
			MouseClick("primary", 472, 37)

			writeLog("Ожидание начала отсчёта")
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(455, 195) <> 0xF4EFE8
				Sleep(1000)
			WEnd

			writeLog("Ждём начала боя")
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(455, 195) = 0xF4EFE8
				Sleep(1000)
			WEnd

			;Бой
			writeLog("Вошли в бой")
			Send("{UP down}")
			Sleep(500)
			Send("{UP up}")
			writeLog('Выровняли камеру')
			Sleep(1000)
			if ($_iskatCeli == 1) then	Send("{LEFT down}")
			Sleep(1000)
			Send("{ц down}")
			Sleep(1000)
			Send("{w down}")
			Sleep(5000)
			Send("{-}", 0)
			Sleep(500)
			writeLog('Уменьшили миникарту')
			Sleep(500)
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(697, 98) <> 0x8A8970 And PixelGetColor(290, 723) <> 0xAE3F28 And PixelGetColor(59, 666) <> 0xDFDECF And PixelGetColor(470, 38) <> 0xDB2A22
				If (PixelGetColor(68, 602) == 0x817C54) Then
					writeLog('Похоже мы упёрлись. Попробуем ещё немного поддать.')
					Sleep(2000)
				EndIf

				If (PixelGetColor(68, 602) == 0x817C54) Then

					writeLog("Да, мы упёрлись. Выполним объезд.")
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
				Else
					;=== Прямое движение
					If Random(0, Random(0, 10000) < $_povorot) Then
						If (Random(0, 100) > 50) Then
							Send("{в down}")
							Send("{d down}")
							Sleep(Random(0, Random(100, 2000)))
							Send("{в up}")
							Send("{d up}")
						Else
							Send("{ф down}")
							Send("{a down}")
							Sleep(Random(0, Random(100, 2000)))
							Send("{ф up}")
							Send("{a up}")
						EndIf
					EndIf
				EndIf

				;==== Выравнивание прицела
				If (Random(0, 10000) > 9980) Then

					writeLog("Выравнивание прицела")
					Send("{HOME}")
					Send("{UP 5}")
				EndIf
				;==== Поиск цели


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
						if ($_iskatCeli == 1) then Send("{LEFT up}")
						Sleep(100)

						if ($_ostanovkaPriCeli == 1) then
							writeLog("Стоп машина!")
							Send("{ц up}")
							Send("{w up}")
						EndIf


						writeLog("Цель обнаружена! Наводимся..")
						If (Random(0, 10000) > 5500) Then
							;Send("{ENTER}")
							;Sleep(100)
							;Send("Вижу гада!", 1)
							;Sleep(100)
							;Send("{ENTER}")
							;Sleep(100)
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
							if ($_strelyat == 1) then MouseClick("Left", 512, 384)
							If (Random(0, Random(0, 10000)) < $_razgovor) Then
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
							If (Random(0, Random(0, 10000)) < $_razgovor) Then
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

						if ($_ostanovkaPriCeli == 1) then
							writeLog("Ладно, едем дальше")
							Send("{ц down}")
							Send("{w down}")
						EndIf

						Sleep(2000)
						if ($_iskatCeli == 1) then Send("{LEFT down}")
						Sleep(200)
					EndIf
				EndIf

				If (Random(0, Random(0, 10000)) < $_razgovor) Then
					If (Random(0, 10000) > 5000) Then
						Send("{F5}")
					Else
						Send("{F4}")
					EndIf
				EndIf
			WEnd

			writeLog("Вышли из боя")
			Send("{ц up}")
			Send("{w up}")
			Sleep(3000)


			If WinActive("[TITLE:WoT Client]") And PixelGetColor(290, 723) == 0xAE3F28 Then

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
			EndIf
		Else
			writeLog("Прокрутка до первых танков")
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

Func endpos()
	writeLog("Остановили скрипт по требованию")
	FileWrite ( "actions.log", GUICtrlRead($logs))
	MsgBox(4096, "WoTBoT", "История действий сохранена в файл actions.log", 10)
	Exit
EndFunc   ;==>endpos
