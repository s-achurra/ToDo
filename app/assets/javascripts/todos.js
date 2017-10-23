const newSection = document.querySelector(".new");
const editSection = document.querySelector(".edit");

const editButtons = document.querySelectorAll(".edit-button");
const editForm = document.querySelector(".edit-form");
const titleField = editForm.querySelector(".edit-form input[name='todo[title]']");
const dueDateField = editForm.querySelector(".edit-form input[name='todo[due_date]']");
const detailsField = editForm.querySelector(".edit-form textarea[name='todo[details]']");

const moreToggles = document.querySelectorAll(".more-toggle");

function createEditForm(e) {
  newSection.classList.add("hidden");
  editSection.classList.remove("hidden");

  const todo = this.parentElement.parentElement;

  titleField.value = todo.querySelector('.title').innerHTML
  dueDateField.value = todo.querySelector('.due-date').innerHTML;
  detailsField.value = (todo.querySelector('.details').innerHTML).replace(/<br>/g, "\r");
  editForm.action = `${window.location.origin}/todos/${parseInt(todo.id)}`
}

function cancelEdit(e) {
  e.preventDefaults();
  newSection.classList.remove("hidden");
  editSection.classList.add("hidden");
}

function moreToggle() {
  todo = parseInt(this.parentElement.parentElement.id);
  this.innerHTML == "More..." ? this.innerHTML = "Hide..." : this.innerHTML = "More..."
  document.getElementById(`${todo}`)
    .querySelector(".more-info")
    .classList.toggle("hidden");
}

function cleanURL() {
  window.history.pushState("","",window.location.origin);
}

moreToggles.forEach((toggle) => toggle.addEventListener("click", moreToggle));
editButtons.forEach((button) => button.addEventListener("click", createEditForm));
document.querySelector(".cancel-edit").addEventListener("click", cancelEdit);

document.addEventListener("DOMContentLoaded", cleanURL);
