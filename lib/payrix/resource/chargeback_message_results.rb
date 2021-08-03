module Payrix
  module Resource
    class ChargebackMessageResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'chargebackMessageResults'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :chargebackMessage, :type, :message]

      attr_accessor *ATTRS
    end
  end
end
