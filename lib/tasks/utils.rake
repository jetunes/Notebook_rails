namespace :utils do
  desc "Popular BD"
  task seed: :environment do
	puts "Gerando os contatos via utils"
	10.times do |i|
		Contact.create!(name: Faker::Name.name, 
						email: Faker::Internet.email, 
						kind: Kind.all.sample, 
						rmk: LeroleroGenerator.sentence([1,2,3,4,5].sample))
	end
	puts "Contatos gerados"

	puts "Gerando os Endereços via utils"
	Contact.all.each do |_contact|
		Adrress.create!(street: Faker::Address.street_address, 
						city: Faker::Address.city, 
						state: Faker::Address.state_abbr, 
						contact: _contact)
	end
	puts "Endereços gerados"


	puts "Gerando os Telefones via utils"
	Contact.all.each do |_contact|
		Random.rand(1..5).times do |i|
			Phone.create!(phone: Faker::PhoneNumber.phone_number, 
						  contact: _contact)
		end
	end
	puts "Telefones gerados"

  end

end
