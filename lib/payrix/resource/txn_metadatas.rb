module Payrix
  module Resource
    class TxnMetadatas < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'txnMetadatas'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :txn, :type, :field, :value]

      attr_accessor *ATTRS
    end
  end
end
