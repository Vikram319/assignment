# frozen_string_literal: true

#module is providing functions to check applicability of countries for some scenarios
module Predict
  def check_loan?(population, gdp, states, state)
    return true if population >= 3_000_000 && gdp >= 5 && states >= 10 && state == 'developing'

    false
  end

  def check_un_seat?(population, gdp, states, state)
    return true if population >= 100_000 && gdp >= 2000 && states >= 20 && state == 'developed'
    false
  end

  def can_win_war?(army_str, gdp) 
    return true if army_str >= 20_000 && gdp >= 5
    false
  end

end

#stores the data of each country
class Country

	include Predict

	attr_accessor :country_name, :gdp, :population, :army_strength, :states, :country_status, :country_code 
	@@total_countries = 0
	def initialize(country_name, gdp, population, army_strength, states, status)
		@country_name = country_name
		@gdp = gdp
		@population = population
		@army_strength = army_strength
		@states = states
		@country_status = status
		@@total_countries += 1
		@country_code = @@total_countries
	end

	def display_info
		puts "Country name : #{@country_name} (code : #{@country_code})"
    puts "Population : #{@population}"
    puts "GDP : #{@gdp}"
    puts "Number of States : #{@states}"
    puts "Army Strength : #{@army_strength}"
    puts "Status of #{@country_name}: #{@country_status}"
	end
end

countries = []
def create_object
	puts 'Enter country name'
	country_name = gets.chomp
	puts 'Enter country gdp'
	gdp = gets.chomp.to_f
	puts 'Enter country population'
	population = gets.chomp.to_i
	puts 'Enter country army_strength'
	army_strength = gets.chomp.to_i
	puts 'Enter states in the country'
	states =  gets.chomp.to_i
	puts 'Enter status of country (developing/developed)'
	country_status = gets.chomp
	obj = Country.new country_name, gdp, population, army_strength, states, country_status
	obj
end

c_count = 0
i = 0
loop do
	puts 'select option'.center(21,'-')
	puts '1. enter details of country'
	puts '2. show details of country'
	puts '3. check possibility of win_war/loar_from_IMF/seat_in_UN'
	puts '4. Exit'
	ch = gets.chomp.to_i
	case ch
  when 1
    countries.push(create_object)
    c_count += 1
  when 2
    puts "enter country code"
    cd = gets.chomp.to_i
    if cd > 0 && cd <= c_count
      cd -= 1
      countries[cd].display_info
    else
      puts "invalid country code"
    end
  when 3
    puts "enter country code"
    cd = gets.chomp.to_i
    if cd > 0 && cd <= c_count
      cd -= 1
      puts "\n1. Check applicable for loan from IMF"
      puts "2. Check country can have a seat in UNSC"
      puts "3. Check if country can win war"
      chk = gets.chomp.to_i
      case chk
      when 1 
        if countries[cd].check_loan? countries[cd].population, countries[cd].gdp, countries[cd].states, countries[cd].country_status
          puts "#{countries[cd].country_name} is applicable for loan"
        else
          puts "#{countries[cd].country_name} is not applicable for loan"
        end
      when 2
        if countries[cd].check_un_seat? countries[cd].population, countries[cd].gdp, countries[cd].states, countries[cd].country_status
          puts "#{countries[cd].country_name} can have a seat in UNSC"
        else
          puts "#{countries[cd].country_name} cant get a seat in UNSC"
        end
      when 3
        if countries[cd].can_win_war? countries[cd].army_strength
          puts "#{countries[cd].country_name} can win war"
        else
          puts "#{countries[cd].country_name} cannot win war"
        end
      else
        puts "invalid choice"
      end
    else
      puts "invalid country code"
    end
	  when 4
	    break
	  else
	    puts "invalid choice"
  end
end
