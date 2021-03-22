require 'benchmark'

def unique_element(arr)
    
    n = arr.length

    for i in 0...n - 2 do
        j = i + 1
        for j in j...n - 1 do
            if arr[i] == arr[j]
                return false
            end
        end
    end
    return true 
end

print "#{unique_element([1,2,3,4,4,4])}\n"
Benchmark.bm do |x|
    x.report { unique_element([1,2,2,3,4,5,5]) }
end