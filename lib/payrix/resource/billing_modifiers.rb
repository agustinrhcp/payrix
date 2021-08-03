module Payrix
  module Resource
    class BillingModifiers < Base
      resource_name 'billingModifiers'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :billing, :entity, :org, :division, :fromentity,
               :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
