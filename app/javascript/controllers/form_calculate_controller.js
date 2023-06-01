import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-calculate"
export default class extends Controller {
  static targets = ["totalprice", "start", "end"]
  static values = { price: String }
  connect() {
  }
  test() {
    const startDate= Date.parse(this.startTarget.value);
    const endDate= Date.parse(this.endTarget.value);
    const difDate= (endDate - startDate) / 60000 / 24 / 60
    const total= parseInt(this.priceValue) * difDate;
    this.totalpriceTarget.value = total;
  }
  setValue(event) {
    event.preventDefault()
    const startDate= Date.parse(this.startTarget.value);
    const endDate= Date.parse(this.endTarget.value);
    const difDate= (endDate - startDate) / 60000 / 24 / 60
    const total= parseInt(this.priceValue) * difDate;
    this.totalpriceTarget.value = total
  }
}
