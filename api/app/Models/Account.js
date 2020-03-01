'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Account extends Model {

    direction(){
        return this.hasOne('App/Models/Direction')
    }

}

module.exports = Account
