require 'json'
require './rental'
require 'pry'

module RentalStorage
  def upload_rental_data
    rental_file = File.open('./data/rental.json')
    JSON.parse(rental_file.read)
  end

  def save_rental_data(rentals)
    File.write('./data/rental.json', JSON.generate(rentals))
  end
end
