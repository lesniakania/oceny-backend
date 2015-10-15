shared_examples "Submission" do |factory, relation|
  describe "mapping" do
    let(:first_name) { 'Ania' }

    let!(:submission_hash) do
      create(:submissions, factory, first_name: first_name)
    end

    it "retrieves pending submission" do
      submission = rom.relation(:submissions)
        .as(relation).first

      expect(submission.first_name).to eq(first_name)
    end

    it "updates submission correctly" do
      rom.command(:submissions).update.by_id(submission_hash[:id])
        .call(first_name: 'Tomek')
      submission = rom.relation(:submissions).by_id(submission_hash[:id])
        .as(relation).first

      expect(submission.first_name).to eq('Tomek')
    end
  end
end
