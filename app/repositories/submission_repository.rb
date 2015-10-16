class SubmissionRepository < ROM::Repository::Base
  relations :submissions, :marks

  def with_marks
    submissions.left_join(:marks, submission_id: :id)
  end
end
