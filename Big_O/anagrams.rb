  require 'byebug'

  def first_anagram?(str1, str2)
    letters = str1.split("")
    pos_strs = letters.permutation.to_a
    pos_strs.include?(str2.split(""))
  end 

  
  def second_anagram?(str1,str2)
    
    new_arr = str2.split("")
    
    return false if str1.length != str2.length
    
    str1.each_char.with_index do |ch, i|
      idx2 = new_arr.index(ch)
      new_arr.delete_at(idx2) if idx2 != nil 
    end 
     new_arr.empty?
  end 
  
  

  
  def third_anagram?(str1,str2)
    str1.split("").sort == str2.split("").sort
  end 
  
  
  def fourth_anagram?(str1,str2)
    hash = Hash.new(0)
    
    return false if str1.length != str2.length
    str1.each_char.with_index do |el, i|
      hash[str1[i]] += 1
      hash[str2[i]] -= 1
    end 
    
    hash.values.all? {|ch| ch.zero? }
  end 