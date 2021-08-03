module Payrix
  module Resource
    class ReserveEntries < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled

      resource_name 'reserveEntries'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :fund, :txn, :hold, :reserve,
               :entityReserve, :reserveEntry, :description, :release, :amount]

      attr_accessor *ATTRS
    end
  end
end
