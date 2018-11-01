

  def first_anagram?(str1, str2)
    letters = str1.split("")
    pos_strs = letters.permutation.to_a
    pos_strs.include?(str2.split(""))
  end 

  
  def second_anagram?(str1,str2)
    
    str1.each_char.with_index do |ch, i|
      str2.delete!(ch) if str2.index(ch) != nil 
    end 
     str2 == ""
  end 