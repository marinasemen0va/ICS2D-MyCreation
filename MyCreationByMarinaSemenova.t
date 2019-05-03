%Marina Semenova
%Valentina Krasteva
%April 6, 2018
%Program outputs an animation of dinosaurs with a creative storyline

setscreen ("graphics:640;400")
View.Set ("offscreenonly")

%variables
var font : int
var randx : int
var randy : int
var randc : int

proc intro
    font := Font.New ("times new roman:25")
    Font.Draw ("THE TIME OF THE DINOS", 50, 200, font, 7) %title
    View.Update
    delay (2000)
    for x : 0 .. 21 %erase
	drawline (50, 200 + x, 450, 200 + x, 0)
	View.Update
	delay (20)
    end for
end intro

proc background
    for i : 0 .. 400 %sky
	drawline (0, 0 + i, 640, 0 + i, 52)
    end for
    for i : 0 .. 2 %comet
	drawoval (320, 400, 2, i, 12)
    end for
    for i : 0 .. 60 %ground
	drawline (0, 0 + i, 640, 0 + i, 115)
    end for
    for i : 0 .. 100 %sun
	drawoval (640, 400, i, i, 0)
	drawoval (641, 400, i, i, 14)
    end for
    var x : array 1 .. 4 of int := init (380, 260, 180, 460)
    var y : array 1 .. 4 of int := init (300, 300, 60, 60)
    drawfillpolygon (x, y, 4, 24) %volcano
    for i : 0 .. 10000 %grass
	randx := Rand.Int (0, 640)
	randy := Rand.Int (0, 60)
	randc := Rand.Int (116, 121)
	drawline (randx, randy, randx, randy - 10, randc)
    end for
end background

proc name
    font := Font.New ("times new roman:9")
    Font.Draw ("MARINA SEMENOVA", 260, 301, font, 176) %name
    View.Update
    delay (1000)
    for i : 0 .. 8 %erase
	drawline (260, 309 - i, 380, 309 - i, 52)
	View.Update
	delay (20)
    end for
    delay (1000)
end name

proc pterodactyl
    var x : array 1 .. 3 of int := init (-100, -85, -120)
    var y : array 1 .. 3 of int := init (320, 320, 280)
    var x1 : array 1 .. 3 of int := init (-170, -110, -110)
    var y1 : array 1 .. 3 of int := init (310, 320, 310)
    var x2 : array 1 .. 3 of int := init (-100, -75, -40)
    var y2 : array 1 .. 3 of int := init (355, 320, 325)
    var x3 : array 1 .. 3 of int := init (-110, -85, -40)
    var y3 : array 1 .. 3 of int := init (320, 320, 270)
    for n : 0 .. 200
	%erase
	drawfillbox (-170 + n, 355, -40 + n, 270, 52)
	%draw
	for i : 1 .. 3
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 3, 132) %wing shadow
	end for
	drawfilloval (-100 + n, 315, 30, 5, 80)     %main body
	for i : 1 .. 3
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 3, 80) %tail
	end for
	drawline (-130 + n, 307, -125 + n, 295, 7)     %leg
	drawfillbox (-130 + n, 310, -128 + n, 305, 80)     %leg
	drawfillbox (-75 + n, 315, -70 + n, 330, 80)    %neck
	for i : 1 .. 3
	    x2 (i) := x2 (i) + 1
	    drawfillpolygon (x2, y2, 3, 80) %head
	end for
	drawfillarc (-70 + n, 330, 3, 3, 0, 360, 7)     %eye
	drawfilloval (-68 + n, 332, 1, 1, 0)     %eye shine
	drawline (-40 + n, 325, -60 + n, 325, 7)     %mouth
	for i : 1 .. 3
	    x3 (i) := x3 (i) + 1
	    drawfillpolygon (x3, y3, 3, 80) %wing
	end for
	View.Update
	delay (10)
    end for
end pterodactyl

proc braunchiosaurus
    var x : array 1 .. 3 of int := init (-165, -170, -195)
    var y : array 1 .. 3 of int := init (95, 105, 61)
    var x1 : array 1 .. 3 of int := init (-166, -171, -196)
    var y1 : array 1 .. 3 of int := init (96, 106, 61)
    for n : 0 .. 230
	%erase
	drawfilloval (-141 + n, 106, 30, 20, 52) %main body
	drawfillbox (-111 + n, 71, -121 + n, 171, 52)     %front leg
	drawfillarc (-116 + n, 70, 5, 9, 180, 360, 52)     %front foot
	drawfillbox (-171 + n, 106, -161 + n, 71, 52)     %back leg
	drawfillarc (-166 + n, 70, 5, 9, 180, 360, 52)     %back foot
	drawfilloval (-106 + n, 171, 15, 10, 52)     %head
	for i : 1 .. 3
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 3, 52) %tail
	end for
	%draw
	drawfilloval (-140 + n, 105, 30, 20, 47)     %main body
	drawfillbox (-110 + n, 70, -120 + n, 170, 47)     %front leg
	drawfillarc (-115 + n, 70, 5, 9, 180, 360, 47)     %front foot
	drawfillbox (-170 + n, 105, -160 + n, 70, 47)     %back leg
	drawfillarc (-165 + n, 70, 5, 9, 180, 360, 47)     %back foot
	drawfilloval (-105 + n, 170, 15, 10, 47)     %head
	drawfilloval (-105 + n, 170, 3, 3, 7)     %eye
	drawfilloval (-103 + n, 172, 1, 1, 0)     %eye shine
	drawline (-100 + n, 165, -93 + n, 165, 7)     %mouth
	for i : 1 .. 3
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 3, 47) %tail
	end for
	drawfillarc (-141 + n, 91, 20, 6, 180, 360, 45)     %main body bottom
	drawfillarc (-141 + n, 91, 20, 3, 0, 180, 45)     %main body bottom
	View.Update
	delay (10)
    end for
end braunchiosaurus

proc stegosaurus
    var x : array 1 .. 11 of int := init (-145, -200, -175, -175, -160, -158, -145, -135, -128, -115, -110)
    var y : array 1 .. 11 of int := init (95, 61, 85, 100, 100, 112, 105, 114, 103, 107, 90)
    var x1 : array 1 .. 11 of int := init (-146, -201, -176, -176, -161, -159, -146, -136, -129, -116, -111)
    var y1 : array 1 .. 11 of int := init (96, 61, 86, 101, 101, 113, 106, 115, 104, 108, 91)
    var x2 : array 1 .. 4 of int := init (279, 198, 180, 279)
    var y2 : array 1 .. 4 of int := init (115, 115, 61, 61)
    for n : 0 .. 360
	%erase
	drawfillbox (-171 + n, 81, -161 + n, 71, 52)         %back leg
	drawfillarc (-166 + n, 70, 5, 9, 180, 360, 52)     %back foot
	drawfillbox (-116 + n, 81, -126 + n, 71, 52)     %front leg
	drawfillarc (-121 + n, 70, 5, 9, 180, 360, 52)     %front foot
	drawfillarc (-141 + n, 81, 35, 25, 0, 180, 52)     %main body
	for i : 1 .. 11
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 11, 52)     %tail and spikes
	end for
	drawfilloval (-96 + n, 85, 15, 10, 52)     %head
	%draw
	drawfillbox (-170 + n, 80, -160 + n, 70, 81)     %back leg
	drawfillarc (-165 + n, 70, 5, 9, 180, 360, 81)     %back foot
	drawfillbox (-115 + n, 80, -125 + n, 70, 81)     %front leg
	drawfillarc (-120 + n, 70, 5, 9, 180, 360, 81)     %front foot
	drawfillarc (-140 + n, 80, 35, 25, 0, 180, 81)     %main body
	for i : 1 .. 11
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 11, 35)     %tail and spikes
	end for
	drawfilloval (-95 + n, 85, 15, 10, 81)     %head
	drawfilloval (-95 + n, 85, 3, 3, 7)     %eye
	drawfilloval (-93 + n, 87, 1, 1, 0)     %eye shine
	drawline (-83 + n, 80, -90 + n, 80, 7)     %mouth
	drawfillarc (-140 + n, 87, 30, 15, 0, 210, 81)     %spikes filler
	drawfillarc (-143 + n, 82, 18, 4, 180, 360, 35)             %main body bottom
	drawfillarc (-143 + n, 82, 18, 2, 0, 180, 35)     %main body bottom
	View.Update
	delay (10)
    end for
    drawfillpolygon (x2, y2, 4, 24) %volcano
    for n : 360 .. 362
	%draw
	drawfillbox (-170 + n, 80, -160 + n, 70, 81)     %back leg
	drawfillarc (-165 + n, 70, 5, 9, 180, 360, 81)     %back foot
	drawfillbox (-115 + n, 80, -125 + n, 70, 81)     %front leg
	drawfillarc (-120 + n, 70, 5, 9, 180, 360, 81)     %front foot
	drawfillarc (-140 + n, 80, 35, 25, 0, 180, 81)     %main body
	for i : 1 .. 11
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 11, 35)     %tail and spikes
	end for
	drawfilloval (-95 + n, 85, 15, 10, 81)     %head
	drawfilloval (-95 + n, 85, 3, 3, 7)     %eye
	drawfilloval (-93 + n, 87, 1, 1, 0)     %eye shine
	drawline (-83 + n, 80, -90 + n, 80, 7)     %mouth
	drawfillarc (-140 + n, 87, 30, 15, 0, 210, 81)     %spikes filler
	drawfillarc (-143 + n, 82, 18, 4, 180, 360, 35)             %main body bottom
	drawfillarc (-143 + n, 82, 18, 2, 0, 180, 35)     %main body bottom
	View.Update
	delay (10)
    end for
end stegosaurus

proc trex
    var x : array 1 .. 12 of int := init (-130, -170, -130, -120, -100, -110, -92, -92, -97, -97, -80, -90)
    var y : array 1 .. 12 of int := init (105, 61, 85, 85, 100, 93, 93, 96, 96, 100, 125, 125)
    var x1 : array 1 .. 12 of int := init (-131, -171, -131, -121, -101, -111, -93, -93, -98, -98, -81, -91)
    var y1 : array 1 .. 12 of int := init (106, 61, 86, 86, 101, 94, 96, 96, 96, 101, 126, 126)
    var x2 : array 1 .. 4 of int := init (287, 206, 180, 287)
    var y2 : array 1 .. 4 of int := init (139, 139, 61, 61)
    for n : 0 .. 350
	%erase
	drawfillarc (-126 + n, 70, 5, 9, 180, 360, 52)     %foot
	drawfillbox (-131 + n, 71, -121 + n, 86, 52)     %leg
	for i : 1 .. 12
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 12, 52)     %main body
	end for
	drawfilloval (-78 + n, 129, 15, 10, 52)     %head
	%draw
	drawfillarc (-125 + n, 70, 5, 9, 180, 360, 2)     %foot
	drawfillbox (-130 + n, 70, -120 + n, 85, 2)     %leg
	for i : 1 .. 12
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 12, 2)     %main body
	end for
	drawfilloval (-77 + n, 129, 15, 10, 2)     %head
	drawfillarc (-77 + n, 129, 3, 3, 0, 360, 7)     %eye
	drawfilloval (-75 + n, 131, 1, 1, 0)     %eye shine
	drawline (-72 + n, 124, -65 + n, 124, 7)     %mouth
	View.Update
	delay (10)
    end for
    drawfillpolygon (x2, y2, 4, 24) %volcano
    for n : 350 .. 460
	%erase
	drawfillarc (-126 + n, 70, 5, 9, 180, 360, 24)     %foot
	drawfillbox (-131 + n, 71, -121 + n, 86, 24)     %leg
	for i : 1 .. 12
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 12, 24)     %main body
	end for
	drawfilloval (-78 + n, 129, 15, 10, 24)     %head
	%draw
	drawfillarc (-125 + n, 70, 5, 9, 180, 360, 2)     %foot
	drawfillbox (-130 + n, 70, -120 + n, 85, 2)     %leg
	for i : 1 .. 12
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 12, 2)     %main body
	end for
	drawfilloval (-77 + n, 129, 15, 10, 2)     %head
	drawfillarc (-77 + n, 129, 3, 3, 0, 360, 7)     %eye
	drawfilloval (-75 + n, 131, 1, 1, 0)     %eye shine
	drawline (-72 + n, 124, -65 + n, 124, 7)     %mouth
	View.Update
	delay (10)
    end for
end trex

proc parasaurolophus
    var x : array 1 .. 12 of int := init (715, 705, 693, 694, 685, 685, 690, 690, 685, 690, 710, 740)
    var y : array 1 .. 12 of int := init (85, 85, 110, 102, 102, 105, 105, 113, 125, 130, 107, 61)
    var x1 : array 1 .. 12 of int := init (716, 706, 694, 695, 686, 686, 691, 691, 686, 691, 711, 741)
    var y1 : array 1 .. 12 of int := init (86, 86, 111, 103, 103, 105, 105, 114, 126, 131, 108, 61)
    for n : 0 .. 240
	%erase
	drawfillarc (696 - n, 130, 25, 20, 40, 180, 52)     %head thing
	drawfillarc (696 - n, 131, 25, 15, 40, 180, 52)     %head thing cover
	drawfillarc (711 - n, 70, 5, 9, 180, 360, 52)     %foot
	drawfillbox (706 - n, 71, 716 - n, 86, 52)     %leg
	for i : 1 .. 12
	    x1 (i) := x1 (i) - 1
	    drawfillpolygon (x1, y1, 12, 52)     %main body erase
	end for
	drawfilloval (681 - n, 135, 15, 10, 52)     %head
	%draw
	drawfillarc (695 - n, 130, 25, 20, 40, 180, 55)     %head thing
	drawfillarc (695 - n, 130, 25, 15, 40, 180, 52)     %head thing cover
	drawfillarc (710 - n, 70, 5, 9, 180, 360, 54)     %foot
	drawfillbox (705 - n, 70, 715 - n, 85, 54)     %leg
	for i : 1 .. 12
	    x (i) := x (i) - 1
	    drawfillpolygon (x, y, 12, 54)     %main body
	end for
	drawfilloval (680 - n, 135, 15, 10, 54)     %head
	drawfilloval (680 - n, 135, 3, 3, 7)     %eye
	drawfilloval (682 - n, 137, 1, 1, 0)     %eye shine
	drawline (675 - n, 130, 667 - n, 130, 7)     %mouth
	View.Update
	delay (10)
    end for
end parasaurolophus

proc triceratops
    var x : array 1 .. 3 of int := init (750, 745, 780)
    var y : array 1 .. 3 of int := init (82, 102, 61)
    var x1 : array 1 .. 3 of int := init (751, 746, 781)
    var y1 : array 1 .. 3 of int := init (83, 104, 61)
    for n : 0 .. 160
	%erase
	drawfilloval (711 - n, 115, 25, 20, 52) %head thing
	drawfilloval (731 - n, 91, 25, 15, 52) %main body
	drawfillbox (706 - n, 91, 716 - n, 71, 52) %front leg
	drawfillarc (711 - n, 70, 5, 9, 180, 360, 52) %front foot
	drawfillbox (756 - n, 91, 746 - n, 71, 52) %back leg
	drawfillarc (751 - n, 70, 5, 9, 180, 360, 52) %back foot
	drawfilloval (701 - n, 106, 15, 13, 52) %head
	for i : 1 .. 3
	    x1 (i) := x1 (i) - 1
	    drawfillpolygon (x1, y1, 3, 52) %tail
	end for
	%draw
	drawfilloval (710 - n, 115, 25, 20, 193) %head thing
	drawfilloval (730 - n, 90, 25, 15, 143) %main body
	drawfillbox (705 - n, 90, 715 - n, 70, 143) %front leg
	drawfillarc (710 - n, 70, 5, 9, 180, 360, 143) %front foot
	drawfillbox (755 - n, 90, 745 - n, 70, 143) %back leg
	drawfillarc (750 - n, 70, 5, 9, 180, 360, 143) %back foot
	drawfilloval (700 - n, 105, 15, 13, 143) %head
	drawfilloval (700 - n, 105, 3, 3, 7) %eye
	drawfilloval (702 - n, 107, 1, 1, 0) %eye shine
	drawline (687 - n, 100, 695 - n, 100, 7) %mouth
	for i : 1 .. 3
	    x (i) := x (i) - 1
	    drawfillpolygon (x, y, 3, 143) %tail
	end for
	drawfillarc (730 - n, 80, 15, 5, 180, 360, 193) %main body bottom
	drawfillarc (730 - n, 80, 15, 3, 0, 180, 193) %main body bottom
	View.Update
	delay (10)
    end for
end triceratops

proc convo
    View.Update
    delay (1000)
    font := Font.New ("times new roman:7")
    Font.Draw ("Which star is your favorite again?", 430, 160, font, 7) %psaurus text
    View.Update
    delay (2000)
    for x : 0 .. 10
	drawline (430, 157 + x, 560, 157 + x, 52) %psaurus text cover
    end for
    Font.Draw ("It's the one that ", 330, 160, font, 7) %trex text
    Font.Draw ("gets bigger every night!", 330, 150, font, 7) %trex text
    View.Update
    delay (2000)
    for x : 0 .. 20
	drawline (330, 147 + x, 420, 147 + x, 24) %trex text cover
    end for
    Font.Draw ("It's sooo shiny!", 330, 150, font, 7) %trex text
    View.Update
    delay (2000)
    for x : 0 .. 10
	drawline (330, 147 + x, 390, 147 + x, 24) %trex text cover
    end for
    for n : 0 .. 2
	%erase
	drawfilloval (442, 138 - n, 1, 1, 7) %eye shine
	drawline (436, 131 - n, 427, 129 + n, 54)     %mouth
	%draw
	drawfilloval (442, 137 - n, 1, 1, 0)     %eye shine
	drawline (435, 130 - n, 427, 130 + n, 7)     %mouth
	View.Update
	delay (5)
    end for
    Font.Draw ("It's looking mighty close...", 430, 160, font, 7) %psaurus text
    View.Update
    delay (2000)
    for x : 0 .. 10
	drawline (430, 157 + x, 540, 157 + x, 52) %psaurus text cover
    end for
end convo

proc comet
    for n : 0 .. 81
	drawfilloval (320, 401 - n, 2 + n div 5, 2 + n div 5, 52) %comet erase
	drawfilloval (320, 400 - n, 2 + n div 5, 2 + n div 5, 12) %comet
	View.Update
	delay (400 - 10 * n)
    end for
    for n : 81 .. 130
	drawfilloval (320, 401 - n, 2 + n div 5, 2 + n div 5, 52) %comet erase
	drawfilloval (320, 400 - n, 2 + n div 5, 2 + n div 5, 12) %comet
	drawfillbox (260, 300, 380, 300 - n div 2.2, 24) %comet erase
	View.Update
	delay (80 - n)
    end for
end comet

proc text
    for n : 0 .. 2
	%erase
	drawfilloval (542, 108 - n, 1, 1, 7) %eye shine triceratops
	drawline (535, 101 - n, 528, 99 + n, 143) %mouth triceratops
	drawfilloval (385, 132 - n, 1, 1, 7)         %eye shine trex
	drawline (388, 125 - n, 396, 123 + n, 2)     %mouth trex erase
	drawfilloval (269, 88 - n, 1, 1, 7)              %eye shine stegosaurus
	drawline (280, 81 - n, 272, 79 + n, 81)     %mouth stregosaurus
	drawfilloval (127, 173 - n, 1, 1, 7)         %eye shine braunchiosaurus
	drawline (131, 166 - n, 137, 164 + n, 47)     %mouth braunchiosaurus
	%draw
	drawfilloval (542, 107 - n, 1, 1, 0) %eye shine triceratops
	drawline (535, 100 - n, 527, 100 + n, 7) %mouth triceratops
	drawfilloval (385, 131 - n, 1, 1, 0) %eye shine trex
	drawline (388, 124 - n, 395, 124 + n, 7)     %mouth trex
	drawfilloval (269, 87 - n, 1, 1, 0)             %eye shine stegosaurus
	drawline (279, 80 + n, 272, 80 - n, 7)     %mouth stregosaurus
	drawfilloval (127, 172 - n, 1, 1, 0)         %eye shine braunchiosaurus
	drawline (130, 165 - n, 137, 165 + n, 7)     %mouth braunchiosaurus
	View.Update
	delay (5)
    end for
    font := Font.New ("times new roman:7")
    Font.Draw ("UH OH", 430, 160, font, 7) %psaurus text
    Font.Draw ("UH OH", 330, 150, font, 7)     %trex text
    Font.Draw ("UH OH", 240, 120, font, 7)     %stegosaurus text
    Font.Draw ("UH OH", 150, 190, font, 7)     %braunchiosaurus text
    Font.Draw ("UH OH", 170, 350, font, 7)     %pterodactyl text
    Font.Draw ("UH OH", 500, 130, font, 7)     %triceratops text
    View.Update
    delay (1000)
    for x : 0 .. 10
	drawline (430, 160 + x, 460, 160 + x, 52) %psaurus text cover
	drawline (330, 150 + x, 360, 150 + x, 24) %trex text cover
	drawline (240, 120 + x, 270, 120 + x, 24) %stegosaurus text cover
	drawline (150, 190 + x, 180, 190 + x, 52) %braunchiosaurus text cover
	drawline (170, 350 + x, 200, 350 + x, 52) %pterodactyl text cover
	drawline (500, 130 + x, 530, 130 + x, 52) %triceratops text cover
    end for
end text

process music
    play ("4<<abcdaeg>2ea4gfe>2ae<4hgfedcba<4aeg")
end music

proc explosion
    var x : array 1 .. 17 of int := init (0, 40, 80, 120, 160, 200, 240, 280, 320, 360, 400, 440, 480, 520, 560, 600, 640)
    var y : array 1 .. 17 of int := init (0, 40, 0, 40, 0, 40, 0, 40, 0, 40, 0, 40, 0, 40, 0, 40, 0)
    for n : 0 .. 1000
	randx := Rand.Int (0, 640)
	randy := Rand.Int (0, 400)
	randc := Rand.Int (40, 45)
	drawdot (randx, randy, randc) %fire
	View.Update
    end for
    for n : 0 .. 100 by 5
	for i : 0 .. 1000
	    randx := Rand.Int (0, 640)
	    randy := Rand.Int (60, 100 + n)
	    randc := Rand.Int (40, 45)
	    drawdot (randx, randy, randc) %fire
	    View.Update
	end for
    end for
    fork music
    for n : 0 .. 400
	drawfilloval (320, 0 + n, 320, 10, 12) %solid fire
	View.Update
	delay (15)
    end for
end explosion

proc text1
    for n : 0 .. 400
	drawline (0, 0 + n, 640, 0 + n, 0) %background
    end for
    font := Font.New ("times new roman:10")
    Font.Draw ("This is what you THINK happened...", 250, 210, font, 7) %text
    Font.Draw ("What REALLY happened...", 250, 190, font, 7) %text
    View.Update
    delay (2000)
    for decreasing x : 39 .. 0 %erase
	drawline (250, 187 + x, 450, 187 + x, 0)
	View.Update
	delay (20)
    end for
    View.Update
    delay (500)
end text1

proc underground
    for n : 0 .. 400
	drawline (0, 0 + n, 640, 0 + n, 12) %background fire
    end for
    for n : 0 .. 400
	drawline (0, 0 + n, 640, 0 + n, 115) %background underground
	View.Update
	delay (20)
    end for
end underground

proc braunchiosaurus1
    var x : array 1 .. 3 of int := init (-165, -170, -195)
    var y : array 1 .. 3 of int := init (95, 105, 61)
    var x1 : array 1 .. 3 of int := init (-166, -171, -196)
    var y1 : array 1 .. 3 of int := init (96, 106, 61)
    for n : 0 .. 230
	%erase
	drawfilloval (-141 + n, 106, 30, 20, 115) %main body
	drawfillbox (-111 + n, 71, -121 + n, 171, 115)     %front leg
	drawfillarc (-116 + n, 70, 5, 9, 180, 360, 115)     %front foot
	drawfillbox (-171 + n, 106, -161 + n, 71, 115)     %back leg
	drawfillarc (-166 + n, 70, 5, 9, 180, 360, 115)     %back foot
	drawfilloval (-106 + n, 171, 15, 10, 115)     %head
	for i : 1 .. 3
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 3, 115) %tail
	end for
	%draw
	drawfilloval (-140 + n, 105, 30, 20, 47)     %main body
	drawfillbox (-110 + n, 70, -120 + n, 170, 47)     %front leg
	drawfillarc (-115 + n, 70, 5, 9, 180, 360, 47)     %front foot
	drawfillbox (-170 + n, 105, -160 + n, 70, 47)     %back leg
	drawfillarc (-165 + n, 70, 5, 9, 180, 360, 47)     %back foot
	drawfilloval (-105 + n, 170, 15, 10, 47)     %head
	drawfilloval (-105 + n, 170, 3, 3, 7)     %eye
	drawfilloval (-103 + n, 172, 1, 1, 0)     %eye shine
	drawline (-100 + n, 165, -93 + n, 165, 7)     %mouth
	for i : 1 .. 3
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 3, 47) %tail
	end for
	drawfillarc (-141 + n, 91, 20, 6, 180, 360, 45)     %main body bottom
	drawfillarc (-141 + n, 91, 20, 3, 0, 180, 45)     %main body bottom
	View.Update
	delay (10)
    end for
end braunchiosaurus1

proc stegosaurus1
    var x : array 1 .. 11 of int := init (-145, -200, -175, -175, -160, -158, -145, -135, -128, -115, -110)
    var y : array 1 .. 11 of int := init (95, 61, 85, 100, 100, 112, 105, 114, 103, 107, 90)
    var x1 : array 1 .. 11 of int := init (-146, -201, -176, -176, -161, -159, -146, -136, -129, -116, -111)
    var y1 : array 1 .. 11 of int := init (96, 61, 86, 101, 101, 113, 106, 115, 104, 108, 91)
    var x2 : array 1 .. 4 of int := init (279, 198, 180, 279)
    var y2 : array 1 .. 4 of int := init (115, 115, 61, 61)
    for n : 0 .. 362
	%erase
	drawfillbox (-171 + n, 81, -161 + n, 71, 115)         %back leg
	drawfillarc (-166 + n, 70, 5, 9, 180, 360, 115)     %back foot
	drawfillbox (-116 + n, 81, -126 + n, 71, 115)     %front leg
	drawfillarc (-121 + n, 70, 5, 9, 180, 360, 115)     %front foot
	drawfillarc (-141 + n, 81, 35, 25, 0, 180, 115)     %main body
	for i : 1 .. 11
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 11, 115)     %tail and spikes
	end for
	drawfilloval (-96 + n, 85, 15, 10, 115)     %head
	%draw
	drawfillbox (-170 + n, 80, -160 + n, 70, 81)     %back leg
	drawfillarc (-165 + n, 70, 5, 9, 180, 360, 81)     %back foot
	drawfillbox (-115 + n, 80, -125 + n, 70, 81)     %front leg
	drawfillarc (-120 + n, 70, 5, 9, 180, 360, 81)     %front foot
	drawfillarc (-140 + n, 80, 35, 25, 0, 180, 81)     %main body
	for i : 1 .. 11
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 11, 35)     %tail and spikes
	end for
	drawfilloval (-95 + n, 85, 15, 10, 81)     %head
	drawfilloval (-95 + n, 85, 3, 3, 7)     %eye
	drawfilloval (-93 + n, 87, 1, 1, 0)     %eye shine
	drawline (-83 + n, 80, -90 + n, 80, 7)     %mouth
	drawfillarc (-140 + n, 87, 30, 15, 0, 210, 81)     %spikes filler
	drawfillarc (-143 + n, 82, 18, 4, 180, 360, 35)             %main body bottom
	drawfillarc (-143 + n, 82, 18, 2, 0, 180, 35)     %main body bottom
	View.Update
	delay (10)
    end for
end stegosaurus1

proc trex1
    var x : array 1 .. 12 of int := init (-130, -170, -130, -120, -100, -110, -92, -92, -97, -97, -80, -90)
    var y : array 1 .. 12 of int := init (105, 61, 85, 85, 100, 93, 93, 96, 96, 100, 125, 125)
    var x1 : array 1 .. 12 of int := init (-131, -171, -131, -121, -101, -111, -93, -93, -98, -98, -81, -91)
    var y1 : array 1 .. 12 of int := init (106, 61, 86, 86, 101, 94, 96, 96, 96, 101, 126, 126)
    var x2 : array 1 .. 4 of int := init (287, 206, 180, 287)
    var y2 : array 1 .. 4 of int := init (139, 139, 61, 61)
    for n : 0 .. 460
	%erase
	drawfillarc (-126 + n, 70, 5, 9, 180, 360, 115)     %foot
	drawfillbox (-131 + n, 71, -121 + n, 86, 115)     %leg
	for i : 1 .. 12
	    x1 (i) := x1 (i) + 1
	    drawfillpolygon (x1, y1, 12, 115)     %main body
	end for
	drawfilloval (-78 + n, 129, 15, 10, 115)     %head
	%draw
	drawfillarc (-125 + n, 70, 5, 9, 180, 360, 2)     %foot
	drawfillbox (-130 + n, 70, -120 + n, 85, 2)     %leg
	for i : 1 .. 12
	    x (i) := x (i) + 1
	    drawfillpolygon (x, y, 12, 2)     %main body
	end for
	drawfilloval (-77 + n, 129, 15, 10, 2)     %head
	drawfillarc (-77 + n, 129, 3, 3, 0, 360, 7)     %eye
	drawfilloval (-75 + n, 131, 1, 1, 0)     %eye shine
	drawline (-72 + n, 124, -65 + n, 124, 7)     %mouth
	View.Update
	delay (10)
    end for
end trex1

proc parasaurolophus1
    var x : array 1 .. 12 of int := init (715, 705, 693, 694, 685, 685, 690, 690, 685, 690, 710, 740)
    var y : array 1 .. 12 of int := init (85, 85, 110, 102, 102, 105, 105, 113, 125, 130, 107, 61)
    var x1 : array 1 .. 12 of int := init (716, 706, 694, 695, 686, 686, 691, 691, 686, 691, 711, 741)
    var y1 : array 1 .. 12 of int := init (86, 86, 111, 103, 103, 105, 105, 114, 126, 131, 108, 61)
    for n : 0 .. 240
	%erase
	drawfillarc (696 - n, 130, 25, 20, 40, 180, 115)     %head thing
	drawfillarc (696 - n, 131, 25, 15, 40, 180, 115)     %head thing cover
	drawfillarc (711 - n, 70, 5, 9, 180, 360, 115)     %foot
	drawfillbox (706 - n, 71, 716 - n, 86, 115)     %leg
	for i : 1 .. 12
	    x1 (i) := x1 (i) - 1
	    drawfillpolygon (x1, y1, 12, 115)     %main body erase
	end for
	drawfilloval (681 - n, 135, 15, 10, 115)     %head
	%draw
	drawfillarc (695 - n, 130, 25, 20, 40, 180, 55)     %head thing
	drawfillarc (695 - n, 130, 25, 15, 40, 180, 115)     %head thing cover
	drawfillarc (710 - n, 70, 5, 9, 180, 360, 54)     %foot
	drawfillbox (705 - n, 70, 715 - n, 85, 54)     %leg
	for i : 1 .. 12
	    x (i) := x (i) - 1
	    drawfillpolygon (x, y, 12, 54)     %main body
	end for
	drawfilloval (680 - n, 135, 15, 10, 54)     %head
	drawfilloval (680 - n, 135, 3, 3, 7)     %eye
	drawfilloval (682 - n, 137, 1, 1, 0)     %eye shine
	drawline (675 - n, 130, 667 - n, 130, 7)     %mouth
	View.Update
	delay (10)
    end for
end parasaurolophus1

proc triceratops1
    var x : array 1 .. 3 of int := init (750, 745, 780)
    var y : array 1 .. 3 of int := init (82, 102, 61)
    var x1 : array 1 .. 3 of int := init (751, 746, 781)
    var y1 : array 1 .. 3 of int := init (83, 104, 61)
    for n : 0 .. 160
	%erase
	drawfilloval (711 - n, 115, 25, 20, 115) %head thing
	drawfilloval (731 - n, 91, 25, 15, 115) %main body
	drawfillbox (706 - n, 91, 716 - n, 71, 115) %front leg
	drawfillarc (711 - n, 70, 5, 9, 180, 360, 115) %front foot
	drawfillbox (756 - n, 91, 746 - n, 71, 115) %back leg
	drawfillarc (751 - n, 70, 5, 9, 180, 360, 115) %back foot
	drawfilloval (701 - n, 106, 15, 13, 52) %head
	for i : 1 .. 3
	    x1 (i) := x1 (i) - 1
	    drawfillpolygon (x1, y1, 3, 115) %tail
	end for
	%draw
	drawfilloval (710 - n, 115, 25, 20, 193) %head thing
	drawfilloval (730 - n, 90, 25, 15, 143) %main body
	drawfillbox (705 - n, 90, 715 - n, 70, 143) %front leg
	drawfillarc (710 - n, 70, 5, 9, 180, 360, 143) %front foot
	drawfillbox (755 - n, 90, 745 - n, 70, 143) %back leg
	drawfillarc (750 - n, 70, 5, 9, 180, 360, 143) %back foot
	drawfilloval (700 - n, 105, 15, 13, 143) %head
	drawfilloval (700 - n, 105, 3, 3, 7) %eye
	drawfilloval (702 - n, 107, 1, 1, 0) %eye shine
	drawline (687 - n, 100, 695 - n, 100, 7) %mouth
	for i : 1 .. 3
	    x (i) := x (i) - 1
	    drawfillpolygon (x, y, 3, 143) %tail
	end for
	drawfillarc (730 - n, 80, 15, 5, 180, 360, 193) %main body bottom
	drawfillarc (730 - n, 80, 15, 3, 0, 180, 193) %main body bottom
	View.Update
	delay (10)
    end for
end triceratops1

proc text2
    font := Font.New ("times new roman:25")
    Font.Draw ("WE'RE ALIVE!!!", 200, 250, font, 7) % text
    View.Update
    delay (2000)
    for x : 0 .. 21
	drawline (200, 250 + x, 435, 250 + x, 115) % text erase
    end for
    View.Update
    delay (500)
end text2

proc text3
    for n : 0 .. 400
	drawline (0, 0 + n, 640, 0 + n, 0) %background
    end for
    font := Font.New ("times new roman:20")
    Font.Draw ("Today...", 250, 210, font, 7) %text
    View.Update
    delay (2000)
    for x : 0 .. 24  %erase
	drawline (250, 204 + x, 340, 204 + x, 0)
	View.Update
	delay (20)
    end for
    View.Update
    delay (1000)
end text3

proc underground1
    var x : array 1 .. 24 of int := init (20, 20, 60, 60, 140, 140, 200, 200, 220, 220, 260, 260, 300, 300, 350, 350, 420, 420, 470, 470, 540, 540, 600, 600)
    var y : array 1 .. 24 of int := init (60, 220, 220, 60, 60, 260, 260, 60, 60, 210, 210, 60, 60, 230, 230, 60, 60, 300, 300, 60, 60, 270, 270, 60)
    for i : 0 .. 400 %sky
	drawline (0, 0 + i, 640, 0 + i, 52)
    end for
    for n : 0 .. 400
	drawfilloval (640, 399 + n, 100, 100, 52) %sun erase
	for i : 1 .. 24
	    y (i) := y (i) + 1
	    drawfillpolygon (x, y, 24, 18) %buildings
	end for
	drawfillbox (0, 0 + n, 640, 61 + n, 119)     %ground
	drawfilloval (640, 400 + n, 100, 100, 14)     %sun
	drawline (0, 0 + n, 640, 0 + n, 115) %underground
	View.Update
	delay (10)
    end for
end underground1

proc text4
    font := Font.New ("times new roman:25")
    Font.Draw ("WE'RE STILL ALIVE!!!", 150, 250, font, 7) % text
    View.Update
    delay (2000)
    for x : 0 .. 22
	drawline (150, 250 + x, 480, 250 + x, 115) %text coverup
    end for
end text4

proc ending
    for x : 0 .. 320
	drawline (0 + x, 0, 0 + x, 400, 4) %curtain left
	drawline (640 - x, 0, 640 - x, 400, 4) %curtain right
	View.Update
	delay (10)
    end for
    View.Update
    delay (250)
    font := Font.New ("times new roman:20")
    Font.Draw ("THE END", 250, 210, font, 7) %text
    View.Update
    delay (2000)
    for x : 0 .. 20  %erase
	drawline (250, 210 + x, 365, 210 + x, 4)
	View.Update
	delay (20)
    end for
    View.Update
    delay (1000)
end ending

%main
intro
background
name
parasaurolophus
trex
stegosaurus
pterodactyl
triceratops
braunchiosaurus
convo
comet
text
explosion
text1
underground
trex1
stegosaurus1
parasaurolophus1
braunchiosaurus1
triceratops1
text2
text3
underground1
trex1
parasaurolophus1
stegosaurus1
triceratops1
braunchiosaurus1
text4
ending
