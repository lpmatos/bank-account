class BinarySearch

  def find array, info
    raise ArgumentError unless array.is_a? Array
    raise NotDefinedError unless info
    array, min, max = array.sort, 0, array.length - 1
    while(min <= max)
      mid = (min + max) / 2
      min = mid + 1 if (array[mid] <=> info) < 0
      max = mid - 1 if (array[mid] <=> info) > 0
      return true if (array[mid] <=> info) == 0
    end
  end
  
end
