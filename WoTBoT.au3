#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <SliderConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Opt("TrayMenuMode", 1)
#region ### START Koda GUI section ### Form=D:\Profiles\Admin\��� ���������\WotBot\mainForm.kxf
$Form1_1 = GUICreate("WoT-BoT", 629, 762, -1, -1)
GUISetIcon("F:\Games\World_of_Tanks\WorldOfTanks.exe", -1)
$Group6 = GUICtrlCreateGroup("� ���������", 8, 8, 617, 177)
$Icon1 = GUICtrlCreateIcon("F:\Games\World_of_Tanks\WorldOfTanks.exe", -1, 16, 24, 48, 48)
$Label1 = GUICtrlCreateLabel("��������� ������������ ����� ���������� ������������� ��� ��� ���� WorldOfTanks.", 72, 56, 461, 17)
$Label2 = GUICtrlCreateLabel("WoT-BoT v0.32", 72, 32, 94, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label3 = GUICtrlCreateLabel("� ������ ������ ��� ����� ��������� �����, ������������, ��������������� ������ ���� � �������� �� ���.", 16, 72, 568, 17)
$Label4 = GUICtrlCreateLabel("����� ������ ��� ��� �������������� ������������� �� ��������� ��������� ������ ������ ���� ������.", 16, 88, 564, 17)
$Label5 = GUICtrlCreateLabel("�������� ����������� ��� ���������� ������ ����. ���� ���-�� �� ���: bel_poprygun@pisem.net", 16, 112, 494, 17)
$Label6 = GUICtrlCreateLabel("� �������: ���������� �� ������... �� �� ����� ��� �������� ������! ;-)", 16, 128, 378, 17)
$Label7 = GUICtrlCreateLabel("PS: ����� �� ���� ��������������� �� ���� �������� � ���� � �������������� ���� � ����� �����������.", 16, 160, 604, 20)
GUICtrlSetFont(-1, 8, 800, 2, "Trebuchet MS")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("��������� ����", 8, 200, 617, 393)
$Group2 = GUICtrlCreateGroup("���� 1", 24, 376, 113, 57)
$slot1 = GUICtrlCreateCheckbox("������������", 32, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("���� 2", 144, 376, 113, 57)
$slot2 = GUICtrlCreateCheckbox("������������", 152, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group4 = GUICtrlCreateGroup("���� 3", 264, 376, 113, 57)
$slot3 = GUICtrlCreateCheckbox("������������", 272, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group5 = GUICtrlCreateGroup("���� 4", 384, 376, 113, 57)
$slot4 = GUICtrlCreateCheckbox("������������", 392, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group7 = GUICtrlCreateGroup("���� 5", 504, 376, 113, 57)
$slot5 = GUICtrlCreateCheckbox("������������", 512, 400, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label8 = GUICtrlCreateLabel("������������� ����", 16, 224, 129, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Tes = GUICtrlCreateLabel("��� �������� � ���������� � ����������� ����������� WoT Client. ������ ������ ����������� � �������", 16, 240, 568, 17)
$Label9 = GUICtrlCreateLabel("������ � ����������� 1024x768. ����� �������� ���� ���������� ��������� ��������� �������: ", 16, 256, 519, 17)
$Label10 = GUICtrlCreateLabel("+ ������� ���������� '������ ������' � '��������' � '�����������' �������", 16, 272, 405, 17)
$Label11 = GUICtrlCreateLabel("+ ��������� ����������� ����� ���������� � ����������� ������", 16, 288, 359, 17)
$Label12 = GUICtrlCreateLabel("+ ����� ������ ���� ������ ���������� �������, ���������� - ��-���������", 16, 304, 408, 17)
$Label13 = GUICtrlCreateLabel("����� ������ ��� ����", 16, 352, 145, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Label14 = GUICtrlCreateLabel("+ ����� ������ ������������� ��������������� � ����������� ���������, �� ����������� ���", 16, 320, 506, 17)
$Label15 = GUICtrlCreateLabel("��������� �������� (�����������)", 16, 456, 217, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$razgovor = GUICtrlCreateSlider(192, 480, 230, 17, 0)
GUICtrlSetLimit(-1, 10, 0)
GUICtrlSetData(-1, 2)
$Label16 = GUICtrlCreateLabel("������������", 16, 480, 75, 17)
$Label17 = GUICtrlCreateLabel("������� �� ����", 16, 504, 87, 17)
$povorot = GUICtrlCreateSlider(192, 504, 230, 17, 0)
GUICtrlSetLimit(-1, 10, 0)
GUICtrlSetData(-1, 2)
$Label18 = GUICtrlCreateLabel("���������", 16, 528, 59, 17)
$ostanovka = GUICtrlCreateSlider(192, 528, 230, 17, 0)
GUICtrlSetLimit(-1, 10, 0)
GUICtrlSetData(-1, 2)
$ostanovkaPriCeli = GUICtrlCreateCheckbox("��������� ��� ���������", 280, 560, 153, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$iskatCeli = GUICtrlCreateCheckbox("������ ����", 16, 560, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$strelyat = GUICtrlCreateCheckbox("�������� �� �����", 120, 560, 153, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$startButton = GUICtrlCreateButton("�����!", 448, 488, 163, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label19 = GUICtrlCreateLabel("������ ������ ���������� � ������!", 400, 464, 223, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$stopButton = GUICtrlCreateButton("���� (END �� ����������)", 448, 520, 163, 65)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$povorot_p = GUICtrlCreateLabel("0", 120, 504, 50, 17)
$Label23 = GUICtrlCreateLabel("%", 176, 504, 12, 17)
$razgovor_p = GUICtrlCreateLabel("0", 120, 480, 50, 17)
$Label25 = GUICtrlCreateLabel("%", 176, 480, 12, 17)
$ostanovka_p = GUICtrlCreateLabel("0", 120, 528, 50, 17)
$Label27 = GUICtrlCreateLabel("%", 176, 528, 12, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group8 = GUICtrlCreateGroup("������ ������ ����", 9, 600, 615, 153)
$logs = GUICtrlCreateEdit("", 16, 632, 601, 113, BitOR($ES_AUTOVSCROLL, $ES_READONLY, $ES_WANTRETURN, $WS_VSCROLL))
$Label20 = GUICtrlCreateLabel("������� ��������", 17, 616, 114, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$Label21 = GUICtrlCreateLabel("������� ������", 193, 616, 99, 17)
GUICtrlSetFont(-1, 8, 800, 4, "MS Sans Serif")
$status = GUICtrlCreateLabel("������ �� ������", 296, 616, 322, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
TraySetIcon("F:\Games\World_of_Tanks\WorldOfTanks.exe", -1)
TraySetClick("0")
$MenuItem1 = TrayCreateItem("� ���������")
GUISetState(@SW_SHOW)
#endregion ### END Koda GUI section ###



;============= ���������� ���������� =============
Dim $_slot[7][3];
;====================== ������������� ============

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
Local $_razgovor = 2
Local $_povorot = 2
Local $_ostanovka = 2

Local $_iskatCeli = 1
Local $_strelyat = 1
Local $_ostanovkaPriCeli = 1



;=============== �������� ���� ===================
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $startButton
			writeLog("������ ����")
			start()

		Case $razgovor
			$value = Round(GUICtrlRead($razgovor) / 10000 * 100)
			GUICtrlSetData($razgovor_p, $value)
			$_razgovor = 10000 - $razgovor;

		Case $povorot
			$value = Round(GUICtrlRead($povorot) / 10000 * 100)
			GUICtrlSetData($povorot_p, $value)
			$_povorot = 10000 - $povorot;

		Case $ostanovka
			$value = Round(GUICtrlRead($ostanovka) / 10000 * 100)
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

;=============== ���� �������=====================

;=== ������ ����
Func writeLog($log)
	If ($log <> "") Then
		;$text = GUICtrlRead($logs)
		GUICtrlSetData($logs, @CR & @LF & $log, 1)
		ToolTip("")
		ToolTip($log)
	EndIf
EndFunc   ;==>writeLog

;=== ������ �������� ���������� ������
Func setSlotsValue($nMsg)
	$value = GUICtrlRead($nMsg)

	Switch $nMsg
		Case $slot1
			If ($value = $GUI_CHECKED) Then
				$_slot[1][0] = 1
				writeLog("����1 �������")
			Else
				$_slot[1][0] = 0
				writeLog("����1 �� �������")
			EndIf
		Case $slot2
			If ($value = $GUI_CHECKED) Then
				$_slot[2][0] = 1
				writeLog("����2 �������")
			Else
				$_slot[2][0] = 0
				writeLog("����2 �� �������")
			EndIf
		Case $slot3
			If ($value = $GUI_CHECKED) Then
				$_slot[3][0] = 1
				writeLog("����3 �������")
			Else
				$_slot[3][0] = 0
				writeLog("����3 �� �������")
			EndIf
		Case $slot4
			If ($value = $GUI_CHECKED) Then
				$_slot[4][0] = 1
				writeLog("����4 �������")
			Else
				$_slot[4][0] = 0
				writeLog("����4 �� �������")
			EndIf
		Case $slot5
			If ($value = $GUI_CHECKED) Then
				$_slot[5][0] = 1
				writeLog("����5 �������")
			Else
				$_slot[5][0] = 0
				writeLog("����5 �� �������")
			EndIf
	EndSwitch
 EndFunc   ;==>setSlotsValue


;=============== �������� ������� ���� ===========
Func start()


	writeLog('���� ���������� ����')
	Sleep(1000)
	WinActivate("[TITLE:WoT Client]")


	While WinActive("[TITLE:WoT Client]")
		GUICtrlSetData($status, "������ � ������", 1)

		While (PixelGetColor(530, 489) == 0x100f0b)
			writeLog("������� ���� �����������. �������.")
			MouseClick("Left", 1006, 78)
			Sleep(1000)
		WEnd

		Sleep(10000)
		writeLog("��������� �� ������ ������")
		Sleep(1000)
		MouseClick("Left", 110, 665, 10)
		Sleep(1000)
		MouseClick("Left", 110, 665, 10)
		Sleep(1000)

		If ($_slot[$tankIndex][0] == 1) Then
			writeLog("������� ���� �" & $tankIndex)
			MouseClick("Left", $_slot[$tankIndex][1], $_slot[$tankIndex][2], 3)
			Sleep(2000)
		Else
			writeLog("���� �" & $tankIndex & " �� ��������� � ����. ���� ������.")
		EndIf
		If (PixelGetColor(470, 38) == 0xDB2A22) And ($_slot[$tankIndex][0] == 1) Then

			GUICtrlSetData($status, "������ �������", 1)

			writeLog("������ � ���")
			Sleep(1000)
			MouseClick("primary", 470, 38)
			Sleep(1000)
			MouseClick("primary", 471, 39)
			Sleep(1000)
			MouseClick("primary", 472, 37)

			writeLog("�������� ������ �������")
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(455, 195) <> 0xF4EFE8
				Sleep(1000)
			WEnd

			writeLog("��� ������ ���")
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(455, 195) = 0xF4EFE8
				Sleep(1000)
			WEnd

			;���
			writeLog("����� � ���")
			Send("{UP down}")
			Sleep(500)
			Send("{UP up}")
			writeLog('��������� ������')
			Sleep(1000)
			If ($_iskatCeli == 1) Then Send("{LEFT down}")
			Sleep(1000)
			Send("{� down}")
			Sleep(1000)
			Send("{w down}")
			Sleep(5000)
			Send("{-}", 0)
			Sleep(500)
			writeLog('��������� ���������')
			Sleep(500)
			While WinActive("[TITLE:WoT Client]") And PixelGetColor(697, 98) <> 0x8A8970 And PixelGetColor(290, 723) <> 0xAE3F28 And PixelGetColor(59, 666) <> 0xDFDECF And PixelGetColor(470, 38) <> 0xDB2A22
				If (PixelGetColor(68, 602) == 0x817C54) Then
					writeLog('������ �� �������. ��������� ��� ������� �������.')
					Sleep(2000)
				EndIf

				If (PixelGetColor(68, 602) == 0x817C54) Then

					writeLog("��, �� �������. �������� ������.")
					Sleep(500)
					Send("{� up}")
					Send("{w up}")
					Sleep(500)
					Send("{� down}")
					Send("{s down}")
					Sleep(Random(3000, Random(4000, 6000)))
					$direction = ""
					If (Random(0, 100) > 50) Then
						$direction = "right"
						Send("{� down}")
						Send("{d down}")
						Sleep(Random(500, Random(1000, 3000)))
						Send("{� up}")
						Send("{d up}")
					Else
						$direction = "left"
						Send("{� down}")
						Send("{a down}")
						Sleep(Random(500, Random(1000, 3000)))
						Send("{� up}")
						Send("{a up}")
					EndIf
					Sleep(Random(200, Random(300, 2000)))
					Send("{� up}")
					Send("{s up}")
					Sleep(Random(200, Random(300, 3000)))
					Send("{� down}")
					Send("{w down}")
					Sleep(Random(200, Random(300, 5000)))
					If ($direction == "left") Then
						Send("{� down}")
						Send("{d down}")
						Sleep(Random(500, Random(1000, 3000)))
						Send("{� up}")
						Send("{d up}")
					Else
						Send("{� down}")
						Send("{a down}")
						Sleep(Random(500, Random(1000, 3000)))
						Send("{� up}")
						Send("{a up}")
					EndIf
				Else
					;=== ������ ��������
					If Random(0, Random(0, 10000) < $_povorot) Then
						If (Random(0, 100) > 50) Then
							Send("{� down}")
							Send("{d down}")
							Sleep(Random(0, Random(100, 2000)))
							Send("{� up}")
							Send("{d up}")
						Else
							Send("{� down}")
							Send("{a down}")
							Sleep(Random(0, Random(100, 2000)))
							Send("{� up}")
							Send("{a up}")
						EndIf
					EndIf
				EndIf

				;==== ������������ �������
				If (Random(0, 10000) > 9980) Then

					writeLog("������������ �������")
					Send("{HOME}")
					Send("{UP 5}")
				EndIf
				;==== ����� ����


				$coord = PixelSearch(0, 30, 1024, 530, $color, $dirt, 1)
				If Not @error Then
					$x = $coord[0]
					$y = $coord[1]
					writeLog("����� ��-�� �������. ��������, ��������� ��� �������")
					$coord = PixelSearch($x + 2, $y + 2, $x + 5, $y + 5, $color, $dirt, 1)
					If Not @error Then
						$x = $coord[0]
						$y = $coord[1]
						writeLog("���, ����� ������!")
						writeLog("��������� ������� ������")
						If ($_iskatCeli == 1) Then Send("{LEFT up}")
						Sleep(100)

						If ($_ostanovkaPriCeli == 1) Then
							writeLog("���� ������!")
							Send("{� up}")
							Send("{w up}")
						EndIf


						writeLog("���� ����������! ���������..")
						If (Random(0, 10000) > 5500) Then
							;Send("{ENTER}")
							;Sleep(100)
							;Send("���� ����!", 1)
							;Sleep(100)
							;Send("{ENTER}")
							;Sleep(100)
						EndIf

						writeLog("������ ��������...")
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
							writeLog("������. ������ ������� � ��������.")
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
							writeLog("�����!")
							Sleep(100)
							If ($_strelyat == 1) Then MouseClick("Left", 512, 384)
							If (Random(0, Random(0, 10000)) < $_razgovor) Then
								Send("{ENTER}")
								Sleep(100)
								Send("������ ���!", 1)
								Sleep(100)
								Send("{ENTER}")
								Sleep(100)
							EndIf
							Sleep(200)
						Else
							writeLog("��, �������...")
							If (Random(0, Random(0, 10000)) < $_razgovor) Then
								Send("{ENTER}")
								Sleep(100)
								Send("����..", 1)
								Sleep(100)
								Send("{ENTER}")
								Sleep(100)
							EndIf
						EndIf

						Send("{LSHIFT}", 0)
						Sleep(500)

						If ($_ostanovkaPriCeli == 1) Then
							writeLog("�����, ���� ������")
							Send("{� down}")
							Send("{w down}")
						EndIf

						Sleep(2000)
						If ($_iskatCeli == 1) Then Send("{LEFT down}")
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

			writeLog("����� �� ���")
			Send("{� up}")
			Send("{w up}")
			Sleep(3000)


			If WinActive("[TITLE:WoT Client]") And PixelGetColor(290, 723) == 0xAE3F28 Then

				writeLog("��� �����. ��������.")
				Sleep(3000)

				writeLog("������� � �����")
				Sleep(1000)

				Send("{ESC}")
				Sleep(3000)

				MouseClick("Left", 520, 342, 3)
				Sleep(3000)
				MouseClick("Left", 540, 442, 3)
				Sleep(1000)
			EndIf
		Else
			Sleep(10000)
			writeLog("��������� �� ������ ������")
			Sleep(1000)
			MouseClick("Left", 110, 665, 10)
			Sleep(1000)
			MouseClick("Left", 110, 665, 10)
			Sleep(1000)

			writeLog("���� �������� ���� � ������.")

			If ($_slot[$tankIndex][0] == 0) Then
				$tankIndex = $tankIndex + 1
			EndIf

			If ($tankIndex > 5) Then $tankIndex = 1

			Sleep(1000)
			If (PixelGetColor(470, 38) <> 0xDB2A22) And ($_slot[$tankIndex][0] == 1) Then
				writeLog("���� �� ����� ������. ���� ������.")
				$tankIndex = $tankIndex + 1
			EndIf

			If ($tankIndex > 5) Then $tankIndex = 1
		EndIf
	WEnd

	writeLog("������ ��������.")
	Sleep(3000)
EndFunc   ;==>start

Func endpos()
	writeLog("���������� ������ �� ����������")
	FileWrite("actions.log", GUICtrlRead($logs))
	MsgBox(4096, "WoTBoT", "������� �������� ��������� � ���� actions.log", 10)
	Exit
EndFunc   ;==>endpos