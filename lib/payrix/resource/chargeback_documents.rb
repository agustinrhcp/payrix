module Payrix
  module Resource
    class ChargebackDocuments < Base
      resource_name 'chargebackDocuments'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :chargeback, :ref, :type, :name, :description,
               :status, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
