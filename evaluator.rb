module Predicates
  class Evaluator
    attr_reader :predicate

    def initialize(predicate)
      @predicate = predicate
    end

    def evaluate(object)
      fail NotImplementedError
    end

    private

    def condition_evaluator(condition)
      evaluator_type = self.class.name.match(/(\w*)Evaluator/)[1]
      klass = "Predicates::#{evaluator_type}#{condition.class.name.split('::').last}Evaluator".constantize
      klass.new(condition)
    end
  end
end
