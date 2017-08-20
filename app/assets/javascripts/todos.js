const newSection = document.querySelector(".new");
const editSection = document.querySelector(".edit");
const editForm = document.querySelector(".edit-form");

function setupEditForm(id, title, due_date, details) {
  newSection.classList.add("hidden");
  editSection.classList.remove("hidden");
  editForm.querySelector(".edit-form input[name='todo[title]']").value = title
  editForm.querySelector(".edit-form input[name='todo[due_date]']").value = due_date
  editForm.querySelector(".edit-form textarea[name='todo[details]']").value = details
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
