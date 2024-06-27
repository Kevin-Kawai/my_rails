module MyRails
  class Application
    def get_controller_and_action(env)
      path = env["PATH_INFO"]
      _, cont, act, after = path.split("/", 4)

      cont = cont.capitalize
      cont += "Controller"
      [Object.const_get(cont), act]
      # Todo: Part 2
    end
  end
end
