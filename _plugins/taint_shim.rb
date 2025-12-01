unless Object.method_defined?(:tainted?)
  # Ruby 3.2 removió el sistema de “taint”. Liquid 4 aún intenta llamar a
  # estos métodos, así que proveemos un shim que siempre retorna falso.
  class Object
    def tainted?
      false
    end

    def taint
      self
    end

    def untaint
      self
    end
  end
end
