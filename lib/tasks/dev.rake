namespace :dev do

    desc "Setup Development"
    task setup: :environment do
  
      puts "Executando o setup para desenvolvimento..."
  
      puts "APAGANDO BD... #{%x(rake db:drop:_unsafe)}"
  
      puts "CRIANDO BD... #{%x(rake db:create)}"
      puts %x(rake db:migrate)
      puts %x(rake db:seed)
      puts %x(rake dev:generate_users)
  
      puts "Setup completado com sucesso!"
    end
  
    #################################################################
  
    desc "Cria USUARIOS Fake"
    task generate_users: :environment do
      puts "Cadastrando USUARIOS..."
  
      10.times do
        User.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          password: "123456",
          password_confirmation: "123456",
        )
      end
      puts "USUARIOS cadastrados com sucesso!"
    end
end

