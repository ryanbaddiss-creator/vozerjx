--Date: 25/08/2025
--Script: N�ng c�p �n
--Coder: Mel
--------------------------------------------------CODE N�ng c�p �n--------------------------------------------------
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

function melnangcapan()
dofile("script/global/mel/nangcapan.lua")
Say("H�y ch�n ph��ng th�c n�ng c�p!",11,
	"N�ng c�p Vozer �n c�p 1/nangcapan1",
	"N�ng c�p Vozer �n c�p 2/nangcapan2",
	"N�ng c�p Vozer �n c�p 3/nangcapan3",
	"N�ng c�p Vozer �n c�p 4/nangcapan4",
	"N�ng c�p Vozer �n c�p 5/nangcapan5",
	"N�ng c�p Vozer �n c�p 6/nangcapan6",
	"N�ng c�p Vozer �n c�p 7/nangcapan7",
	"N�ng c�p Vozer �n c�p 8/nangcapan8",
	"N�ng c�p Vozer �n c�p 9/nangcapan9",
	"N�ng c�p Vozer �n c�p 10/nangcapan10",
	"�� t�i suy ngh� ��./OnCancel");
end;

------------------------------N�ng c�p Vozer �n c�p 1------------------------------

function nangcapan1()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 1 kh�ng? C�n c� T�n th� �n, 1 Kim Lo�i Hi�m, 1 �n Kinh Th� v� 10 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan1",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan1()
	if CalcEquiproomItemCount (4,2045,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng �� 1 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,0,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� T�n th� �n.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng �� 1 �n Kinh Th�.")
	return
	end
	if GetCash() >= 100000 then
		Pay(100000)
		ConsumeEquiproomItem (1,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,0,1)
		ConsumeEquiproomItem (1,4,2056,1,1)
		AddItem(0,13,1,1,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 1<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 2------------------------------

function nangcapan2()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 2 kh�ng? C�n c� Vozer �n c�p 1, 2 Kim Lo�i Hi�m, 2 �n Kinh Th� v� 20 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan2",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan2()
	if CalcEquiproomItemCount (4,2045,1,1) < 2 then
		Say("H�y xem l�i h�nh trang kh�ng �� 2 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 1.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 2 then
		Say("H�y xem l�i h�nh trang kh�ng �� 2 �n Kinh Th�.")
	return
	end
	if GetCash() >= 200000 then
		Pay(200000)
		ConsumeEquiproomItem (2,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,1)
		ConsumeEquiproomItem (2,4,2056,1,1)
		AddItem(0,13,1,2,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 2<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 20 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 3------------------------------

function nangcapan3()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 3 kh�ng? C�n c� Vozer �n c�p 2, 3 Kim Lo�i Hi�m, 3 �n Kinh Th� v� 30 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan3",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan3()
	if CalcEquiproomItemCount (4,2045,1,1) < 3 then
		Say("H�y xem l�i h�nh trang kh�ng �� 3 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,2) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 2.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 3 then
		Say("H�y xem l�i h�nh trang kh�ng �� 3 �n Kinh Th�.")
	return
	end
	if GetCash() >= 300000 then
		Pay(300000)
		ConsumeEquiproomItem (3,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,2)
		ConsumeEquiproomItem (3,4,2056,1,1)
		AddItem(0,13,1,3,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 3<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 30 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 4------------------------------

function nangcapan4()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 4 kh�ng? C�n c� Vozer �n c�p 3, 4 Kim Lo�i Hi�m, 4 �n Kinh Th� v� 40 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan4",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan4()
	if CalcEquiproomItemCount (4,2045,1,1) < 4 then
		Say("H�y xem l�i h�nh trang kh�ng �� 4 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,3) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 3.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 4 then
		Say("H�y xem l�i h�nh trang kh�ng �� 4 �n Kinh Th�.")
	return
	end
	if GetCash() >= 400000 then
		Pay(400000)
		ConsumeEquiproomItem (4,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,3)
		ConsumeEquiproomItem (4,4,2056,1,1)
		AddItem(0,13,1,4,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 4<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 40 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 5------------------------------

function nangcapan5()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 5 kh�ng? C�n c� Vozer �n c�p 4, 5 Kim Lo�i Hi�m, 5 �n Kinh Th� v� 50 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan5",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan5()
	if CalcEquiproomItemCount (4,2045,1,1) < 5 then
		Say("H�y xem l�i h�nh trang kh�ng �� 5 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,4) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 4.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 5 then
		Say("H�y xem l�i h�nh trang kh�ng �� 5 �n Kinh Th�.")
	return
	end
	if GetCash() >= 500000 then
		Pay(500000)
		ConsumeEquiproomItem (5,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,4)
		ConsumeEquiproomItem (5,4,2056,1,1)
		AddItem(0,13,1,5,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 5<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 50 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 6------------------------------

function nangcapan6()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 6 kh�ng? C�n c� Vozer �n c�p 5, 6 Kim Lo�i Hi�m, 6 �n Kinh Th� v� 60 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan6",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan6()
	if CalcEquiproomItemCount (4,2045,1,1) < 6 then
		Say("H�y xem l�i h�nh trang kh�ng �� 6 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,5) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 5.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 6 then
		Say("H�y xem l�i h�nh trang kh�ng �� 6 �n Kinh Th�.")
	return
	end
	if GetCash() >= 600000 then
		Pay(600000)
		ConsumeEquiproomItem (6,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,5)
		ConsumeEquiproomItem (6,4,2056,1,1)
		AddItem(0,13,1,6,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 6<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 60 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 7------------------------------

function nangcapan7()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 7 kh�ng? C�n c� Vozer �n c�p 6, 7 Kim Lo�i Hi�m, 7 �n Kinh Th� v� 70 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan7",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan7()
	if CalcEquiproomItemCount (4,2045,1,1) < 7 then
		Say("H�y xem l�i h�nh trang kh�ng �� 7 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,6) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 6.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 7 then
		Say("H�y xem l�i h�nh trang kh�ng �� 7 �n Kinh Th�.")
	return
	end
	if GetCash() >= 700000 then
		Pay(700000)
		ConsumeEquiproomItem (7,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,6)
		ConsumeEquiproomItem (7,4,2056,1,1)
		AddItem(0,13,1,7,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 7<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 70 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 8------------------------------

function nangcapan8()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 8 kh�ng? C�n c� Vozer �n c�p 7, 8 Kim Lo�i Hi�m, 8 �n Kinh Th� v� 80 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan8",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan8()
	if CalcEquiproomItemCount (4,2045,1,1) < 8 then
		Say("H�y xem l�i h�nh trang kh�ng �� 8 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,7) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 7.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 8 then
		Say("H�y xem l�i h�nh trang kh�ng �� 8 �n Kinh Th�.")
	return
	end
	if GetCash() >= 800000 then
		Pay(800000)
		ConsumeEquiproomItem (8,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,7)
		ConsumeEquiproomItem (8,4,2056,1,1)
		AddItem(0,13,1,8,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 8<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 80 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 9------------------------------

function nangcapan9()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 9 kh�ng? C�n c� Vozer �n c�p 8, 9 Kim Lo�i Hi�m, 9 �n Kinh Th� v� 90 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan9",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan9()
	if CalcEquiproomItemCount (4,2045,1,1) < 9 then
		Say("H�y xem l�i h�nh trang kh�ng �� 9 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,8) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 8.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 9 then
		Say("H�y xem l�i h�nh trang kh�ng �� 9 �n Kinh Th�.")
	return
	end
	if GetCash() >= 900000 then
		Pay(900000)
	ConsumeEquiproomItem (9,4,2045,1,1)
	ConsumeEquiproomItem (1,0,13,1,8)
	ConsumeEquiproomItem (9,4,2056,1,1)
	AddItem(0,13,1,9,0,0,0)
	Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 9<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 90 v�n l��ng.")
	end
end

------------------------------N�ng c�p Vozer �n c�p 10------------------------------

function nangcapan10()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer �n c�p 10 kh�ng? C�n c� Vozer �n c�p 9, 10 Kim Lo�i Hi�m, 10 �n Kinh Th� v� 100 v�n l��ng",2,
	"Ch�c ch�n r�i./donangcapan10",
	"�� t�i suy ngh� ��./OnCancel");
end;

function donangcapan10()
	if CalcEquiproomItemCount (4,2045,1,1) < 10 then
		Say("H�y xem l�i h�nh trang kh�ng �� 10 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,9) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 9.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 10 then
		Say("H�y xem l�i h�nh trang kh�ng �� 10 �n Kinh Th�.")
	return
	end
	if GetCash() >= 1000000 then
		Pay(1000000)
		ConsumeEquiproomItem (10,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,9)
		ConsumeEquiproomItem (10,4,2056,1,1)
		AddItem(0,13,1,10,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer �n c�p 10<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 100 v�n l��ng.")
	end
end