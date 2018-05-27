require_relative './evaluator'
require_relative './active_record_eq_condition_evaluator'
require_relative './active_record_neq_condition_evaluator'

module ObjectPredicates
  class ActiveRecordEvaluator < Evaluator
    def evaluate(scope)
      predicate.conditions.reduce(scope) do |memo, condition|
        memo = condition_evaluator(condition).evaluate(memo)
        memo
      end
    end
  end
end
