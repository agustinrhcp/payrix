module Payrix
  module Resource
    class Chargebacks < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'chargebacks'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :merchant, :txn, :description, :total, :representedTotal,
               :cycle, :currency, :ref, :reason, :reasonCode,
               :issued, :received, :reply, :bankRef, :chargebackRef,
               :status, :inactive, :frozen, :lastStatusChange, :actionable]

      attr_accessor *ATTRS
    end
  end
end
