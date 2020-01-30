require_relative '../spec_helper'

module PcParts
  describe Cpu do
    describe "#initialize" do

      let(:cpu) { Cpu.new(
                          name: "AMD Ryzen 5 3600 3.6 GHz 6-Core Processor",
                          manufacturer: "",
                          price: "",
                          core_count: "",
                          core_family: "",
                          core_clock: 3.6,
                          boost_clock: "",
                          socket: "",
                          microarchitecture: "",
                          integrated_graphics: "",
                          tdp: ""
                        ) }

      it "initializes with correct name" do
        expect(cpu.name).to eq("AMD Ryzen 5 3600 3.6 GHz 6-Core Processor")        
      end

      it "initializes with correct manufacturer" do
        expect(cpu.manufacturer).to eq()
      end

      it "initializes with correct price" do
        expect(cpu.price).to eq()
      end

      it "initializes with correct core count" do
        expect(cpu.core_count).to eq()
      end

      it "initializes with correct core family" do
        expect(cpu.core_family).to eq()
      end

      it "initializes with correct core clock" do
        expect(cpu.core_clock).to eq(3.6)
      end

      it "initializes with correct boost clock" do
        expect(cpu.core_clock).to eq()
      end

      it "initializes with correct socket" do
        expect(cpu.socket).to eq()
      end

      it "initializes with correct microarchitecture" do
        expect(cpu.microarchitecture).to eq()
      end

      it "initializes with correct integrated graphics" do
        expect(cpu.integrated_graphics).to eq()
      end

      it "initializes with correct tdp" do
        expect(cpu.tdp).to eq()
      end
    end
  end
end