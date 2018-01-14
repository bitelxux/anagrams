anagrams.pdf: anagrams.rst anagrams/anagrams.py
	mkdir -p output && \
	python anagrams/anagrams.py && \
	gnuplot anagrams/anagrams1.plot && \
	gnuplot anagrams/anagrams2.plot && \
	rst2pdf -e preprocess anagrams.rst

clean:
	rm -rf anagrams.pdf *.build_temp output
