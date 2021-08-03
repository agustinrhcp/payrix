module Payrix
  module Resource
    class ProfitShares < Base
      resource_name 'profitShares'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :entity, :forentity, :org, :division,
               :type, :name, :description, :amount, :inactive,
               :frozen]

      attr_accessor *ATTRS
    end
  end
end
