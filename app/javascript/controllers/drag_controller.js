import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
import { patch } from "@rails/request.js"

// Connects to data-controller="drag"
export default class extends Controller {
  static values = {
    url: String
  }

  connect() {
    // console.log(this.urlValue)
    this.sortable = Sortable.create(
      this.element, {
        handle: ".handle",
        animation: 150,
        ghostClass: "bg-blue-100",
        onEnd: this.updatePosition.bind(this)
      }
    )
  }

  updatePosition(event) {
    const id = event.item.dataset.id
    const data = new FormData()
    data.append("position", event.newIndex + 1)

    patch(
      this.urlValue.replace(":lesson_id", id),
      {
        body: data
      }
    )
  }
}
