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

  async axios({request}){
    const Axios = use('Axios');
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
