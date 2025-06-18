;full process v1
M64 P4; engage ball lock
G90; abs pos mode
G01 Z0 F10000; rise up
G28; home
G17; x y arc plane
G21; units in mm

G01 X140 Y244.5 Z0 F10000; move overtop of drive

;screw sticker 2-1
  G90; abs pos mode
  G01 X41.1 Y242 Z75
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0 ; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.75 J0; 5.5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode

; screw sticker 2-2
  G90; abs pos mode
  G01 X46.8 Y261.2 Z75
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.75 J0; 5.5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode

; screw sticker 2-3
  G90; abs pos mode
  G01 X46.8 Y286.9 Z75 
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.75 J0; 5.5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode

; screw sticker 2-4
  G90; abs pos mode
  G01 X64.1 Y234.5 Z75 
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.75 J0; 5.5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode

; screw sticker 2-5
  G90; abs pos mode
  G01 X84.1 Y207 Z75 
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.75 J0; 5.5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode

; screw sticker 2-6
  G90; abs pos mode
  G01 X155.6 Y281.3 Z75 
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.75 J0; 5.5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode


; screw sticker 2-7
  G90; abs pos mode
  G01 X119.1 Y245.3 Z75 
  M64 P3; turn on laser
  G91; rel pos mode
  G64 P1; start blending with 1mm deviation allowance
  G01 X0.25 Y0 Z0; move to top of first circle
  G02 I-0.25 J0; Move in a 0.5mm diameter circle, set circle feed rate
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.5 J0; 1mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-0.75 J0; 1.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1 J0; 2mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.25 J0; Move in a 2.5mm diameter circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.5 J0; 3mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-1.75 J0; 3.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2 J0; 4mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.25 J0; 4.5mm circle
  G01 X0.25 Y0 Z0; move outwards
  G02 I-2.5 J0; 5mm circle
  M65 P3; turn off laser
  G61; stop blending
  G90; abs pos mode

; ;run conveyor
;   M64 P1; turn on conveyor
;   G04 P1; run for 1 second
;   M65 P1; turn off conveyor

;put away laser
  G90; abs pos mode
  G01 X140 Y244.5 Z0 F35000; move overtop of drive
  G01 Y0
  G01 X300
  G01 Z70
  G01 X320 Y7.1 Z69.2
  ;deposit tool
    G91; rel pos mode
    X14.5; into holes
    M65 P4; disengage ball lock
    G04 P1
    Z-40 F5000; lift
  G90; abs pos mode
  X300 F10000; back off

;grab T8 driver
  G90; abs pos mode
  G01 X300 Y131 Z20
  G01 X313 Y131 Z20 
  ;pickup tool
    G91; rel pos mode
    G01 Z30 F5000
    G01 X2 Z23
    M64 P4; engage ball lock
    G01 X-50 F10000; pull out of holes
  G90; abs pos mode


;______________________________________________________________________________________


;QC top cover screws v2
M64 P4; engage ball lock
G90; abs pos mode
G01 Z0 F10000; rise up
G17; x y arc plane
G21; units in mm

G01 X100 Y250 Z0 F35000; move overtop of drive

;pull out screw 2-1
  G01 X100 Y250 Z0 F35000; move overtop of drive
  G01 X36.8 Y241.8 Z50 F35000; move overtop screw
  G01 X36.8 Y241.8 Z59
  G91; rel pos mode
  G01 Z6 F5000; engage screw
  M64 P2; turn on driver 
  G01 X0 Y0 Z-2.8 F300; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 (grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 2-1
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 2-2
  G01 Y110; clear conveyor
  G01 X42.4 Y261 Z50 F35000; move overtop screw
  G01 X42.4 Y261 Z59
  G91; rel pos mode
  G01 Z4 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-2 F300; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 (grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 2-2
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 2-3
  G01 Y110; clear conveyor
  G01 X42.5 Y287.1 Z50 F35000; move overtop screw
  G01 X42.5 Y287.1 Z59
  G91; rel pos mode
  G01 Z5 F5000; engage screw
  M64 P2; turn on driver 
  G01 X0 Y0 Z-2.0 F300; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 (grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 2-3
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 2-4
  G01 Y110; clear conveyor
  G01 X59.8 Y234.2 Z50 F35000; move overtop screw
  G01 X59.8 Y234.2 Z58.5
  G91; rel pos mode
  G01 Z5 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-2.8 F400; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 (grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 2-4
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 2-5
  G01 Y110; clear conveyor
  G01 X79.6 Y206.6 Z50 F35000; move overtop screw
  G01 X79.6 Y206.6 Z59
  G91; rel pos mode
  G01 Z5 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-3 F400; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 (grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 2-5
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 2-6
  G01 Y110; clear conveyor
  G01 X151.3 Y281.4 Z50 F35000; move overtop screw
  G01 X151.3 Y281.4 Z59
  G91; rel pos mode
  G01 Z5 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-2.8 F300; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 (grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 2-6
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 1-1
  G01 Y110; clear conveyor
  G01 X24.6 Y197.9 Z50 F35000; move overtop screw
  G01 X24.6 Y197.9 Z58.5; move down to screw
  G91; rel pos mode
  G01 Z5 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-3 F400; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 ;(grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 1-1
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)


;pull out screw 1-2
  G01 Y110; clear conveyor
  G01 X89.3 Y292.1 Z50 F35000; move overtop screw
  G01 X89.3 Y292.1 Z58.5; move down to screw
  G91; rel pos mode
  G01 Z5 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-2.8 F400; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 ;(grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 1-2
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;pull out screw 1-3
  G01 Y110; clear conveyor
  G01 X161.8 Y203.9 Z50 F35000; move overtop screw
  G01 X161.8 Y203.9 Z58.5
  G91; rel pos mode
  G01 Z5 F5000; engage screw 
  M64 P2; turn on driver
  G01 X0 Y0 Z-3 F400; back out screw
  M65 P2; stop driver
  G01 Z1; press on screw head
  M64 P3; engage collet
  G04 P0.25 ;(grab screw)
  G90; abs pos mode
  G01 Z0 F35000; rise up

;deposit screw 1-3
  G90; abs pos mode
  G01 Z0 F35000; rise up
  G01 X30 Y0 Z0;
  M65 P3; release collet
  G04 P0.5; wait half second (eject screw)

;run conveyor
  M64 P1; turn on conveyor
  G04 P1; run for 1 second
  M65 P1; turn off conveyor

;

;put away T8 driver
  G90; abs pos mode
  G01 X140 Y244.5 Z0 F35000; move overtop of drive
  G01 X250 Y130.8 Z0
  G01 X300 Y130.8 Z0
  G01 Z72.4
  ;deposit tool
    G91; rel pos mode
    X15; into holes
    M65 P4; disengage ball lock
    G04 P1
    X-1 Z-40 F5000; lift
  G90; abs pos mode
  X230 F35000; back off

;grab jaws
  G90; abs pos mode
  G01 X230 Y493.9 Z30
  G01 X254 Y493.9 Z30 
  ;pickup tool
    G91; rel pos mode
    G01 Z20 F5000
    G01 X2 Z22.5
    M64 P4; engage ball lock
    G01 X-75 F10000; pull out of holes
  G90; abs pos mode


;____________________________________________________________________________________

; ;pull out screw 3-1
;   G01 Y110; clear conveyor
;   G01 X114.8 Y245.3 Z50 F35000; move overtop screw
;   G01 X114.8 Y245.3 Z58
;   G91; rel pos mode
;   G01 Z4.5 F5000; engage screw 
;   M64 P2; turn on driver
;   G01 X0 Y0 Z-3.5 F400; back out screw
;   M65 P2; stop driver
;   G01 Z1; press on screw head
;   M64 P3; engage collet
;   G04 P0.25 (grab screw)
;   G90; abs pos mode
;   G01 Z0 F35000; rise up

; ;deposit screw 3-1
;   G90; abs pos mode
;   G01 Z0 F35000; rise up
;   G01 X10 Y0 Z0;
;   M65 P3; release collet
;   G04 P0.5; wait half second (eject screw)

; ;run conveyor
;   M64 P1; turn on conveyor
;   G04 P1; run for 1 second
;   M65 P1; turn off conveyor


;_________________________________________________________________________________________

;QC jaws v1
M64 P4; engage ball lock
G90; abs pos mode
G01 X57 Y245.5 Z0; move overtop drive
G17; x y arc plane
G21; units in mm
G01 X57 Y245.5 Z35; move overtop drive
M64 P3; open jaws
G04 P0.25
G01 X57 Y245.5 Z65; move down to HDD

;pry
  M65 P3; squeeze
  G04 P10; wait 1
  G90; abs pos mode
  G01 Z0 F10000; rise up
  G01 X57 Y0; move over to conveyor
  M64 P3; release
  G04 P5; wait 1
  ; G01 Y250; move out of shot

;advance conveyor
  M64 P1;
  G04 P2; run for 2 seconds
  M65 P1; turn off conveyor


;put away jaws
  G90; abs pos mode
  G01 X57 Y245.5 Z0; move overtop drive
  G01 X200 Y494.4 Z70.2 
  G01 X235 Y494.4 Z70.2 
  ;deposit tool
    G91; rel pos mode
    X23; into holes
    M65 P4; disengage ball lock
    G04 P1
    Z-40 F5000; lift
  G90; abs pos mode
  X240 F10000; back off

;grab electromagnet
  G90; abs pos mode
  G01 X240 Y294 Z30 F10000
  G01 X314 Y294 Z30 
  ;pickup tool
    G91; rel pos mode
    G01 Z20 F5000
    G01 X2 Z22.5
    M64 P4; engage ball lock
    G01 X-50 F10000; pull out of holes
  G90; abs pos mode



;__________________________________________________________________________________________



;QC Top Magnet Pull v1
M64 P4; engage ball lock
G90; abs pos mode
G01 Z0 F10000; rise up
G17; x y arc plane
G21; units in mm

G01 X57 Y227 Z0 F35000; move overtop of drive

;pull top magnet
  G01 X53 Y230 Z60; move down to magnet
  M64 P2; power electromagnet
  M64 P3; distend
  G01 X53 Y230 Z68 F1000;touch magnet
  G04 P0.5; attach
  G01 Z0 F35000; rise up

;deposit top magnet
  G90; abs pos mode
  G01 X100 Y0 Z0;
  M65 P2; power down magnet
  M65 P3; retract magnet
  G04 P0.5; release top magnet

;run conveyor
  M64 P1; turn on conveyor
  G04 P2; run for 2 seconds
  M65 P1; turn off conveyor


;end
  G90; abs pos mode
  G01 Z0; rise up
  G01 X140 Y244.5 Z0 F5000; move overtop of drive
  G28; home
  M65 P4; disengage ball lock

M30
