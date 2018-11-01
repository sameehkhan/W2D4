
arr = [ 0, 3, 5, 4, -5, 10, 1, 90 ]



def my_min1(arr) 
  sorted = false 
  until sorted 
    sorted = true
    arr.each_index do |i|
      if i < arr.length - 1
        if arr[i] > arr[i+1]
          arr[i],arr[i+1] = arr[i+1],arr[i]
          sorted = false
        end 
      end
    end 
  end 
  arr[0]
end 



def my_min2(arr)
  min = arr[0]
  
  arr.each do |num|
    min = num if num < min
  end 
  min 
end 



list = [5, 3, -7]

def lcs1(list)
  subs = []
  list.each_index do |i|
    (i...list.length).each do |j|
      subs << list[i..j] 
    end 
  end 
  subs.map { |el| el.reduce(:+) }.max
end 




