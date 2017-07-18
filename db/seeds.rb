# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.find_by_email('gamanemim@gmail.com') || Admin.create(email: 'gamanemim@gmail.com', password: 'gamaexperience')

Profession.find_by(title: 'Programador Florestal') || Profession.create(
  title: 'Programador Florestal', 
  description: 'Sim! As árvores voltaram com tudo e você, que não é bobo nem nada, não perdeu a oportunidade e agora desenvolve softwares raizes! Oxigênio é coisa do passado, agora a árvore te faz café espresso! :)',
  image: 'http://www.freelancer-job.com/wp-content/uploads/2008/12/programmer.jpg')

Profession.find_by(title: 'Vendedor DJ') || Profession.create(
  title: 'Vendedor DJ', 
  description: 'Você vende bijouterias espaciais na SpaceBijou, localizada na Rodovia 3 após o cinturão de Orion. Sua loja não possui clientes novos desde que você cismou em colocar Wesley Safadão para tocar durante o expediente.',
  image: 'http://memeguy.com/photos/images/the-job-of-a-dj-107172.jpg')

Profession.find_by(title: 'Vendedor de Sucatas Alienígenas') || Profession.create(
  title: 'Vendedor de Sucatas Alienígenas', 
  description: 'A última invasão alien deixou vestígios por todos os lados e um bom vendedor sabe aproveitar as oportunidades. Hoje, a SucatasCorp é dona de 49% das ações da Google.',
  image: 'http://www.cuanto-gana.com/wp-content/uploads/2015/01/como-ganar-dinero-en-internet-formas-600x344.jpg')

Profession.find_by(title: 'Hacker Android') || Profession.create(
  title: 'Hacker Android', 
  description: 'Você não programa em Android, você é um android (e programa para iOS)! Que café, que nada! O negócio é óleo lubrificante fervendo!',
  image: 'http://cdn.iview.abc.net.au/thumbs/460/zx/ZX1390A012S0055650964853f19.03875694_1280.jpg')


Profession.find_by(title: 'Designer Smeagol') || Profession.create(
  title: 'Designer Smeagol', 
  description: 'No mundo paralelo também tem sobrinho fazendo "designer". Todo mundo te indicou a Gama Academy e você não fez a inscrição. Só nos resta contar as "preciosas" moedas que restaram pro fim do mês, né, migo?',
  image: 'http://www.zoinc.com.br/wp-content/uploads/2012/12/gollum.jpg')

Profession.find_by(title: 'Marketeiro na Guerra Fria') || Profession.create(
  title: 'Marketeiro na Guerra Fria', 
  description: 'Sim! Houve uma terceira guerra fria e, graças ao seu "marketing de guerrilha", a União Euromérica venceu a guerra e todos nós fomos salvos. O planeta Terra agradece, pessoa maravilhosa! <3',
  image: 'http://www.zoinc.com.br/wp-content/uploads/2012/12/gollum.jpg')


Lead.all.each do |lead|
  full_name = lead.name.split(" ")
  if(full_name.size <= 1)
    lead.name = lead.name + " " + Faker::Name.last_name
    lead.save
  end
end
