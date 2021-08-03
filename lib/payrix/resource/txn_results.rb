module Payrix
  module Resource
    class TxnResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'txnResults'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :txn, :type, :message, :code, :bankCode,
               :originalCode]

      attr_accessor *ATTRS
    end
  end
end
