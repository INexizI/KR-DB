import { Controller } from 'stimulus'
import { FetchRequest } from '@rails/request.js'

export default class extends Controller {
  connect() {
    console.log('Connected!')
  }
}
