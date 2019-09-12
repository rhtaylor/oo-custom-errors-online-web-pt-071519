class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
        raise CustomErr
      rescue CustomErr => error
        puts error.message
      end
    else
    person.partner = self
  end
end
  class CustomErr < StandardError
    def message
    "FUCK YES Im gonna be a pro"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
