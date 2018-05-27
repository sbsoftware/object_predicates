module ObjectPredicates
  class AttributeValueConditionEvaluator
    attr_reader :condition

    def initialize(condition)
      @condition = condition
    end

    def evaluate(object)
      fail NotImplementedError
    end
  end
end
