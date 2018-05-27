module ObjectPredicates
  class ActiveRecordEqConditionEvaluator < AttributeValueConditionEvaluator
    def evaluate(scope)
      scope.where(condition.attr_name => condition.value)
    end
  end
end
