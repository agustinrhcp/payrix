module Payrix
  module Resource
    class TerminalTxnDatas < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'terminalTxnDatas'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :terminalTxn, :signature]

      attr_accessor *ATTRS
    end
  end
end
