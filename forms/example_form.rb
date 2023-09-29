module Forms
  class ExampleForm < Base
    attr_accessor :name, :description, :content, :user_id

    def initialize(attrs={})
      attrs ||= {}

      attrs.each do |k,v|
        self.send("#{k}=", v) ### Use send so that it checks that attr_accessor has already defined the method so its a valid attribute
      end
    end

    validates :name, presence: true
    validates :content, presence: true
    validate :validate_custom

    def validate_custom
      if foo
        self.errors.add(:base, "Some error message")
      end
    end
  end
end
