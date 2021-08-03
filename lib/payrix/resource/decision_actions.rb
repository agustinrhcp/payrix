module Payrix
  module Resource
    class DecisionActions < Base
      resource_name 'decisionActions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :decision, :action, :application, :scoreType, :type,
               :field, :score, :data, :message, :code,
               :grouping, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
