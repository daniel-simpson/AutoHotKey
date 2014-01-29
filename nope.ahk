#NoTrayIcon

a::
b::
c::
d::
e::
f::
g::
h::
i::
j::
k::
l::
m::
n::
o::
p::
q::
r::
s::
t::
u::
;v::
w::
x::
y::
z::
0::
1::
2::
3::
4::
5::
6::
7::
8::
9::
    clipboard = Nope.
	SendEvent ^v
    return
		
Backspace::
    clipboard = NOOOOOOOPE.
	SendEvent ^v
	return

Delete::
    clipboard = DOUBLE NOPE.
	SendEvent ^v
	return
	
Escape:
    clipboard = You can't escape this.
	SendEvent ^v
	return
	
F1::
F2::
F3::
F4::
F5::
F6::
F7::
F8::
F9::
F10::
F11::
F12::
    clipboard = You think you can F-key your way out of this? That's cute.
	SendEvent ^v
	return
	
0 & 1::
Numpad0 & Numpad1::
	ExitApp
	return