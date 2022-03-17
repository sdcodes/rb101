def uuid
  letters_nums = "abcdefghijklmnopqrstuvwxyz0123456789"
  alphnum_arr = letters_nums.split(//)
  final_uuid = ""
  counter = 32
  
  while final_uuid.size < 34
    final_uuid << alphnum_arr.shuffle[1]
      if final_uuid.size == 8
        final_uuid << "-"
      elsif final_uuid.size == 13
        final_uuid << "-"
      elsif final_uuid.size == 18
        final_uuid << "-"
      elsif final_uuid.size  == 23
        final_uuid << "-"
      end 
      
  end  
  final_uuid
end 



  
#insert (-). there has to be four of them at 8 4 4 4 12 interval 
#size: 32
#sections: 5
#string
#random num & letters