require_relative './tower.rb'

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

    def parts
      [tower, motherboard, cpu, cpu_cooler, gpu, memory, storage, power_supply]
    end

    def total_price
      sum = 0
      parts.each do |part|
        if part && part.price
          sum += part.price
        end
      end
      sum
    end
  end
end

comp = PcParts::Computer.new("bryes pc", tower: PcParts::Tower.new(name: "hello"))
p comp.total_price