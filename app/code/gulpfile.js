'use strict';

var gulp = require('gulp'),
    sass = require('gulp-sass'),
    concat = require('gulp-concat'),
    autoprefixer = require('gulp-autoprefixer'),
    minify = require('gulp-minify-css'),
    uglify = require('gulp-uglify'),
    merge = require('ordered-merge-stream');


// Concat and uglify js
gulp.task('scripts', function () {

    var jsBlock1 = gulp.src([
        // JS files separated by commas
    ]).pipe(concat('block1.js'));

    var jsBlock2 = gulp.src([
        // JS files separated by commas
    ]).pipe(concat('block2.js'));

    var jsBlock3 = gulp.src([
        // JS files separated by commas
    ]).pipe(concat('block3.js'));

    return merge([jsBlock1, jsBlock2, jsBlock3])
        .pipe(concat('main.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('./public/js/'));
});

gulp.task('sass', function () {

    var cssBlock1 = gulp.src([
        // Css files separated by commas
    ]).pipe(concat('block1.scss'))

    var cssBlock2 = gulp.src([
        // Css files separated by commas
    ]).pipe(concat('block2.scss'));

    var cssBlock3 = gulp.src([
        // Css files separated by commas
    ]).pipe(concat('block3.scss'));

    return merge([cssBlock1, cssBlock2, cssBlock3])
        .pipe(concat('catgesexp.scss'))
        .pipe(sass({
            includePaths: bootstrapConfig.scss_path,
            outputStyle: 'compressed' // if css compressed **file size**
        }).on('error', sass.logError))
        .pipe(autoprefixer({browsers: ['last 2 versions', 'ie >= 9']}))
        .pipe(concat('main.min.css'))
        .pipe(minify())
        .pipe(gulp.dest('./public/css'));
});


// Tasks

gulp.task('build', ['sass', 'scripts']);

gulp.task('watch', function () {
    gulp.watch('./public/scss/**/*.scss', ['sass']);
});
