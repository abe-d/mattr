mattr = function (infile=choose.files(), windowsize=100) {
	text = scan(infile, what="char", sep="\n")
	wttr = 0
	ttrsum = 0
	tokens = tolower(unlist(strsplit(text, "\\W+")))
	numwords = length(tokens) 
	tokens = c(tokens,tokens) 
	for(i in 1:numwords){ 
		window = tokens[i:((windowsize-1)+i)]
		wttr = length(unique(sort(window)))/windowsize
		ttrsum = ttrsum + wttr
	}
	print(tokens)
	print(numwords)
	print(ttrsum)
	mattr=ttrsum/numwords
	return(mattr)
} 
