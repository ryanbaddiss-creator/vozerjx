Include("\\script\\global\\login_head.lua")

function main(nItemIdx)
local nDate = tonumber(GetLocalDate("%d"))
if ( GetTask(DAY) ~= nDate ) then
	SetTask(DAY, nDate);
	SetTask(352,0);
	if (GetTask(352) <= 10000) then
		local k = random(1,100)
		SetTask(352,GetTask(352) + 1)
		if (k >= 90) then
			local x = random(1,100)
				if (x >= 70) then
					AddStackItem(1,4,2045,1,1,0,0,0)
					AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Kim Lo�i Hi�m<color> !")
					Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c Kim Lo�i Hi�m")
				elseif (x >=80)  then
 					Earn(1000000)
					AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>100 v�n l��ng<color> !")
					Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 100 v�n l��ng")
				else
					local p = random(122,124)
					Earn(100000)
					AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=pink>10 v�n l��ng<color> !")
					Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 10 v�n l��ng")
				end
		elseif (k >=50) then
			local m = random (5,45)
			n = GetLevel()
			AddOwnExp(n*m*30)
		else
			Earn(10000)
		end
	else
		Talk(1,"","<color=green>H�m nay �� m� �� 10000 C�m nang Ho�ng Kim r�i, ng�y mai h�y m� ti�p<color>")
	end
	
else	--Sau khi da set ngay

if (GetTask(352) <= 10000) then
	local k = random(1,100)
	SetTask(352,GetTask(352) + 1)
	if (k >= 90) then
		local x = random(1,100)
		if (x >= 70) then
			AddStackItem(1,4,2045,1,1,0,0,0)
			AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Kim Lo�i Hi�m<color> !")
			Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c Kim Lo�i Hi�m")
		elseif (x >=80)  then
 			Earn(1000000)
			AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>100 v�n l��ng<color> !")
			Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 100 v�n l��ng")
		else
			local p = random(122,124)
			Earn(100000)
			AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=pink>10 v�n l��ng<color> !")
			Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  10 v�n l��ng")
		end
	elseif (k >=50) then
		local m = random (5,45)
		n = GetLevel()
		AddOwnExp(n*m*50)
	else
		Earn(10000)
	end
else
	Talk(1,"","<color=green>H�m nay �� m� �� 10000 C�m nang Ho�ng Kim r�i, ng�y mai h�y m� ti�p<color>")
end

end
end 