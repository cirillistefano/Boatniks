
'Hi all, if this program doesn't fit for you, simply press "H"
'Thanks to Ted Felix, the Sprites' wizard;to logiclrd for his faq "Delays and timing in Quickbasic";to RetroNick for his tutorial about collision in qbasic; to Toshi's Project Page.
'--------------------------------------------------------------------
'BOATNIKS
'-------------------------------------
'A joke about regatta-like game
'-------------------------------------
'Mask
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

declare Sub delay (numSeconds#, frequency#)
declare Sub unSetupTimer ()
declare Function setupTimer# (frequency#)

declare function endGame() as integer
declare Sub sprite (x%, y%, file$)
declare Sub PUT2 (Sprite() As Integer, XSize As Integer, YSize As Integer, X As Integer, Y As Integer)
declare Function Round(Num!, Decimals% ) as integer
declare function findDistance(o_x as single, o_y as single, d_x as single, d_y as single)
declare Function CircleRect (circle_x%, circle_y%, circle_rad%, r1x%, r1y%, r1w%, r1h%, )
'declare function rectCircle(r1x%,r1y%,r1w%,r1h%,circle_x%,circle_y%,circle_rad%)
declare sub PlayAI()
declare sub BestPath()
DECLARE FUNCTION rectRect% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)
'DECLARE FUNCTION rectRect2% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)
DECLARE SUB PlotLine (x1 AS INTEGER, y1 AS INTEGER, x2 AS INTEGER, y2 AS INTEGER, colore AS INTEGER)
DECLARE SUB Switch (x AS INTEGER, y AS INTEGER)
'DECLARE SUB PlotRotta (StartX, StartY, x, y, z)
DECLARE SUB UpdateKeys (k())

Const PI = 3.1415926, PI2 = PI * 2 '    useful PI values
Const ONEDEG = PI2 / 360 '              one radian degree


' $DYNAMIC
Randomize Timer

DefInt A-Z
Dim Shared accelerazione!

Dim Shared bg(1)
Type shiptype
    PruaX As Integer
    PruaY As Integer
    sailarea As Integer
    larghezza As Integer
    altezza As Integer
    timoneangle As Integer
End Type
Type windtype
    direzione As Single
    forza As Single
    velocita As Single
End Type
Type timone
    angolo As Double
End Type
Type boatype
    boa_x As Integer
    boa_y As Integer
    radius As Integer
End Type
Type CoppiaXY
    x As Integer
    y As Integer
End Type
Type SpriteType
    location As CoppiaXY
    h As Integer
    w As Integer
    rad As Integer
End Type
Type playerType
    nome As String
    sprt As SpriteType
    k_right As Integer
    k_left As Integer
    k_up As Integer
    k_down As Integer
End Type
'Dim Shared ship(2) As shiptype
Dim Shared player(2) As playerType
Dim Shared keys(127)
Dim Shared boa As boatype
Dim Shared wind As windtype
Dim Shared barra As timone
Dim Shared trigger%
Dim Shared angle
Dim Shared angolodibolina(2) As Single
Dim Shared angolodipoppa(2) As Single
Dim barca%(531)
Dim barca1%(531)
Dim Mask%(19, 25)

Dim c!(360), s!(360)
For i = 1 To 360
    c!(i) = Cos(i * 3.14 / 180)
    s!(i) = Sin(i * 3.14 / 180)
Next
Const TRUE = -1
Const FALSE = 0

Dim Timone&
Timone& = _LoadImage("timone.png", 32)
Screen Timone&
Sleep 6
Cls

'setting the screen

Screen _NewImage(800, 600, 256)

Color 10, 1
Cls

'Line (5, 270)-(8, 350), 4, B
'Color 10, 1
'Disegna la direzione del vento
Circle (720, 50), 30, 12
Paint (710, 50), 3, 1
'Circle (720, 50), 25, 10
t! = Atn(25)
For i = 1 To 30
    PSet (720 + i * -Sin(t!), 50 + i * -Cos(t!)), 10
    PSet (721 + i * -Sin(t!), 51 + i * -Cos(t!)), 10
Next i
'Disegna il timone

'Circle (650, 50), 30, 6
'Circle (650, 50), 29, 6
'Circle (650, 20), 5, 2

Sleep 10

'Reading data from the sprite's mask
For Z = 0 To 25
    For j = 0 To 19

        Read Mask%(j, Z)
        'PSet (10 + j, 230 + Z), 255
    Next j
Next Z
' End of mask
'-------------------------------------------------------

wind.direzione! = 25 'Wind's direction
Print ""; wind.direzione! * (PI / 180); ""
Sleep 10
Randomize Timer
r% = Int(Rnd * 10 + 6)
wind.forza! = r%
'wind.forza! = 12
wind.velocita! = .5 * wind.forza!
ship.sailarea = 20
'REM La riga seguente calcola la pressione del vento sulla vela x mq
Pascal! = (wind.velocita! ^ 2) * .613
phi! = 63
theta! = 63
'angolodibolina(2) = wind.direzione! + .66

freq# = setupTimer#(18.5) 'Setup timing

Rem F=m*a quindi a=F/m
accelerazione! = (Pascal! * ship.sailarea) / 154

'Debug informations
Print "Wind Speed"; wind.forza; "knots"




bolina.direzione = TRUE
'Barca 1
player(1).sprt.location.x% = 35
player(1).sprt.location.y% = 255
player(1).sprt.w% = 20
player(1).sprt.h% = 26
'Barca 2
player(2).sprt.location.x% = 35
player(2).sprt.location.y% = 339
player(2).sprt.w% = 20
player(2).sprt.h% = 26

'----------- Arena's boundaries-----------
'rx% = 0
'ry% = 0
'rh% = 639
'rw% = 479
'
rx% = 0
ry% = 0
rw% = 799
rh% = 599
'----------- Drawing Arena -----------------------
Line (rx%, ry%)-(rw%, rh%), 2, B

boa.boa_x = 680
boa.boa_y = 295
boa.radius = 10

Circle (boa.boa_x, boa.boa_y), boa.radius, 5
'------------------End of Arena's drawing ---------------------------------


lastx% = 0
lasty% = 0
lastw% = 0
lasth% = 0
lastx1% = 0
lasty1% = 0
lastw1% = 0
lasth1% = 0

Def Seg = VarSeg(barca%(0))
Def Seg = VarSeg(barca1%(0))
BLoad "BARCA01.PCX", VarPtr(barca%(0))
BLoad "BARCA02.PCX", VarPtr(barca1%(0))
Def Seg

dx = 1
dy = 1
'----------- Loading Sprite's files ---------------------
Call sprite(player(1).sprt.location.x%, player(1).sprt.location.y%, "BARCA01.PCX")
Call sprite(player(2).sprt.location.x%, player(2).sprt.location.y%, "BARCA02.PCX")

trigger% = 0
'----------------------------------------------------------------
'--------------- Start of Main -----------------------------------
'-----------------------------------------------------------------
While Not trigger% = 1

    Do
        Call delay(.05, freq#)

        UpdateKeys keys() 'updates the keys array
        Def Seg = &H40: Poke &H1C, Peek(&H1A): Def Seg
        px = player(1).sprt.location.x%
        py = player(1).sprt.location.y%
        p2x = player(2).sprt.location.x%
        p2y = player(2).sprt.location.y%

        PUT2 Mask%(), 20, 26, px, py

        PUT2 Mask%(), 20, 26, p2x, p2y
        'GPS
        PSet (px, py - 10), 10
        PSet (p2x, p2y - 10), 14
        'End of GPS

'-------------- Player 1 ------------------------------------------

        If keys(75) Then

            'phi! = phi! - ONEDEG
            angolodibolina!(1) = (phi! * (PI / 180))
            der! = Round(accelerazione! / angolodibolina!(1), 2)
            player(1).sprt.location.x% = player(1).sprt.location.x% + (der! + Cos(angolodibolina!(1)))
            player(1).sprt.location.y% = player(1).sprt.location.y% - (der! + Sin(angolodibolina!(1)))

        End If

        If keys(77) Then
            'phi! = phi! + ONEDEG
            angolodibolina!(1) = (phi! * (PI / 180))
            der! = Round(accelerazione! / angolodibolina!(1), 2)
            player(1).sprt.location.x% = player(1).sprt.location.x% + (der! + Cos(angolodibolina!(1)))
            player(1).sprt.location.y% = player(1).sprt.location.y% + (der! + Sin(angolodibolina!(1)))

        End If

        If keys(72) Then
            'alpha! = wind.direzione! - ONEDEG
            angolodipoppa(1) = alpha! * (PI / 180)
            der! = Round((accelerazione! / angolodipoppa(1)), 2)
            player(1).sprt.location.x% = player(1).sprt.location.x% - (der! * Cos(angolodipoppa(1)))
            player(1).sprt.location.y% = player(1).sprt.location.y% + (der! * Sin(angolodipoppa(1)))


        End If

        If keys(80) Then
            'alpha! = wind.direzione! + ONEDEG
            angolodipoppa(1) = alpha! * (PI / 180)
            der! = Round((accelerazione! / angolodipoppa(1)), 2)
            player(1).sprt.location.x% = player(1).sprt.location.x% - (der! * Cos(angolodipoppa(1)))
            player(1).sprt.location.y% = player(1).sprt.location.y% - (der! * Sin(angolodipoppa(1)))

        End If
'--------------------------Player 2-----------------------------------
        If keys(30) Then

            'theta! = theta! - ONEDEG
            angolodibolina(2) = (theta! * (PI / 180))
            der! = Round((accelerazione! / angolodibolina(2)), 3)
            player(2).sprt.location.x% = (player(2).sprt.location.x% + (der! + Cos(angolodibolina(2))))
            player(2).sprt.location.y% = (player(2).sprt.location.y% - (der! + Sin(angolodibolina(2))))

        End If

        If keys(32) Then

            'theta! = theta! + ONEDEG
            angolodibolina(2) = (theta! * (PI / 180))
            der! = Round((accelerazione! / angolodibolina!(2)), 3)
            player(2).sprt.location.x% = (player(2).sprt.location.x% + (der! + Cos(angolodibolina!(2))))
            player(2).sprt.location.y% = (player(2).sprt.location.y% + (der! + Sin(angolodibolina!(2))))

        End If

        If keys(17) Then

            angolodipoppa(2) = wind.direzione! * (PI / 180)
            der! = Round((accelerazione! / angolodipoppa(2)), 3)
            player(2).sprt.location.x% = player(2).sprt.location.x% - (der! * Cos(angolodipoppa(2)))
            player(2).sprt.location.y% = player(2).sprt.location.y% + (der! * Sin(angolodipoppa(2)))

        End If

        If keys(31) Then

            angolodipoppa(2) = wind.direzione! * (PI / 180)
            der! = Round((accelerazione! / angolodipoppa(2)), 3)
            player(2).sprt.location.x% = player(2).sprt.location.x% - (der! * Cos(angolodipoppa(2)))
            player(2).sprt.location.y% = player(2).sprt.location.y% - (der! * Sin(angolodipoppa(2)))

        End If
        If keys(35) Then
            trigger = 1
            End
        End If
        '-------------------------- Delay's Loop -----------------------------
        For i = 1 To 3000
        Next i
        '------------ End of Loop --------------------------
'------------------------ Drawing the Sprites in the right location --------------------------------------
        Call sprite(player(1).sprt.location.x%, player(1).sprt.location.y%, "BARCA01.PCX")
        Wait &H3DA, 8
        Call sprite(player(2).sprt.location.x%, player(2).sprt.location.y%, "BARCA02.PCX")
        Wait &H3DA, 8,8
'------------------ End of drawing Sprites -----------------------------------
        '----------------------------------------------------------------------------------
        '----------------------- Collisions' engine ----------------------------------------
        '-----------------------------------------------------------------------------------

        If ((lastx% <> player(1).sprt.location.x%) Or (lasty% <> player(1).sprt.location.y%) Or (lastw% <> player(1).sprt.w%) Or (lasth% <> player(1).sprt.h%)) Then
            lastx% = player(1).sprt.location.x%
            lasty% = player(1).sprt.location.y%
            lastw% = player(1).sprt.w%
            lasth% = player(1).sprt.h%


            If (rectRect%(player(1).sprt.location.x%, player(1).sprt.location.y%, 20, 26, rx%, ry%, rw%, rh%)) = 1 Then
                hit$ = "HIT"
                Line (0, 0)-(799, 599), 4, B
                'Line (10, 10)-(580, 450), 7, B
            Else
                hit$ = "NO HIT"
                Line (0, 0)-(799, 599), 2, B

            End If
            If (CircleRect(boa.boa_x, boa.boa_y, boa.radius, player(1).sprt.location.x%, player(1).sprt.location.y%, 20, 26)) Then
                hit$ = "HIT"
                Circle (boa.boa_x, boa.boa_y), boa.radius, 7
            Else
                hit$ = "NO HIT"
                Circle (boa.boa_x, boa.boa_y), boa.radius, 5
            End If

            'Print hit$
        End If
        If ((lastx1% <> player(2).sprt.location.x%) Or (lasty1% <> player(2).sprt.location.y%) Or (lastw1% <> player(2).sprt.w%) Or (lasth1% <> player(2).sprt.h%)) Then
            lastx1% = player(2).sprt.location.x%
            lasty1% = player(2).sprt.location.y%
            lastw1% = player(2).sprt.w%
            lasth1% = player(2).sprt.h%
            If (rectRect%(player(2).sprt.location.x%, player(2).sprt.location.y%, player(2).sprt.w%, player(2).sprt.h%, rx%, ry%, rw%, rh%)) = 1 Then
                hit$ = "HIT"
                Line (0, 0)-(799, 599), 4, B
                'Line (10, 10)-(580, 450), 7, B
            Else
                hit$ = "NO HIT"
                Line (0, 0)-(799, 599), 2, B
            End If
            If (CircleRect(boa.boa_x, boa.boa_y, boa.radius, player(2).sprt.location.x%, player(2).sprt.location.y%, player(2).sprt.w%, player(2).sprt.h%)) Then
                hit$ = "HIT"
                Circle (boa.boa_x, boa.boa_y), boa.radius, 7
            Else
                hit$ = "NO HIT"
                Circle (boa.boa_x, boa.boa_y), boa.radius, 5
            End If

        End If
        '------------ Checking right boundaries ------------------------------
        If player(1).sprt.location.x% > 795 Then
            player(1).sprt.location.x% = player(1).sprt.location.x% - player(1).sprt.w%
            PUT2 Mask%(), 20, 26, player(1).sprt.location.x%, player(1).sprt.location.y%
        Else If player(2).sprt.location.x% > 795 Then
                player(2).sprt.location.x% = player(2).sprt.location.x% - player(2).sprt.w%
                PUT2 Mask%(), 20, 26, player(2).sprt.location.x%, player(2).sprt.location.y%
            End If
        End If
        '------------------- End of checking boundaries ------------------
'----------------------------------- End of checking collisions ------------------------------------


        Def Seg = &H40: Poke &H17, 0: Def Seg
    Loop Until keys(1) 'until ESC is pressed
Wend
'----------------------- End of Main ---------------------------------------------------------
'Loop Until kb$ = Chr$(27)

Call unSetupTimer
Print "Corrente posx"; Point(0)
Print "Corrente posy"; Point(1)
'x = 10
'y = 200
Print hit$
distx = Point(0) - x
disty = Abs(Point(1) - y)
'distanza! = Sqr(distx ^ 2 - disty ^ 2)
Print "Distanza percorsa: "; distanza!
End

Function endGame ()
    If Point(x%, y%) = 4 Then
        endGame = 1
    Else
        endGame = 0
    End If

End Function
Function rectRect% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)

    ' are the sides of one rectangle touching the other?
    ' r1 right edge past r2 left
    ' r1 left edge past r2 right
    ' r1 top edge past r2 bottom
    ' r1 bottom edge past r2 top
    'If (r1x% + r1w% >= r2x%) And (r1x% <= r2x% + r2w%) And (r1y% + r1h% >= r2y%) And  Then
    '        If (r1x% + r1w% >= r2x%) And (r1x% <= r2x% + r2w%) And (r1y% + r1h% >= r2y%) And (r1y% <= r2y% + r2h%) Then
    If (r1y% <= r2y%) Or (r1y% + r1h% > r2w%) Then
        'If (r1y% + r1h% <= r2y%) Or (r1y% + r1h% > r2w%) Then

        rectRect% = 1
        hit$ = "HIT"
    Else If (r1x% <= r2x%) Then
            rectRect% = 1
            trigger% = 1
            Print "End of game"
            hit$ = "HIT"
            Sleep 10

        Else
            rectRect% = 0
        End If
    End If
End Function

Function setupTimer# (frequency#) 'Returns the actual frequency that was set
    If (frequency# > 1193181) Or (frequency# < 18.3) Then Error 5 'Illegal function call
    ticksPerTimer& = 1193181# / frequency#
    Out &H43, &H34 'Specifies a bitmask setting the timer style and initializing the ports for receiving a clock rate
    Out &H40, ticksPerTimer& And 255 'Send low 8 bits first
    Out &H40, ticksPerTimer& \ 256 'Then send high 8 bits
    setupTimer# = 1193181 / ticksPerTimer& 'And finally, return the resulting clock rate
End Function

Sub unSetupTimer () 'Returns the timer to normal operation
    Out &H43, &H34
    Out &H40, 0 'Set low 8 bits of trigger to 0
    Out &H40, 0 'Set high 8 bits of trigger to 0
End Sub

Sub delay (numSeconds#, frequency#)
    numTicks& = numSeconds# * frequency#
    For i& = 1 To numTicks&
        st# = Timer
        While st# = Timer: Wend
    Next i&
End Sub

Function CircleRect (circle_x%, circle_y%, circle_rad%, r1x%, r1y%, r1w%, r1h%)
    test_x! = circle_x%
    test_y! = circle_y%



    If (circle_x% <= r1x%) Then
        test_x! = r1x%
    Else If (circle_x% >= r1x% + r1w%) Then
            test_x! = r1x% + r1w%
        End If
        If (circle_y% <= r1y%) Then
            test_y! = r1y%
        Else If (circle_y% >= r1y% + r1h%) Then
                test_y! = r1y% + r1h%
            End If
        End If


        distx! = circle_x% - test_x!
        disty! = circle_y% - test_y!
        distance! = Sqr((distx! * distx!) + (disty! * disty!))
        If distance! <= circle_rad% Then
            CircleRect = 1
        Else
            CircleRect = 0
        End If
    End If
End Function
Sub sprite (x%, y%, file$)


    Dim picture(32001) As Integer
    Def Seg = VarSeg(picture(0))
    BLoad file$, VarPtr(picture(0))
    For tempx% = 0 To picture(0) \ 8 - 1
        For tempy% = 0 To picture(1) - 1
            temp% = Peek(VarPtr(picture(2)) + tempx% + (picture(0) \ 8&) * tempy%)
            If temp% > 0 And tempx% + x% >= 0 And tempx% + x% < 800 And tempy% + y% >= 0 And tempy% + y% < 600 Then
                PSet (x% + tempx%, y% + tempy%), temp%
            End If
        Next
    Next
    Def Seg = &HA000
End Sub








Sub PUT2 (Sprites() As Integer, XSize As Integer, YSize As Integer, X As Integer, Y As Integer)
    ' Draw the sprite from the array onto the screen
    For YP = 0 To YSize - 1
        For XP = 0 To XSize - 1
            PSet (X + XP, Y + YP), Sprites%(XP, YP)
        Next XP
    Next YP
End Sub
Function findDistance (o_x As Single, o_y As Single, d_x As Single, d_y As Single)
    findDistance = Sqr((d_x - o_x) * (d_x - o_x) + (d_y - o_y) * (d_y - o_y))
End Function







Sub PlotLine (x1, y1, x2, y2, colore)
    DefInt A-Z
    Dim a, b As Double
    If Abs(x1 - x2) > Abs(y1 - y2) Then
        If x1 > x2 Then
            Call Switch(x1, x2)
            Call Switch(y1, y2)


        End If
        dx = (x2 - x1)
        dy = (y2 - y1)
        If dx <> 0 Then
            b! = dy / dx
        Else
            b! = 0
        End If
        a! = y1 - x1 * b!
        For x = x1 To x2
            y = Int((((a! + x * b!) + .05) * 10) / 10)
            PSet (x, y), colore
        Next x





    Else
        If y1 > y2 Then
            Call Switch(y1, y2)
            Call Switch(x1, x2)
        End If
        dx = (x2 - x1)
        dy = (y2 - y1)
        If dx <> 0 Then
            b! = dy / dx
        Else
            b! = 0

        End If


        a! = y1 - x1 * b!


        For y = y1 To y2
            If b! <> 0 Then
                x = Int(((((y - a!) / b!) + .05) * 10) / 10)
            Else
                x = x1
            End If
            PSet (x, y), colore
        Next y

    End If










End Sub

Sub Switch (x, y)
    t = x
    x = y
    y = t

End Sub

Function Round (Num!, Decimals%)
    n = Num! * (10 ^ Decimals%)
    n = Sgn(n) * (Abs(Int(n + .5)))
    Round = n / (10 ^ Decimals%)
End Function
Sub UpdateKeys (k())
    Static lastPress
    press = Inp(96)

    If press < 128 Then 'when a key is pressed, the keyboard scan code is
        k(press) = TRUE 'returned. when released, the scan code + 128 is
        lastPress = press 'returned
    Else
        k(press - 128) = FALSE
        If press = 170 Then k(lastPress) = FALSE 'if 170 is returned, then
    End If 'last key that was pressed
    'should be released
    Def Seg = 0
    Poke 1052, Peek(1050) 'clears keyboard buffer (gets rid of beeping)
End Sub





