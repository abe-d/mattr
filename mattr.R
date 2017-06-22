mattr = function (infile=scan(choose.files(), what="char", sep="\n"), windowsize=100) {
	wttr = 0
	ttrsum = 0
	tokens = tolower(unlist(strsplit(infile, "\\W+")))
	numwords = length(tokens) 
	tokens = c(tokens,tokens) 
	for(i in 1:numwords){ 
		window = tokens[i:((windowsize-1)+i)]
		wttr = length(unique(sort(window)))/windowsize
		ttrsum = ttrsum + wttr
	}
	mattr=ttrsum/numwords
	return(mattr)
} 
