=begin
#Accounting Extension

#These APIs allow you to interact with HubSpot's Accounting Extension. It allows you to: * Specify the URLs that HubSpot will use when making webhook requests to your external accounting system. * Respond to webhook calls made to your external accounting system by HubSpot 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Extensions::Accounting::UserAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserAccountsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Extensions::Accounting::UserAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserAccountsApi' do
    it 'should create an instance of UserAccountsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Extensions::Accounting::UserAccountsApi)
    end
  end

  # unit tests for archive
  # Delete user account
  # Deletes a user account from HubSpot, meaning that HubSpot will no longer send requests to the external accounting system for this user.
  # @param account_id The ID of the user account to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace
  # Create a user account
  # Creates an account which contains the information about the account in the external accounting system.  This *must* be called after a user connects their HubSpot account to the external accounting system, as there is no other way for HubSpot to obtain the external account details.
  # @param create_user_account_request_external The external accounting system user account information.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'replace test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end