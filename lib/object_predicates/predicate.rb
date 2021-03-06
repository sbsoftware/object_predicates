require_relative './conditions/eq_condition'
require_relative './conditions/neq_condition'
require_relative './evaluators/object_evaluator'
require_relative './evaluators/active_record_evaluator'

module ObjectPredicates
  class Predicate
    attr_reader :conditions

    def initialize(&block)
      @conditions = []
      condition_hash = instance_exec(&block)
    end

    def eq(attr_name, value)
      @conditions << EqCondition.new(attr_name, value)
      self
    end

    def neq(attr_name, value)
      @conditions << NeqCondition.new(attr_name, value)
      self
    end
  end
end
