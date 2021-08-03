module Payrix
  module Resource
    class TerminalTxns < Base
      resource_name 'terminalTxns'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :ipCreated, :ipModified, :merchant, :txn, :type,
               :expiration, :currency, :fundingCurrency, :fee, :authDate,
               :authCode, :order, :description, :traceNumber, :discount,
               :shipping, :duty, :terminal, :terminalCapability, :entryMode,
               :origin, :tax, :total, :cashback, :authorization,
               :approved, :cvv, :cvvStatus, :swiped, :emv,
               :signature, :pin, :unattended, :pos, :receipt,
               :clientIp, :first, :middle, :last, :company,
               :email, :address1, :address2, :city, :state,
               :zip, :country, :phone, :status, :reserved,
               :checkStage, :inactive, :frozen, :forterminalTxn, :token,
               :payment]

      attr_accessor *ATTRS
    end
  end
end
