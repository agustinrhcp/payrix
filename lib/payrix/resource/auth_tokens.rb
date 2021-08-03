module Payrix
  module Resource
    class AuthTokens < Base
      resource_name 'authTokens'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :token, :customer, :used, :inactive,
               :frozen]

      attr_accessor *ATTRS
    end
  end
end
