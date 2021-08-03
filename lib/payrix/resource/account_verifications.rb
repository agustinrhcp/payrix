module Payrix
  module Resource
    class AccountVerifications < Base

      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'accountVerifications'

      def initialize(params)
        super(params, ATTRS)

      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :account, :type]

      attr_accessor *ATTRS
    end
  end
end
