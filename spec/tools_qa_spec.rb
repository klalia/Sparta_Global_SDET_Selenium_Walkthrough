describe 'testing the demo registration page' do

  before(:all) do
    @driver_class = SeleniumQAToolsForm.new
    @driver_class.visit_practice_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
    @name = 'Keerat'
    @lastname = 'Lalia'
    @date = '12/12/2012'
    @continent = 'Europe'
  end

  it "should land on the registration page" do
    expect(@driver_class.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
  end

  it "should accept a first name" do
    @driver_class.input_firstname_field(@name)
    expect(@driver_class.get_first_name_field_value).to eq @name
  end

  it "should accept a last name" do
    @driver_class.input_lastname_field(@lastname)
    expect(@driver_class.get_last_name_field_value).to eq @lastname
  end

  it "should accpet a gender" do
    @driver_class.input_sex_field
    expect(@driver_class.get_sex_value).to be true
  end

  it "should accept years of experience" do
    @driver_class.input_years_of_experience_value
    expect(@driver_class.get_years_of_experience_value).to be true
  end

  it "should accept a date" do
    @driver_class.input_date_field(@date)
    expect(@driver_class.get_date_field_value).to eq @date
  end

  it "should accept a proffesion" do
    @driver_class.input_proffesion_value
    expect(@driver_class.get_proffesion_value).to be true
  end

  it "should accept a automation tool" do
    @driver_class.input_automation_tool_value
    expect(@driver_class.get_automation_tool_value).to be true
  end

  it "should accept a continenet" do
    @driver_class.input_continents_value
    expect(@driver_class.get_continents_value).to be true
  end

  it "should accept a selenium command" do
    @driver_class.input_selenium_commands_value
    expect(@driver_class.get_selenium_commands_value).to be true
    sleep 3
  end

end
