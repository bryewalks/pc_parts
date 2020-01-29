require_relative '../spec_helper'

module PcParts
  describe Computer do
    describe "#initialize" do
      context "when parts given" do
        let(:computer) { Computer.new(
                                      "bryes pc",
                                      case: "new case",
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

        it "initializes with correct case" do
          expect(computer.case).to eq("new case")
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

        it "initializes with no case" do
          expect(computer.case).to eq(nil)
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
end