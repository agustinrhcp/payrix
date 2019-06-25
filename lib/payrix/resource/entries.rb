module Payrix
  module Resource
    class Entries < Base

      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled
      def initialize(params)
        super(params, ATTRS)

        @resource_name = 'entries'
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier, 
               :entity, :onentity, :fromentity, :fund, :fee, 
               :disbursement, :refund, :txn, :chargeback, :adjustment, 
               :event, :eventId, :description, :amount, :unsourced, 
               :pending, :profitShare, :originalCurrency, :currencyRate, :isFee]

      attr_accessor *ATTRS

    end
  end
end
