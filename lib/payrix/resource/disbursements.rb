module Payrix
  module Resource
    class Disbursements < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'disbursements'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :account, :payout, :description, :amount,
               :status, :processed, :currency, :payment, :expiration,
               :sameDay, :returnedAmount]

      attr_accessor *ATTRS
    end
  end
end
