$Debug
'Hi all, if this program doesn't fit for you, simply press "H"
'***********************************
' * *   *   *  *  ***    *   * *  *
' ***  ***  *  *  ***   ***  **   *
' * *  * *  ****  *  *  * *  * *  *
'***********************************
'-------------------------------------
'A regatta-like game
'-------------------------------------
'
'Sprite1
Data 1,1,1,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1
Data 1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,1,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1,1
Data 1,7,3,7,3,3,7,3,7,3,3,7,3,3,3,7,3,3,7,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

'Sprite2
Data 1,1,1,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1,1
Data 1,7,3,7,3,3,7,3,7,3,3,7,3,3,3,7,3,3,7,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1


'Mask-----------
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
declare Sub sprite (x%, y%, file$)
declare Sub PUT2 (Sprite() As Integer, XSize As Integer, YSize As Integer, X As Integer, Y As Integer)
declare function findDistance(ox as single, oy as single, dx as single, dy as single)
declare Function CircleRect (circlex%, circley%, circlerad%, r1x%, r1y%, r1w%, r1h%)
'declare function rectCircle(r1x%,r1y%,r1w%,r1h%,circlex%,circley%,circlerad%)
declare sub PlayAI()
declare sub BestPath()
DECLARE FUNCTION rectRect% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)
DECLARE FUNCTION rectRect2% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)
DECLARE SUB PlotLine (x1 AS INTEGER, y1 AS INTEGER, x2 AS INTEGER, y2 AS INTEGER, colore AS INTEGER)
DECLARE SUB Switch (x AS INTEGER, y AS INTEGER)
'DECLARE SUB PlotRotta (StartX, StartY, x, y, z)
DECLARE SUB UpdateKeys (k())

'Const PI = 3.1415926, PI2 = PI * 2 '    useful PI values
'Const ONEDEG = PI2 / 360 '              one radian degree


'$DYNAMIC
Randomize Timer
'Dim Shared winddirezione!
Dim Shared accelerazione!
DefInt A-Z

Dim Shared bg(1)
Type CoppiaType
    x As Integer
    y As Integer
End Type
Type shiptype
    PruaX As Integer
    PruaY As Integer
    sailarea As Integer
    larghezza As Integer
    altezza As Integer
End Type
Type windtype
    direzione As Single
    forza As Single
    velocita As Single
End Type
Type andaturatype
    direzione As Integer
End Type
Type timoneType
    location As CoppiaType
    angolo As Single
End Type
Type boatype
    boax As Integer
    boay As Integer
    radius As Integer
End Type
Type playerType
    num As Integer
    kright As Integer
    kleft As Integer
    kup As Integer
    kdown As Integer
End Type

Dim Shared friction!
Dim Shared player(2) As playerType
Dim Shared keys(127)
Dim Shared boa As boatype
Dim Shared wind As windtype
Dim Shared barra(2) As timoneType
Dim Shared bolina As andaturatype
Dim Shared poppa As andaturatype
Dim Shared trigger%
Dim Shared angle(2) As Single
Dim Shared angolodibolina(2) As Single
Dim Shared angolodipoppa(2) As Single
Dim PointScale As Integer
Dim barca%(19, 25)
Dim barca1%(19, 25)
Dim Mask%(19, 25)
Dim c!(360), s!(360)
Dim sfondo As Long
Const TRUE = -1
Const FALSE = 0
'--------------  Splash screen
'Dim image As Long
'Screen _NewImage(640, 480, 32)
'image = _LoadImage("hauraki.jpg")
'_PutImage (0, 0), image
'Sleep 5
'------------- End of splash screen
Screen 13
Screen 12
'Wait &H3DA, 8
Color 10, 1
Cls
'Screen _NewImage(640, 480, 32)
'sfondo = _LoadImage("screenshot.bmp", 32)
'_PutImage , sfondo

'Cls
'Call ReadScreenFile("screen.img")
'Screen _NewImage(640, 480, 32)
'Const picsize = 896
'Dim pic(picsize)
'For i = 0 To picsize
'Read pic(i)
'Next i
'For a = 0 To 38
'For b = 0 To 22
'PSet (560 + a, 50 + b), pic(i)
'i = i + 1
'Next b
'Next a

'------------Reading sprites------------------------

For Z = 0 To 25
    For j = 0 To 19

        Read barca%(j, Z)
        'PSet (10 + j, 230 + Z), DotColor
    Next j
Next Z

For Z = 0 To 25
    For j = 0 To 19

        Read barca1%(j, Z)
        'PSet (10 + j, 230 + Z), DotColor
    Next j
Next Z


'Reading data from the mask
For Z = 0 To 25
    For j = 0 To 19
        Read Mask%(j, Z)
    Next j
Next Z
'End of mask
'------------End of sprites--------------------------
'
'
'------------------------------------------------------
' -----------  Fundamental physics  -------------------
'------------------------------------------------------
'
'Putting all of sine and cosine values into two arrays
For i = 1 To 360
    c!(i) = Cos(i * 3.14 / 180)
    s!(i) = Sin(i * 3.14 / 180)
Next
'------------  End of sine and cosine table --------------------------------
'
'------------------Variables declaration -----------------------------------
wind.direzione! = 180 'Wind's direction
wind.forza! = 9
wind.velocita! = .5 * wind.forza
ship.sailarea = 20
'REM La riga seguente calcola la pressione del vento sulla vela x mq
Pascal! = (wind.velocita! ^ 2) * .613
'-------------------------
Rem F=m*a quindi a=F/m
'-------------------------
accelerazione! = (Pascal! * ship.sailarea) / 154
'--------------A bit of friction to slow the program, it simulates waves----------------------------
friction! = .3099999
PointScale = 128
freq# = setupTimer#(18.4) 'Setup timing
'-----------End of friction----------------------------
'
'------Draws wind's direction--------------
Circle (590, 50), 30, 12
Paint (580, 50), 3, 1
t! = wind.direzione!
Call PlotLine(590, 50, 590 + (30 * c!(t!)), 50 + (30 * s!(t!)), 2)
'--End of wind's direction-------------

'-------------  End of physics  -----------------------


'----------------------Drawing arena and sprites -------------------------

'Barca 1
x% = 25
y% = 200
w% = 20
h% = 26
'Barca 2
x2% = 25
y2% = 255
w2% = 20
h2% = 26
'----------- Arena's boundaries-----------
rx% = 0
ry% = 0
rh% = 639
rw% = 479
'----------- Drawing Arena --------------
Call PlotLine(0, 0, 639, 0, 2)
Call PlotLine(0, 0, 0, 479, 2)
Call PlotLine(0, 479, 639, 479, 2)
Call PlotLine(639, 479, 639, 0, 2)
'Drawing finish box
fshx% = 14
fshy% = 190
fshh% = 100
fshw% = 3
Call PlotLine(14, 190, 14, 290, 14)
Call PlotLine(14, 190, 16, 190, 14)
Call PlotLine(16, 190, 16, 290, 14)
Call PlotLine(14, 290, 16, 290, 14)
'------- Rectangle with more friction ----
mfx% = 100 '90
mfy% = 250 '60
mfh% = 420 '190
mfw% = 450 '500
'--------Rectangle with less friction-----
lfx% = 90
lfy% = 60
lfh% = 220
lfw% = 450

'Disegna la boa
boa.boax = 555
boa.boay = 240
boa.radius = 10
Circle (boa.boax, boa.boay), boa.radius, 7
'Paint (boa.boax, boa.boay), 6

lastx% = 0
lasty% = 0
lastw% = 0
lasth% = 0
lastx1% = 0
lasty1% = 0
lastw1% = 0
lasth1% = 0
'Disegna i timoni
Circle (60, 50), 20, 10
Circle (60, 420), 20, 11
'----End of timoni-----------------
dx = 1
dy = 1
PUT2 barca%(), 20, 26, x%, y%
PUT2 barca1%(), 20, 26, x2%, y2%


angle(1) = wind.direzione!
angle(2) = wind.direzione!
'--------------------------------------------------------------------
'-------------------  Start of main ---------------------------------
'--------------------------------------------------------------------
While trigger% = 0

    Call delay(2.5, freq#)

    Do


        UpdateKeys keys() 'updates the keys array
        'Sleep

        barra(1).location.x = 60
        barra(1).location.y = 50
        barra(2).location.x = 60
        barra(2).location.y = 420

        Circle (barra(1).location.x, barra(1).location.y), 20, 10
        Circle (barra(2).location.x, barra(2).location.y), 20, 11
        px = x%
        py = y%
        p2x = x2%
        p2y = y2%

        PUT2 Mask%(), 20, 26, px, py
        PUT2 Mask%(), 20, 26, p2x, p2y
        'Put (150, 150), tile1%()
        'PSet (px - 1, py - 1), 3
        'PSet (p2x, p2y - 1), 14

        '----------------------------------------------------------
        '------------------- Player 1 -----------------------------
        '----------------------------------------------------------
        'PgUp and PgDown to move the wheel-------------------------
        If keys(73) Then
            angle(1) = angle(1) - 1
            If angle(1) < 3 Then
                angle(1) = 180
            End If
            SX = barra(1).location.x + (20 * c!(angle(1)))
            SY = barra(1).location.y + (20 * s!(angle(1)))
            Paint (barra(1).location.x - 1, barra(1).location.y - 1), 1, 10
            Call PlotLine(barra(1).location.x, barra(1).location.y, SX, SY, 2)
            barra(1).angolo = angle(1)
        End If
        If keys(81) Then
            angle(1) = angle(1) + 1
            If angle(1) > 180 Then
                angle(1) = 3
            End If
            S1X = barra(1).location.x + (20 * c!(angle(1)))
            S1Y = barra(1).location.y + (20 * s!(angle(1)))
            Paint (barra(1).location.x - 1, barra(1).location.y - 1), 1, 10
            Call PlotLine(barra(1).location.x, barra(1).location.y, S1X, S1Y, 2)
            barra(1).angolo = angle(1)
        End If
        '-----------End of wheel-----------------
        '----------Start of push sail close to the wind----
        'Left arrow useful near the buoy
        'Right arrow to push, to change direction you might turn your wheel!
        If keys(77) Then 'Chr$(0) + Chr$(77)
            angolodibolina(1) = barra(1).angolo
            If s!(angolodibolina(1)) < .270958 Then 'This line it physically simulates the wind

            Else

                stepx = s!(angolodibolina(1))
                stepy = c!(angolodibolina(1))
                der# = accelerazione! * 57.32 / angolodibolina(1)
                der# = der# * (((PointScale / 1000)) * friction!)
                x% = x% + (der# + s!(angolodibolina(1)))
                y% = y% + (der# + c!(angolodibolina(1)))

            End If
        End If
        If keys(75) Then
            Z = findDistance(x%, y%, boa.boax, boa.boay)

            angolo = 15

            If Z > 40 Then

            Else
                For j = 1 To 5
                    If x% >= boa.boax And y% <= boa.boay Then
                        angolo = angolo + 15
                        vx% = boa.boax + (45 * c!(angolo))
                        vy% = boa.boay + (45 * s!(angolo))
                        x% = vx%
                        y% = vy%
                        PUT2 barca%(), 19, 25, x%, y%
                        PUT2 Mask%(), 20, 26, x%, y%

                    Else If x >= boa.boax And y% >= boa.boay Then
                            angolo = angolo + 15
                            vx% = boa.boax + (45 * c!(angolo))
                            vy% = boa.boay - (45 * s!(angolo))
                            x% = vx%
                            y% = vy%
                            PUT2 barca%(), 19, 25, x%, y%
                            PUT2 Mask%(), 20, 26, x%, y%

                        End If
                    End If
                Next j
            End If
            'PUT2 Mask%(), 20, 26, vx%, vy%
        End If
        '----------End of push sail close to the wind-----
        '-------------------------------------------------
        '-------------Start of push windtail--------------
        'Set your wheel to the right angle, then,
        'due to the parity of cosine function, to change direction UpArrow or DownArrow
        'Up
        If keys(72) Then 'Chr$(0) + Chr$(72)
            angolodipoppa(1) = barra(1).angolo

            If c!(angolodipoppa(1)) > Abs(.9397) Then
                'angolodipoppa(1) = 180
            Else


                stepx = s!(angolodipoppa(1))
                stepy = c!(angolodipoppa(1))
                der# = (accelerazione! * 57.32 / angolodipoppa(1))
                der# = der# * (friction! * 3)
                x% = x% - (der# - c!(angolodipoppa(1)))
                y% = y% + (der# - s!(angolodipoppa(1)))
            End If
        End If
        'Down
        If keys(80) Then 'Chr$(0) + Chr$(80)
            angolodipoppa(1) = barra(1).angolo
            'If s!(angolodipoppa(1)) < .270958 And s!(angolodipoppa(1)) > .9397 Then
            If c!(angolodipoppa(1)) > Abs(.9397) Then
                'angolodipoppa(1) = 180
            Else
                stepx = s!(angolodipoppa(1))
                stepy = c!(angolodipoppa(1))
                der# = (accelerazione! * 57.32 / angolodipoppa(1))
                der# = der# * (friction! * 3)
                x% = x% - (der# - c!(angolodipoppa(1)))
                y% = y% - (der# + s!(angolodipoppa(1)))
            End If
        End If
        '----------------------------------------------------
        '----------------- Player 2 -------------------------
        '----------------------------------------------------
        If keys(16) Then 'kb$ = (Chr$(113)) Then
            angle(2) = angle(2) - 1
            If angle(2) < 3 Then
                angle(2) = 180
            End If
            SX3 = barra(2).location.x + (20 * c!(angle(2)))
            SY3 = barra(2).location.y + (20 * s!(angle(2)))
            Paint (barra(2).location.x - 1, barra(2).location.y - 1), 1, 11
            Call PlotLine(barra(2).location.x, barra(2).location.y, SX3, SY3, 2)
            barra(2).angolo = angle(2)
        End If
        If keys(44) Then 'kb$ = Chr$(122) Then
            angle(2) = angle(2) + 1
            If angle(2) > 180 Then
                angle(2) = 3
            End If
            SX4 = barra(2).location.x + (20 * c!(angle(2)))
            SY4 = barra(2).location.y + (20 * s!(angle(2)))
            Paint (barra(2).location.x - 1, barra(2).location.y - 1), 1, 11
            Call PlotLine(barra(2).location.x, barra(2).location.y, SX4, SY4, 2)
            barra(2).angolo = angle(2)
        End If


        If keys(30) Then '"a"
            Z = findDistance(x2%, y2%, boa.boax, boa.boay)

            angolo = 15

            If Z > 40 Then
            Else
                For i = 1 To 5
                    If x2% >= boa.boax And y2% <= boa.boay Then
                        angolo = angolo + 15
                        v2x% = boa.boax + (45 * c!(angolo))
                        v2y% = boa.boay + (45 * s!(angolo))
                        x2% = v2x%
                        y2% = v2y%
                        PUT2 barca1%(), 19, 25, x2%, y2%
                        PUT2 Mask%(), 20, 26, x2%, y2%
                    Else If x2% >= boa.boax And y2% >= boa.boay Then
                            angolo = angolo + 15
                            v2x% = boa.boax + (45 * c!(angolo))
                            v2y% = boa.boay - (45 * s!(angolo))
                            x2% = v2x%
                            y2% = v2y%
                            PUT2 barca1%(), 19, 25, x2%, y2%
                            PUT2 Mask%(), 20, 26, x2%, y2%
                        End If
                    End If
                Next i
            End If
            'PUT2 Mask%(), 20, 26, vx%, vy%

        End If
        If keys(32) Then ' "d"
            angolodibolina(2) = barra(2).angolo
            If s!(angolodibolina(2)) < Abs(.270958) Then
            Else

                der# = accelerazione! * 57.32 / angolodibolina(2)
                der# = der# * (((PointScale / 1000)) * friction!)
                x2% = x2% + (der# + s!(angolodibolina!(2)))
                y2% = y2% + (der# + c!(angolodibolina!(2)))
            End If
        End If
        If keys(17) Then ' "w"
            angolodipoppa(2) = barra(2).angolo
            If c!(angolodipoppa(2)) > Abs(.9397) Then
            Else
                der# = accelerazione! * 57.32 / angolodipoppa(2)
                der# = der# * (friction! * 3)
                x2% = x2% - (der# - c!(angolodipoppa(2)))
                y2% = y2% + (der# - s!(angolodipoppa(2)))
            End If
        End If
        If keys(31) Then ' "s"
            angolodipoppa(2) = barra(2).angolo
            If c!(angolodipoppa(2)) > Abs(.9397) Then
            Else
                der# = accelerazione! * 57.32 / angolodipoppa(2)
                der# = der# * (friction! * 3)
                x2% = x2% - (der# - c!(angolodipoppa(2)))
                y2% = y2% - (der# + s!(angolodipoppa(2)))

            End If
        End If
        If keys(35) Then
            End
        End If
        '------------- Drawing the sprites in the right position  -----------------
        PUT2 barca%(), 19, 25, x%, y%
        PUT2 barca1%(), 19, 25, x2%, y2%

        'Call sprite(x%, y%, "BARCA01.PCX")
        'Call sprite(x2%, y2%, "BARCA02.PCX")
        Wait &H3DA, 8
        Wait &H3DA, 8, 8
        '----------- End of sprites  ----------------------
        '-------------------  Checking collisions  ------------------------------------
        If (lastx% <> x%) Or (lasty% <> y%) Or (lastw% <> w%) Or (lasth% <> h%) Then
            lastx% = x%
            lasty% = y%
            lastw% = w%
            lasth% = h%

            If rectRect%(x%, y%, 20, 26, rx%, ry%, rw%, rh%) = 1 Then
                hit$ = "HIT"
                Line (0, 0)-(639, 479), 4, B
                'Line (10, 10)-(580, 450), 7, B
            Else
                hit$ = "NO HIT"
                Line (0, 0)-(639, 479), 2, B

            End If
            If CircleRect(boa.boax, boa.boay, boa.radius, x%, y%, 20, 26) Then
                hit$ = "HIT"
                Circle (boa.boax, boa.boay), boa.radius, 4
                'Paint (boa.boax, boa.boay), 4
            Else
                hit$ = "NO HIT"
                Circle (boa.boax, boa.boay), boa.radius, 7
                'Paint (boa.boax, boa.boay), 6
            End If
            If rectRect2%(x%, y%, 20, 26, mfx%, mfy%, mfw%, mfh%) = 1 Then
                Line (mfx%, mfy%)-(mfw%, mfh%), 6, B
                pushf! = friction!
                pushf! = pushf! - .001
                friction! = pushf!
            Else
                'frictiom! = friction!
            End If
            If rectRect2%(x%, y%, 20, 26, lfx%, lfy%, lfw%, lfh%) = 1 Then
                Line (lfx%, lfy%)-(lfw%, lfh%), 8, B
                pushf! = friction!
                pushf! = pushf! + .001
                friction! = pushf!
            Else
                'frictiom! = friction!
            End If
        End If
        If rectRect2%(x%, y%, 20, 26, fshx%, fshy%, fshw%, fshh%) = 1 Then
            trigger% = 1
            Print "End of game, press Esc"
            Call PlotLine(14, 190, 14, 290, 14)
            Call PlotLine(14, 190, 16, 190, 14)
            Call PlotLine(16, 190, 16, 290, 14)
            Call PlotLine(14, 290, 16, 290, 14)

        Else
        End If
        If rectRect2%(x2%, y2%, 20, 26, fshx%, fshy%, fshw%, fshh%) = 1 Then
            trigger% = 1
            Print "End of game, press Esc"
            Call PlotLine(14, 190, 14, 290, 14)
            Call PlotLine(14, 190, 16, 190, 14)
            Call PlotLine(16, 190, 16, 290, 14)
            Call PlotLine(14, 290, 16, 290, 14)

        Else
        End If


        If (lastx1% <> x2%) Or (lasty1% <> y2%) Or (lastw1% <> w2%) Or (lasth1% <> h2%) Then
            lastx1% = x2%
            lasty1% = y2%
            lastw1% = w2%
            lasth1% = h2%

            If rectRect%(x2%, y2%, 20, 26, rx%, ry%, rw%, rh%) = 1 Then
                hit$ = "HIT"
                Line (0, 0)-(639, 479), 4, B
                'Line (10, 10)-(580, 450), 7, B
            Else
                hit$ = "NO HIT"
                Line (0, 0)-(639, 479), 2, B
            End If
            If CircleRect(boa.boax, boa.boay, boa.radius, x2%, y2%, 20, 26) Then
                hit$ = "HIT"
                Circle (boa.boax, boa.boay), boa.radius, 4
                'Paint (boa.boax, boa.boay), 4
            Else
                hit$ = "NO HIT"
                Circle (boa.boax, boa.boay), boa.radius, 7
                'Paint (boa.boax, boa.boay), 6
            End If
            If rectRect2%(x2%, y2%, 20, 26, mfx%, mfy%, mfw%, mfh%) = 1 Then
                Line (mfx%, mfy%)-(mfw%, mfh%), 6, B
                pushf1! = friction!
                pushf1! = pushf1! - .001
                friction = pushf1!
            Else
                'frictiom! = friction!
            End If
            If rectRect2%(x2%, y2%, 20, 26, lfx%, lfy%, lfw%, lfh%) = 1 Then
                Line (lfx%, lfy%)-(lfw%, lfh%), 8, B
                pushf1! = friction!
                pushf1! = pushf1! + .001
                friction! = pushf1!
            Else
                'frictiom! = friction!
            End If

            'Print hit$
        End If
        '-----------------  End of checking collisions  -----------------------
        '
        '------------ Checking boundaries ------------------------------
        If x% > 635 Then
            x% = x% - w%
            PUT2 Mask%(), 20, 26, x%, y%
        Else If x2% > 635 Then
                x2% = x2% - w2%
                PUT2 Mask%(), 20, 26, x2%, y2%
            End If
        End If
        '------------------- End of checking boundaries ------------------


        View Print 1 To 3
        Print angle(1)

        'If x% > x2% Then
        'Z% = findDistance(x%, y%, x2%, y2%)
        'Color 14
        'Print Z%
        'Else
        'Z% = findDistance(x%, y%, x2%, y2%)
        'Color 2
        'Print Z%
        'End If

        'Poke 1050, Peek(1052)
        'Do While InKey$ <> "": Loop
        'Def Seg = &H40: Poke &H1C, Peek(&H1A): Def Seg
    Loop Until keys(1) 'until ESC is pressed
Wend
'-------------------End of main--------------------------------
'Loop Until kb$ = Chr$(27)
'Call SaveScreenFile("screen.img", 12)
bolina.direzione = FALSE
poppa.direzione = TRUE
Call unSetupTimer
Print Point(1); Point(0)
'Print "Corrente posx"; Point(0)
'Print "Corrente posy"; Point(1)
'x = 10
'y = 200
'Print hit$
distx = Point(0) - x
disty = Abs(Point(1) - y)
'distanza! = Sqr(distx ^ 2 - disty ^ 2)
'Print "Distanza percorsa: "; distanza!
End
'-----------------  End of Program  ---------------------------------------------

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
Function rectRect2% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)
    If (r1x% + r1w% >= r2x%) And (r1x% <= r2x% + r2w%) And (r1y% + r1h% >= r2y%) And (r1y% <= r2y% + r2h%) Then
        rectRect2% = 1
    Else
        rectRect2% = 0

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

        rectRect% = 1
    End If
End Function

Function CircleRect (circlex%, circley%, circlerad%, r1x%, r1y%, r1w%, r1h%)
    testx! = circlex%
    testy! = circley%



    If (circlex% <= r1x%) Then
        testx! = r1x%
    Else If (circlex% >= r1x% + r1w%) Then
            testx! = r1x% + r1w%
        End If
        If (circley% <= r1y%) Then
            testy! = r1y%
        Else If (circley% >= r1y% + r1h%) Then
                testy! = r1y% + r1h%
            End If
        End If


        distx! = circlex% - testx!
        disty! = circley% - testy!
        distance! = Sqr((distx! * distx!) + (disty! * disty!))
        If distance! <= circlerad% Then
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
            If temp% > 0 And tempx% + x% >= 0 And tempx% + x% < 640 And tempy% + y% >= 0 And tempy% + y% < 480 Then
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
Function findDistance (ox As Single, oy As Single, dx As Single, dy As Single)
    findDistance = Sqr((dx - ox) * (dx - ox) + (dy - oy) * (dy - oy))
End Function






'----------------------PlotLine-----------------------
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
'-------------------End of PlotLine----------------------------
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



