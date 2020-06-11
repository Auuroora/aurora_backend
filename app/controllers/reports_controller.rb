class ReportsController < ApiController
  before_action :authorize_request

  def create
    report = @current_user.reports.new report_params
    msg = (report.save) ? "신고하였습니다" : "오류가 발생하였습니다"
    render json: msg
  end

  private

  def report_params
    create_params.require(:report).permit(:category, :content, :reportable_type, :reportable_id, :user_id)
  end
end
