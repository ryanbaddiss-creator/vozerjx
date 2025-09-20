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

function melantrangsuchoangkim()
dofile("script/global/mel/antrangsuchoangkim.lua")
Say("H�y ch�n ph��ng th�c n�ng c�p!",7,
	"N�ng c�p Vozer Ho�ng Kim �n h� Kim/anhekim",
	"N�ng c�p Vozer Ho�ng Kim �n h� M�c/anhemoc",
	"N�ng c�p Vozer Ho�ng Kim �n h� Th�y/anhethuy",
	"N�ng c�p Vozer Ho�ng Kim �n h� H�a/anhehoa",
	"N�ng c�p Vozer Ho�ng Kim �n h� Th�/anhetho",
	"N�ng c�p Vozer Ho�ng Kim trang s�c/trangsuchoanmy",
	"�� t�i suy ngh� ��./OnCancel");
end;


------------------------------Ho�ng Kim Ng� H�nh �n Kim------------------------------

function anhekim()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer Ho�ng Kim ng� h�nh �n h� Kim kh�ng? C�n ph�i c� Vozer �n c�p 10, 1 Kim Tinh L�nh, 100 Kim Lo�i Hi�m v� 1000 v�n l��ng",2,
	"Ch�c ch�n r�i./doanhekim",
	"�� t�i suy ngh� ��./OnCancel");
end;

function doanhekim()
	if CalcEquiproomItemCount (4,2046,1,1) < 1 then
		Say("��a ta �, kh�ng c� Kim Tinh L�nh l�m sao ta �p ���c Ho�ng Kim ng� h�nh �n h� Kim")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H�y xem l�i h�nh trang kh�ng �� 100 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2046,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1067)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer Ho�ng Kim Ng� H�nh �n h� Kim<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 1000 v�n l��ng.")
	end
end

-----------------------------Ho�ng Kim Ng� H�nh �n M�c------------------------------

function anhemoc()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer Ho�ng Kim ng� h�nh �n h� M�c kh�ng? C�n ph�i c� Vozer �n c�p 10, 1 M�c Tinh L�nh, 100 Kim Lo�i Hi�m v� 1000 v�n l��ng",2,
	"Ch�c ch�n r�i./doanhemoc",
	"�� t�i suy ngh� ��./OnCancel");
end;

function doanhemoc()
	if CalcEquiproomItemCount (4,2047,1,1) < 1 then
		Say("��a ta �, kh�ng c� M�c Tinh L�nh l�m sao ta �p ���c Ho�ng Kim ng� h�nh �n h� M�c")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H�y xem l�i h�nh trang kh�ng �� 100 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2047,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1068)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer Ho�ng Kim Ng� H�nh �n h� M�c<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 1000 v�n l��ng.")
	end
end

-----------------------------Ho�ng Kim Ng� H�nh �n Th�y------------------------------

function anhethuy()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer Ho�ng Kim ng� h�nh �n h� Th�y kh�ng? C�n ph�i c� Vozer �n c�p 10, 1 Th�y Tinh L�nh, 100 Kim Lo�i Hi�m v� 1000 v�n l��ng",2,
	"Ch�c ch�n r�i./doanhethuy",
	"�� t�i suy ngh� ��./OnCancel");
end;

function doanhethuy()
	if CalcEquiproomItemCount (4,2048,1,1) < 1 then
		Say("��a ta �, kh�ng c� Th�y Tinh L�nh l�m sao ta �p ���c Ho�ng Kim ng� h�nh �n h� Th�y")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H�y xem l�i h�nh trang kh�ng �� 100 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2048,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1069)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer Ho�ng Kim Ng� H�nh �n h� Th�y<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 1000 v�n l��ng.")
	end
end

-----------------------------Ho�ng Kim Ng� H�nh �n H�a------------------------------

function anhehoa()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer Ho�ng Kim ng� h�nh �n h� H�a kh�ng? C�n ph�i c� Vozer �n c�p 10, 1 H�a Tinh L�nh, 100 Kim Lo�i Hi�m v� 1000 v�n l��ng",2,
	"Ch�c ch�n r�i./doanhehoa",
	"�� t�i suy ngh� ��./OnCancel");
end;

function doanhehoa()
	if CalcEquiproomItemCount (4,2049,1,1) < 1 then
		Say("��a ta �, kh�ng c� H�a Tinh L�nh l�m sao ta �p ���c Ho�ng Kim ng� h�nh �n h� H�a")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H�y xem l�i h�nh trang kh�ng �� 100 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2049,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1070)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer Ho�ng Kim Ng� H�nh �n h� H�a<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 1000 v�n l��ng.")
	end
end

-----------------------------Ho�ng Kim Ng� H�nh �n Th�------------------------------

function anhetho()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer Ho�ng Kim ng� h�nh �n h� Th� kh�ng? C�n ph�i c� Vozer �n c�p 10, 1 Th� Tinh L�nh, 100 Kim Lo�i Hi�m v� 1000 v�n l��ng",2,
	"Ch�c ch�n r�i./doanhetho",
	"�� t�i suy ngh� ��./OnCancel");
end;

function doanhetho()
	if CalcEquiproomItemCount (4,2050,1,1) < 1 then
		Say("��a ta �, kh�ng c� Th� Tinh L�nh l�m sao ta �p ���c Ho�ng Kim ng� h�nh �n h� Th�")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H�y xem l�i h�nh trang kh�ng �� 100 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer �n c�p 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2050,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1071)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer Ho�ng Kim Ng� H�nh �n h� Th�<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 1000 v�n l��ng.")
	end
end

-----------------------------Ho�ng Kim Trang S�c Ho�n M�------------------------------

function trangsuchoanmy()
Say("B�n c� ch�c l� mu�n n�ng c�p Vozer Ho�ng Kim trang s�c kh�ng? C�n ph�i c� Vozer trang s�c c�p 10, 1 Kim Lo�i Ho�ng Kim, 100 Kim Lo�i Hi�m v� 1000 v�n l��ng",2,
	"Ch�c ch�n r�i./dotrangsuchoanmy",
	"�� t�i suy ngh� ��./OnCancel");
end;

function dotrangsuchoanmy()
	if CalcEquiproomItemCount (4,2051,1,1) < 1 then
		Say("��a ta �, kh�ng c� Kim Lo�i Ho�ng Kim l�m sao ta �p ���c Ho�ng Kim Trang S�c")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H�y xem l�i h�nh trang kh�ng �� 100 Kim Lo�i Hi�m.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,10) < 1 then
		Say("H�y xem l�i h�nh trang kh�ng c� Vozer trang s�c c�p 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2051,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,10)
		AddGoldItem(0,1072)
		Msg2Player("<color=green>N�ng c�p th�nh c�ng nh�n<color> <color=yellow>Vozer Ho�ng Kim Trang S�c Ho�n M�<color>")
	else
		Say("H�y xem l�i h�nh trang b�n kh�ng c� �� 1000 v�n l��ng.")
	end
end