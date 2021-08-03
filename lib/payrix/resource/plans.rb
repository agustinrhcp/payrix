module Payrix
  module Resource
    class Plans < Base
      resource_name 'plans'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :merchant, :name, :description, :schedule, :scheduleFactor,
               :amount, :inactive, :frozen, :maxFailures, :type,
               :txnDescription, :order]

      attr_accessor *ATTRS
    end
  end
end
