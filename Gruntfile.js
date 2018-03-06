'use strict';
var grunt = require('grunt');

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    app: {
            source: 'src/main/webapp',
            dist: 'src/main/webapp'
    },
    uglify: {
            dist: {
                   options: {
                       compress: true,
                       preserveComments: false,
                       report: 'min'
                   },
                   files: {
                       '<%= app.dist %>/dist/js/vendor-scripts.js': [
                           'bower_components/jquery/dist/jquery.js',
                           'bower_components/angular/angular.js',
                           'bower_components/angular-ui-router/release/angular-ui-router.js'
                      ],
                       '<%= app.dist %>/dist/js/custom-scripts.js': [
                           '<%= app.source %>/js/application.js'
                       ]
                   }
               }
    }
});

  // Load the plugin that provides the "uglify" task.
   grunt.loadNpmTasks('grunt-contrib-uglify');

   grunt.loadNpmTasks('grunt-install-dependencies');
   grunt.registerTask('default', ['uglify:dist']);
};
