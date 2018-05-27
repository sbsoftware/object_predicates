require_relative '../attribute_value_condition_evaluator'

module ObjectPredicates
  class ActiveRecordNeqConditionEvaluator < AttributeValueConditionEvaluator
    def evaluate(scope)
      scope.where.not(condition.attr_name => condition.value)
    end
  end
end
