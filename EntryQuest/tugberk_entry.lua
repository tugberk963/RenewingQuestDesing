quest tugberk_entry begin
	state start begin
		when login with pc.getqf("tugberk_entry_buffs") == 0 begin
				pc.setqf("tugberk_entry_buffs", 1)
				notice_all(string.format("Sunucumuza hoþgeldin, %s. Keyifli Oyunlar.",pc.get_name()))
				command("tugberk_entry_item_and_attr")
				local side_skills_index_start = 120
				for i = 0, 11 do
					pc.set_skill_level(side_skills_index_start+i, PERFECT_MASTER_SKILL_LEVEL)
				end
				affect.add_collect(apply.MOV_SPEED, 500, 60*60*24*365)
				affect.add_collect(apply.ATT_SPEED, 500, 60*60*24*365)
				affect.add_collect(apply.IMMUNE_STUN, 1, 60*60*24*365)
				chat(string.format("Hoþgeldin %s",pc.get_name()))
				chat("Bonuslarýn ve temel becerilerin karakterine yüklendi.")
				chat("Keyifli oyunlar dileriz !")
		end -- when end 
	end -- state end 
end -- quest end 