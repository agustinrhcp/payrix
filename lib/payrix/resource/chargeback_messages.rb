module Payrix
  module Resource
    class ChargebackMessages < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled

      resource_name 'chargebackMessages'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :chargeback, :date, :type, :fromQueue, :toQueue,
               :contact, :amount, :currency, :note, :status,
               :inactive, :frozen, :imported]

      attr_accessor *ATTRS
    end
  end
end
