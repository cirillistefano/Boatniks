'Copyright 2023 Stefano Cirilli

'Licensed under the Apache License, Version 2.0 (the "License");
'you may not use this file except in compliance with the License.
'You may obtain a copy of the License at

 '   http://www.apache.org/licenses/LICENSE-2.0

'Unless required by applicable law or agreed to in writing, software
'distributed under the License is distributed on an "AS IS" BASIS,
'WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
'See the License for the specific language governing permissions and
'limitations under the License.
'----------------------------------------------- CREDITS --------------------------------------------------------------------
'Thanks to Ted Felix, the Sprites' wizard;to "logiclrd" for his faq "Delays and timing in Quickbasic";to "RetroNick" for his tutorial about collision in qbasic; to Toshi's Project Page; 
'to Pete's qbasic site, to "SysOp" and last, but not least, to all the community of the freebasic.
'-----------------------------------------------------------------------------------------------------------------------------
#lang "fblite"
'#lang "qb"

#include "delay_regulate_framerate.bi"
#include "crt.bi"
#include once "windows.bi"
#include once "win/mmsystem.bi"  'here have the function to play music.


'#include "fbgfx.bi"
#if __FB_LANG__ = "fb"
'Using FB '' Screen mode flags are in the FB namespace in lang FB
#endif
#define   pi          ( atn(1) * 4 )
#define   radian(x)   ( (x) * pi / 180 )
#define   degree(x)   ( (x) * 180 / pi )
'Sprite1
Data 1,1,1,6,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,1,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,1,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,1,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,1,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1
Data 1,7,3,7,3,3,7,3,7,3,3,7,3,3,3,7,3,3,7,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
'-----------------------------------------------------------------------------------
'Sprite2
Data 1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1
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
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1
Data 1,7,3,7,3,3,7,3,7,3,3,7,3,3,3,7,3,3,7,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
'-----------------------------------------------------
'Sprite 3
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1
Data 1,7,3,7,3,3,7,3,7,3,3,7,3,3,3,7,3,3,7,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
'--------------------------------------------
'Sprite4
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,2,1,1,1,1,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
Data 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1
Data 1,1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1
Data 1,7,3,7,3,3,7,3,7,3,3,7,3,3,3,7,3,3,7,1
Data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
'---------------------------------------------------
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

'Data map
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,3
data 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,3
data 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0,1,0,1,1,0,2,2,2,2,2,2,2,2,0,0,1,1,1,1,1,1,1,3
data 1,1,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,0,0,1,1,0,1,1,1,1,1,1,1,1,0,0,0,1,3
data 1,1,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,2,2,2,2,2,2,2,2,2,2,0,1,1,3
data 1,1,0,0,1,1,1,1,1,0,1,1,2,2,1,1,1,0,2,2,2,2,2,0,1,0,2,2,2,0,0,0,1,1,1,1,1,1,1,3
data 1,1,1,1,0,1,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0,1,0,1,1,1,0,0,1,1,1,1,1,1,1,0,3
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,0,0,1,1,1,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,0,1,0,1,1,1,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,2,2,0,1,0,2,2,2,0,1,0,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3
data 1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,2,2,0,0,2,0,2,0,2,0,2,0,2,1,1,1,1,1,1,1,1,1,3
data 2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0,0,0,3
data 1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,0,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,1,3
data 1,1,0,0,1,1,0,1,1,1,1,1,1,1,1,0,1,0,2,2,2,0,0,2,2,0,2,2,2,2,2,2,2,2,1,1,1,1,1,3
data 1,1,0,0,1,0,1,1,1,0,1,0,1,1,1,0,1,0,1,1,1,1,1,0,1,0,2,2,2,2,2,0,1,1,1,1,1,1,1,3
data 1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0,3
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0,1,1,1,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,3
data 1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,3
data 1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,3

'----------------------------Subs'  Declarations-------------------------------------------
Const NULLA As Any Ptr = 0
declare sub rbound()
declare SUB PlotLine (x1 AS INTEGER, y1 AS INTEGER, x2 AS INTEGER, y2 AS INTEGER, colore AS INTEGER)
declare Function Arrotonda (Num!, Decimals%)
declare Sub PUT2 (Sprites() As Integer, XSize As Integer, YSize As Integer, X As Integer, Y As Integer)
declare Sub Switch (x, y)
declare Function CircleRect (circle_x, circle_y, circle_rad, r1x, r1y, r1w, r1h)
declare Function rectRect% (r1x%, r1y%, r1w%, r1h%, r2x%, r2y%, r2w%, r2h%)
declare Function rectRect2 (r1x, r1y, r1w, r1h, r2x, r2y, r2w, r2h)
declare function findDistance(ox as single, oy as single, dx as single, dy as single)  
declare Function bmp_load( ByRef filename As Const String ) As Any Ptr
declare Function rnd_range (first As Double, last As Double) As Double
declare sub p2pvector( p2px as single, p2py as single, p2px1 as single, p2py1 as single)  

declare sub playAI()
'Sub delay (numSeconds#, frequency#)
    'numTicks& = numSeconds# * frequency#
    'For i& = 1 To numTicks&
        'st# = Timer
        'While st# = Timer: Wend
    'Next i&
'End Sub
'-----------------------------End of subs' declarations---------------------------------------------------------
Type coppiaXY
    x As Integer
    y As Integer
End Type
'declare sub p2pvector(p1 as coppiaXY, p2 as coppiaXY, vec as coppiaXY) 
Type timoneType
    location As coppiaXY
    angolo As Single
End Type

Type spriteType
    location As coppiaXY
    wid As Integer
    hei As Integer
    ventoadx as boolean
    ventoasx as boolean
End Type
type andaturaType 
   bolina as boolean
   poppa as boolean
   ventoadx as integer
   ventoasx as integer
   sottovento as boolean
   sopravvento as boolean
   angolo as single
end type
Type shipType
    accelerazione as single
    sailarea as integer
    weight as integer
    andatura as andaturaType
    'vmg as single
    timone as timoneType
   
end type


Type boatype
    location as coppiaXY
    radius As Integer
End Type
Type playerType
    num As Integer
    kright As Integer
    kleft As Integer
    kup As Integer
    kdown As Integer
    ship as shipType
    spirit As spriteType
    penalty As Integer
End Type

Type windtype
    direzione As Single
    forza As Single
    velocita As Single
End Type





dim shared AI as playerType
dim shared map(40,24) as integer
dim shared as short shorty
dim shared andatura as andaturatype
'dim shared ship(2) as shipType
Dim Shared boa(2) As boatype
Dim Shared spirit(2) As spriteType
Dim Shared wind As windtype
Dim Shared barra(2) As timoneType
dim shared player(2) as playerType
Dim shared barca(19,25) as integer
Dim shared barca1(19,25) as integer
Dim shared barca2(19,25) as integer
Dim shared barca3(19,25) as integer
'dim shared as single PI
dim shared as single tx,ty
Dim As Ulong FPS = 32
Dim shared Mask%(19, 25)
'dim shared tileblu(19,25) as TileType
'dim shared tilecyan(19,25) as TileType
Dim c!(360), s!(360)
dim s$(9) 
dim shared Pascalbar!
dim  as any ptr img
dim  as any ptr img1
dim  as any ptr img2

'dim shared accelerazione!  
dim shared angolodibolina!(2)
dim angolodipoppa(2) as single
dim shared der(2) as single
dim as string ws = "Wind too strong to navigate"
dim shared as single t0=150
dim as integer lastx, lasty, lastw, lasth, lastx1, lasty2, lastw2, lasth2, SX, SY, S1X, S1Y, SX3, SY3, SX4, SY4, accrefresh
dim as integer rx = 0
dim as integer ry = 0
dim as integer rw = 899
dim as integer rh = 649
dim shared d, d1, d2, dist, vx, vy, p2px, p2py, p2px1, p2py1, wsdist as single
dim as HWND hwnd=GetConsoleWindow 'Win2k or newer
dim shared counter(6) as integer
dim shared as boolean overlap
dim shared as integer trigger
dim shared as single tempo, tempolimite
dim shared as single angle(2)
dim shared as integer skill

'------------------- Intro screen -------------------------------------
'-------------------------------------------------------------------------------------------
'*****    ++++**      *     *******  **    *   *    *    *  
'*   *    *    *     * *       *     * *   *   *    *   *   
'******   *    *    *   *      *     *  *  *   *    ****    
'*    *   *    *   *******     *     *   * *   *    *   *   
'******   ******  *       *    *     *     *   *    *    *   

'-----------------------------------------------------------------------------------------
ShowWindow(hwnd,SW_HIDE)
WindowTitle "BOATNIK"
s$(1) = "*****    ******      *     *******  **    *   *    *    *"
s$(2) = "*   *    *    *     * *       *     * *   *   *    *   * "
s$(3) = "******   *    *    *   *      *     *  *  *   *    ****  "
s$(4) = "*    *   *    *   *******     *     *   * *   *    *   * "
s$(5) = "******   ******  *       *    *     *     *   *    *    *"
s$(6) = "---------------------------------------------------------------------"
s$(7) = "A joke about a regatta-like game"
s$(8) = " "
s$(9) = "A program written by Stefano Cirilli - 2023 stefanocirilli@tim.it"
Screen 20, 8, 3 ', FB.GFX_FULLSCREEN
'screenset 0,0

'screenres 800,600
' 19
'sndPlaySoundA("ocean-waves-1.wav", 1)
For i = 1 To 9
    Locate 20 + i, (120 - Len(s$(i))) / 2
    Print s$(i)
Next i
' sndPlaySoundA("ocean-waves-1.wav", 1)
sleep
color 10,1
cls
Randomize Timer
print
print
Input "Skills?(1 for beginners, 2 for medium skilled player or 3 for very skilled player)"; skill
select case skill
   case is = 1
      r = rnd_range(6, 8)
   case is = 2
      r =  rnd_range(9,12)
   case is = 3
      r = rnd_range(13,15)
      
end select
cls
sndPlaySound (0,0) 'stop the sound

'PI!=3.14159
'------------------------ End of intro screen ----------------------------------
'------------Reading sprites------------------------

For Z = 0 To 25
    For j = 0 To 19

        Read barca(j, Z)
        'Pset (10 + j, 230 + Z), barca(j,z)
    Next j
Next Z

For Z = 0 To 25
    For j = 0 To 19

        Read barca1(j, Z)
       'Pset (10 + j, 270 + Z), barca1(j,z)
next j

Next Z
For Z = 0 To 25
    For j = 0 To 19

        Read barca2(j, Z)
       'Pset (10 + j, 270 + Z), barca1(j,z)
next j

Next Z
For Z = 0 To 25
    For j = 0 To 19

        Read barca3(j, Z)
       'Pset (10 + j, 270 + Z), barca1(j,z)
next j

Next Z




'Reading data from the mask
For Z = 0 To 25
    For j = 0 To 19
        Read Mask%(j, Z)
    Next j
Next Z
'End of mask
For Y = 0 To 23 ' This little routine reads the DATA
    For X = 0 To 39 ' into the map array.  We will use
        Read map(X, Y) ' this DATA to draw the map and test
    Next X ' where the player can and can't
Next Y ' move.

img = bmp_load( "tiles/tile04.bmp" )
'img = bmp_load( "tiles\tile05.bmp" )
'bload("tiles/cup.bmp"),img

'bload( "tiles/tile01.bmp" ), img1

For Y = 0 To 23
    For X = 0 To 39
        If map(X, Y) = 0 Then
            Put (X * 20, Y * 25), img, PSet
        ElseIf map(X, Y) = 1 Then
            Put (X * 20, Y * 25), img, PSet
        ElseIf map(X, Y) = 2 Then
            Put (X * 20, Y * 25), img, PSet
        End If
    Next X
Next Y


'------------End of sprites--------------------------
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
wind.direzione = 15 'Wind's direction

'r = Int(Rnd * 10 + 6)
'r = 8
wind.forza = r
select  case r
 case 6  
   friction!= .9
   player(1).ship.sailarea = 42
    player(2).ship.sailarea = 42
 case 7
    friction! = .89
    player(1).ship.sailarea = 31
    player(2).ship.sailarea = 31
 case 8
    friction! = .88
    player(1).ship.sailarea = 25
    player(2).ship.sailarea = 25
 case 9
    friction!=.85
    player(1).ship.sailarea = 20
    player(2).ship.sailarea = 20
 case 10
    friction!=.85
    player(1).ship.sailarea = 20
    player(2).ship.sailarea = 20
 case 11
    friction!=.83
     player(1).ship.sailarea = 20
    player(2).ship.sailarea = 20
 case 12
     friction!=.77
      player(1).ship.sailarea = 20
    player(2).ship.sailarea = 20
 case 13
     friction!=.72
      player(1).ship.sailarea = 20
    player(2).ship.sailarea = 20
 case 14
    friction!=.55
     player(1).ship.sailarea =19
    player(2).ship.sailarea = 19
 case 15
     friction!=.5
      player(1).ship.sailarea = 19
    player(2).ship.sailarea = 19
     case else
     player(1).ship.sailarea = 20
    player(2).ship.sailarea = 20
 end select   

if r > 15 then
   print(ws)
   sleep
   end
elseif r < 6 then
   print "wind too low to navigate"
   sleep 
   end
end if
wind.velocita = .5 * wind.forza     
'ship.sailarea = 20
'REM La riga seguente calcola la pressione del vento sulla vela x mq
Pascalbar! = (wind.velocita ^ 2) * .613
Rem F=m*a quindi a=F/m

'player(1).ship.accelerazione = Arrotonda((Pascalbar! * player(1).ship.sailarea) / 154,2)
'+player(2).ship.accelerazione = Arrotonda((Pascalbar! * player(2).ship.sailarea) / 154,2)

'--------------A bit of friction to slow the program, it simulates waves----------------------------
'friction!=.85
'-----------End of friction----------------------------


PointScale = 128
'freq# = setupTimer#(18.4) 'Setup timing
'screenres 800,600

'------Draws wind's direction--------------
Circle (960, 310), 30, 12
'Paint (580, 50), 3, 1
t! = wind.direzione + 180
PlotLine(960, 310, 960 + (30 * c!(t!)), 310 + (30 * s!(t!)), 2)
'--End of wind's direction-------------
 player(1).ship.accelerazione = Arrotonda((Pascalbar! * player(1).ship.sailarea) / 154,3)
 player(2).ship.accelerazione = Arrotonda((Pascalbar! * player(2).ship.sailarea) / 154,3)
'-------------  End of physics  -----------------------
'-------------  Drawing Arena ---------------------------
line (rx,ry)-(rw,rh),2,b
player(1).spirit.location.x = 25
player(1).spirit.location.y = 283
player(1).spirit.wid = 20
player(1).spirit.hei = 25
player(1).penalty = 0
'player(1).ship.sailarea = 20
'player(2).ship.sailarea = 20
'Barca 2
player(2).spirit.location.x = 25
player(2).spirit.location.y = 330
player(2).spirit.wid = 20
player(2).spirit.hei = 25
player(2).penalty = 0

boa(1).location.x=800
boa(1).location.y=260
boa(1).radius=7
boa(2).location.x=800
boa(2).location.y=390
boa(2).radius=7

circle (boa(1).location.x, boa(1).location.y), boa(1).radius, 7
circle (boa(2).location.x, boa(2).location.y), boa(2).radius, 7

'Drawing finish box
fshx = 14
fshy = 270
fshh = 100
fshw = 3
line (fshx, fshy) - (fshx + fshw, fshy + fshh), 14, b
SX = 0
SY = 0
S1X = 0
S1Y = 0
SX3 = 0
SY3 = 0
SX4 = 0
SY4 = 0
lastx = 0
lasty = 0
lastw = 0
lasth = 0
lastx1 = 0
lasty1 = 0
lastw1 = 0
lasth1 = 0
p2px = 0
p2py = 0
p2px1 = 0
p2py1 = 0
vx = 0
vy = 0
accrefresh = 0
PUT2(barca(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )
put2(barca1(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
trigger% = 0
'------------ Draw timoni ----------------------
player(1).ship.timone.location.x = 960
player(1).ship.timone.location.y = 220
player(1).ship.timone.angolo = wind.direzione
Circle (player(1).ship.timone.location.x, player(1).ship.timone.location.y), 30, 7 
player(2).ship.timone.location.x = 960
player(2).ship.timone.location.y = 400
player(2).ship.timone.angolo = wind.direzione
Circle (player(2).ship.timone.location.x, player(2).ship.timone.location.y), 30, 7 

'-------End of timone -------------------
'angle(1) = wind.direzione
angle(2) = wind.direzione
 player(1).ship.andatura.bolina = true
 player(1).ship.andatura.ventoadx = 1
  player(2).ship.andatura.bolina = true
  player(2).ship.andatura.ventoadx = 1
  overlap = false
 'sndPlaySoundA("tomorrow.mid", 1)

 img1 = bmp_load("tiles\ancora2.bmp")
 put(925,90),img1 , pset
  img2 = bmp_load("tiles\ciambella.bmp")
 put(930,490),img2 , pset
'--------------------------------------------------------------------------------
'----------------------- Start of Main ------------------------------------------
'--------------------------------------------------------------------------------
While Not trigger% = 1 
    Do
    static as single dt  
    tempo = timer  
       Circle (player(1).ship.timone.location.x, player(1).ship.timone.location.y), 30, 7 
       Circle (player(2).ship.timone.location.x, player(2).ship.timone.location.y), 30, 7 
       'Print Using "Measured FPS  : ###"; framerate()     
PlotLine(960, 310, 960 + (30 * c!(t!)), 310 + (30 * s!(t!)), 1)
t! = wind.direzione + 180 +6
PlotLine(960, 310, 960 + (30 * c!(t!)), 310 + (30 * s!(t!)), 2)
if accrefresh < 2 then
else   
 player(1).ship.accelerazione = Arrotonda((Pascalbar! * player(1).ship.sailarea) / 154,3)
 player(2).ship.accelerazione = Arrotonda((Pascalbar! * player(2).ship.sailarea) / 154,3)
 accrefresh = 0
 end if
 delay(t0)
 px = player(1).spirit.location.x
 py = player(1).spirit.location.y
 p2x = player(2).spirit.location.x
 p2y = player(2).spirit.location.y
 PUT2 Mask%(), 20, 25, px, py
 PUT2 Mask%(), 20, 25, p2x, p2y      
      
      
      if map(player(1).spirit.location.x  ,player(1).spirit.location.y)= 0 then  
         player(1).ship.accelerazione -= .15
      elseif map(player(1).spirit.location.x ,player(1).spirit.location.y) = 2 then
         player(1).ship.accelerazione += .15
    
 
          end if
       if map(player(2).spirit.location.x,player(2).spirit.location.y) = 0 then
            player(2).ship.accelerazione -=  .15
        
        elseif map(player(2).spirit.location.x,player(2).spirit.location.y) = 2 then
            player(2).ship.accelerazione +=  .15
            
       end if
 '-------------- Player one keys -----------------------------
 'PlayAI()
 'p2pvector(cast(single,player(1).spirit.location.x), cast(single,player(1).spirit.location.y), cast(single,player(2).spirit.location.x), cast(single,player(2).spirit.location.y))
         'PgUp and PgDown to move the wheel-------------------------
        If multikey(73) Then
            player(1).ship.timone.angolo -=3
            If player(1).ship.timone.angolo = 0 Then
                player(1).ship.timone.angolo = 180
            End If
            SX = player(1).ship.timone.location.x + (30 * c!(player(1).ship.timone.angolo))
            SY = player(1).ship.timone.location.y + (30 * s!(player(1).ship.timone.angolo))
            Paint (player(1).ship.timone.location.x , player(1).ship.timone.location.y ), 1, 7
            Line(player(1).ship.timone.location.x, player(1).ship.timone.location.y)-( SX, SY), 2
         End If
        If multikey(81) Then
            player(1).ship.timone.angolo += 3
            If player(1).ship.timone.angolo > 180 Then
                player(1).ship.timone.angolo = 0
            End If
            S1X = player(1).ship.timone.location.x + (30 * c!(player(1).ship.timone.angolo))
            S1Y = player(1).ship.timone.location.y + (30 * s!(player(1).ship.timone.angolo))
            Paint (player(1).ship.timone.location.x-1 , player(1).ship.timone.location.y-1 ), 1, 7
            Line(player(1).ship.timone.location.x, player(1).ship.timone.location.y)-( S1X, S1Y), 2
        End If
        '-----------End of wheel-----------------
  if MULTIKEY(77) then
    angolodibolina!(1)=radian(player(1).ship.timone.angolo)
     If sin(angolodibolina!(1)) < .270958  then
        else
        player(1).ship.andatura.ventoadx = 1
    player(1).ship.andatura.ventoasx = 0
     'player(1).ship.ventoasx = false
    'player(1).ship.andatura.bolina = true
    der(1) = Arrotonda(player(1).ship.accelerazione /angolodibolina!(1),2)
    der(1)=der(1)*friction!
    player(1).spirit.location.x = player(1).spirit.location.x + (der(1) - s!(degree(angolodibolina!(1)))) '(der(1) -.92)
    player(1).spirit.location.y = player(1).spirit.location.y - (der(1) + c!(degree(angolodibolina!(1))))  
    
   
    end if
  end if
 if MULTIKEY(75) then
       'angolodibolina!(1)=radian(53)
       angolodibolina!(1)=radian(player(1).ship.timone.angolo)
       If s!(degree(angolodibolina!(1))) < .270958  then
          else
       
           player(1).ship.andatura.ventoadx = 0
        player(1).ship.andatura.ventoasx = 1
      
        'player(1).ship.andatura.bolina = true
       'andatura.bolina = true
       der(1) = Arrotonda(player(1).ship.accelerazione /angolodibolina!(1),2)
       der(1)=der(1)*friction!
       player(1).spirit.location.x = player(1).spirit.location.x + (der(1) -s!(degree(angolodibolina!(1))))
       player(1).spirit.location.y = player(1).spirit.location.y + (der(1) + c!(degree(angolodibolina!(1)))) 
       
          

       end if
 end if
 if MULTIKEY(72) then
       angolodipoppa(1)= radian(player(1).ship.timone.angolo)   
       If s!(angolodipoppa(1)) > Abs(.9397) Then
           else
       
          player(1).ship.andatura.poppa = true
       player(1).ship.andatura.ventoadx = 1
       player(1).ship.andatura.ventoasx = 0
       tx = sin(angolodipoppa(1))
       ty = cos(angolodipoppa(1))
       der(1)=Arrotonda(player(1).ship.accelerazione/angolodipoppa(1),2)*friction!
       player(1).spirit.location.x=player(1).spirit.location.x-(der(1)* tx)
       player(1).spirit.location.y=player(1).spirit.location.y+ty
       
         'wind.direzione*(PI!/180)
       
       
  end if
end if
if MULTIKEY(80) then
    

angolodipoppa(1)=  radian(player(1).ship.timone.angolo)   
If s!(angolodipoppa(1)) > Abs(.9397) Then
   else
   player(1).ship.andatura.poppa = true
 player(1).ship.andatura.ventoadx = 0
 player(1).ship.andatura.ventoasx = 1
    'andatura.bolina = false
' andatura.angolo = wind.direzione*(PI!/180)
 tx = sin(angolodipoppa(1))
 ty = cos(angolodipoppa(1))
      der(1)=Arrotonda(player(1).ship.accelerazione/angolodipoppa(1),2)*friction!
      player(1).spirit.location.x=player(1).spirit.location.x-(der(1)*tx)
      player(1).spirit.location.y=player(1).spirit.location.y-ty
                                'wind.direzione*(PI!/180)
 

   end if
end if
'------------------------------------------------------------------------------
'-------------------------- End of player one keys ----------------------------
'------------------------------------------------------------------------------
'---------------------------Player 2 keys --------------------------------------
'---------------------------- Wheel --------------------------------------------
        If MULTIKEY(16) Then 'kb$ = (Chr$(113)) Then
           player(2).ship.timone.angolo -=3
            If player(2).ship.timone.angolo <= 0 Then
                player(2).ship.timone.angolo = 180
            End If
            SX3 = player(2).ship.timone.location.x + (30 * c!(player(2).ship.timone.angolo))
            SY3 = player(2).ship.timone.location.y + (30 * s!(player(2).ship.timone.angolo))
            Paint (player(2).ship.timone.location.x , player(2).ship.timone.location.y ), 1, 7
            Line(player(2).ship.timone.location.x, player(2).ship.timone.location.y)-( SX3, SY3), 2  
        End If
        If MULTIKEY(44) Then 'kb$ = Chr$(122) Then
         player(2).ship.timone.angolo +=3
            If player(2).ship.timone.angolo >= 180 Then
                player(2).ship.timone.angolo = 0
            End If
            SX4 = player(2).ship.timone.location.x + (30 * c!(player(2).ship.timone.angolo))
            SY4 = player(2).ship.timone.location.y + (30 * s!(player(2).ship.timone.angolo))
            Paint (player(2).ship.timone.location.x , player(2).ship.timone.location.y ), 1, 7
            Line(player(2).ship.timone.location.x, player(2).ship.timone.location.y)-( SX4, SY4), 2    
        End If
'----------------------- End of wheel ----------------------------------        
  if MULTIKEY(30) then '"a"
     p2pvector(cast(single,player(1).spirit.location.x), cast(single,player(1).spirit.location.y), cast(single,player(2).spirit.location.x), cast(single,player(2).spirit.location.y))
     'print using "###.##";vx
      'print using "###.##";vy
 
    'angolodibolina!(2)=radian(player(2).ship.timone.angolo)
    angolodibolina!(2)=radian(60)
        'angolodibolina!(2)=radian(wind.direzione + 40)
     If c!(angolodibolina!(2)) > abs(.270958)  then
     player(2).ship.andatura.ventoadx = 1
     player(2).ship.andatura.ventoasx = 0
     tx = cos(53)
     ty = Sin(53)
    
     'player(2).ship.andatura.bolina = true
    
    'andatura.poppa = false
    'print angolodibolina!(1)
     der(2) = Arrotonda(player(2).ship.accelerazione /angolodibolina!(2),1)
     der(2)=der(2)*friction!
    
                 player(2).spirit.location.x = player(2).spirit.location.x +  (der(2) -s!(degree(angolodibolina!(2))))'(der(2) + (-.92))
            player(2).spirit.location.y = player(2).spirit.location.y +  (der(2) + c!(degree(angolodibolina!(2))))             '(der(2) + .4)    
     else
        end if
 end if
  If MULTIKEY(32) then 'kb$ = "d" Then  
    'angolodibolina!(2)=radian(player(2).ship.timone.angolo)
    'angolodibolina!(2)=radian(wind.direzione + 40)
     p2pvector(cast(single,player(1).spirit.location.x), cast(single,player(1).spirit.location.y), cast(single,player(2).spirit.location.x), cast(single,player(2).spirit.location.y))
     'print using "###.##";vx
      'print using "###.##";vy
     angolodibolina!(2)=radian(wind.direzione + 38)
     If c!(angolodibolina!(2)) > abs(.270958)  then
     player(2).ship.andatura.ventoadx = 0
     player(2).ship.andatura.ventoasx = 1
    
    'player(2).ship.andatura.bolina = true
    'andatura.bolina = true
    'andatura.poppa = false
     tx = cos(53)
     ty=sin(53)
    
    'print angolodibolina!(1)
    der(2) = Arrotonda(player(2).ship.accelerazione /angolodibolina!(2),1)
    der(2)=der(2)*friction!
     
            player(2).spirit.location.x = player(2).spirit.location.x + (der(2) -s!(degree(angolodibolina!(2))))'(der(2) + (-.92))
            player(2).spirit.location.y = player(2).spirit.location.y -   (der(2) + c!(degree(angolodibolina!(2)))) '(der(2) + .4) 
     else
        end if
   
  end if
  If MULTIKEY(17) then 'kb$ = "w" Then    
     angolodipoppa(2)=radian(wind.direzione)
      p2pvector(cast(single,player(1).spirit.location.x), cast(single,player(1).spirit.location.y), cast(single,player(2).spirit.location.x), cast(single,player(2).spirit.location.y))
     'print using "###.##";vx
      'print using "###.##";vy
     If c!(angolodipoppa(2)) > Abs(.9397) Then
else
     player(2).ship.andatura.poppa = true
     player(2).ship.andatura.ventoadx = 1
       player(2).ship.andatura.ventoasx = 0
     
      tx = sin(angolodipoppa(2))
       ty = cos(angolodipoppa(2))
      der(2)=Arrotonda(player(2).ship.accelerazione/angolodipoppa(2),2)*friction!
      player(2).spirit.location.x=player(2).spirit.location.x-(der(2)* tx)
      player(2).spirit.location.y=player(2).spirit.location.y+1   
      end if
  end if
  If MULTIKEY(31) then 'kb$ = "s" Then
     angolodipoppa(2)=radian(wind.direzione)
      p2pvector(cast(single,player(1).spirit.location.x), cast(single,player(1).spirit.location.y), cast(single,player(2).spirit.location.x), cast(single,player(2).spirit.location.y))
     'print using "###.##";vx
      'print using "###.##";vy
      If c!(angolodipoppa(2)) > Abs(.9397) Then
         else
      
     player(2).ship.andatura.poppa = true
     player(2).ship.andatura.ventoadx = 0
       player(2).ship.andatura.ventoasx = 1
 tx = sin(angolodipoppa(2))
 ty = cos(angolodipoppa(2))
      der(2)=Arrotonda(player(2).ship.accelerazione/angolodipoppa(2),2)*friction!
      player(2).spirit.location.x=player(2).spirit.location.x-(der(2)*tx)
      player(2).spirit.location.y=player(2).spirit.location.y-1  
      end if
  end if
 'call Sprite(player(1).spirit.location.x,player(1).spirit.location.y,"BARCA01.PCX"
  '------------------------- GPS ---------------------------------------------
  ' Who is winning?  
  
      if player(1).ship.andatura.bolina = true  and player(2).ship.andatura.bolina = true then
         if    (player(1).spirit.location.x > player(2).spirit.location.x)  then
           pset (px, py - 11), 2
           pset (p2x, p2y - 11), 4
            
           else
           pset (px, py - 11), 4
           pset (p2x, p2y - 11), 2
           
         end if
      end if
   if  player(1).ship.andatura.poppa = true   and player(2).ship.andatura.poppa = true then
      if   (player(1).spirit.location.x < player(2).spirit.location.x) then
        pset (px, py - 11), 2
        pset (p2x, p2y - 11), 4      
        else
        pset (px, py - 11), 4
        pset (p2x, p2y - 11), 2         
       end if
    end if        
'--------------------------------------------------------------
' Controlling "on starboard tack"
'---------------------------------------------------------------
if ((player(1).ship.andatura.ventoadx = 1 ) and  (player(2).ship.andatura.ventoadx = 0 )) or  (player(1).spirit.location.y > player(2).spirit.location.y) then
   
   'if   (player(1).spirit.location.y > player(2).spirit.location.y) then
    circle(645,715),8,2
           paint(645,715),2
           circle(720,715),8,4
           paint(720,715),4 
else
    circle(645,715),8,4
           paint(645,715),4
           circle(720,715),8,2
           paint(720,715),2 
end if
'--------------------------- Another stuff: checking overlap ------------------------------------
if  abs(player(1).spirit.location.x-player(2).spirit.location.x) < 20 then
   overlap = true
   if (player(1).spirit.location.y > player(2).spirit.location.y)  then       
      player(1).ship.andatura.sopravvento = true
      player(2).ship.andatura.sopravvento = false  
else 
      player(1).ship.andatura.sopravvento = false
      player(2).ship.andatura.sopravvento = true  
   end if
  
else
   overlap = false
end if

'--------------------- End of another stuff: checking overlap -----------------------------------
'--------------------- Wind shadow --------------------------------------------
if abs(hypot(cast(single,player(1).spirit.location.x-player(2).spirit.location.x),cast(single,player(1).spirit.location.y-player(2).spirit.location.y)) < 90) then
   

 if player(1).ship.andatura.bolina = true  and player(2).ship.andatura.bolina = true then
         if    (player(1).spirit.location.x > player(2).spirit.location.x)  then
            'wsdist = hypot(cast(single,player(1).spirit.location.x-player(2).spirit.location.x),cast(single,player(1).spirit.location.y-player(2).spirit.location.y))
            wsdist=findDistance(cast(single,player(1).spirit.location.x),cast(single,player(1).spirit.location.y),cast(single,player(2).spirit.location.x),cast(single,player(2).spirit.location.y))
         
            select case wsdist
               case   89 to 60 
                 player(2).ship.accelerazione -= .14 
               case  59 to 40
                  player(2).ship.accelerazione -= .19
               case  39 to 20
                   player(2).ship.accelerazione -= .24    
               case else
                    player(2).ship.accelerazione -= .29 
            end select
        
            'player(2).ship.accelerazione -= .22
              'player(1).ship.accelerazione += .12
         else
            wsdist = 0
            'wsdist = hypot(cast(single,player(2).spirit.location.x-player(1).spirit.location.x),cast(single,player(2).spirit.location.y-player(1).spirit.location.y))
           wsdist=findDistance(cast(single,player(2).spirit.location.x),cast(single,player(2).spirit.location.y),cast(single,player(1).spirit.location.x),cast(single,player(1).spirit.location.y))
           
            
             select case wsdist
               case  89 to 60 
                 player(1).ship.accelerazione -= .14 
               case  59 to 40
                  player(1).ship.accelerazione -= .19
               case  39 to 20
                   player(1).ship.accelerazione -= .24     
               case else
                   player(1).ship.accelerazione -= .29 
            end select
            'player(1).ship.accelerazione -= .22
             'player(2).ship.accelerazione += .12
     end if        
     end if
   if  player(1).ship.andatura.poppa = true   and player(2).ship.andatura.poppa = true then
      if   (player(1).spirit.location.x < player(2).spirit.location.x) then
            'player(2).ship.accelerazione += .12
           player(1).ship.accelerazione -= .11
      else
            'player(1).ship.accelerazione += .12
            player(2).ship.accelerazione -= .11
      end if
    end if
   
end if
'--------------------- End of wind shadow ------------------------------------- 
   '------------------ Checking right boundaries ------------------------------
       rbound()
 '--------------------------------------------------------------------------------------------------
         If ((lastx <> player(1).spirit.location.x) Or (lasty <> player(1).spirit.location.y) Or (lastw <> player(1).spirit.wid) Or (lasth <> player(1).spirit.hei)) Then
            lastx = player(1).spirit.location.x
            lasty = player(1).spirit.location.y
            lastw = player(1).spirit.wid
            lasth = player(1).spirit.hei
          If (rectRect(player(1).spirit.location.x, player(1).spirit.location.y, 20, 26, rx, ry, rw, rh)) = 1 Then
             
          counter(1) += 1
          if counter(1) = 1 then
          player(1).penalty = player(1).penalty + counter(1)
                hit$ = "HIT"
                
                Line (rx, ry)-(rw, rh), 4, B
                'Line (10, 10)-(580, 450), 7, B
                  End If
          Else
             counter(1) = 0
                hit$ = "NO HIT"
                Line (rx, ry)-(rw,rh), 2, B

          
            end if
 '-------------- Checking collision with buoy ---------------------------------------------------------
             If (CircleRect(boa(1).location.x, boa(1).location.y, boa(1).radius, player(1).spirit.location.x, player(1).spirit.location.y, player(1).spirit.wid, player(1).spirit.hei)) Then
                 counter(3) += 1
          if counter(3) = 1 then
          player(1).penalty = player(1).penalty + counter(3)
            
                hit$ = "HIT"
                Circle (boa(1).location.x, boa(1).location.y), boa(1).radius, 4
                
                 end if
                
          Else
             counter(3) = 0
                hit$ = "NO HIT"
                Circle (boa(1).location.x, boa(1).location.y), boa(1).radius, 7             
              end if  
          end if
          if (CircleRect(boa(2).location.x, boa(2).location.y, boa(2).radius, player(1).spirit.location.x, player(1).spirit.location.y, player(1).spirit.wid, player(1).spirit.hei)) then
             counter(5) += 1
          if counter(5) = 1 then
          player(1).penalty = player(1).penalty + counter(5)
            
                hit$ = "HIT"
                Circle (boa(2).location.x, boa(2).location.y), boa(2).radius, 4
                
                 end if
          Else
             counter(5) = 0
                hit$ = "NO HIT"
                Circle (boa(2).location.x, boa(2).location.y), boa(2).radius, 7             
              end if  
           
             If ((lastx1 <> player(2).spirit.location.x) Or (lasty1 <> player(2).spirit.location.y) Or (lastw1 <> player(2).spirit.wid) Or (lasth1 <> player(2).spirit.hei)) Then
               lastx1 = player(2).spirit.location.x
               lasty1 = player(2).spirit.location.y
               lastw1 = player(2).spirit.wid
               lasth1 = player(2).spirit.hei
                 If (rectRect(player(2).spirit.location.x, player(2).spirit.location.y, 20, 26, rx, ry, rw, rh)) = 1 Then
                     counter(2) += 1
          if counter(2) = 1 then
          player(2).penalty = player(2).penalty + counter(2)

                hit$ = "HIT"
               
                Line (rx, ry)-(rw, rh), 4, B
                                 end if
                'Line (10, 10)-(580, 450), 7, B
          Else
             counter(2) = 0
                hit$ = "NO HIT"
                Line (rx, ry)-(rw, rh), 2, B

            End If
                If CircleRect(boa(1).location.x, boa(1).location.y, boa(1).radius, player(2).spirit.location.x, player(2).spirit.location.y, player(2).spirit.wid, player(2).spirit.hei) Then
                   counter(4) += 1
                
                if counter(4) = 1 then
          player(2).penalty = player(2).penalty + counter(4)
                hit$ = "HIT"
                Circle (boa(1).location.x, boa(1).location.y), boa(1).radius, 4
                 end if
                Else
                   counter(4) = 0
                hit$ = "NO HIT"
                Circle (boa(1).location.x, boa(1).location.y), boa(1).radius, 7             
              end if  
               if (CircleRect(boa(2).location.x, boa(2).location.y, boa(2).radius, player(2).spirit.location.x, player(2).spirit.location.y, player(2).spirit.wid, player(2).spirit.hei)) then
             counter(6) += 1
          if counter(6) = 1 then
          player(2).penalty = player(2).penalty + counter(6)
            
                hit$ = "HIT"
                Circle (boa(2).location.x, boa(2).location.y), boa(2).radius, 4
                
                 end if
          Else
             counter(6) = 0
                hit$ = "NO HIT"
                Circle (boa(2).location.x, boa(2).location.y), boa(2).radius, 7             
              end if  
           end if
                   If rectRect2(player(1).spirit.location.x, player(1).spirit.location.y, player(1).spirit.wid, player(1).spirit.hei, fshx, fshy, fshw, fshh) = 1 Then
                      
              screencopy 0,1
             
            trigger = 1
           
            line (fshx, fshy) - (fshx + fshw, fshy + fshh), 7, b
            screenlock
            print "********** Player 1 wins ***********"
            
            screenunlock
           
           sleep
          
                   elseIf rectRect2(player(2).spirit.location.x, player(2).spirit.location.y, player(2).spirit.wid, player(2).spirit.hei, fshx, fshy, fshw, fshh) = 1 Then
               
            trigger = 1
            line (fshx, fshy) - (fshx + fshw, fshy + fshh), 7, b
            screenlock
            print "********** Player 2 wins ************"
          screenunlock
            
             sleep
            
            
            
         
        End If
            
  '--------------- End of checking collisions and boundaries ---------------------------------
  if (player(1).ship.andatura.bolina = true) and  (player(1).ship.andatura.ventoadx = 1)  then 
     PUT2(barca(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )
  'put2(barca1(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)     
else
     PUT2(barca2(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )  
 'PUT2(barca3(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )  
if (player(1).ship.andatura.poppa = true) and  (player(1).ship.andatura.ventoadx = 1) then
  PUT2(barca(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )
  else
     PUT2(barca2(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )  
  end if
  end if
  if (player(2).ship.andatura.bolina = true) and  (player(2).ship.andatura.ventoadx = 1)  then
 put2(barca1(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
  else
      put2(barca3(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
      
      if (player(2).ship.andatura.poppa = true) and  (player(2).ship.andatura.ventoadx = 1) then
         put2(barca1(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
      else
         put2(barca3(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
      end if
    end if
 
  'put2(barca1(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
       

    
  


   ' if player(1).ship.andatura.poppa = true then
  'PUT2(barca2(),20,25,player(1).spirit.location.x,player(1).spirit.location.y )
'end if
 'if player(2).ship.andatura.poppa = true then
  'put2(barca3(),20,25,player(2).spirit.location.x ,player(2).spirit.location.y)
   ' end if


  Sleep 25
        PlotLine(960, 310, 960 + (30 * c!(t!)), 310 + (30 * s!(t!)), 1)
        t! = wind.direzione + 180 -6
         PlotLine(960, 310, 960 + (30 * c!(t!)), 310 + (30 * s!(t!)), 2)  
         'delay(t0)
         dt = regulate(FPS)
        
   t0 /=10
 accrefresh += 1
 
 view print 44 to 48
 tempolimite = timer - t
 'player(1).ship.vmg = (tempolimite * player(1).ship.accelerazione)/2 
 'player(2).ship.vmg = (tempolimite * player(2).ship.accelerazione )/2
  d = hypot(cast(single,boa(1).location.x-player(1).spirit.location.x), cast(single,boa(1).location.y-player(1).spirit.location.y))
  d1 = hypot(cast(single,boa(1).location.x-player(2).spirit.location.x), cast(single,boa(1).location.y-player(2).spirit.location.y))
  d2 = hypot(cast(single,player(2).spirit.location.x-player(1).spirit.location.x),cast(single,player(2).spirit.location.y-player(1).spirit.location.y))
  if overlap = true then
      circle(800,710),10,14
      paint (800,710),14
  else
     circle(800,710),10,1
      paint (800,710),1
  end if
  'print "P1 vmg:   "; '"P1 distance from the buoy: ";
  'print  using "##.##"; player(1).ship.vmg/100000;
  'print "                       ";
  'print "P2 vmg:   ";
  'print  using "##.##";player(2).ship.vmg/100000
  'print using "###.##"; d!;
   '
   'print "P2 distance from the buoy: ";
  'print using "###.##"; d1!
  print "                                                  "
  print "P1 accelerazione: ";
  print using "#.####";player(1).ship.accelerazione;
  print "              ";
  print "P2 accelerazione: ";
  print using "#.####";player(2).ship.accelerazione
  print "P1 penalties: ";player(1).penalty;
   print "                      ";
   print "P2 penalties: ";player(2).penalty
  print "Wind speed: "; wind.forza;
   print "    ";
   print "Distance P1-P2: ";
   print using "###.##";d2;
  print "                ";
   print "On starboard tack:"+"     "+"P1"+"        "+"P2";
   print "      ";
   print "Overlap"
 

        Loop Until MULTIKEY(1) 'until ESC is pressed 
        
         trigger=1
  

wend
'-------------------------------------------------------------------------------------------------
'-------------------------- End of Main -----------------------------------------------------------
ImageDestroy(img1)
ImageDestroy(img)
'sndPlaySoundA(0, 0)
sleep 
end
'----------------------------------------------------------------------------------------------------
'----------------------------- End of program -----------------------------------------------------
sub playAI()
   'p2pvector(cast(single,player(1).spirit.location.x), cast(single,player(1).spirit.location.y), cast(single,player(2).spirit.location.x), cast(single,player(2).spirit.location.y))
   'angolodibolina!(2)=radian(wind.direzione + 38)
   
end sub

sub rbound()
    If player(1).spirit.location.x > 895 Then
            player(1).spirit.location.x = player(1).spirit.location.x - player(1).spirit.wid
            PUT2 Mask(), 20, 26, player(1).spirit.location.x, player(1).spirit.location.y
Else
        If player(2).spirit.location.x > 895 Then
           player(2).spirit.location.x = player(2).spirit.location.x - player(2).spirit.wid
           PUT2 Mask(), 20, 26, player(2).spirit.location.x, player(2).spirit.location.y
            End If
        End If
end sub
Function bmp_load( ByRef filename As Const String ) As Any Ptr

    Dim As Long filenum, bmpwidth, bmpheight
    Dim As Any Ptr img

    '' open BMP file
    filenum = FreeFile()
    If Open( filename For Binary Access Read As #filenum ) <> 0 Then Return NULL

        '' retrieve BMP dimensions
        Get #filenum, 19, bmpwidth
        Get #filenum, 23, bmpheight

    Close #filenum

    '' create image with BMP dimensions
    img = ImageCreate( bmpwidth, Abs(bmpheight) )

    If img = NULLA Then Return NULL

    '' load BMP file into image buffer
    If BLoad( filename, img ) <> 0 Then ImageDestroy( img ): Return NULL

    Return img

End Function

 Sub PlotLine (x1, y1, x2, y2, colore)
    'DefInt A-Z
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
Function Arrotonda (Num!, Decimals%)
    n = Num! * (10 ^ Decimals%)
    n = Sgn(n) * (Abs(Int(n + .5)))
    Arrotonda = n / (10 ^ Decimals%)
End Function
Sub PUT2 (Sprites() As Integer, XSize As Integer, YSize As Integer, X As Integer, Y As Integer)
    ' Draw the sprite from the array onto the screen
    For YP = 0 To YSize - 1
        For XP = 0 To XSize - 1
            PSet (X + XP, Y + YP), Sprites%(XP, YP)
        Next XP
    Next YP
End Sub
Function CircleRect (circle_x, circle_y, circle_rad, r1x, r1y, r1w, r1h)
    test_x! = circle_x
    test_y! = circle_y



    If (circle_x <= r1x) Then
        test_x! = r1x
Else
   If (circle_x >= r1x + r1w) Then
            test_x! = r1x + r1w
        End If
        If (circle_y <= r1y) Then
            test_y! = r1y
Else
   If (circle_y >= r1y + r1h) Then
                test_y! = r1y + r1h
            End If
        End If


        distx! = circle_x - test_x!
        disty! = circle_y - test_y!
        distance! = Sqr((distx! * distx!) + (disty! * disty!))
        If distance! <= circle_rad Then
            CircleRect = 1
        Else
            CircleRect = 0
        End If
    End If
End Function
Function rectRect (r1x, r1y, r1w, r1h, r2x, r2y, r2w, r2h)

    ' are the sides of one rectangle touching the other?
    ' r1 right edge past r2 left
    ' r1 left edge past r2 right
    ' r1 top edge past r2 bottom
    ' r1 bottom edge past r2 top
    'If (r1x% + r1w% >= r2x%) And (r1x% <= r2x% + r2w%) And (r1y% + r1h% >= r2y%) And  Then
    '        If (r1x% + r1w% >= r2x%) And (r1x% <= r2x% + r2w%) And (r1y% + r1h% >= r2y%) And (r1y% <= r2y% + r2h%) Then
    If (r1y% + r1h% >= r2h%) Or (r1y% <= r2y%) Then
        'If (r1y% + r1h% <= r2y%) Or (r1y% + r1h% > r2w%) Then

        rectRect% = 1
        hit$ = "HIT"
Else
  

       
            rectRect% = 0
    If (r1x% <= r2x%) Then
            rectRect% = 1
            trigger% = 1
            Print "End of game"
            for i = 1 to 2
                

            next i

            hit$ = "HIT"
            Sleep 10
             End If
    End If
End Function
Function findDistance (ox As single, oy As single, dx As single, dy As single)
    findDistance = Sqr((dx - ox) * (dx - ox) + (dy - oy) * (dy - oy))
End Function
Function rectRect2 (r1x, r1y, r1w, r1h, r2x, r2y, r2w, r2h)
    If (r1x + r1w >= r2x) And (r1x <= r2x + r2w) And (r1y + r1h >= r2y) And (r1y <= r2y + r2h) Then
        rectRect2 = 1
    Else
        rectRect2 = 0

    End If

End Function


   


sub p2pvector( p2px as single, p2py as single, p2px1 as single, p2py1 as single)
       ' distance between points

    vx = abs(p2px1 - p2px) '     horizontal distance (  side A  )
    vy = abs(p2py1 - p2py)    '     vertical distance   (  side B  )
    dist = hypot(vx, vy) '  direct distance     (hypotenuse)
   'dist =  findDistance(cast(single,p2px),cast(single,p2py),cast(single,p2px1),cast(single,p2py1))  '   d! =  hypot(cast(single,x2)-cast(single,x1),cast(single,y2),cast(single,y1))
    If dist = 0 Then Exit Sub ' can't divide by 0
    vx = vx / dist '         normalize x vector (  -1 to 1 )
    vy = vy / dist '         normalize y vector (  -1 to 1 )
end sub

'------------------Credits to "SysOp" for the rnd_range function -------------------
Function rnd_range (first As Double, last As Double) As Double
    Function = Rnd * (last - first) + first
End Function
