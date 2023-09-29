module Forms
  class Base
    include ActiveModel::Validations

    def to_key
      raise StandardError.new("Must provide both :as and :url options to `form_for`")
    end
  end
end
