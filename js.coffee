fs = require "fs"
path = require "path"
fileOpen = (path) ->
  fs.readFile path, (err,text) ->
    $("#code").val text

$ ->

  $("#folderDialog").change (e) ->
    folder = $('#folderDialog')[0].files[0]
    $project = $("<ul>").attr("id","project")
    $documentFragment = $(document.createDocumentFragment())
    $dfFolder = $(document.createDocumentFragment())
    $dfFile = $(document.createDocumentFragment())

    fs.readdir folder.path, (err,files) ->
      if err
        throw err

      for file in files
        filePath = path.join(folder.path, file)
        if fs.statSync(filePath).isDirectory()
          $dfFolder.append $("<li>").addClass("folder").text(file).attr("data-path", filePath)
        else
          $dfFile.append $("<li>").addClass("file").text(file).attr("data-path", filePath)

      $project.append $dfFolder
      $project.append $dfFile
      $documentFragment.append $project
      $("#sidebar").html $documentFragment

    $(document).on "click", ".folder", ->
      console.log $(this).data("path")

    $(document).on "click", ".file", ->
      fileOpen($(this).data("path"))
