module Payrix
  module Resource
    class FeeRules < Base
      resource_name 'feeRules'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :fee, :name, :description, :type, :application,
               :value, :inactive, :frozen, :grouping]

      attr_accessor *ATTRS
    end
  end
end
