module Payrix
  module Resource
    class SubscriptionTokens < Base
      resource_name 'subscriptionTokens'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :subscription, :token, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
