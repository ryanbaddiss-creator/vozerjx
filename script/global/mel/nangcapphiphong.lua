--Date: 25/08/2025
--Script: N�ng c�p phi phong
--Coder: Mel
--------------------------------------------------CODE N�ng c�p Phi Phong--------------------------------------------------
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

function melnangcapphiphong()
dofile("script/global/mel/nangcapphiphong.lua")
Say("H�y ch�n ph��ng th�c n�ng c�p!",11,
	"N�ng c�p Phi Phong L�ng V�n - C�p 1/phiphong1",
	"N�ng c�p Phi Phong Tuy�t Th� - C�p 2/phiphong2",
	"N�ng c�p Phi Phong Ph� Qu�n - C�p 3/phiphong3",
	"N�ng c�p Phi Phong Ng�o Tuy�t - C�p 4/phiphong4",
	"N�ng c�p Phi Phong K�nh L�i - C�p 5/phiphong5",
	"N�ng c�p Phi Phong Ng� Phong - C�p 6/phiphong6",
	"N�ng c�p Phi Phong Ph� Quang - C�p 7/phiphong7",
	"N�ng c�p Phi Phong Kh�p Th�n - C�p 8/phiphong8",
	"N�ng c�p Phi Phong K�nh Thi�n - C�p 9/phiphong9",
	"N�ng c�p Phi Phong V� C�c - C�p 10/phiphong10",
	"�� t�i suy ngh� ��./OnCancel");
end;

------------------------------N�ng c�p Phi Phong L�ng V�n - C�p 1------------------------------

function phiphong1()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong L�ng V�n kh�ng? C�n c� Phi Phong T�n Th�, 10 Kim Lo�i Hi�m v� 100 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong1",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong1()
	if CalcEquiproomItemCount (4,2045,1,1) < 10 then
		Say("H�y xem l�i h�nh trang kh�ng �� 10 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,0,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong T�n Th�.")
	return
	end
	if GetCash() >= 1000000 then
		Pay(1000000)
		ConsumeEquiproomItem (10,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,0,1)
		AddItem(0,12,1,1,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong L�ng V�n<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 100 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong Tuy�t Th� - C�p 2------------------------------

function phiphong2()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong Tuy�t Th� kh�ng? C�n c� Phi Phong L�ng V�n, 200 Kim Lo�i Hi�m v� 2000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong2",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong2()
	if CalcEquiproomItemCount (4,2045,1,1) < 200 then
		Say("H�y xem l�i h�nh trang kh�ng �� 200 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong L�ng V�n.")
	return
	end
	if GetCash() >= 20000000 then
		Pay(20000000)
		ConsumeEquiproomItem (200,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,1)
		AddItem(0,12,1,2,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong Tuy�t Th�<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 2000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong Ph� Qu�n - C�p 3------------------------------

function phiphong3()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong Ph� Qu�n kh�ng? C�n c� Phi Phong Tuy�t Th�, 300 Kim Lo�i Hi�m v� 3000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong3",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong3()
	if CalcEquiproomItemCount (4,2045,1,1) < 300 then
		Say("H�y xem l�i h�nh trang kh�ng �� 300 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,2) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong Tuy�t Th�.")
	return
	end
	if GetCash() >= 30000000 then
		Pay(30000000)
		ConsumeEquiproomItem (300,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,2)
		AddItem(0,12,1,3,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong Ph� Qu�n<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 3000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong Ng�o Tuy�t - C�p 4------------------------------

function phiphong4()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong Ng�o Tuy�t kh�ng? C�n c� Phi Phong Ph� Qu�n, 400 Kim Lo�i Hi�m v� 4000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong4",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong4()
	if CalcEquiproomItemCount (4,2045,1,1) < 400 then
		Say("H�y xem l�i h�nh trang kh�ng �� 400 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,3) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong Ph� Qu�n.")
	return
	end
	if GetCash() >= 40000000 then
		Pay(40000000)
		ConsumeEquiproomItem (400,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,3)
		AddItem(0,12,1,4,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong Ng�o Tuy�t<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 4000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong K�nh L�i - C�p 5------------------------------

function phiphong5()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong K�nh L�i kh�ng? C�n c� Phi Phong Ng�o Tuy�t, 500 Kim Lo�i Hi�m v� 5000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong5",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong5()
	if CalcEquiproomItemCount (4,2045,1,1) < 500 then
		Say("H�y xem l�i h�nh trang kh�ng �� 500 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,4) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong Ng�o Tuy�t.")
	return
	end
	if GetCash() >= 50000000 then
		Pay(50000000)
		ConsumeEquiproomItem (500,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,4)
		AddItem(0,12,1,5,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong K�nh L�i<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 5000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong Ng� Phong - C�p 6------------------------------

function phiphong6()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong Ng� Phong kh�ng? C�n c� Phi Phong K�nh L�i, 600 Kim Lo�i Hi�m v� 6000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong6",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong6()
	if CalcEquiproomItemCount (4,2045,1,1) < 600 then
		Say("H�y xem l�i h�nh trang kh�ng �� 600 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,5) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong K�nh L�i.")
	return
	end
	if GetCash() >= 60000000 then
		Pay(60000000)
		ConsumeEquiproomItem (600,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,5)
		AddItem(0,12,1,6,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong Ng� Phong<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 6000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong Ph� Quang - C�p 7------------------------------

function phiphong7()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong Ph� Quang kh�ng? C�n c� Phi Phong Ng� Phong, 700 Kim Lo�i Hi�m v� 7000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong7",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong7()
	if CalcEquiproomItemCount (4,2045,1,1) < 700 then
		Say("H�y xem l�i h�nh trang kh�ng �� 700 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,6) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong Ng� Phong.")
	return
	end
	if GetCash() >= 70000000 then
		Pay(70000000)
		ConsumeEquiproomItem (700,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,6)
		AddItem(0,12,1,7,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong Ph� Quang<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 7000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong Kh�p Th�n - C�p 8------------------------------

function phiphong8()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong Kh�p Th�n kh�ng? C�n c� Phi Phong Ph� Quang, 800 Kim Lo�i Hi�m v� 8000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong8",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong8()
	if CalcEquiproomItemCount (4,2045,1,1) < 800 then
		Say("H�y xem l�i h�nh trang kh�ng �� 800 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,7) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong Ph� Quang.")
	return
	end
	if GetCash() >= 80000000 then
		Pay(80000000)
		ConsumeEquiproomItem (800,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,7)
		AddItem(0,12,1,8,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong Kh�p Th�n<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 8000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong K�nh Thi�n - C�p 9------------------------------

function phiphong9()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong K�nh Thi�n kh�ng? C�n c� Phi Phong Kh�p Th�n, 900 Kim Lo�i Hi�m v� 9000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong9",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong9()
	if CalcEquiproomItemCount (4,2045,1,1) < 900 then
		Say("H�y xem l�i h�nh trang kh�ng �� 900 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,8) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong Kh�p Th�n.")
	return
	end
	if GetCash() >= 90000000 then
		Pay(90000000)
	ConsumeEquiproomItem (900,4,2045,1,1)
	ConsumeEquiproomItem (1,0,12,1,8)
	AddItem(0,12,1,9,0,0,0)
	Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong K�nh Thi�n<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 9000 v�n l��ng.")
	end
end

------------------------------N�ng c�p Phi Phong V� C�c - C�p 10------------------------------

function phiphong10()
Say("B�n c� ch�c l� mu�n n�ng c�p Phi Phong V� C�c kh�ng? C�n c� Phi Phong K�nh Thi�n, 1000 Kim Lo�i Hi�m v� 10000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphong10",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphong10()
	if CalcEquiproomItemCount (4,2045,1,1) < 1000 then
		Say("H�y xem l�i h�nh trang kh�ng �� 1000 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,9) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Phi Phong K�nh Thi�n.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1000,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,9)
		AddItem(0,12,1,10,0,0,0)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Phi Phong V� C�c<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10000 v�n l��ng.")
	end
end