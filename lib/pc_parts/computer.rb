module PcParts
  class Computer
    attr_accessor :name, :tower, :motherboard, :memory, :cpu, :cpu_cooler, :gpu, :power_supply, :storage

    def initialize(name, parts = {})
      @name         = name
      @tower        = parts[:tower]
      @motherboard  = parts[:motherboard]
      @cpu          = parts[:cpu]
      @cpu_cooler   = parts[:cpu_cooler]
      @gpu          = parts[:gpu]
      @memory       = parts[:memory]
      @storage      = parts[:storage]
      @power_supply = parts[:power_supply]
    end

    def compatible_cpu?
      motherboard.socket_type == cpu.socket_type
    end

    def total_price
      #add up price of each part
    end
  end
end