class Item
  def initialize(name, done = false)
    @name = name
    @done = done
  end

  def self.new_from_line(line)
    new(line[6..-1], line[3] == "x")
  end

  def done?
    @done
  end

  def transform_html
    if done?
      %{<li style="color:green; font-size:large"><input type="checkbox" checked="checked"> #{@name}</li>}
    else
      %{<li style="color:red; font-size:large"><input type="checkbox"> #{@name}</li>}
    end
  end
end