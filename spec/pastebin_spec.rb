RSpec.describe Pastebin do
  let(:pastebin) { Pastebin::API.new }
  it "has a version number" do
    expect(Pastebin::VERSION).not_to be nil
  end

  it "Get list of recent pastes" do
    expect(pastebin.recent).not_to be nil
  end

  it "Get a specific paste" do
    expect(pastebin.get_paste('4crx1G5N')).not_to be nil
  end
end
