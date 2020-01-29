module PcParts
  class Motherboard
    attr_accessor :name, :manufacturer, :part_number, :price, :socket_type, :form_factor, :color, :memory_slots, :max_memory, :memory_type,
    :chipset
    
    def initialize(options)
      @name         = options[:name]
      @manufacturer = options[:manufacturer]
      @part_number  = options[:part_number]
      @price        = options[:price]
      @socket_type  = options[:socket_type]
      @form_factor  = options[:form_factor]
      @color        = options[:color]
      @memory_slots = options[:memory_slots]
      @max_memory   = options[:max_memory]
      @memory_type  = options[:memory_type]
      @chipset      = options[:chipset]
    end
  end
end