require_relative './attribute_value_condition_evaluator'

module Predicates
  class ObjectNeqConditionEvaluator < AttributeValueConditionEvaluator
    def evaluate(object)
      object.public_send(condition.attr_name) != condition.value
    end
  end
end