fun! DrupalFilename(...)
  " We need to chop off two path components. This has no adverse
  " effect on files with only one path component.
	let filename = expand('%:t:r:r')
	if filename == '' | return a:0 == 2 ? a:2 : '' | endif
	return !a:0 || a:1 == '' ? filename : substitute(a:1, '$1', filename, 'g')
endf
