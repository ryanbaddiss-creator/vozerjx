Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\changefeature\\equip_tryon.lua")
Include("\\script\\vng_lib\\extpoint.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
tbFeatureNpc = {}

-----------------------------------------------------------------------------

newmel_npc ={
{1848,80,4,78,1547,3219,0,"N©ng CÊp Trang BÞ",0,"\\script\\global\\mel\\annie.lua"},
}

function Add_Npc_Mel()
	add_mel(newmel_npc)
end

-----------------------------------------------------------------------------

function add_mel(tbnpc)
	for i = 1 , getn(tbnpc) do
		Mid = SubWorldID2Idx(tbnpc[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = tbnpc[i][5] * 32;
			TabValue6 = tbnpc[i][6] * 32;
			local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]);
			SetNpcScript(nNpcIdx, tbnpc[i][10]);
		end;
	end;
end