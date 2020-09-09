require_relative '../lib/cat.rb'

describe Cat do

    let(:cat) {Cat.new}
    context '#initialize' do
        it 'creates new cat_curiosities instance' do
            expect(cat.cat_curiosities.class).to eql(Array)
        end
    end
    
end