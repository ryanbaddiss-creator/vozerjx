function OnDeath(Launcher)

-- �����Ұ���ͼ ����ɱ�߼�������ɱֵ
    if IsTongWarMap(SubWorld) == 1 then
    	local nLauncherIdx = NpcIdx2PIdx(Launcher);
    	local nOrgPlayer  = PlayerIndex;
    	if (nLauncherIdx > 0) then
    	    -- ����ǰ��������Ϊ ��ɱ��
    	    PlayerIndex = nLauncherIdx;
    	    -- ������ɱ��1
    	    AddPvPKilledNum(1);
    	    -- ���������ûر���ɱ��
    	    PlayerIndex = nOrgPlayer;
    	end
    end
    

    local pW, pX, pY = GetWorldPos()
    SetTask(801, pW)
    SetTask(802, pX)
    SetTask(803, pY)
end