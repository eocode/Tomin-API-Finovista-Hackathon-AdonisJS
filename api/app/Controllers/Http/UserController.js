"use strict";
const User = use("App/Models/User");

class UserController {
  /**
   * LOGIN.
   * POST ejemplos
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async login({request, auth}) {
    const { email, password } = request.all();
    const token = await auth.attempt(email,password);
    return token;
  }

  async testRick({request}){
    const fetch = require("node-fetch");
    var a;
    await fetch('https://rickandmortyapi.com/api/character/')
    .then(response => response.json())
    .then(result => {
    	a = result;
    })
    console.log(a)
    return { a: a }
  }

  async testFetch({request}){
    var uri = "https://mwiuw3q1fj.execute-api.us-east-1.amazonaws.com/dev/v1/sandbox/checking-accounts";
    var myHeaders = {
      "X-Client": "7a12c63188f34e4ba2a788d53c0aa6b6",
      "X-User": 'TEAM8',
      "X-Password": "62fDE1473EeD4772aCb4080d3c42C546",
      "x-api-key": "JYOfFaVnQH6poDGoaOp2mamgp9emrHOm2QVCfU19",
      "id": "hello",
    };
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
    console.log(a)
    return { a: a }
  }

  /**
   * Create/save a new ejemplo.
   * POST ejemplos
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async store({ request }) {
    const { email, password } = request.all();
    console.log(email, password);
    const user = await User.create({
      email,
      password,
      username: email
    });
    return user;
  }
}

module.exports = UserController;
