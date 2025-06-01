require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

puts "Limpando produtos existentes..."
Product.destroy_all

puts "Criando produtos com dados variados..."

create(:product, name: "Camiseta Branca", price: 29.90)
create(:product, name: "Calça Jeans", price: 89.90)
create(:product, name: "Tênis Esportivo", price: 149.90)
create(:product, name: "Jaqueta Corta-Vento", price: 199.90)
create(:product, name: "Meias Coloridas", price: 15.00)
create(:product, name: "Boné Estampado", price: 39.90)
create(:product, name: "Mochila Casual", price: 119.00)
create(:product, name: "Relógio Digital", price: 249.90)
create(:product, name: "Óculos de Sol", price: 89.00)
create(:product, name: "Pulseira de Couro", price: 49.50)

puts "✅ Produtos criados com sucesso!"
