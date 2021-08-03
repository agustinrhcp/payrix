module Payrix
  module Resource
    class Assessments < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      @resource_name 'assessments'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :onentity, :forentity, :partition, :opposingAssessment,
               :fee, :disbursement, :txn, :chargeback, :merchant,
               :event, :eventId, :description, :amount, :platform,
               :currency]

      attr_accessor *ATTRS
    end
  end
end
