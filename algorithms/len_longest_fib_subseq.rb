# @param {Integer[]} arr
# @return {Integer}
def len_longest_fib_subseq(arr)
  max_seq = 0
  cur_seq = 0
  max_value = arr.max
  h = {}
  arr.each do |v|
    h[v] = 1
  end
  (0..arr.length-3).each do |v1|
    (v1+1..arr.length-2).each do |v2|
      cur_seq = 2
      val_prew = arr[v1]
      val_now = arr[v2]
      loop do
        val_now, val_prew = val_now + val_prew, val_now
        break if val_now > max_value

        if h.key? val_now
          cur_seq += 1
        else
          break
        end
      end
      max_seq = [max_seq, cur_seq].max
    end
  end
  max_seq
end

arr = [1,2,3,4,5,6,7,8]
puts len_longest_fib_subseq arr
# Output: 5
# Explanation: The longest subsequence that is fibonacci-like: [1,2,3,5,8].


arr = [1,3,7,11,12,14,18]
puts len_longest_fib_subseq arr
# Output: 3
# Explanation: The longest subsequence that is fibonacci-like: [1,11,12], [3,11,14] or [7,11,18].