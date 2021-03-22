require 'benchmark'

def max_continuos(a)
    max_ending = max_slice = 0
    n = a.length
    for i in 0...n
        max_ending = [1, (max_ending * a[i])].max
        max_slice = [max_slice, max_ending].max
    end
    return max_slice
end

Benchmark.bm do |x|
    x.report { max_continuos([1,2,3,4,4,464,64,674,47,47,4,747,47,47,47,4,74,74,74,745]) }
end
