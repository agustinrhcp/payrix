module Payrix
  module Resource
    class DisbursementEntries < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'disbursementEntries'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :disbursement, :entry, :pendingEntry, :reserveEntry, :event,
               :eventId, :amount, :amountUsed, :description]

      attr_accessor *ATTRS
    end
  end
end
