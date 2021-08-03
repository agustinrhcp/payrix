module Payrix
  module Resource
    class ChargebackStatuses < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'chargebackStatuses'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :chargeback, :chargebackMessage, :status]

      attr_accessor *ATTRS
    end
  end
end
