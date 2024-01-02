<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="MultiFileUploadTest.Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.0.8/css/fileinput.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700;800;900&display=swap");

        button:focus,
        input:focus {
            outline: none;
            box-shadow: none;
        }

        a,
        a:hover {
            text-decoration: none;
        }

        body {
            font-family: "Nunito", sans-serif;
        }

        .file-upload-contain {
            position: relative;
            margin-bottom: 40px;
        }

            .file-upload-contain .file-input,
            .file-upload-contain .file-preview {
                position: initial;
            }

            .file-upload-contain .file-drop-zone {
                border: 2px dashed #1e80e8;
                transition: 0.3s;
                margin: 0;
                padding: 0;
                border-radius: 20px;
                background-color: #f1f8fe;
                min-height: auto;
            }

                .file-upload-contain .file-drop-zone.clickable:hover,
                .file-upload-contain .file-drop-zone.clickable:focus,
                .file-upload-contain .file-highlighted {
                    border: 2px dashed #1e80e8 !important;
                    background-color: #dfedfc;
                }

        .upload-area i {
            color: #1e80e8;
            font-size: 50px;
        }

        .upload-area p {
            margin-bottom: 30px;
            margin-top: 30px;
            font-size: 20px;
            font-weight: 600;
            color: #2580e8;
        }

            .upload-area p b {
                color: #1e80e8;
            }

        .upload-area button {
            padding: 8px 16px;
            min-width: 150px;
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            background-color: #1e80e8;
            border: 2px solid #1e80e8;
            border-radius: 50px;
            transition: 0.3s;
        }

            .upload-area button:hover {
                background-color: #1e80e8;
                box-shadow: 0px 4px 8px rgb(37 128 232 / 48%);
            }

        .file-preview {
            padding: 0;
            border: none;
            margin-bottom: 30px;
        }

            .file-preview .fileinput-remove {
                display: none;
            }

        .file-drop-zone-title {
            padding: 55px 10px;
        }

        .file-drop-zone .file-preview-thumbnails {
            cursor: pointer;
        }

        .file-preview-frame {
            cursor: default;
            display: flex;
            align-items: center;
            border: none;
            background-color: #2580e8;
            box-shadow: none;
            border-radius: 8px;
            width: 100%;
            padding: 15px;
            margin: 8px 0px;
        }

            .file-preview-frame:not(.file-preview-error):hover {
                border: none;
                box-shadow: 0 0 10px 0 rgb(0 0 0 / 20%);
            }

            .file-preview-frame .kv-file-content {
                min-width: 45px;
                min-height: 45px;
                width: 45px;
                height: 45px;
                border-radius: 4px;
                margin-right: 10px;
                background-color: #fff;
                padding: 3px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

        .file-preview-image {
            border-radius: 4px;
        }

        .file-preview-frame .file-footer-caption {
            padding-top: 0;
        }

        .file-preview-frame .file-footer-caption {
            text-align: left;
            margin-bottom: 0;
        }

        .file-detail {
            font-size: 14px;
            height: auto;
            width: 100%;
            line-height: initial;
        }

            .file-detail .file-caption-name {
                color: #fff;
                font-size: 15px;
                font-weight: 600;
                margin-bottom: 6px;
            }

            .file-detail .file-size {
                color: #f1f8fe;
                font-size: 12px;
            }

        .kv-zoom-cache {
            display: none;
        }

        .file-preview-frame .file-thumbnail-footer {
            height: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
        }

        .file-preview-frame .file-drag-handle,
        .file-preview-frame .file-upload-indicator {
            float: none;
        }

        .file-preview-frame .file-footer-buttons {
            float: none;
            display: flex;
            align-items: center;
        }

        .file-preview-status.text-center {
            display: none;
        }

        .kv-file-remove.file-remove {
            border: none;
            background-color: #ef2f2f;
            color: #fff;
            width: 25px;
            height: 25px;
            font-size: 12px;
            border-radius: 4px;
            margin: 0px 4px;
        }

        .file-drag-handle.file-drag {
            border: none;
            background-color: #fff;
            color: #2580e8;
            width: 25px;
            height: 25px;
            font-size: 12px;
            border-radius: 4px;
            margin: 0px 4px;
        }

        .kv-file-upload.file-upload {
            border: none;
            background-color: #48bd22;
            color: #fff;
            width: 25px;
            height: 25px;
            font-size: 12px;
            border-radius: 4px;
            margin: 0px 4px;
        }

        .file-thumb-loading {
            background: none !important;
        }

        .file-preview-frame.sortable-chosen {
            background-color: #64a5ef;
            border-color: #64a5ef;
            box-shadow: none !important;
        }
        .SendButton{
            margin: auto;
    width: 100px;
    background-color: #2580e8;
    color: white;
    display: block;
    text-align:center;
    padding:10px;
    border-radius:10px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="container text-center mb-5 mt-5">
    <div class="row">
        <div class="col-md-12">
            <h4><a href="#" target="_blank"><b>TEKNOSER FILE UPLOAD</b></a></h4>
        </div>
    </div>
</div>

<section class="bg-diffrent">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-8">
                <div class="file-upload-contain">
                    <input id="multiplefileupload" type="file" accept=".jpg,.gif,.png,.jpeg" multiple />
                </div>
            </div>
        </div>
    </div>
</section>


    </form>

    <div onclick="dosyaYukle()" class="SendButton" >YÜKLE</div>
     <script src="file/Piefix.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/f121e3b87d.js" crossorigin="anonymous"></script>
    <script src="file/BootstrapFileInput.js"></script>
    <script src="file/Test2.js"></script>

    <script>
        function dosyaYukle() {
            var a = document.querySelector('.SendButton');


            var fileInput = document.getElementById("multiplefileupload");
            var files = fileInput.files;


            if (files.length === 0) {
                alert("Lütfen dosya seçin.");
                return;


            }
            a.style.display = 'none';

            for (var i = 0; i < files.length; i++) {
                dosyaToBase64(files[i], function (base64Data,name) {
                    $.ajax({
                        type: "POST",
                        url: "Test2.aspx/CallAktarim",
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify({ data: base64Data, name: name}),
                        success: function (response) {
                            if (response.d == "0") {
                                SuccessUpload(name,"green");

                            } else {
                                SuccessUpload(name, "red");
                            }
                        },
                        error: function (xhr, status, error) {
                            alert("Dosya yükleme sırasında bir hata oluştu. : " + error);
                        }
                    });


                });
            }
        }

      function   SuccessUpload(name,color){

          var hedefDiv = document.querySelector('div[data-fileid*="' + name + '"]');

            if (hedefDiv) {
                hedefDiv.style.backgroundColor =color; 
            }
        }



        function dosyaToBase64(file, callback) {
            var reader = new FileReader();
            reader.onload = function (event) {
                var base64Data = event.target.result.split(',')[1]; 
                var dosyaAdi = file.name;
                callback(base64Data, dosyaAdi);
            };
            reader.readAsDataURL(file);
        }
        function base64ToByteArray(base64) {
            var binaryString = window.atob(base64);
            var byteArray = new Uint8Array(binaryString.length);
            for (var i = 0; i < binaryString.length; i++) {
                byteArray[i] = binaryString.charCodeAt(i);
            }
            return byteArray;
        }




    </script>
</body>
</html>
