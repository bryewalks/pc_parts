require_relative '../spec_helper'

module PcParts
  describe Motherboard do
    describe "#initialize" do
      let(:motherboard) { Motherboard.new(
                                          name: "MSI B450 TOMAHAWK ATX AM4 Motherboard",
                                          manufacturer: "MSI",
                                          part_number: "B450 TOMAHAWK",                               
                                          price: 115,
                                          socket_type: "AM4",
                                          form_factor: "ATX",
                                          color: "White",
                                          memory_slots: 4,
                                          max_memory: 64,
                                          memory_type: "DDR4",
                                          chipset: "AMD B450"
                                        ) }
      it "initializes with correct name" do
        expect(motherboard.name).to eq("MSI B450 TOMAHAWK ATX AM4 Motherboard")
      end

      it "initializes with correct manufacturer" do
        expect(motherboard.manufacturer).to eq("MSI")
      end

      it "initializes with correct part number" do
        expect(motherboard.part_number).to eq("B450 TOMAHAWK")
      end

      it "initializes with correct price" do
        expect(motherboard.price).to eq(115)
      end

      it "initializes with correct socket type" do
        expect(motherboard.socket_type).to eq("AM4")
      end

      it "initializes with correct form factor" do
        expect(motherboard.form_factor).to eq("ATX")
      end

      it "initializes with correct color" do
        expect(motherboard.color).to eq("White")
      end

      it "initializes with correct memory slots" do
        expect(motherboard.memory_slots).to eq(4)
      end

      it "initializes with correct max memory" do
        expect(motherboard.max_memory).to eq(64)
      end

      it "initializes with correct memory type" do
        expect(motherboard.memory_type).to eq("DDR4")
      end

      it "initializes with correct chipset" do
        expect(motherboard.chipset).to eq("AMD B450")
      end
    end
  end
end