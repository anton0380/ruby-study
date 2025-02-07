# Find the Number of Distinct Colors Among the Balls

# @param {Integer} limit
# @param {Integer[][]} queries
# @return {Integer[]}
def query_results(limit, queries)
  arr = Array.new(4,0)
  res = []
  queries.each do |q|
    arr[q[0]] = q[1]
    res.push(arr.uniq.count {|e| e != 0})
  end
  res
end

limit = 4
queries = [[1,4],[2,5],[1,3],[3,4]]
p query_results limit, queries
# Output: [1,2,2,3]

limit = 4
queries = [[0,1],[1,2],[2,2],[3,4],[4,5]]
p query_results limit, queries
# Output: [1,2,2,3,4]