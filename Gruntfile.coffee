module.exports = (grunt) ->
  grunt.initConfig {
    pkg: grunt.file.readJSON 'package.json'
    release:
      options:
        tagName: 'v<%= version %>'
        commitMessage: 'Prepare to release <%= version %>.'
        tagMessage: 'Tag version <%= version %>.'
  }
  grunt.loadNpmTasks 'grunt-release'
