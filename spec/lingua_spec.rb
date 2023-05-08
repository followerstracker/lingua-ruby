require "spec_helper"
require "lingua"

RSpec.describe Lingua do
  describe ".detect_language" do
    it "detects the language of a given text" do
      text = "This is a sample text in English."
      result = Lingua.detect_language(text)
      expect(result).to eq("english")
    end

    it "detects the language of a given text" do
      text = "Este es un texto de muestra en inglés."
      result = Lingua.detect_language(text)
      expect(result).to eq("spanish")
    end
  end
end
