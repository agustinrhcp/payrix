module Payrix
  module Resource
    class Subscriptions < Base
      resource_name 'subscriptions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :plan, :start, :finish, :tax, :descriptor,
               :inactive, :frozen, :failures, :maxFailures, :origin,
               :firstTxn, :txnDescription, :order, :authentication, :authenticationId]

      attr_accessor *ATTRS
    end
  end
end
