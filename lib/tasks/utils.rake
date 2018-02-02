namespace :utils do
  desc "Gera usuários aleatórios"
  task setup_users: :environment do
    10.times do |i|
      user_nome = Faker::Name.nome
      user = "#{user_nome}"
      puts "Cadastrando #{user}"
      User.create(nome: user_nome)
    end
  end

end
