# @param {Integer[][]} books
# @param {Integer} shelf_width
# @return {Integer}
def min_height_shelves(books, shelf_width)
  min_height = 0
  part_height = 0
  part_width = 0
  books.reverse.each do |book|
    if shelf_width - part_width < book[0]
      min_height += part_height
      part_height = 0
      part_width = 0
    end
    part_width += book[0]
    part_height = [part_height, book[1]].max
  end
  min_height + part_height
end

books = [[1,1],[2,3],[2,3],[1,1],[1,1],[1,1],[1,2]]
shelf_width = 4
puts min_height_shelves(books, shelf_width)