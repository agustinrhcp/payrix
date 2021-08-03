module Payrix
  module Resource
    class MerchantResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'merchantResults'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :merchant, :type, :message]

      attr_accessor *ATTRS
    end
  end
end
