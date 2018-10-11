# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


stages = ['Contato', 'Envio de proposta', 'Follow-up', 'Fechamento', 'Ganhos', 'Perdidos']
stages.each{ |stage| Stage.create!(name: stage) }

opportunities = [
  ['Serviço de Manutenção Pro', 5000, 'Nestre Alimentos', 1],
  ['Venda de Máquina XPZ500', 10000, 'ABC Industria Ltda', 1],
  ['9824 - Maquina Multi Impressão', 7500, 'LIP Industria', 2],
  ['721 - Extrutura AP Compact', 8500, 'LIP Industria', 4],
]

opportunities.each do |title, value, customer, stage|
  Opportunity.create!( title: title, value: value , customer: customer , stage_id: stage )
end