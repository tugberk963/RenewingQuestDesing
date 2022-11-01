quest tugberk_cevher_npc begin
	state start begin
		when 9003.chat."Cevher Ekle" begin -- Change 9003 with NPC number you want.
			say("Cevher eklemek istediðiniz nesneyi üzerime sürükleyin.")
		end -- when 9003.chat end
		when 9003.take with item.get_sub_type() == 3 or item.get_sub_type() == 5 or item.get_sub_type() == 6 begin
			item.set_socket(1, 21600)
			item.set_socket(2, 21600)
			item.set_socket(3, 21600)
			item.set_socket(0, 1)
			item.set_socket(0, 2)
			item.set_socket(0, 3)
			chat("Cevherler baþarýyla eklendi. Ýyi Oyunlar.")
		end -- when 9003.take end
	end -- state end
end -- quest end
