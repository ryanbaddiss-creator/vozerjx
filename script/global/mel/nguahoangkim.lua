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

function nguahoangkim()
dofile("script/global/mel/nguahoangkim.lua")
Say("H�y ch�n ph��ng th�c n�ng c�p! Nh� chu�n b� lo�i ng�a c�n n�ng c�p, Linh H�n Chi�n M� Ho�ng Kim v� 10000 v�n l��ng",3,
	"Xin h�y n�ng c�p cho ta Si�u Quang Ho�ng Kim/dosieuquanghoangkim",
	"Xin h�y n�ng c�p cho ta H�n Huy�t Long C�u Ho�ng Kim/dohhlchoangkim",
	"�� t�i suy ngh� ��./OnCancel");
end;

------------------------------N�ng c�p Si�u Quang Ho�ng Kim------------------------------
function dosieuquanghoangkim()
	if CalcEquiproomItemCount (0,10,13,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� chi�n m� Si�u Quang.")
	return
	end
	if CalcEquiproomItemCount (4,2052,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Linh H�n Chi�n M� Ho�ng Kim.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1,0,10,13,10)
		ConsumeEquiproomItem (1,4,2052,1,1)
		AddGoldItem(0,4366)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n ���c<color> <color=yellow>Si�u Quang Ho�ng Kim<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10000 v�n l��ng.")
	end
end

------------------------------N�ng c�p H�n Huy�t Long C�u Ho�ng Kim------------------------------
function dohhlchoangkim()
	if CalcEquiproomItemCount (0,10,18,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� chi�n m� H�n Huy�t Long C�u.")
	return
	end
	if CalcEquiproomItemCount (4,2052,1,1) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Linh H�n Chi�n M� Ho�ng Kim.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1,0,10,18,10)
		ConsumeEquiproomItem (1,4,2052,1,1)
		AddGoldItem(0,3879)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n ���c<color> <color=yellow>H�n Huy�t Long C�u Ho�ng Kim<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10000 v�n l��ng.")
	end
end