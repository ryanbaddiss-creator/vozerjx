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

function tuyetdinhgioichi()
dofile("script/global/mel/tuyetdinhgioichi.lua")
Say("C�c h� mu�n ch� t�o Tuy�t ��nh Gi�i Ch� h�? ��ng l� b�c k� t�i c�a v� l�m. Theo ta ���c bi�t tr��c gi� ch� c� Mel l� c� th� ki�m so�t ���c chi�c nh�n n�y, c�c h� v�n mu�n ch� t�o ch�?",2,
	"��ng v�y, h�y mau gi�p ta ch� t�o/dotuyetdinhgioichi",
	"�� ta suy ngh� ��./OnCancel");
end;

-----------------------------Tuy�t ��nh Gi�i Ch�------------------------------

function dotuyetdinhgioichi()
Say("�� ch� t�o Tuy�t ��nh Gi�i Ch� c�n ph�i c� Khu�n ��c Tuy�t ��nh Gi�i Ch�, 1 Kim Lo�i Ho�ng Kim, 1000 Kim Lo�i Hi�m v� 10000 v�n l��ng",2,
	"Ch�c ch�n r�i./dotuyetdinhgioichi1",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dotuyetdinhgioichi1()
	if CalcEquiproomItemCount (4,2053,1,1) < 1 then
		Say("��a ta �, v�t ph�m quan tr�ng nh�t l� Khu�n ��c Tuy�t ��nh Gi�i Ch�. N�u kh�ng c� th� l�m sao ta ch� t�o ���c")
	return
	end
	if CalcEquiproomItemCount (4,2054,1,1) < 1 then
		Say("C�c h� kh�ng mang theo b� k�p Tuy�t ��nh Tri Th�c th� ta d�a v�o ��u �� ch� t�o b�y gi�")
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
		ConsumeEquiproomItem (1,4,2053,1,1)
		ConsumeEquiproomItem (1,4,2054,1,1)
		ConsumeEquiproomItem (1,4,2051,1,1)
		ConsumeEquiproomItem (1000,4,2045,1,1)
		AddGoldItem(0,5291)
		Msg2Player("<color=green>Ch� t�o th�nh c�ng nh�n ���c <color> <color=yellow>Tuy�t ��nh Gi�i Ch�<color>")
		Msg2SubWorld("C� m�t �n s� �� ch� t�o th�nh c�ng Tuy�t ��nh Gi�i Ch�, t�o ra m�t ti�ng vang l�n kh�p ch�n v� l�m. Xin ch�c m�ng!")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 10000 v�n l��ng.")
	end
end