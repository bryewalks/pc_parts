module PcParts
  class Tower 
    attr_accessor :name, :manufacturer, :price, :type, :motherboard_form_factor, :color, :panel_style, :part_number

    def initialize(options)
      @name                    = options[:name]
      @manufacturer            = options[:manufacturer]
      @price                   = options[:price]
      @type                    = options[:type]
      @motherboard_form_factor = options[:motherboard_form_factor]
      @color                   = options[:color]
      @panel_style             = options[:panel_style]
      @part_number             = options[:part_number]
    end
  end
end