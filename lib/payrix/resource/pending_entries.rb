module Payrix
  module Resource
    class PendingEntries < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'pendingEntries'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :onentity, :fromentity, :fund, :opposingPendingEntry,
               :entry, :adjustment, :chargeback, :disbursement, :fee,
               :refund, :txn, :event, :eventId, :description,
               :amount, :pending, :profitShare, :originalCurrency, :currencyRate,
               :terminalTxn, :isFee, :entityDebt]

      attr_accessor *ATTRS
    end
  end
end
