var gulp            = require('gulp')
var sass            = require('gulp-ruby-sass')
var connect         = require('gulp-connect')
var browserify      = require('browserify')
var source          = require('vinyl-source-stream')
var uglify          = require('gulp-uglifyjs');
var plumber         = require('gulp-plumber');
var gutil           = require('gulp-util');
var beep            = require('beepbeep');
var livereload      = require('gulp-livereload');

var paths = {
	jsFiles : ['app/views/**/*.js', 'app/components/**/*.js', 'app/app.js'],
	jsDist : 'app/dist/js',
	jsCompressed : 'main.js',
  	scssFiles : ['app/app.scss', 'app/views/home/home.scss'],
	cssDist : 'app/dist/css',
	htmlFiles : ['app/**/*.html']
};

var onError = function (err) {
	beep([0, 0, 0]);
	gutil.log(gutil.colors.green(err));
};

gulp.task('connect', function () {
	connect.server({
		root: 'app',
		port: 8000
	})
});

gulp.task('browserify', function() {
    return browserify([
		'app/app.js',
		'app/views/home/home.module.js'])
		/*.pipe(plumber({
			errorHandler: onError
		}))*/
        .bundle()
        .pipe(source(paths.jsCompressed))
        .pipe(gulp.dest(paths.jsDist))
		.pipe(livereload());
});

/*gulp.task('uglifyjs', function() {
	return gulp.src(paths.jsFiles)
	.pipe(plumber({
		errorHandler: onError
	}))
	.pipe(uglify('main.js', {
		compress: false
	}))
	.pipe(gulp.dest(paths.distJs))
	.pipe(livereload());
});*/

gulp.task('sass', function() {
    return sass(['app/app.scss', 'app/views/home/home.scss'], {
        style: 'compressed',
		cacheLocation: './cache/.sass-cache'
	})
    .pipe(plumber({
		errorHandler: onError
	}))
    .pipe(gulp.dest(paths.cssDist))
    .pipe(livereload());
});

gulp.task('html', function() {
	return gulp.src(paths.htmlFiles)
		.pipe(livereload());
});

gulp.task('watch', function() {
    livereload.listen();
	gulp.watch(paths.jsFiles, ['browserify']);
	//gulp.watch(paths.jsFiles, ['uglifyjs']);
    gulp.watch(paths.scssFiles, ['sass']);
    gulp.watch(paths.htmlFiles, ['html']);
});

gulp.task('build', ['sass', 'html']);

gulp.task('default', ['build', 'connect', 'watch']);

gulp.task('deploy',['browserify']);
