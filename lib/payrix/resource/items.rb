module Payrix
  module Resource
    class Items < Base
      resource_name 'items'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :txn, :item, :description, :custom, :quantity,
               :price, :inactive, :frozen, :um, :commodityCode,
               :total, :discount, :productCode]

      attr_accessor *ATTRS
    end
  end
end
