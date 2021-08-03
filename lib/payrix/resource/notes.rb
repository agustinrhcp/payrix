module Payrix
  module Resource
    class Notes < Base
      resource_name 'notes'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :hold, :txn, :terminalTxn, :entity,
               :type, :note, :data, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
