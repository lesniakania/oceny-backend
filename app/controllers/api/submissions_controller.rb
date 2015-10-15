module Api
  class SubmissionsController < ApiController
    def pending
      render json: submissions.as(:pending_submissions).to_a
    end

    def evaluated
      render json: submissions.as(:evaluated_submissions).to_a
    end

    def rejected
      render json: submissions.as(:rejected_submissions).to_a
    end

    def show
      render json: submissions.by_id(params[:id]).first
    end

    private

    def submissions
      rom.relation(:submissions)
    end
  end
end
