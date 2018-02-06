# -- Metadata -- #

# Generally refers to “data about data”. In RSpec, this means data about your
# describe, context and it blocks.
RSpec.describe "An Example Group with a metadata variable", :foo => 17 do
  context 'and a context with another variable', :bar => 12 do

    it 'can access the metadata variable of the outer Example Group' do |example|
      expect(example.metadata[:foo]).to eq(17)
    end

    it 'can access the metadata variable in the context block' do |example|
      expect(example.metadata[:bar]).to eq(12)
    end

  end
end

# Metadata provides a way to assign variables at various scopes within your RSpec
# files. The example.metadata variable is a Ruby hash which contains other
# information about your Examples and Example groups.
RSpec.describe "An Example Group with a metadata variable", :foo => 17 do
  context 'and a context with another variable', :bar => 12 do

    it 'can access the metadata variable in the context block' do |example|
      expect(example.metadata[:foo]).to eq(17)
      expect(example.metadata[:bar]).to eq(12)
      example.metadata.each do |k,v|
        puts "#{k}: #{v}"
    end

  end
end
