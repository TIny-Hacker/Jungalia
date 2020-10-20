0->Xmin:94->Xmax
~62->Ymin:0->Ymax
GridOff:AxesOff
Full:PlotsOff :Func
Lbl M
ClrDraw
ClrHome
Text(~1,10,24,"JUNGALIA
Text(25,41,"Play
Text(33,40,"Load
Text(41,39,"About
Text(49,41,"Quit
For(X,1,94
	Line(X,~62,X,~randInt(59,62)
	Line(X,0,X,~randInt(0,3)
End
1->R:~32->Y:0->K:~32->B
While K!=21 or K!=105
	Line(38,B+8,57,B+8,0
	Line(58,B+7,58,B+1,0
	Line(57,B,38,B,0
	Line(37,B+1,37,B+7,0
	Line(38,Y+8,57,Y+8
	Line(58,Y+7,58,Y+1
	Line(57,Y,38,Y
	Line(37,Y+1,37,Y+7
	0->K
	Repeat K
		getKey->K
	End
	If K=25:Then
		If R=1:Then
			Y->B
			4->R:~56->Y
		Else
			Y->B
			R-1->R:Y+8->Y
		End
	End
	If K=34:Then
		If R=4:Then
			Y->B
			1->R:~32->Y
		Else
			Y->B
			R+1->R:Y-8->Y
		End
	End
	If K=21 or K=105:Then
		If R=1:Goto 1
		If R=2:Goto 2
		If R=3:Goto 3
		If R=4:Goto 4
	End
End
Lbl 1
End
SetUpEditor AVE
{1,0,0,0->|LAVE
|LAVE(1->L
|LAVE(2->P
|LAVE(3->U
|LAVE(4->O
Lbl 2
End
SetUpEditor AVE
If not(dim(|LAVE
{1,0,0,0->|LAVE
|LAVE(1->L
|LAVE(2->P
|LAVE(3->U
|LAVE(4->O
Goto A

Lbl 3
End
ClrDraw
For(X,1,94
	Line(X,~62,X,~randInt(59,62)
	Line(X,0,X,~randInt(0,3)
End
Text(5,0,"JUNGALIA is Oxiti8 and
Text(11,0,"TIny-Hacker's entry
Text(17,0,"for CC24:Collaborative
Text(23,0,"Wilderness.
Text(30,0,"-------------------------
Text(37,0,"Credits:
Text(45,0,"Oxiti8
Text(51,0,"TIny-Hacker
Pause 
Goto M
Lbl 4
End
ClrHome
ClrDraw
//Lots of DelVars?
Lbl A
ClrHome
ClrDraw
