module Payrix
  module Resource
    class ProfitShareResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'profitShareResults'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :profitShare, :entry, :amount, :message]

      attr_accessor *ATTRS
    end
  end
end
