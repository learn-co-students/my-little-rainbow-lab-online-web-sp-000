 end

  context 'w3c validation' do
    it 'is a valid w3c document' do
      validator = W3CValidators::NuValidator.new
      html = File.read('./index.html')
      results = validator.validate_text(html)

      error_messages = "Expected a valid w3c document but got:\n#{results.errors.collect{|e| e.to_s}.join("\n")}"

      expect(results.errors).to be_empty, error_messages
    end
  end
end