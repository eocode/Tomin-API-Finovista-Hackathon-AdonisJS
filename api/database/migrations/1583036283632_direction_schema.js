'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class DirectionSchema extends Schema {
  up () {
    this.create('directions', (table) => {
      table.increments()
      table.integer('cid').unsigned().unique().references('cis').inTable('account')
      table.integer('dda').unsigned().unique()
      table.integer('saldo').unsigned()
      table.integer('subpr').unsigned()
      table.timestamps()
    })
  }

  down () {
    this.drop('directions')
  }
}

module.exports = DirectionSchema
