module Payrix
  module Resource
    class ConfirmCodes < Base
      include Mixin::UpdateDisabled

      resource_name 'confirmCodes'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :type, :email, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
