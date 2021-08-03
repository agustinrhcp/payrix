module Payrix
  module Resource
    class Logins < Base
      resource_name 'logins'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :lastLogin, :username, :password, :first,
               :middle, :last, :email, :fax, :phone,
               :country, :zip, :state, :city, :address2,
               :address1, :confirmed, :roles, :division, :inactive,
               :frozen, :allowedResources, :restrictedResources, :parentDivision, :effectiveRoles]

      attr_accessor *ATTRS
    end
  end
end
