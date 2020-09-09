require_relative '../lib/cat.rb'

describe Cat do

    let(:cat) {Cat.new}
    context '#initialize' do
        it 'creates a new Cat instance cat_curiosities' do
            expect(cat.cat_curiosities.class).to eql(Array)
        end
    end
    
end