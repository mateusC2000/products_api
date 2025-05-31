# 📦 Products API

Esta é a API de produtos da aplicação, responsável por fornecer os dados e operações relacionadas aos produtos. Ela serve como **backend da aplicação `product-frontend`**, oferecendo endpoints RESTful para listagem, criação, atualização e exclusão de produtos.

---

## 🚀 Funcionalidades

- Listar todos os produtos
- Visualizar um produto específico
- Criar novos produtos
- Atualizar produtos existentes
- Excluir produtos

---

## 🔗 Endpoints

| Método | Endpoint               | Descrição               |
|--------|------------------------|--------------------------|
| GET    | `/api/v1/products`     | Lista todos os produtos |
| GET    | `/api/v1/products/:id` | Mostra um produto       |
| POST   | `/api/v1/products`     | Cria um novo produto    |
| PUT    | `/api/v1/products/:id` | Atualiza um produto     |
| DELETE | `/api/v1/products/:id` | Exclui um produto       |

### 📝 Parâmetros esperados no corpo da requisição (JSON)

```json
{
  "product": {
    "name": "Nome do Produto",
    "price": 199.99,
    "sku": "ABC123"
  }
}
```

### 🧱 Stack

- Ruby on Rails 7.2.2

- PostgreSQL 15

- Docker + Docker Compose

### 📦 Gems principais

- pg – Conector PostgreSQL

- puma – Web server

- bootsnap – Aceleração de boot

- rack-cors – Suporte a CORS

### 📦 Gems de desenvolvimento e testes

- rspec-rails – Testes unitários e de integração

- factory_bot_rails – Fábricas para testes

- capybara – Testes de interface

- shoulda-matchers – Matchers para testes Rails

- rubocop-rails-omakase – Linter e análise estática

- brakeman – Scanner de segurança

## 🐳 Iniciando com Docker

- git clone https://github.com/mateusC2000/products_api
- cd products_api
- docker compose up --build

