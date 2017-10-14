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
POST http://biotech-import.herokuapp.com/products
Authorization: TOKEN
Content-Type: application/json
Accept: application/json

{
  "product": {
    "product_type_id": 1,
    "name": "Plancha 30x40cm",
    "quantity": 10,
    "width": "0.3",
    "height": "0.4",
    "thickness": "0.2"
  }
}

{
  "status": 200,
  "message": "Producto creado correctamente",
  "contact": {
    "id": 1,
    "product_type_id": 1,
    "name": "Plancha 30x40cm",
    "quantity": 10,
    "width": "0.3",
    "height": "0.4",
    "thickness": "0.2",
    "created_at": "2017-09-19T03:42:57.000Z",
    "updated_at": "2017-09-19T03:43:55.000Z"
  }
}
```

```http
PATCH http://biotech-import.herokuapp.com/products/1
Authorization: TOKEN
Content-Type: application/json
Accept: application/json

{
  "product": {
    "quantity": 20
  }
}

{
  "status": 200,
  "message": "Producto actualizado correctamente",
  "contact": {
    "id": 1,
    "product_type_id": 1,
    "name": "Plancha 30x40cm",
    "quantity": 20,
    "width": "0.3",
    "height": "0.4",
    "thickness": "0.2",
    "created_at": "2017-09-19T03:42:57.000Z",
    "updated_at": "2017-09-19T03:43:55.000Z"
  }
}
```

```http
GET http://biotech-import.herokuapp.com/contacts
Authorization: TOKEN
Content-Type: application/json

{
  "status": 200,
  "contacts": [
    {
      "id": 1,
      "fullname": "Gustavo Leon",
      "phone": "555123456",
      "address": "Calle Uno #123",
      "created_at": "2017-09-19T03:36:55.000Z",
      "updated_at": "2017-09-19T03:44:05.000Z"
    },
    {
      "id": 2,
      "fullname": "Gary Figuerola",
      "phone": "555789900",
      "address": "Calle Dos #456",
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
    "id": 1,
    "fullname": "Gustavo Leon",
    "phone": "555123456",
    "address": "Calle Uno #123",
    "created_at": "2017-09-19T03:42:57.000Z",
    "updated_at": "2017-09-19T03:43:55.000Z"
  }
}
```

```http
GET http://biotech-import.herokuapp.com/sales
Authorization: TOKEN
Content-Type: application/json

{
  "status": 200,
  "sales": [
    {
      "id": 3,
      "quantity": 1,
      "price": "5.5",
      "product": {
        "id": 1,
        "product_type_id": 1,
        "name": "Plancha 1x1",
        "quantity": 8,
        "width": "1.0",
        "height": "1.0",
        "thickness": "0.2",
        "created_at": "2017-09-19T03:36:55.000Z",
        "updated_at": "2017-10-14T22:17:53.000Z"
      },
      "contact": {
        "id": 1,
        "fullname": "Gustavo Leon",
        "phone": "555123456",
        "address": "Calle Uno #123",
        "created_at": "2017-09-19T03:50:31.000Z",
        "updated_at": "2017-09-19T03:50:31.000Z"
      },
      "user": {
        "id": 1,
        "username": "hpneo",
        "created_at": "2017-09-17T19:49:56.000Z",
        "updated_at": "2017-09-17T19:49:56.000Z",
        "token": "1234567890"
      }
    },
    {
      "id": 4,
      "quantity": 1,
      "price": "5.5",
      "product": {
        "id": 1,
        "product_type_id": 1,
        "name": "Plancha 1x1",
        "quantity": 8,
        "width": "1.0",
        "height": "1.0",
        "thickness": "0.2",
        "created_at": "2017-09-19T03:36:55.000Z",
        "updated_at": "2017-10-14T22:17:53.000Z"
      },
      "contact": {
        "id": 1,
        "fullname": "Gustavo Leon",
        "phone": "555123456",
        "address": "Calle Uno #123",
        "created_at": "2017-09-19T03:50:31.000Z",
        "updated_at": "2017-09-19T03:50:31.000Z"
      },
      "user": {
        "id": 1,
        "username": "hpneo",
        "created_at": "2017-09-17T19:49:56.000Z",
        "updated_at": "2017-09-17T19:49:56.000Z",
        "token": "1234567890"
      }
    }
  ]
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