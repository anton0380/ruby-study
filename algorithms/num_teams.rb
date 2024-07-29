# @param {Integer[]} rating
# @return {Integer}
def num_teams(rating)
  result = 0
  rating.each_with_index do |r1, i|
    rating[i+1..].each_with_index do |r2, j|
      rating[j+i+1..].each do |r3|
        result += 1 if r1 > r2 && r2 > r3
        result += 1 if r3 > r2 && r2 > r1
      end
    end
  end
  result
end

rating = [2,5,3,4,1] # 3
puts num_teams rating
rating = [2,1,3] # 0
puts num_teams rating
rating = [1,2,3,4] # 4
puts num_teams rating