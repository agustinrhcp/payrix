module Payrix
  module Resource
    class EntryOrigins < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'entryOrigins'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entry, :disbursement, :cancellation, :amount]

      attr_accessor *ATTRS
    end
  end
end
