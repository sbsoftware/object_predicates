module ObjectPredicates
  class AttributeValueCondition
    attr_reader :attr_name, :value

    def initialize(attr_name, value)
      @attr_name = attr_name
      @value = value
    end
  end
end
