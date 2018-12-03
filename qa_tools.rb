require 'selenium-webdriver'

class SeleniumQAToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field_name = 'firstname'
    @last_name_field_name = 'lastname'
    @sex_field = 'sex-1'
    @years_field ='exp-1'
    @date_field_name = 'datepicker'
    @proffesion_field = 'profession-0'
    @tool_field ='tool-1'
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def current_url
    @chrome_driver.current_url
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:name, @first_name_field_name).attribute('value')
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @last_name_field_name).send_keys(text)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:name, @last_name_field_name).attribute('value')
  end

  def input_sex_field
    @chrome_driver.find_element(:id, @sex_field).click
  end

  def get_sex_value
    @chrome_driver.find_element(:id, @sex_field).selected?
  end

  def input_years_of_experience_value
    @chrome_driver.find_element(:id, @years_field).click
  end

  def get_years_of_experience_value
    @chrome_driver.find_element(:id, @years_field).selected?
  end

  def input_date_field(text)
    @chrome_driver.find_element(:id, @date_field_name).send_keys(text)
  end

  def get_date_field_value
    @chrome_driver.find_element(:id, @date_field_name).attribute('value')
  end

  def input_proffesion_value
    @chrome_driver.find_element(:id, @proffesion_field).click
  end

  def get_proffesion_value
    @chrome_driver.find_element(:id, @proffesion_field).selected?
  end

  def input_automation_tool_value
    @chrome_driver.find_element(:id, @tool_field).click
  end

  def get_automation_tool_value
    @chrome_driver.find_element(:id, @tool_field).selected?
  end

  def input_continents_value
    dropDownMenu = @chrome_driver.find_element(:class, 'input-xlarge')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Europe')
  end

  def get_continents_value
    @chrome_driver.find_element(:class, 'input-xlarge').text.include?('Europe')
  end

  def input_selenium_commands_value
    dropDownMenu2 = @chrome_driver.find_element(:id, 'selenium_commands')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu2)
    option.select_by(:text, 'Wait Commands')
  end

  def get_selenium_commands_value
    @chrome_driver.find_element(:id, 'selenium_commands').text.include?('Wait Commands')
  end

end
