
RSpec.describe 'firetruck' do
  it 'starts with fire and ends with truck' do
    expect(subject).to start_with("fire").and end_with("truck")
  end
end

RSpec.describe 20 do
    def times
        'Something to return'
    end
    it 'responds to the times_method class' do
        expect(subject).to respond_to(:times).and be_even
    end
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
    it { is_expected.to include(42).and start_with([4, 8, 15]) }
end
