# frozen_string_literal: true

module SampleApp
  class Routes < Hanami::Routes
    root to: "home.show"
    get "/samples", to: "sample.index"
  end
end
