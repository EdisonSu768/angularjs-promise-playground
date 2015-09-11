
module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  APP_PATH = 'angular'

  grunt.initConfig
    coffee:
      frontend:
        options:
          sourceMap: true
        files:[
          expand: true
          cwd: "#{APP_PATH}/app"
          dest: "./js"
          src: ["*.coffee"]
          ext: ".js"
        ]

  grunt.registerTask 'compile:coffee',[
    'coffee:frontend'
  ]