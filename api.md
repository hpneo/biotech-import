```http
POST http://biotech-import.herokuapp.com/login
Content-Type: application/json

{
  "user": {
    "username": "garyfimo",
    "password": "g4ryf1m0",
    "token": "1234567890"
  }
}

{
  "status": 200,
  "message": "Login correcto",
  "authorization": "TOKEN"
}
```

```http
GET http://biotech-import.herokuapp.com/product_types
Authorization: TOKEN
Content-Type: application/json

{
  "status": 200,
  "product_types": [
      {
        "id": 1,
        "name": "Planchas",
        "description": "",
        "has_dimensions": false,
        "created_at": "2017-09-19T03:35:50.000Z",
        "updated_at": "2017-09-19T03:35:50.000Z"
      }
  ]
}
```

```http
GET http://biotech-import.herokuapp.com/products
GET http://biotech-import.herokuapp.com/products?product_type_id=2
Authorization: TOKEN
Content-Type: application/json

{
  "status": 200,
  "products": [
    {
      "id": 1,
      "product_type_id": 1,
      "name": "Plancha 1x1",
      "quantity": 10,
      "width": "1.0",
      "height": "1.0",
      "thickness": "0.2",
      "created_at": "2017-09-19T03:36:55.000Z",
      "updated_at": "2017-09-19T03:44:05.000Z"
    },
    {
      "id": 2,
      "product_type_id": 1,
      "name": "Plancha 30x40cm",
      "quantity": 10,
      "width": "0.3",
      "height": "0.4",
      "thickness": "0.2",
      "created_at": "2017-09-19T03:42:57.000Z",
      "updated_at": "2017-09-19T03:43:55.000Z"
    }
  ]
}
```

```http
POST http://biotech-import.herokuapp.com/contacts
Authorization: TOKEN
Content-Type: application/json
Accept: application/json

{
  "contact": {
    "fullname": "Gustavo Leon",
    "phone": "555123456",
    "address": "Calle Uno #123"
  }
}

{
  "status": 200,
  "message": "Contacto creado correctamente",
  "contact": {
    id: 1,
    "fullname": "Gustavo Leon",
    "phone": "555123456",
    "address": "Calle Uno #123"
  }
}
```

```http
POST http://biotech-import.herokuapp.com/sales
Authorization: TOKEN
Content-Type: application/json
Accept: application/json

{
  "sale": {
    "product_id": 1,
    "contact_id": 1,
    "quantity": 1,
    "price": 5.5
  }
}

{
  "status": 200,
  "message": "Venta creada correctamente"
}
```