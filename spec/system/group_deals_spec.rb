require 'rails_helper'

RSpec.describe 'Group deals', type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'Index' do
    before(:all) do
      @user = User.first
      @group = @user.groups.first
      @deals = @group.deals
    end

    before(:each) do
      login_as(@user, scope: :user)
    end

    it 'shows all the properties (Total amount, names, amounts) of each deal' do
      visit group_deals_path(@group)

      expect(page).to have_text(@group.total_amount)
      @deals.each do |deal|
        expect(page).to have_text(deal.name)
        expect(page).to have_text(deal.amount)
      end
    end

    it 'have a button to add a new deal' do
      visit group_deals_path(@group)

      page.find_link(href: new_group_deal_path(@group)).click

      expect(page).to have_current_path new_group_deal_path(@group)
    end
  end
end
