module Payrix
  module Resource
    class Sessions < Base
      include Mixin::UpdateDisabled

      resource_name 'sessions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :key, :public, :inactive, :frozen,
               :token, :effectiveRoles]

      attr_accessor *ATTRS
    end
  end
end
