document.addEventListener("DOMContentLoaded", function () {
    let intervalId = setInterval(function () {
        const hiddenEditorDiv = document.querySelector('div.tox.tox-tinymce[style*="display: none;"]');
        console.log(hiddenEditorDiv);
        if (hiddenEditorDiv !== null) {
            clearInterval(intervalId);
            hiddenEditorDiv.parentNode.removeChild(hiddenEditorDiv);
        }
    }, 1000); // Check every second, adjust the interval duration as needed
});


function tinymce_setup_callback(editor) {
    tinymce.init({
        menubar: false,
        selector: "textarea.richTextBox",
        skin_url:
            $('meta[name="assets-path"]').attr("content") +
            "?path=js/skins/voyager",
        min_height: 100,
        height: 300,
        plugins: "link, image, code, table, lists",
        extended_valid_elements:
            "input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]",
        file_browser_callback: function (field_name, url, type, win) {
            if (type == "image") {
                $("#upload_file").trigger("click");
            }
        },
        toolbar:
            "blocks bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table | code",
        convert_urls: false,
        image_caption: true,
        image_title: true,
    });
}