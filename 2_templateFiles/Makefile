sr = ../1_source
m = main
a = addExercise
s = showExercises
r = removeExercise
e = ../exercises
o = ../3_notForMe

all: $(sr)/$(m).hs $(sr)/$(a).hs $(sr)/$(s).hs $(sr)/$(r).hs
	ghc -o $e -odir $(o) -hidir $(o) $^ 

clean:
	rm -f $(o)/* $(e)

clean_:
	rm -f $(o)/*

