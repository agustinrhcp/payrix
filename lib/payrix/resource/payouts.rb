module Payrix
  module Resource
    class Payouts < Base
      resource_name 'payouts'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :account, :entity, :payoutFlow, :name,
               :description, :schedule, :scheduleFactor, :start, :currency,
               :um, :amount, :minimum, :float, :skipOffDays,
               :inactive, :frozen, :sameDay, :maximum]

      attr_accessor *ATTRS
    end
  end
end
