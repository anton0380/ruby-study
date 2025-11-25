# @param {Integer} k
# @return {Integer}
def smallest_repunit_div_by_k(k)
  return -1 if k % 2 == 0
  return -1 if k % 5 == 0
  val = 1
  count = 1
  loop do
    return count if val % k == 0
    val = val * 10 + 1
    count += 1
  end
end

k = 1
p smallest_repunit_div_by_k k # 1

k = 2
p smallest_repunit_div_by_k k # -1

k = 3
p smallest_repunit_div_by_k k # 3
