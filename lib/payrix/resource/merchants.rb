module Payrix
  module Resource
    class Merchants < Base
      resource_name 'merchants'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :lastActivity, :entity, :dba, :new, :established,
               :annualCCSales, :avgTicket, :amex, :discover, :mcc,
               :status, :boarded, :tcDate, :inactive, :frozen,
               :environment]

      attr_accessor *ATTRS
    end
  end
end
