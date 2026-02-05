'$Debug
'-------------------------------------------------------------------------------------------------------------------------------------
' Convert every single x coordinates into a sessagesimal Longitude position.
' The function DecimalLongitudecalculate has like parameter the x position, and returns the angle in decimal(distance from the "Greenwich meridian" and relative angle).
' Passing this number as a parameter to the function  EWLongitudeconverter, it returns a string with the sessagesimal Longitude position.
' ------------------------------------------------------------------------------------------------------------------------------------
declare Function DecimalLongitudecalculate (relativex As Single) as single
declare function EWLongitudeconverter(ad as single) as string
type wind
   forza as integer
   direzione as single
   vewlocita as single
end type


type vawe
   altezza as single
   chop as single
end type

type timoneType
   locx as single
   locy as single
   angle as single
end type
type andaturaType
   bolina as boolean
   poppa as boolean
end type

type ship
   timone as timoneType
   andatura as andaturaType
   viniziale as single
   stazza as integer
   vela as single
   declare sub setAndatura(tipo as boolean)
   declare sub setAngle(angolo as single)
end type

Dim Shared as single xratio, yratio 
Dim Shared as single centerx, centery, xpos 
Dim shared as single Londecimalpos 
Dim Shared as single Londeccalculate 


Dim shared as string longitudine 


Screen 12
xratio = 1.77 'one Longitude degree
yratio = 2.66 'one Latitude degree
centerx = 320
centery = 240
xpos = 50

longitudine = EWLongitudeconverter(Londecimalpos)
Print "Sessagesimal longitude position: "; longitudine
sleep
End



Function EWLongitudeconverter (ad As Single) as string
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

    Londecimalpos = DecimalLongitudecalculate(xpos)
    dot = Chr$(46)
    tempstring = Str$(Londecimalpos)
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

        Londecimalpos = Val(tempstring) + .1

    Else
        Londecimalpos = Val(tempstring)
    End If

    'num = ad
    num = Str$(Londecimalpos)
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
    'nuovonumero = Val(nuovastringa)
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
    result = nuovastringa + " " + neominuti + "'" + " " + secondi + "''" + " " + cardinal
    EWLongitudeconverter = result



End Function
Function DecimalLongitudecalculate (relativex As Single) as single
    Dim tempsingle As Single
    tempsingle = relativex - centerx
    Londeccalculate = tempsingle / xratio
    DecimalLongitudecalculate = Londeccalculate
End Function

