module PcParts
  class Cpu
    attr_accessor :name, :manufacturer, :price, :core_count, :core_family, :core_clock, :boost_clock, :socket_type, :microarchitecture, :integrated_graphics, :tdp, :part_number

    def initialize(options)
      @name                = options[:name]
      @manufacturer        = options[:manufacturer]
      @part_number         = options[:part_number]
      @price               = options[:price]
      @core_count          = options[:core_count]
      @core_family         = options[:core_family]
      @core_clock          = options[:core_clock]
      @boost_clock         = options[:boost_clock]
      @socket_type         = options[:socket_type]
      @microarchitecture   = options[:microarchitecture]
      @integrated_graphics = options[:integrated_graphics]
      @tdp                 = options[:tdp]
    end
  end
end