require 'rspec'

require_relative 'flatten'

describe 'Flatten' do
  it 'should combine nested arrays into a single flat array' do
    input = [
        [
            [7, 5, 3], [52, 2]
        ],
        [
            [45, 467]
        ]
    ]

    flattened = flatten(input)

    expect(flattened).to eq([7, 5, 3, 52, 2, 45, 467])
  end
end