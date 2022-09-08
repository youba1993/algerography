require 'algerography'

describe Algerography::French do
    it "prints code ,city ,area ,districts of all cities" do  
      expect(Algerography::French.all_data_cities).to be_a_kind_of(Array)
    end
  end

describe Algerography::French do
    it "prints array of all the cities names " do 
      expect(Algerography::French.cities_names.length).to eq(58)
    end
  end


