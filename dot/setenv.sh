# To include in any rc to set up the environment by files.

noext(){
	fullfile="$1"
	fname="$(basename $fullfile)"
	fbname="${fname%.*}"
	echo "$fbname"
}

setenv(){
	if [ -d "$ENVDIR" ] ; then
		# The way to make system more flexible.
		# 	Actually I'm really tired of editing one big file.
		# 	It is really easier to change specific one with variables
		# 	or modules.

		# Set variables from files.
		sh="$1"
		
		for i in `echo $ENVDIR/*."$sh".var` ; do
			noext1="`noext $i`"
			noext2="`noext $noext1`"
			if test -r "$i"  ; then
				cat="` cat \"$i\" `"
				export "$noext2"="$cat"
			fi
		done

		# Modules.
		for i in $ENVDIR/*."$sh".sh ; do
			if [ -r "$i" ] ; then

				. "$i"
			fi
		done
	fi
}

