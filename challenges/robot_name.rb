class Robot
  @@uniqe_robot_names = []

  def name
    return robot_name if !robot_name.nil?
    set_name
  end

  def set_name
    while @@uniqe_robot_names.include?(robot_name) || robot_name.nil?
      self.robot_name = generate_name
    end
    @@uniqe_robot_names << robot_name
    robot_name
  end

  def reset
    @@uniqe_robot_names.delete(robot_name)
    self.robot_name = nil
  end

  def self.names
    @@uniqe_robot_names
  end

  private

  def generate_name
    new_name = ""
    2.times { new_name += random_letter }
    3.times { new_name += random_digit }
    new_name
  end

  def random_letter
    ("A".."Z").to_a.sample
  end

  def random_digit
    ("1".."9").to_a.sample
  end

  attr_accessor :robot_name
end
