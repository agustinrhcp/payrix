module Payrix
  module Resource
    class PayoutFlows < Base
      resource_name 'payoutFlows'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :payoutLogin, :org, :entity, :trigger,
               :schedule, :scheduleFactor, :um, :amount, :minimum,
               :payoutInactive, :skipOffDays, :inactive, :frozen, :division]

      attr_accessor *ATTRS
    end
  end
end
