module Payrix
  module Resource
    class Members < Base

      resource_name 'members'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :merchant, :title, :first, :middle, :last,
               :ssn, :dob, :dl, :dlstate, :ownership,
               :email, :fax, :phone, :country, :zip,
               :state, :city, :address2, :address1, :primary,
               :inactive, :frozen, :timezone, :gender]

      attr_accessor *ATTRS
    end
  end
end
