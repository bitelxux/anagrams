anagrams.pdf: anagrams.rst anagrams/anagrams.py
	python anagrams/anagrams.py; \
	gnuplot anagrams/anagrams1.plot; \
	gnuplot anagrams/anagrams2.plot; \
	rst2pdf -e preprocess anagrams.rst | grep -v line 

clean:
	rm -f anagrams.pdf output
