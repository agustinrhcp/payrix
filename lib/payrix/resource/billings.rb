module Payrix
  module Resource
    class Billings < Base
      resource_name 'billings'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :entity, :org, :division, :description,
               :schedule, :scheduleFactor, :start, :finish, :collection,
               :collectionFactor, :collectionOffset, :collectionIncludeCurrent, :currency, :inactive,
               :frozen]

      attr_accessor *ATTRS
    end
  end
end
