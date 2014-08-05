module.exports = (grunt) ->
	grunt.loadNpmTasks "grunt-contrib-coffee"
	grunt.loadNpmTasks "grunt-contrib-watch"
	grunt.loadNpmTasks "grunt-execute"

	grunt.registerTask "default", ["watch"]
	grunt.initConfig
		coffee:
			compile:
				expand: true
				flatten: true
				cwd: "#{__dirname}/src/"
				src: ["*.coffee"]
				dest: ".js/"
				ext: ".js"

		execute:
			run:
				src: [".js/main.js"]

		watch:
			coffee:
				files: "src/*.coffee"
				tasks: ["coffee:compile", "execute:run"]
				options:
					atBegin: true
					interrupt: true