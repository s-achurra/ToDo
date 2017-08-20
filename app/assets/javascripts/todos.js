const newSection = document.querySelector(".new");
const editSection = document.querySelector(".edit");
const editForm = document.querySelector(".edit-form");
const titleField = editForm.querySelector(".edit-form input[name='todo[title]']");
const dueDateField = editForm.querySelector(".edit-form input[name='todo[due_date]']");
const detailsField = editForm.querySelector(".edit-form textarea[name='todo[details]']");

function setupEditForm(id, title, due_date, details) {
  newSection.classList.add("hidden");
  editSection.classList.remove("hidden");
  titleField.value = title.replace(/&#39;/g, "'").replace(/<br><br>/g, "\n")
  dueDateField.value = due_date
  detailsField.value = details.replace(/&#39;/g, "'").replace(/<br><br>/g, "\n")
  editForm.classList.remove("hidden");
  editForm.action = `${window.location.origin}/todos/${id}`
}

function cancelEdit(e) {
  e.preventDefaults();
  newSection.classList.remove("hidden");
  editSection.classList.add("hidden");
}

function cleanURL() {
  window.history.pushState("","",window.location.origin);
}

document.addEventListener("DOMContentLoaded", cleanURL);
