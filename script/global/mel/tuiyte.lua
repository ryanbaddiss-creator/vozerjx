IncludeLib("SETTING"); 

function main()
--	if (GetNpcExpRate() <= 100) then
		AddSkillState(1214, 1, 1, 7*24*60*60*18,1);
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(1204, 1, nX32*32, nY32*32)
	Msg2Player("Nh�n tr�ng th�i h�i ph�c sinh l�c v� n�i l�c trong v�ng 7 ng�y.")

--	else
--		Say("Th�t ��ng ti�c, t�m th�i kh�ng s� d�ng ���c Ti�n Th�o L� ��c bi�t.", 0)
--		return 1;
--	end;
--	return 0;
end;