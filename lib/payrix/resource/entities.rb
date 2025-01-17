module Payrix
  module Resource
    class Entities < Base
      resource_name 'entities'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :ipCreated, :ipModified, :clientIp, :login, :parameter,
               :type, :name, :address1, :address2, :city,
               :state, :zip, :country, :timezone, :phone,
               :fax, :email, :website, :ein, :tcVersion,
               :tcDate, :tcIp, :tcAcceptDate, :tcAcceptIp, :custom,
               :inactive, :frozen, :tinStatus, :reserved, :checkStage,
               :public, :customerPhone, :locations]

      attr_accessor *ATTRS
    end
  end
end
