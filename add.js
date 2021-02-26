try {
	console.log(JSON.stringify({
		time: Date.now(),
		file: String(process.argv[2]),
		found: JSON.parse(String(process.argv[3]))
	}))	
} catch (err) {
	console.error('произошла ошибка!')
	console.error('\x1b[31m' + err + '\x1b[31m')
	console.error('\x1b[2mАнтивирус продолжит работу!\x1b[0m')
}