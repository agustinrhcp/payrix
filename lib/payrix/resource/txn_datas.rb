module Payrix
  module Resource
    class TxnDatas < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'txnDatas'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :txn, :signature]

      attr_accessor *ATTRS
    end
  end
end
