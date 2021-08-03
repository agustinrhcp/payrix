module Payrix
  module Resource
    class ProfitShareRules < Base
      resource_name 'profitShareRules'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :profitShare, :name, :description, :type, :value,
               :grouping, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
