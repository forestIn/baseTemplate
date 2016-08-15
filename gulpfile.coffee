gulp = require 'gulp'
stylus = require 'gulp-stylus'
coffee = require 'gulp-coffee'
# uglify = require 'gulp-uglify'
clean = require 'gulp-clean'
concat = require 'gulp-concat'
# ngAnnotate = require 'gulp-ng-annotate' #Add angularjs dependency injection annotations with ng-annotate


gulp.task 'stylus', ->
    gulp.src 'static/stylus/*.styl'
        .pipe stylus set: ['compress']
        .pipe gulp.dest 'static/css'
        # .pipe do connect.reload



gulp.task 'coffee', ->
    gulp.src 'static/coffee/*.coffee'
        .pipe do coffee
        # .pipe ngAnnotate()
        # .pipe concat 'all.js'
        # .pipe uglify()
        .pipe gulp.dest 'static/js'
        # .pipe do connect.reload

gulp.task 'watch', ->
    # gulp.watch 'dist/*.html', ['html']
    gulp.watch 'static/stylus/*.styl', ['stylus']
    gulp.watch 'static/coffee/*.coffee', ['coffee']

gulp.task 'default', ['coffee', 'stylus','watch']