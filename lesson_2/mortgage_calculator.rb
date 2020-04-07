require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_message.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt(MESSAGES['welcome'])

loop do
  loan_amount = ''
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = Kernel.gets().chomp()
    if loan_amount.to_i() < 0 || loan_amount.empty?()
      Kernel.puts("Must enter a positive number.")
    else
      break
    end
  end

  annual_percentage_rate = ''
  loop do
    prompt(MESSAGES['APR'])
    prompt(MESSAGES['APR_example'])
    annual_percentage_rate = Kernel.gets().chomp()
    if annual_percentage_rate.to_f() < 0 || annual_percentage_rate.empty?()
      Kernel.puts("Must enter a positive number.")
    else
      break
    end
  end

  year_loan_duration = ''
  loop do
    prompt(MESSAGES['year_loan_duration'])
    year_loan_duration = Kernel.gets().chomp()
    if year_loan_duration.to_i() < 0 || year_loan_duration.empty?()
      Kernel.puts("Must enter a positive number.")
    else
      break
    end
  end

  m_percentage_rate = ((annual_percentage_rate.to_f / 100) / 12)
  m_loan_duration = (year_loan_duration.to_i * 12)

  monthly_mortgage_payment =  loan_amount.to_i *
                              (m_percentage_rate /
                              (1 - (1 + m_percentage_rate)**(-m_loan_duration)))

  prompt("Your monthly payment is $#{monthly_mortgage_payment}!")

  prompt(MESSAGES['again'])
  prompt(MESSAGES['again_example'])
  repeat = Kernel.gets().chomp()
  break unless repeat.downcase().start_with?('yes')
end

prompt(MESSAGES['goodbye'])
