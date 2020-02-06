require_relative '../spec_helper'

module PcParts
  describe Cpu do
    describe "#initialize" do

      let(:cpu) { Cpu.new(
                          name: "AMD Ryzen 5 3600 3.6 GHz 6-Core Processor",
                          manufacturer: "AMD",
                          part_number: "100-100000031BOX",
                          price: 175,
                          core_count: 6,
                          core_family: "Matisse",
                          core_clock: 3.6,
                          boost_clock: 4.2,
                          socket_type: "AM4",
                          microarchitecture: "Zen 2",
                          integrated_graphics: false,
                          tdp: 65
                        ) }

      it "initializes with correct name" do
        expect(cpu.name).to eq("AMD Ryzen 5 3600 3.6 GHz 6-Core Processor")        
      end

      it "initializes with correct manufacturer" do
        expect(cpu.manufacturer).to eq("AMD")
      end
      
      it "initializes with correct part number" do
        expect(cpu.part_number).to eq("100-100000031BOX")
      end

      it "initializes with correct price" do
        expect(cpu.price).to eq(175)
      end

      it "initializes with correct core count" do
        expect(cpu.core_count).to eq(6)
      end

      it "initializes with correct core family" do
        expect(cpu.core_family).to eq("Matisse")
      end

      it "initializes with correct core clock" do
        expect(cpu.core_clock).to eq(3.6)
      end

      it "initializes with correct boost clock" do
        expect(cpu.boost_clock).to eq(4.2)
      end

      it "initializes with correct socket type" do
        expect(cpu.socket_type).to eq("AM4")
      end

      it "initializes with correct microarchitecture" do
        expect(cpu.microarchitecture).to eq("Zen 2")
      end

      it "initializes with correct integrated graphics" do
        expect(cpu.integrated_graphics).to eq(false)
      end

      it "initializes with correct tdp" do
        expect(cpu.tdp).to eq(65)
      end
    end
  end
end