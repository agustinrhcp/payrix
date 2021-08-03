module Payrix
  module Resource
    class Batches < Base
      include Mixin::DeleteDisabled

      resource_name 'batches'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :merchant, :date, :status, :clientRef, :inactive,
               :frozen, :processingDate, :processingId]

      attr_accessor *ATTRS
    end
  end
end
