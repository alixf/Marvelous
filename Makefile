all : marvelous

% : %.y %.l %.txt
	lex -o $@.yy.c $@.l
	bison -d -v $@.y
	gcc $@.tab.c $@.yy.c -lfl -o $@
	./$@ < test.marvelous