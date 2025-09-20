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
					AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> më tói Hoµng Kim , may m¾n nhËn ®­îc <color=gold>Kim Lo¹i HiÕm<color> !")
					Msg2Player("Më cÈm nang Hoµng Kim, nhËn ®­îc Kim Lo¹i HiÕm")
				elseif (x >=80)  then
 					Earn(1000000)
					AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> më tói Hoµng Kim , may m¾n nhËn ®­îc <color=green>100 v¹n l­îng<color> !")
					Msg2Player("Më cÈm nang Hoµng Kim, nhËn ®­îc 100 v¹n l­îng")
				else
					local p = random(122,124)
					Earn(100000)
					AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> më tói Hoµng Kim , may m¾n nhËn ®­îc <color=pink>10 v¹n l­îng<color> !")
					Msg2Player("Më cÈm nang Hoµng Kim, nhËn ®­îc 10 v¹n l­îng")
				end
		elseif (k >=50) then
			local m = random (5,45)
			n = GetLevel()
			AddOwnExp(n*m*30)
		else
			Earn(10000)
		end
	else
		Talk(1,"","<color=green>H«m nay ®· më ®ñ 10000 C¶m nang Hoµng Kim råi, ngµy mai h·y më tiÕp<color>")
	end
	
else	--Sau khi da set ngay

if (GetTask(352) <= 10000) then
	local k = random(1,100)
	SetTask(352,GetTask(352) + 1)
	if (k >= 90) then
		local x = random(1,100)
		if (x >= 70) then
			AddStackItem(1,4,2045,1,1,0,0,0)
			AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> më tói Hoµng Kim , may m¾n nhËn ®­îc <color=gold>Kim Lo¹i HiÕm<color> !")
			Msg2Player("Më cÈm nang Hoµng Kim, nhËn ®­îc Kim Lo¹i HiÕm")
		elseif (x >=80)  then
 			Earn(1000000)
			AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> më tói Hoµng Kim , may m¾n nhËn ®­îc <color=green>100 v¹n l­îng<color> !")
			Msg2Player("Më cÈm nang Hoµng Kim, nhËn ®­îc 100 v¹n l­îng")
		else
			local p = random(122,124)
			Earn(100000)
			AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> më tói Hoµng Kim , may m¾n nhËn ®­îc <color=pink>10 v¹n l­îng<color> !")
			Msg2Player("Më cÈm nang Hoµng Kim, nhËn ®­îc  10 v¹n l­îng")
		end
	elseif (k >=50) then
		local m = random (5,45)
		n = GetLevel()
		AddOwnExp(n*m*50)
	else
		Earn(10000)
	end
else
	Talk(1,"","<color=green>H«m nay ®· më ®ñ 10000 C¶m nang Hoµng Kim råi, ngµy mai h·y më tiÕp<color>")
end

end
end 