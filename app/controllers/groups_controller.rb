class GroupsController < MainController
  def index
    @groups = current_user.groups.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(group_params)

    if @group.save
      redirect_to root_path, notice: 'Group created successfully!'
    else
      render :new, status: 422
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
