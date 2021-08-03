module Payrix
  module Resource
    class DecisionRules < Base
      resource_name 'decisionRules'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :decision, :name, :description, :type, :value,
               :grouping, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
