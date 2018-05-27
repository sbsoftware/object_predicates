require_relative './evaluator'
require_relative './object_eq_condition_evaluator'
require_relative './object_neq_condition_evaluator'

module Predicates
  class ObjectEvaluator < Evaluator
    def evaluate(object)
      @predicate.conditions.all? do |condition|
        condition_evaluator(condition).evaluate(object)
      end
    end
  end
end
