class Triangle
  attr_reader :lines, :max_items

  def initialize(lines)
    @lines = lines
    @last_index = 0
    @max_items = []
  end

  def top
    set_max
    items_total
  end

  def set_max
    lines.each do |row|
      items_valid = valid(row)
      max_items << items_valid.max
      @last_index = items_valid.index(max_items.last) + @last_index
    end
  end

  def items_total
    max_items.inject(0) { |a,b| a+b }
  end

  def valid (row)
    row[@last_index..@last_index + 1]
  end
end
