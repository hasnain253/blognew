import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  delete(event) {
    let confirmed = ("Are You Sure")
    if(!confirmed){
      event.preventDefault()

      }
    }


}
