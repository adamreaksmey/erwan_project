const popup_ = () => {
    const popup = document.getElementsByClassName("popup_msg")[0];
    popup.style.display = "none";
};

$(function () {
    $("#movable-div").draggable();
});

const switch_file = () => {
    const export_form = document.getElementById("export-form");
    const default_file_btn = document.getElementById("default_file_btn");

    export_form.style.display = "block";
    default_file_btn.style.marginBottom = "23px";
};

const detectFaultFile = (event) => {
    let element_array = [];
    for (let i = 1; i < 10; i++) {
        element_array.push(document.getElementById(`confirm_${i}`));
    }

    const getFile = event.target.files[0];
    if (getFile) {
        for (let j = 0; j < element_array.length; j++){
            element_array[j].style.display = 'block'
        }
    }
};

const regex = /^[A-Z]+[1-9]\d*$/;

const inputs = document.querySelectorAll('input[type="text"]');
const process_btn = document.getElementById('confirm_10');
process_btn.style.display = 'none'; // Hide the process_btn initially

function checkAllInputsValid() {
  for (const input of inputs) {
    if (!regex.test(input.value.trim())) {
      return false;
    }
  }
  return true;
}

function updateProcessBtn() {
  if (checkAllInputsValid()) {
    process_btn.style.display = ''; // Show the process_btn
  } else {
    process_btn.style.display = 'none'; // Hide the process_btn
  }
}

inputs.forEach(input => {
  input.addEventListener('input', () => {
    let value = input.value.trim();

    // Remove whitespace from the input value
    value = value.replace(/\s/g, '');

    // Convert lowercase characters to uppercase
    value = value.toUpperCase();

    input.value = value; // Set the input value to the modified value

    if (regex.test(value)) {
      input.style.borderColor = '';
      input.style.background = '';
      console.log(`${input.id} is a valid Excel column.`);
    } else {
      input.style.borderColor = 'red';
      input.style.background = '#e7a0a0';
      console.log(`${input.id} is not a valid Excel column.`);
    }

    updateProcessBtn(); // Update the process_btn display based on the input values
  });
});