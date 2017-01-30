require 'rails_helper'
require_relative '../support/new_achievement_form'

new_achievement_form = NewAchievementForm.new
feature 'create new achievement' do
  scenario 'create new achievement with valid data' do
    new_achievement_form.visit_page.fill_in_with(
      title: 'Read a book'
    ).submit

    expect(page).to have_content('Achievement has been created')
    expect(Achievement.last.title).to eq('Read a book')

  end

  scenario 'cannot create achievement with invalid data ' do
    new_achievement_form.visit_page.submit
    expect(page).to have_content("Cant be blank")
  end


end
