'use strict'

/*
|--------------------------------------------------------------------------
| UserSeeder
|--------------------------------------------------------------------------
|
| Make use of the Factory instance to seed database with dummy data or
| make use of Lucid models directly.
|
*/

/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')
const Database = use('Database')
const Hash = use('Hash')
const date = Database.fn.now()

class UserSeeder {
  async run() {

    await Database.table('users').insert([
      {
        cellphone: "5657585960",
        email: "test1@mail.com",
        password: await Hash.make("123456"),
        name: "Rosalia",
        last_name: "Quince",
        second_name: "Hackoat",
        created_at: date,
        updated_at: date,
      },
      {
        cellphone: 5152535455,
        email: "test2@mail.com",
        password: await Hash.make("123456"),
        name: "Omar",
        last_name: "Dos",
        second_name: "Hackoat",
        created_at: date,
        updated_at: date,
      }
    ])

    await Database.table('accounts').insert([
      {
        cis: 9107951,
        client: "ROSALIA QUINCE HACKAOAT",
        user_id: 1,
        created_at: date,
        updated_at: date,
      },
      {
        cis: 9141882,
        client: "OMAR DOS HACKAOAT",
        user_id: 2,
        created_at: date,
        updated_at: date,
      }
    ])

    await Database.table('directions').insert([
      {
        dda: 4077641280,
        saldo: 300,
        subpr: 23,
        account_id: 1,
        created_at: date,
        updated_at: date,
      },
      {
        dda: 4077641298,
        saldo: 300,
        subpr: 87,
        account_id: 1,
        created_at: date,
        updated_at: date,
      },
      {
        dda: 4077641306,
        saldo: 300,
        subpr: 23,
        account_id: 2,
        created_at: date,
        updated_at: date,
      },
      {
        dda: 4077641314,
        saldo: 300,
        subpr: 87,
        account_id: 2,
        created_at: date,
        updated_at: date,
      },
    ])

  }
}

module.exports = UserSeeder
