def fib_rec(num, arr = [0, 1], i = 2)
  return puts arr if i == num

  arr << fnum = (arr[i - 1]) + (arr[i - 2])
  fib_rec(num, arr, i += 1)
end

def merge_sort(arr)

  if arr.size < 2
    arr
  else 
    left = merge_sort(arr[0...arr.size/2])
    right = merge_sort(arr[arr.size/2...arr.size])
    merge(left, right)
  end
end

def merge(left, right, arr = [])
  arrsize = left.size + right.size
  (arrsize).times do
    if arr.size <= arrsize
      if left.empty? 
        arr << right.shift
        next
      elsif right.empty?
        arr << left.shift
        next
      end 
    end
    comparison = left[0] <=> right[0]
     
    if comparison == 1
      arr << right.shift
    elsif comparison == -1
      arr << left.shift
    elsif comparison == 0
      arr << left.shift
    end
  end
  arr
end

a = [3, 6, 1, 4, 2, 5]

p merge_sort(a)
