quest tugberk_skill_npc begin
	state start begin
		when 20091.chat."Becerileri Al" begin -- Change 20091 with NPC you want.
			say_title(string.format("%s:[ENTER]", mob_name(npc.get_race())))
			say("Yetenek grubunu seç :[ENTER]")
			
			local pc_job = pc.get_job();
			local selection_table = DOCTRINE_NAME_LIST[pc_job];

			if table.getn(selection_table) < 3 then -- when table has 2 elements inside it, it stops inserting.
				table.insert(selection_table, "Belki daha sonra.");
			end

			local selection = select_table(selection_table);
			if (selection >= table.getn(selection_table)) then
				return;
			end -- if

			pc.clear_skill();
			pc.set_skill_group(selection);
			
			local index_start = 1 + 30*pc_job + 15*(selection-1); --
			for i = 0, 5 do -- now it includes digit 1 endings.
				pc.set_skill_level(index_start+i, PERFECT_MASTER_SKILL_LEVEL);
			end -- for
		end -- when
	end -- state
end -- quest