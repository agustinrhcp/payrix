module Payrix
  module Resource
    class FundOrigins < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'fundOrigins'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :fund, :disbursement, :amount]

      attr_accessor *ATTRS
    end
  end
end
