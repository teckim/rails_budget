require 'rails_helper'

RSpec.describe 'Groups', type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'Index' do
    before(:all) do
      @user = User.first
      @groups = @user.groups
    end

    before(:each) do
      login_as(@user, scope: :user)
    end

    it 'shows all the properties (name, icon) of each group' do
      visit groups_path

      @groups.each do |group|
        expect(page).to have_text(group.name)
        expect(page).to have_text(group.total_amount)
        expect(page).to have_css("img[src*=\"#{group.icon}\"]")
      end
    end

    it 'redirects to the group deals page when clicking the group card' do
      visit groups_path

      group = @groups[0]
      page.find_by_id("group_link_#{group.id}").click

      expect(page).to have_current_path group_deals_path(group)
    end
  end
end
