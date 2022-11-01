quest tugberk_cevher_npc begin
	state start begin
		when 9003.chat."Cevher Ekle" begin
			say("Cevher eklemek istediğiniz nesneyi üzerime sürükleyin.")
		end -- when 9006.chat end
		when 9003.take with item.get_sub_type() == 3 or item.get_sub_type() == 5 or item.get_sub_type() == 6 begin
			item.set_socket(1, 21600)
			item.set_socket(2, 21600)
			item.set_socket(3, 21600)
			item.set_socket(0, 1)
			item.set_socket(0, 2)
			item.set_socket(0, 3)
			chat("Cevherler başarıyla eklendi. İyi Oyunlar.")
		end -- when 9006.take end
	end -- state end
end -- quest end