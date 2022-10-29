module.exports = {
    title: 'Products Schema',
    type: 'array',
    items: {
        type: 'object',
        properties: {
            id: {
              type: 'integer'
            },
            name: {
              type: 'string'
            },
            description: {
              type: 'string'
            },
            stock: {
              type: 'integer'
            },
            price: {
              type: 'integer'
            }
          }
    }
}