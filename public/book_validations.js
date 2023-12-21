console.log("Loading book validations...");

document.getElementById("saveButton").addEventListener("click", (event) => {
  const titleEl = document.getElementById("title");
  const messageEl = document.getElementById("title-required");
  if (titleEl.value.trim() === "") {
    messageEl.innerHTML = "This field is required";
    event.preventDefault()
  } else {
    messageEl.innerHTML = "";
  }
});

console.log("Loaded book validations.");
