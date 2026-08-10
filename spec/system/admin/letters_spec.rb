# frozen_string_literal: true

require 'rails_helper'

# app/views/admin/letters/_form.html.erb has no visible submit button - saving
# entirely depends on the jQuery + selectize widget's auto-submit-on-change behavior,
# loaded via the custom app/views/administrate/application/_javascript.html.erb. That
# makes it the single highest-risk piece of UI for an Administrate upgrade to silently
# break (jquery-ujs -> Turbo/Stimulus, changed asset bundling in 1.0) - and the only
# way to actually verify it is a real browser, since no request spec executes JS.
RSpec.describe 'Admin::Letters entity picker', :js do
  def selectize
    "jQuery('.field-unit--has-many-through-field select')[0].selectize"
  end

  it 'initializes jQuery and the selectize widget on the entities field' do
    letter = create(:letter)

    visit edit_admin_letter_path(letter)

    expect(page.execute_script('return window.jQuery !== undefined')).to be true
    expect(page).to have_css('.selectize-control')
    expect(page.execute_script("return #{selectize} !== undefined")).to be true
  end

  it 'adds an entity and persists it, without a visible submit button' do
    letter = create(:letter)
    entity = create(:person_entity, label: 'Zzz System Spec Findable Entity')
    Entity.reindex

    visit edit_admin_letter_path(letter)
    expect(page).to have_css('.selectize-control')

    page.execute_script("#{selectize}.addItem('#{entity.id}')")

    expect(page).to have_css(".item[data-value='#{entity.id}']")
    expect(letter.reload.entities).to include(entity)
  end

  it 'removes an entity after confirming, and persists the removal' do
    letter = create(:letter)
    entity = create(:person_entity, label: 'Zzz System Spec Removable Entity')
    letter.entities << entity
    letter.save!
    Entity.reindex

    visit edit_admin_letter_path(letter)
    expect(page).to have_css(".item[data-value='#{entity.id}']")

    find(".item[data-value='#{entity.id}']").click
    accept_confirm(/remove this entity/i) do
      find('.selectize-input input', visible: :all).send_keys(:backspace)
    end

    expect(page).to have_no_css(".item[data-value='#{entity.id}']")
    expect(letter.reload.entities).not_to include(entity)
  end

  it 'does not remove the entity when the confirmation is dismissed' do
    letter = create(:letter)
    entity = create(:person_entity, label: 'Zzz System Spec Kept Entity')
    letter.entities << entity
    letter.save!
    Entity.reindex

    visit edit_admin_letter_path(letter)
    expect(page).to have_css(".item[data-value='#{entity.id}']")

    find(".item[data-value='#{entity.id}']").click
    dismiss_confirm(/remove this entity/i) do
      find('.selectize-input input', visible: :all).send_keys(:backspace)
    end

    expect(page).to have_css(".item[data-value='#{entity.id}']")
    expect(letter.reload.entities).to include(entity)
  end
end
