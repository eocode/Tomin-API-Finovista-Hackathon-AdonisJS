'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

/**
 * Resourceful controller for interacting with hsbcaccounts
 */

const User = use("App/Models/User");
const uri = "https://mwiuw3q1fj.execute-api.us-east-1.amazonaws.com/dev/v1/sandbox/checking-accounts";
const myHeaders = {
 "X-Client": "7a12c63188f34e4ba2a788d53c0aa6b6",
 "X-User": 'TEAM8',
 "X-Password": "62fDE1473EeD4772aCb4080d3c42C546",
 "x-api-key": "JYOfFaVnQH6poDGoaOp2mamgp9emrHOm2QVCfU19",
 "id": "hello",
};

class HsbcaccountController {

  /**
   * Show a list of all hsbcaccounts.
   * GET hsbcaccounts
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async index ({ request, response, view }) {
  }

  /**
   * Render a form to be used for creating a new hsbcaccount.
   * GET hsbcaccounts/create
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async create ({ request, response, view }) {
  }

  /**
   * Create/save a new hsbcaccount.
   * POST hsbcaccounts
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async store ({ request, response }) {
  }

  /**
   * Display a single hsbcaccount.
   * GET hsbcaccounts/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async getStatus({request}){

    const fetch = require("node-fetch");
    var a;
    await fetch(`${uri}/profile?accountNumber=4077641280`, {
      method: 'GET',
      headers: myHeaders
      // ,body: JSON.stringify('{"name": "ingo"}')
    })
    .then(response => response.json())
    .then(result => {
      a = result;
    })
    console.log(await auth.user)
    return { data: a }

  }
  

  /**
   * Render a form to update an existing hsbcaccount.
   * GET hsbcaccounts/:id/edit
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async edit ({ params, request, response, view }) {
  }

  /**
   * Update hsbcaccount details.
   * PUT or PATCH hsbcaccounts/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async update ({ params, request, response }) {
  }

  /**
   * Delete a hsbcaccount with id.
   * DELETE hsbcaccounts/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async destroy ({ params, request, response }) {
  }
}

module.exports = HsbcaccountController
