'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URLs and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/', () => {
  return { greeting: 'App Tomin' }
})

Route.group(() => {
  Route.post('users/register', 'UserController.store')
  Route.post('users/login', 'UserController.login')
<<<<<<< HEAD
  Route.get('users/account/status', 'HsbcaccountController.getStatus')
  Route.get('users/account/status', 'HsbcaccountController.getStatus')
  Route.get('users/testRick', 'UserController.testRick')
  Route.get('users/testFetch', 'UserController.testFetch')

=======
  Route.get('users/testRick', 'UserController.testRick')
  Route.get('users/testFetch', 'UserController.testFetch')
>>>>>>> 70708dcb1ad5dc13bdd9d42624081066f8d26a13
}).prefix('api/v1')
