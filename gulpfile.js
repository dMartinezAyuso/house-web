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
	jsFiles : ['./app/views/**/*.js', './app/components/**/*.js', './app/app.js'],
	distJs : 'app/dist/js/'
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

/*gulp.task('browserify', function() {
	// Grabs the app.js file
    return browserify(['./app/app.js','./app/home/home.js'])
    	// bundles it and creates a file called main.js
        .bundle()
        .pipe(source('main.js'))
        // saves it the public/js/ directory
        .pipe(gulp.dest('./app/dist/js/'));
});*/

gulp.task('uglifyjs', function() {
	return gulp.src(paths.jsFiles)
	.pipe(plumber({
		errorHandler: onError
	}))
	.pipe(uglify('main.js', {
		compress: false
	}))
	.pipe(gulp.dest(paths.distJs))
	.pipe(livereload());
});

gulp.task('sass', function() {
    return sass(['app/app.scss', 'app/home/home.scss'], {
        style: 'compressed',
		cacheLocation: './cache/.sass-cache'
    })
    .pipe(plumber({
		errorHandler: onError
	}))
    .pipe(gulp.dest('app/dist/css'))
    .pipe(livereload());
});

gulp.task('html', function() {
	return gulp.src([
		'app/**/*.html'
	])
	.pipe(livereload());
});

gulp.task('watch', function() {
    livereload.listen();
	gulp.watch('app/**/*.js', ['uglifyjs']);
    gulp.watch('app/**/*.scss', ['sass']);
    gulp.watch('app/**/*.html', ['html']);
});

gulp.task('default', ['connect', 'watch']);

gulp.task('deploy',[]);
