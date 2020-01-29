require_relative '../spec_helper'

module PcParts
  describe Tower do
    describe "#initialize" do

      let(:tower) { Tower.new(
                              name: "NZXT H510 ATX Mid Tower Case",
                              manufacturer: "NZXT",
                              price: 70,
                              type: "ATX Mid",
                              motherboard_form_factor: ["ATX", "Micro ATX", "Mini ITX"],
                              color: "White",
                              panel_style: "Tempered Glass",
                              part_number: "CA-H510B-W1"
                            ) }

      it "initializes with correct name" do
        expect(tower.name).to eq("NZXT H510 ATX Mid Tower Case")
      end

      it "initializes with correct manufacturer" do
        expect(tower.manufacturer).to eq("NZXT")
      end

      it "initializes with correct price" do
        expect(tower.price).to eq(70)
      end

      it "initializes with correct type" do
        expect(tower.type).to eq("ATX Mid")
      end

      it "initializes with correct motherboard form factor" do
        expect(tower.motherboard_form_factor).to eq(["ATX", "Micro ATX", "Mini ITX"])
      end

      it "initializes with correct color" do
        expect(tower.color).to eq("White")
      end

      it "initializes with correct panel style" do
        expect(tower.panel_style).to eq("Tempered Glass")
      end

      it "initializes with correct part number" do
        expect(tower.part_number).to eq("CA-H510B-W1")
      end
    end
  end
end