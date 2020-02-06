require_relative '../spec_helper'

module PcParts
  describe Computer do
    describe "#initialize" do
      context "when parts given" do
        let(:computer) { Computer.new(
                                      "bryes pc",
                                      tower: "new tower",
                                      motherboard: "new motherboard",
                                      cpu: "new cpu",
                                      cpu_cooler: "new cpu cooler",
                                      gpu: "new gpu",
                                      memory: "new memory",
                                      storage: "new storage",
                                      power_supply: "new power supply"
                                    ) }

        it "initializes with correct name" do
          expect(computer.name).to eq("bryes pc")
        end

        it "initializes with correct tower" do
          expect(computer.tower).to eq("new tower")
        end

        it "initializes with correct mother board" do
          expect(computer.motherboard).to eq("new motherboard")
        end

        it "initializes with correct cpu" do
          expect(computer.cpu).to eq("new cpu")        
        end

        it "initializes with correct cpu cooler" do
          expect(computer.cpu_cooler).to eq("new cpu cooler")
        end

        it "initializes with correct gpu" do
          expect(computer.gpu).to eq("new gpu")
        end

        it "initializes with correct memory" do
          expect(computer.memory).to eq("new memory")
        end

        it "initializes with correct storage" do
          expect(computer.storage).to eq("new storage")
        end

        it "initializes with correct power supply" do
          expect(computer.power_supply).to eq("new power supply")
        end
      end

      context "when no parts given" do
        let(:computer) { Computer.new("bryes pc") }

        it "initializes with no tower" do
          expect(computer.tower).to eq(nil)
        end

        it "initializes with no mother board" do
          expect(computer.motherboard).to eq(nil)
        end

        it "initializes with no cpu" do
          expect(computer.cpu).to eq(nil)        
        end

        it "initializes with no cpu cooler" do
          expect(computer.cpu_cooler).to eq(nil)
        end

        it "initializes with no gpu" do
          expect(computer.gpu).to eq(nil)
        end

        it "initializes with no memory" do
          expect(computer.memory).to eq(nil)
        end

        it "initializes with no storage" do
          expect(computer.storage).to eq(nil)
        end

        it "initializes with no power supply" do
          expect(computer.power_supply).to eq(nil)
        end

      end
    end
  end

  describe "compatible_cpu?" do

    let(:computer) {Computer.new(name: "test computer")}

    context "when compatible" do
      before do
        computer.cpu = Cpu.new(socket_type: "AM4")
        computer.motherboard = Motherboard.new(socket_type: "AM4")
      end

      it "returns true" do
        expect(computer.compatible_cpu?).to eq(true)
      end
    end

    context "when not compatible" do
      before do
        computer.cpu = Cpu.new(socket_type: "AM4")
        computer.motherboard = Motherboard.new(socket_type: "LGA1151")
      end

      it "returns false" do
        expect(computer.compatible_cpu?).to eq(false)
      end
    end
  end
end