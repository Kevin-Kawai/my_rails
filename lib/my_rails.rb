# frozen_string_literal: true

require_relative "my_rails/version"
require_relative "my_rails/routing"
require_relative "my_rails/util"
require_relative "my_rails/dependencies"

module MyRails
  class Application
    def call(env)
      klass, act = get_controller_and_action(env)
      cont = klass.new
      text = cont.send(act)

      [200, {'content-type' => 'text/html'},
        [text]]
    end
  end
end
