Dir["#{ROOT_PATH}/hubspot/codegen/crm/objects/**/*.rb"].each { |f| require f }

module Hubspot
  module Clients
    class Objects < Clients::Base
      API = %w[AssociationsApi BasicApi BatchApi CreateNativeObjectsApi SearchApi]

      API.each do |api_name|
        define_method(Util.underscore(api_name)) do
          api_class = Hubspot.const_get("Client::Crm::Objects::Api::#{api_name}")
          api_class.new(@api_client)
        end
      end
    end
  end
end