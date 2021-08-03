module Payrix
  module Resource
    class TerminalTxnResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'terminalTxnResults'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :terminalTxn, :type, :message, :code, :originalCode,
               :bankCode]

      attr_accessor *ATTRS
    end
  end
end
