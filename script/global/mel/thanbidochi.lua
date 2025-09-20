IncludeLib("SETTING"); 
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")

----------------------------------------------------------------------------------------------------
--						��i Th�n B� �� Ch� sang Ti�n V�n						--
----------------------------------------------------------------------------------------------------
function thanbidochi()
dofile("script/global/mel/thanbidochi.lua")
Say("C�c h� mu�n ��i Th�n B� �� Ch� sang ti�n v�n ch�? �i�u ki�n quy ��i l� ph�i c� tr�n 1000 �� ch�. T� l� quy ��i 1 �� ch� = 500 l��ng b�c",2,
	"��ng v�y, ta mu�n quy ��i Th�n B� �� Ch�/doi_tbdc_xu",
	"�� ta suy ngh� ��./OnCancel");
end;


function doi_tbdc_xu()
local myMapNum = nt_getTask(1027); -- L�y s� Th�n B� �� Ch� hi�n c�
if myMapNum >= 1000 then
local a = myMapNum - 1000; -- T�nh s� TBDC s� b�n
if a > 0 then
local remain = a;
-- Chia nh� th�nh t�ng l� (t�i �a 9999)
while remain > 0 do
local batch = 9999;
if remain < 9999 then
batch = remain*500;
end
Earn(batch)
---AddStackItem(batch,4,417,1,1,0,0,0); -- M�i l� add xu
remain = remain*500 - batch;
end
-- Th�ng b�o cho ng���i ch�i
Msg2Player("<color=green>B�n �� quy ��i <color=yellow>"..a.." <color> Th�n B� �� Ch�, nh�n v� "..(a*500).." l��ng b�c<color>");
Msg2Player("<color=green>S� Th�n B� �� Ch� c�n l�i l� 1000<color>");
-- C�p nh�t s� l��ng TBDC c�n l�i
nt_setTask(1027, 1000);
else
Msg2Player("<color=red>B�n kh�ng c� th�a m�n �� quy ��i<color>"); -- B�n c� d��i ho�c ��ng 1000
end
else
Msg2Player("<color=red>S� Th�n B� �� Ch� c�a b�n nh� h�n 1000, kh�ng th� quy ��i<color>");
end
end