require 'rails_helper'

feature "User views question details" do
  scenario "User click on question, views details" do
    question = Question.create(title: "Question1dkjhawdkhawdhawdkljahwdaklwjdhaw12345678901112111314djlhalawdawd", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec tellus augue. Phasellus posuere leo turpis, ac facilisis sem mollis et. Pellentesque leo velit, vulputate sed nibh eget, tristique sodales sem. Vestibulum commodo dolor bibendum consequat rutrum. Sed euismod vestibulum lectus. Aliquam tempor ornare lacus, nec semper leo bibendum id. Aenean dictum mollis ligula ac imperdiet. Sed consectetur turpis a ex semper posuere. Sed aliquam justo tempor arcu pretium, nec porttitor neque placerat. Nullam eros quam, imperdiet a mattis eu, finibus at nisi. Vivamus mauris odio, laoreet ac feugiat eu, imperdiet ac enim. Curabitur dui risus, maximus ultrices scelerisque vel, pretium fermentum arcu. Aliquam quis ultricies quam. Curabitur ullamcorper augue in lacus pellentesque facilisis. Sed ac fringilla erat. Proin sit amet mauris nec elit mattis tempor non vitae odio.")
    visit question_path(question)
    expect(page).to have_content(question.description)
    expect(page).to have_content(question.title)
  end
end
