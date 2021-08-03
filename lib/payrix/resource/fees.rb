module Payrix
  module Resource
    class Fees < Base
      resource_name 'fees'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :forentity, :org, :type, :name,
               :description, :schedule, :scheduleFactor, :start, :finish,
               :collection, :collectionFactor, :collectionOffset, :um, :amount,
               :currency, :inactive, :frozen, :txnFee, :collectionIncludeCurrent,
               :maximum]

      attr_accessor *ATTRS
    end
  end
end
