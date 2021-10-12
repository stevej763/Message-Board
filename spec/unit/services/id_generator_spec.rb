require 'services/id_generator'

describe IdGenerator do
  describe '#generate_id' do
    it 'generates a random 8 digit long numeric ID' do
      expect(IdGenerator.generate_id.digits.length).to eq 8
    end
  end
end