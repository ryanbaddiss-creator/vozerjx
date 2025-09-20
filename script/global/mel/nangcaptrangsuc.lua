--Date: 25/08/2025
--Script: N�ng c�p �n
--Coder: Mel
--------------------------------------------------CODE N�ng c�p Trang S�c--------------------------------------------------
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\judgeoffline.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\system\\task_string.lua" );
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

------------------------------------------------------------------------------------------------------------------------

function melnangcaptrangsuc()
dofile("script/global/mel/nangcaptrangsuc.lua")
Say("H�y ch�n ph��ng th�c n�ng c�p!",11,
	"N�ng c�p Vozer trang s�c c�p 1/nangcaptrangsuc1",
	"N�ng c�p Vozer trang s�c c�p 2/nangcaptrangsuc2",
	"N�ng c�p Vozer trang s�c c�p 3/nangcaptrangsuc3",
	"N�ng c�p Vozer trang s�c c�p 4/nangcaptrangsuc4",
	"N�ng c�p Vozer trang s�c c�p 5/nangcaptrangsuc5",
	"N�ng c�p Vozer trang s�c c�p 6/nangcaptrangsuc6",
	"N�ng c�p Vozer trang s�c c�p 7/nangcaptrangsuc7",
	"N�ng c�p Vozer trang s�c c�p 8/nangcaptrangsuc8",
	"N�ng c�p Vozer trang s�c c�p 9/nangcaptrangsuc9",
	"N�ng c�p Vozer trang s�c c�p 10/nangcaptrangsuc10",
	"�� t�i suy ngh� ��./OnCancel");
end;

------------------------------N�ng c�p Vozer trang s�c c�p 1------------------------------

function nangcaptrangsuc1()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 1 kh�ng? C�n c� T�n th� trang s�c, 1 Kim Lo�i Hi�m, 1 Trang S�c Kinh Th� v� 10 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc1",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc1()
	if CalcEquiproomItemCount (4,2045,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng �� 1 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,0,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� T�n th� trang s�c.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng �� 1 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 100000 then
		Pay(100000)
		ConsumeEquiproomItem (1,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,0,1)
		ConsumeEquiproomItem (1,4,2057,1,1)
		AddItem(0,14,1,1,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 1<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 2------------------------------

function nangcaptrangsuc2()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 2 kh�ng? C�n c� Vozer trang s�c c�p 1, 2 Kim Lo�i Hi�m, 2 Trang S�c Kinh Th� v� 20 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc2",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc2()
	if CalcEquiproomItemCount (4,2045,1,1) < 2 then
		Say("H�y xem l�i h�nh trang kh�ng �� 2 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 1.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 2 then
		Say("H�y xem l�i h�nh trang kh�ng �� 2 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 200000 then
		Pay(200000)
		ConsumeEquiproomItem (2,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,1)
		ConsumeEquiproomItem (2,4,2057,1,1)
		AddItem(0,14,1,2,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 2<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 20 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 3------------------------------

function nangcaptrangsuc3()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 3 kh�ng? C�n c� Vozer trang s�c c�p 2, 3 Kim Lo�i Hi�m, 3 Trang S�c Kinh Th� v� 30 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc3",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc3()
	if CalcEquiproomItemCount (4,2045,1,1) < 3 then
		Say("H�y xem l�i h�nh trang kh�ng �� 3 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,2) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 2.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 3 then
		Say("H�y xem l�i h�nh trang kh�ng �� 3 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 300000 then
		Pay(300000)
		ConsumeEquiproomItem (3,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,2)
		ConsumeEquiproomItem (3,4,2057,1,1)
		AddItem(0,14,1,3,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 3<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 30 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 4------------------------------

function nangcaptrangsuc4()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 4 kh�ng? C�n c� Vozer trang s�c c�p 3, 4 Kim Lo�i Hi�m, 4 Trang S�c Kinh Th� v� 40 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc4",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc4()
	if CalcEquiproomItemCount (4,2045,1,1) < 4 then
		Say("H�y xem l�i h�nh trang kh�ng �� 4 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,3) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 3.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 4 then
		Say("H�y xem l�i h�nh trang kh�ng �� 4 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 400000 then
		Pay(400000)
		ConsumeEquiproomItem (4,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,3)
		ConsumeEquiproomItem (4,4,2057,1,1)
		AddItem(0,14,1,4,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 4<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 40 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 5------------------------------

function nangcaptrangsuc5()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 5 kh�ng? C�n c� Vozer trang s�c c�p 4, 5 Kim Lo�i Hi�m, 5 Trang S�c Kinh Th� v� 50 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc5",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc5()
	if CalcEquiproomItemCount (4,2045,1,1) < 5 then
		Say("H�y xem l�i h�nh trang kh�ng �� 5 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,4) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 4.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 5 then
		Say("H�y xem l�i h�nh trang kh�ng �� 5 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 500000 then
		Pay(500000)
		ConsumeEquiproomItem (5,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,4)
		ConsumeEquiproomItem (5,4,2057,1,1)
		AddItem(0,14,1,5,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 5<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 50 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 6------------------------------

function nangcaptrangsuc6()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 6 kh�ng? C�n c� Vozer trang s�c c�p 5, 6 Kim Lo�i Hi�m, 6 Trang S�c Kinh Th� v� 60 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc6",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc6()
	if CalcEquiproomItemCount (4,2045,1,1) < 6 then
		Say("H�y xem l�i h�nh trang kh�ng �� 6 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,5) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 5.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 6 then
		Say("H�y xem l�i h�nh trang kh�ng �� 6 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 600000 then
		Pay(600000)
		ConsumeEquiproomItem (6,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,5)
		ConsumeEquiproomItem (6,4,2057,1,1)
		AddItem(0,14,1,6,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 6<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 60 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 7------------------------------

function nangcaptrangsuc7()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 7 kh�ng? C�n c� Vozer trang s�c c�p 6, 7 Kim Lo�i Hi�m, 7 Trang S�c Kinh Th� v� 70 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc7",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc7()
	if CalcEquiproomItemCount (4,2045,1,1) < 7 then
		Say("H�y xem l�i h�nh trang kh�ng �� 7 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,6) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 6.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 7 then
		Say("H�y xem l�i h�nh trang kh�ng �� 7 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 700000 then
		Pay(700000)
		ConsumeEquiproomItem (7,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,6)
		ConsumeEquiproomItem (7,4,2057,1,1)
		AddItem(0,14,1,7,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 7<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 70 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 8------------------------------

function nangcaptrangsuc8()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 8 kh�ng? C�n c� Vozer trang s�c c�p 7, 8 Kim Lo�i Hi�m, 8 Trang S�c Kinh Th� v� 80 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc8",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc8()
	if CalcEquiproomItemCount (4,2045,1,1) < 8 then
		Say("H�y xem l�i h�nh trang kh�ng �� 8 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,7) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 7.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 8 then
		Say("H�y xem l�i h�nh trang kh�ng �� 8 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 800000 then
		Pay(800000)
		ConsumeEquiproomItem (8,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,7)
		ConsumeEquiproomItem (8,4,2057,1,1)
		AddItem(0,14,1,8,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 8<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 80 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 9------------------------------

function nangcaptrangsuc9()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 9 kh�ng? C�n c� Vozer trang s�c c�p 8, 9 Kim Lo�i Hi�m, 9 Trang S�c Kinh Th� v� 90 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc9",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc9()
	if CalcEquiproomItemCount (4,2045,1,1) < 9 then
		Say("H�y xem l�i h�nh trang kh�ng �� 9 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,8) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 8.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 9 then
		Say("H�y xem l�i h�nh trang kh�ng �� 9 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 900000 then
		Pay(900000)
	ConsumeEquiproomItem (9,4,2045,1,1)
	ConsumeEquiproomItem (1,0,14,1,8)
	ConsumeEquiproomItem (9,4,2057,1,1)
	AddItem(0,14,1,9,0,0,0)
	Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 9<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 90 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer trang s�c c�p 10------------------------------

function nangcaptrangsuc10()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer trang s�c c�p 10 kh�ng? C�n c� Vozer trang s�c c�p 9, 10 Kim Lo�i Hi�m, 10 Trang S�c Kinh Th� v� 100 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcaptrangsuc10",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcaptrangsuc10()
	if CalcEquiproomItemCount (4,2045,1,1) < 10 then
		Say("H�y xem l�i h�nh trang kh�ng �� 10 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,9) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 9.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 10 then
		Say("H�y xem l�i h�nh trang kh�ng �� 10 Trang S�c Kinh Th�.")
	return
	end
	if GetCash() >= 1000000 then
		Pay(1000000)
		ConsumeEquiproomItem (10,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,9)
		ConsumeEquiproomItem (10,4,2057,1,1)
		AddItem(0,14,1,10,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer trang s�c c�p 10<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 100 v�n l��ng.")
	end
end