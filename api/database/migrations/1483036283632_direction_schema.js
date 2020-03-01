'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class DirectionSchema extends Schema {
  up () {
    this.create('directions', (table) => {
      table.increments()
      table.bigInteger('dda').unsigned().unique()
      table.float('saldo').unsigned()
      table.integer('subpr').unsigned()
      table.integer('account_id').unsigned().references('id').inTable('accounts')
      table.timestamps()
    })
  }

  down () {
    this.drop('directions')
  }
}

module.exports = DirectionSchema
