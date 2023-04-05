module Forms
  class ExampleForm < Base

    attr_accessor :name, :description, :content, :user_id

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
