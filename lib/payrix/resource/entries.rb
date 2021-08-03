module Payrix
  module Resource
    class Entries < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'entries'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :onentity, :fromentity, :opposingEntry, :fund,
               :fee, :disbursement, :refund, :txn, :chargeback,
               :adjustment, :event, :eventId, :description, :amount,
               :unsourced, :pending, :profitShare, :originalCurrency, :currencyRate,
               :isFee]

      attr_accessor *ATTRS
    end
  end
end
