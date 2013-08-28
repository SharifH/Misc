require('sinatra')
require('sinatra/reloader')
require('json')
require('sqlite3')
require('pry')

before do
  # sqlite3 ./store3.sqlite3
  @db = SQLite3::Database.new("./store.sqlite3")
end


get('/products') do
  rs = @db.execute('SELECT * FROM products;')
  rs.map! { |row|
    h = {
      id: row[0],
      name: row[2]
    }
  }
  return rs.to_json
end

get('/products/:id') do
  id = params[:id]
  rs = @db.execute('SELECT * FROM products WHERE id = ?;', [id])
  return rs.first.to_json
end

get('/users') do
  rs = @db.execute('SELECT * FROM users;')
  rs.map! { |row|
    h = {
      id: row[0],
      name: row[2]
    }
  }
  return rs.to_json
end

get('/users/:id') do
  id = params[:id]
  rs = @db.execute('SELECT * FROM users WHERE id = ?;', [id])
  rs.map! {|row|
    h= {
      id: row[0],
      name: row[2]
    }
  }
  return rs.first.to_json
end

get('/wishlists') do
  rs = @db.execute('SELECT users.name, products.name FROM users INNER JOIN products;')   #, products, wishlists WHERE products.id = wishlists.product_id;')
  
  return rs.to_json
end
# Wishlists
# POST

