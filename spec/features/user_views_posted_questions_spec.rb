require 'rails_helper'
feature "User views posted questions" do

  scenario "view recently posted questions" do
    question = Question.create(title: "Question1dkjhawdkhawdhawdkljahwdaklwjdhaw12345678901112111314djlhalawdawd", description: "Warning: You're using Rubygems 2.0.14 with Spring. Upgrade to at least Rubygems 2.1.0 and run `gem pristine --all` for better startup performance.
Could not find generator 'spec:install'. Maybe you meant 'rspec:install' or 'rspec:model' or 'rspec:feature'")
    visit '/'
    expect(page).to have_content(question.title)
  end
end
