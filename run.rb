require "green_shoes"

Shoes.app width: 1900, height: 600 do
  l = []
  l << 0
  l << height - 50
  @l = para l
  @r = para
  keypress do |k|
    @r.replace k
    if k == "Up"
      l[1] -= 50
    elsif k == "Left"
      if l[0] == 0

      elsif l[0] != 0
        l[0] -= 10
      end
    elsif k == "Right"
      if l[0] == width

      elsif l[0] != width
        l[0] += 10
      end
    end
  end
  animate 30 do
    @l.replace l
    fill blue
    rect l[0], l[1], 50, 50
  end
end
