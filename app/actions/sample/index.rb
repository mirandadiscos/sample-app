# frozen_string_literal: true

module SampleApp
  module Actions
    module Sample
      class Index < SampleApp::Action
        def handle(*, response)
          # TODO: ADD PERSISTING FEATURE
          samples = [{ 'id' => '1',
                       'codebar' => '123123123111',
                       'description' => 'Victor Guedes',
                       'colected_at' => '2022-12-31 14:37:42.843495682 -0300' },
                     { 'id' => '2',
                       'codebar' => '123123123112',
                       'description' => 'Lari BeibeLov',
                       'colected_at' => '2022-12-31 15:37:42.843495682 -0300' }]

          response.format = :json
          response.body = samples.to_json
        end
      end
    end
  end
end
