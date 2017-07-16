class Item
  attr_accessor :name
  
  def initialize(name, done = false)
    @name = name
    @done = done
  end

  def done=(value)
  @done = value
  end

  def done
    @done
  end
  
  def done?
    @done
  end

  def mark_done!
    @done = true
  end

  def mark_undone!
    @done = false
  end

  def self.new_from_line(line)
    name = line[6..-1]
    done = line[3] == "x"
    Item.new(name, done)
  end

  def self.new_from_prompt(line)
    name = line[0..-1]
    done = false
    Item.new(name, done)
  end

  def display
    if done?
      "- [x] #{@name}"
    else
      "- [ ] #{@name}"
    end
  end
end