Global $WinName = "World of Warcraft"
Global $state = "stop" 
Opt("PixelCoordMode", 2) ;Отсчет координат пикселей от левого верхнего угла клиентской части окна
Opt("MouseCoordMode", 2) ;Отсчет координат мыши от левого верхнего угла клиентской части окна
HotKeySet("3", "_Exit")
HotKeySet("1","Runing")
HotKeySet("2","Pause")
WinActivate($WinName)
WinWaitActive($WinName)	



While 1
	sleep(10)
	if $state="go" Then
	Fish(); бесконечный вызов этой функции, которая делает необходимое в данный момент действие
ElseIf $state="stop" Then 
	sleep(10)
	EndIf
WEnd


Func _Exit()
    Exit
EndFunc

Func Runing()
    $state="go"
EndFunc

Func Pause()
   $state="stop"
EndFunc




Func Fish()
	While 1
		
			$coord = PixelSearch(2297,919,2331,943,0x33C633,5)
			If Not @error Then
				sleep(500)
				Send("0")
				sleep(2000)
				Send("5")
				Sleep(2500)
			EndIf
		
	
	WEnd
EndFunc

