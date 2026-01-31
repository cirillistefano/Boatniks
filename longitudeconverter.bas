'$Debug
'-------------------------------------------------------------------------------------------------------------------------------------
' Convert every single x coordinates into a sessagesimal Longitude position.
' The function DecimalLongitudecalculate! has like parameter the x position, and returns the angle in decimal(distance from the "Greenwich meridian" and relative angle).
' Passing this number as a parameter to the function  EWLongitudeconverter$, it returns a string with the sessagesimal Longitude position.
' ------------------------------------------------------------------------------------------------------------------------------------
declare Function DecimalLongitudecalculate! (relativex As Single)
declare function EWLongitudeconverter$(ad as single)
Dim Shared xratio, yratio As Single
Dim Shared centerx, centery, xpos As Single
Dim temppos As Single
Dim Shared deccalculate As Single


Dim longitudine As String


Screen 12
xratio = 1.77 'one Longitude degree
yratio = 2.66 'one Latitude degree
centerx = 320
centery = 240
xpos = 550

longitudine = EWLongitudeconverter$(temppos)
Print "Sessagesimal longitude position: "; longitudine
End



Function EWLongitudeconverter$ (ad As Single)
    Dim posi As Integer
    Dim num As String
    Dim nuovastringa As String
    Dim altrastringa As String
    Dim minuti As String
    Dim neominuti As String
    Dim secondi As String
    Dim dot As String
    Dim posizione As Integer
    Dim min As Single
    Dim minutipos As Integer
    Dim result As String
    Dim cardinal As String
    Dim tempstring As String
    Dim minus As String
    Dim alert As Integer

    temppos = DecimalLongitudecalculate!(xpos)
    dot = Chr$(46)
    tempstring = Str$(temppos)
    posi = InStr(tempstring, dot)

    If Left$(tempstring, 1) = Chr$(45) Then 'If minus in front of the string, issues an alert setting a bit.
        'Print "minus sign detected"
        alert = 1
    End If
    If posi = 4 And alert = 1 Then
        'Print "posi=4"
        tempstring = Left$(tempstring, posi + 2)
    Else
        tempstring = Left$(tempstring, posi + 2)
    End If
    If posi = 3 Then
        tempstring = Left$(tempstring, 5)
    End If
    If Right$(tempstring, 1) = "0" Then 'If the last digit is = 0 then adds .1 cause Val function doesn.t care about a zero.

        temppos = Val(tempstring) + .1

    Else
        temppos = Val(tempstring)
    End If

    'num = ad
    num = Str$(temppos)
    Print "Decimal longitude: "; num
    'Sleep
    If Left$(num, 1) = Chr$(45) Then
        cardinal = "West"
        num = Right$(num, Len(num) - 1)
    Else
        cardinal = "East"
    End If

    dot = Chr$(46)
    posizione = InStr(num, dot)
    nuovastringa = Left$(num, posizione - 1)
    nuovastringa = nuovastringa + Chr$(248)
    nuovonumero = Val(nuovastringa)
    altrastringa = Right$(num, Len(num) - posizione)
    If Len(altrastringa) > 1 Then
        min = (Val(altrastringa) / 100) * 60
    Else
        min = (Val(altrastringa) / 10) * 60
    End If
    'Print minuti
    minuti = Str$(min)
    minutipos = InStr(minuti, dot)
    neominuti = Left$(minuti, minutipos - 1)
    'Print neominuti$
    secondi = Right$(minuti, Len(minuti) - minutipos)
    'Print minuti$
    result = nuovastringa + neominuti + "'" + " " + secondi + "''" + " " + cardinal
    EWLongitudeconverter$ = result



End Function
Function DecimalLongitudecalculate! (relativex As Single)
    Dim tempsingle As Single
    tempsingle = relativex - centerx
    deccalculate = tempsingle / xratio
    DecimalLongitudecalculate! = deccalculate
End Function

