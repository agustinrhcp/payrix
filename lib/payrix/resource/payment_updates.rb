module Payrix
  module Resource
    class PaymentUpdates < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'paymentUpdates'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :paymentUpdateGroup, :payment, :status, :token, :account,
               :clientRef, :message, :expiration]

      attr_accessor *ATTRS
    end
  end
end
