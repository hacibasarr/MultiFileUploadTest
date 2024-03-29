﻿<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiFileUpload.aspx.cs" Inherits="MultiFileUploadTest.MultiFileUpload" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title></title>
    <style>

*,
*:after,
*:before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.clearfix:before,
.clearfix:after {
	display: table;
	content: '';
}

.clearfix:after {
	clear: both;
}

body {
	font-family: Avenir, 'Helvetica Neue', 'Lato', 'Segoe UI', Helvetica, Arial, sans-serif;
	color: #4b0f31;
	
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

a {
	outline: none;
	color: #d3394c;
	text-decoration: none;
}

a:hover,
a:focus {
	color: #722040;
}

.hidden {
	position: absolute;
	overflow: hidden;
	width: 0;
	height: 0;
	pointer-events: none;
}

h1{
	text-align: center;
}
/* Content */

.content {
	width: 100%;
	max-width: 800px;
	text-align: center;
	margin: 0 auto;
	padding: 0 0 3em 0;
}

.content footer {
	color: #b39295;
	margin-top: 40px;
}

.content footer a:hover,
.content footer a:focus {
	color: #4b0f31;
}

.box {
	background-color: #fbfbfb;
	padding: 6.25rem 1.25rem;
}

.box + .box {
	margin-top: 2.5rem;
}


.inputfile {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;   
    overflow: hidden;
    position: absolute;
    z-index: -1;
}

.inputfile + label {
    max-width: 80%;
    font-size: 1.25rem;
    font-weight: 700;
    text-overflow: ellipsis;
    white-space: nowrap;
    cursor: pointer;
    display: inline-block;
    overflow: hidden;
    padding: 0.625rem 1.25rem;
}

.no-js .inputfile + label {
    display: none;
}

.inputfile:focus + label,
.inputfile.has-focus + label {
    outline: 1px dotted #000;
    outline: -webkit-focus-ring-color auto 5px;
}


.inputfile + label svg {
    width: 1em;
    height: 1em;
    vertical-align: middle;
    fill: currentColor;
    margin-top: -0.25em;
    margin-right: 0.25em;

}

.inputfile-5 + label {
    color: #d3394c;
}

.inputfile-5:focus + label,
.inputfile-5.has-focus + label,
.inputfile-5 + label:hover {
    color: #722040;
}

.inputfile-5 + label figure {
    width: 100px;
    height: 135px;
    background-color: #d3394c;
    display: block;
    position: relative;
    padding: 30px;
    margin: 0 auto 10px;
}

.inputfile-5:focus + label figure,
.inputfile-5.has-focus + label figure,
.inputfile-5 + label:hover figure {
    background-color: #722040;
}

.inputfile-5 + label figure::before,
.inputfile-5 + label figure::after {
    width: 0;
    height: 0;
    content: '';
    position: absolute;
    top: 0;
    right: 0;
}

.inputfile-5 + label figure::before {
    border-top: 20px solid #dfc8ca;
    border-left: 20px solid transparent;
}

.inputfile-5 + label figure::after {
    border-bottom: 20px solid #722040;
    border-right: 20px solid transparent;
}

.inputfile-5:focus + label figure::after,
.inputfile-5.has-focus + label figure::after,
.inputfile-5 + label:hover figure::after {
    border-bottom-color: #d3394c;
}

.inputfile-5 + label svg {
    width: 100%;
    height: 100%;
    fill: #f1e5e6;
}
/* style 4 */

.inputfile-4 + label {
    color: #d3394c;
}

.inputfile-4:focus + label,
.inputfile-4.has-focus + label,
.inputfile-4 + label:hover {
    color: #722040;
}

.inputfile-4 + label figure {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    background-color: #d3394c;
    display: block;
    padding: 20px;
    margin: 0 auto 10px;
}

.inputfile-4:focus + label figure,
.inputfile-4.has-focus + label figure,
.inputfile-4 + label:hover figure {
    background-color: #722040;
}

.inputfile-4 + label svg {
    width: 100%;
    height: 100%;
    fill: #f1e5e6;
}
.preview-image{
    max-width:inherit;
}
.preview-image-container .row .img-preview-item{
        height: 250px;
    overflow: hidden;
    margin-top:20px;
}

    </style>
</head>

<body>
    <form id="form1" runat="server">

		<div class="container">
			<header class="codrops-header">				
				<h1>Teknoser Logo Gelecek</h1>
				
			</header>
			<div class="content">


				<div class="box">
					<input type="file" name="file-5[]" id="UploadFile" class="inputfile inputfile-4" data-multiple-caption="{count} Dosya Hazırlandı" multiple />
					<label for="UploadFile"><figure><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg></figure> <span>Dosya Seç&hellip;</span></label>
				</div>

			

			</div>					
		</div><!-- /container -->

     
        <div class="container preview-image-container">
              <div  id="imagePreviewContainer"  class="row justify-content-center ">

            
              </div>
        </div>
                   <button id="uploadButton">Yükle</button>
	
    </form>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    var selectedFiles = [];
    'use strict';


    ; (function (document, window, index) {
        var inputs = document.querySelectorAll('.inputfile');
        Array.prototype.forEach.call(inputs, function (input) {
            var label = input.nextElementSibling,
                labelVal = label.innerHTML;

            input.addEventListener('change', function (e) {
                var fileName = '';
                if (this.files && this.files.length > 1) {
                    if (this.files && this.files.length > 10) {
                        alert("En fazla 10 adet dosya seçebilirsiniz.");
                    }
                    else {
                        fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                        ShowFile();
                    }

                }

                else {
                    fileName = e.target.value.split('\\').pop();
                    ShowFile();
                }

                if (fileName)
                    label.querySelector('span').innerHTML = fileName;
                else
                    label.innerHTML = labelVal;
            });

            // Firefox bug fix
            input.addEventListener('focus', function () { input.classList.add('has-focus'); });
            input.addEventListener('blur', function () { input.classList.remove('has-focus'); });

        });
    }(document, window, 0));

    function ShowFile() {
       var item =  document.getElementById("UploadFile");
        selectedFiles = Array.from(item.files);
        showFilePreviews();
    }
        function showFilePreviews() {
            var previewContainer = $("#imagePreviewContainer");
            var counter = 0;
            selectedFiles.forEach(function (file) {
                var reader = new FileReader();
                reader.onload = function (e) {

                    var img = document.getElementsByClassName("img-preview-item-" + counter);
                    img.src = e.target.result;
                    var cont = document.createElement("div");
                    cont.classList.add("img-preview-item");
                    cont.classList.add("col-lg-2");
                    cont.classList.add("col-md-6");
                    cont.setAttribute("sequence", counter)
                    var img = document.createElement("img");
                    img.src = e.target.result;
                    img.classList.add("preview-image");
                    cont.append(img);
                    previewContainer.append(cont);
                    counter = counter + 1;
                };
                reader.readAsDataURL(file);
            });
        }

        function uploadFiles(files) {
            var currentFileIndex = 0;

            function uploadNextFile() {
                if (currentFileIndex < files.length) {
                    var file = files[currentFileIndex];
                    var formData = new FormData();
                    formData.append("image", file);

                    $.ajax({
                        url: "API_URL",
                        type: "POST",
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function (response) {
                            currentFileIndex++;
                            uploadNextFile();
                        },
                        error: function (xhr, status, error) {
                        }
                    });
                }
            }
            uploadNextFile();
        }
  


    $(document).ready(function () {
        var counter = 0;
        for (var item = 0; item < 10; item++) {
            var previewContainer = $("#imagePreviewContainer");
            var cont = document.createElement("div");
            cont.classList.add("img-preview-item");
            cont.classList.add("img-preview-item-"+counter);
            cont.classList.add("col-lg-2");
            cont.classList.add("col-md-6");
            cont.setAttribute("sequence", counter);

            var img = document.createElement("img");
            img.src = "file/empty.svg";
            img.classList.add("preview-image");
            cont.append(img);
            previewContainer.append(cont);
            counter = counter + 1;
        }

    });
</script>
</html>
