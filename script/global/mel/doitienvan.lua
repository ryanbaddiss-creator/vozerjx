--Date: 25/08/2025
--Script: ��i ti�n t�
--Coder: Mel
--------------------------------------------------CODE ��i Ti�n T� by Mel--------------------------------------------------
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

function doitien_main()
dofile("script/global/mel/doitienvan.lua")
Say("H�y ch�n ph��ng th�c giao d�ch!",2,
	"��i ti�n v�n l�y ti�n ��ng./vanvsxu",
	--"��i ti�n ��ng l�y ti�n v�n./xuvsvan",
	"�� ta suy ngh� ��./OnCancel");
end;

function vanvsxu()
Say("H�y ch�n m�nh gi� quy ��i.",4,
	"L�y 50 v�n ��i 1 ti�n ��ng./vanvsxu_1",
	"L�y 500 v�n ��i 10 ti�n ��ng./vanvsxu_2",
	"L�y 5000 v�n ��i 100 ti�n ��ng./vanvsxu_3",
	"�� ta suy ngh� ��./OnCancel");
end;

function vanvsxu_1()
	if GetCash() >= 500000 then
	Pay(500000)
	AddStackItem (1,4,417,1,1,0,0,0)
	Msg2Player("<color=green>Giao d�ch th�nh c�ng nh�n<color> <color=yellow>1 ti�n ��ng.<color>")
	else
	Msg2Player("H�y xem l�i h�nh trang kh�ng �� ng�n l��ng.")
	end
end
	
function vanvsxu_2()
	if GetCash() >= 5000000 then
	Pay(5000000)
	AddStackItem (10,4,417,1,1,0,0,0)
	Msg2Player("<color=green>Giao d�ch th�nh c�ng nh�n<color> <color=yellow>10 ti�n ��ng.<color>")
	else
	Msg2Player("H�y xem l�i h�nh trang kh�ng �� ng�n l��ng.")
	end
end
	
function vanvsxu_3()
	if GetCash() >= 50000000 then
	Pay(50000000)
	AddStackItem (100,4,417,1,1,0,0,0)
	Msg2Player("<color=green>Giao d�ch th�nh c�ng nh�n<color> <color=yellow>100 ti�n ��ng.<color>")
	else
	Msg2Player("H�y xem l�i h�nh trang kh�ng �� ng�n l��ng.")
	end
end;

function xuvsvan()
Say("H�y ch�n m�nh gi� quy ��i.",4,
	"L�y 1 ti�n ��ng ��i 50 v�n./xuvsvan_1",
	"L�y 10 ti�n ��ng ��i 500 v�n./xuvsvan_2",
	"L�y 100 ti�n ��ng ��i 5000 v�n./xuvsvan_3",
	"�� ta suy ngh� ��./OnCancel");
end;

function xuvsvan_1()
	if CalcEquiproomItemCount (4,417,1,1) < 1 then
Say("H�y xem l�i h�nh trang kh�ng �� 1 ti�n ��ng.")
return
end
	ConsumeEquiproomItem (1,4,417,1,1)
	Earn (500000)
	Msg2Player("<color=green>Giao d�ch th�nh c�ng nh�n<color> <color=yellow>50 v�n l��ng.<color>")
end
	
function xuvsvan_2()
	if CalcEquiproomItemCount (4,417,1,1) < 10 then
Say("H�y xem l�i h�nh trang kh�ng �� 10 ti�n ��ng.")
return
end
	ConsumeEquiproomItem (10,4,417,1,1)
	Earn (5000000)
	Msg2Player("<color=green>Giao d�ch th�nh c�ng nh�n<color> <color=yellow>500 v�n l��ng.<color>")
end
	
function xuvsvan_3()
	if CalcEquiproomItemCount (4,417,1,1) < 100 then
Say("H�y xem l�i h�nh trang kh�ng �� 100 ti�n ��ng.")
return
end
	ConsumeEquiproomItem (100,4,417,1,1)
	Earn (50000000)
	Msg2Player("<color=green>Giao d�ch th�nh c�ng nh�n<color> <color=yellow>5000 v�n l��ng.<color>")
end;