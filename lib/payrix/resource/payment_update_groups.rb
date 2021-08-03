module Payrix
  module Resource
    class PaymentUpdateGroups < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'paymentUpdateGroups'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :payment]

      attr_accessor *ATTRS
    end
  end
end
