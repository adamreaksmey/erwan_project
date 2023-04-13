const popup_ = () => {
    const popup = document.getElementsByClassName("popup_msg")[0];
    popup.style.display = "none";
};

$(function () {
    $("#movable-div").draggable();
});

const switch_file = () => {
    const export_form = document.getElementById('export-form');
    const default_file_btn = document.getElementById('default_file_btn');

    export_form.style.display = 'block';
    default_file_btn.style.marginBottom = '23px';
}

