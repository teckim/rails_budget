class DealsController < MainController
  before_action :fetch_group, only: %i[index show]

  def index
    @deals = @group ? @group.deals : Deal.all
    @total = @group.total_amount if @group
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.author = current_user
    @deal.group_ids = deal_params[:group_ids]

    if @deal.save
      redirect_to root_path, notice: 'Deal created successfully!'
    else
      render :new, status: 422
    end
  end

  private

  def fetch_group
    return nil unless params[:group_id]

    @group = Group.find(params[:group_id])
  end

  def deal_params
    params.require(:deal).permit(:name, :amount, group_ids: [])
  end
end
