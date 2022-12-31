# frozen_string_literal: true

module SampleApp
  module Actions
    module Home
      class Show < SampleApp::Action
        def handle(*, response)
          response.body = "Hello from Hanami"
        end
      end
    end
  end
end
