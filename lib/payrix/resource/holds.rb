module Payrix
  module Resource
    class Holds < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled

      resource_name 'holds'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :txn, :verification, :action, :released,
               :reviewed, :inactive, :frozen, :entity, :terminalTxn,
               :decisionAction]

      attr_accessor *ATTRS
    end
  end
end
