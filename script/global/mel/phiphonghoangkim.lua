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

function phiphonghoangkim()
dofile("script/global/mel/phiphonghoangkim.lua")
Say("C�c h� mu�n n�ng c�p Phi Phong V� C�c Ho�ng Kim h�? Qu� th�c l� ��ng c�p!",2,
	"��ng v�y, h�y gi�p ta n�ng c�p Phi Phong V� C�c Ho�ng Kim/dophiphonghoangkim",
	"�� ta suy ngh� ��./OnCancel");
end;

-----------------------------Tuy�t ��nh Gi�i Ch�------------------------------

function dophiphonghoangkim()
Say("�� n�ng c�p Phi Phong V� C�c Ho�ng Kim c�n c� Phi Phong V� C�c, T� L�a Hi�m, Kim Lo�i Ho�ng Kim, 1000 Kim Lo�i Hi�m v� 10000 v�n l��ng",2,
	"Ch�c ch�n r�i./dophiphonghoangkim1",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dophiphonghoangkim1()
	if CalcEquiproomItemCount (0,12,1,10) < 1 then
		Say("��a ta �, v�t ph�m quan tr�ng nh�t l� Phi Phong V� C�c. N�u kh�ng c� th� l�m sao ta n�ng c�p ���c")
	return
	end
	if CalcEquiproomItemCount (4,2055,1,1) < 1 then
		Say("C�c h� kh�ng mang theo T� L�a Hi�m th� ta l�y g� �� n�ng c�p b�y gi�")
	return
	end
	if CalcEquiproomItemCount (4,2051,1,1) < 1 then
		Say("N�y, kh�ng c� Kim Lo�i Ho�ng Kim l�m sao ta ch� t�o ���c")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 1000 then
		Say("H�y xem l�i h�nh trang kh�ng �� 1000 Kim Lo�i Hi�m.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1,0,12,1,10)
		ConsumeEquiproomItem (1,4,2055,1,1)
		ConsumeEquiproomItem (1,4,2051,1,1)
		ConsumeEquiproomItem (1000,4,2045,1,1)
		AddGoldItem(0,3486)
		Msg2Player("<color=green>N�ng th�nh c�ng nh�n ���c <color> <color=yellow>Phi Phong V� C�c Ho�ng Kim<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10000 v�n l��ng.")
	end
end