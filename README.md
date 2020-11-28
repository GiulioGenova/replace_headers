# replace_headers
A simple utility that uses awk to find and replace words in a list of files using a lookup table.

It was designed in particular to replace old headers of a csv with new ones, but the replacement works on any line of the file

Make sure that the files with extension .sh and .awk are executable. You can make them executable with the following command:

    chmod a+x get_headers.sh replace_headers.sh replace.awk

## Usage
Place get_headers.sh and replace_headers.sh in the root directory of the project and the files that need to be processed in 
"01_append" folder

1. To create the dictionary file, run (Every time the dictionary file is overwritten!)

    -     bash get_headers.sh "*/01_append/*.dat" dict.csv
	
2. Modify the dictionary file with the right values in the 2nd column (add also an empty third column - needed for parsing reasons) Pay 
	attention:
		
    - Letting empty a cell in the 2nd column, the scritp will let empty the corresponding cell header in the new files 
    - Furthermore is possible add manually other string headers to change in the 1st column 
    - Modify the file in excel could change the file encoding, loosing UTF-8 --> after a conversion is needed

3. To create new files with fixed header, run:

    -     bash replace_headers.sh "*/01_append/*.dat" dict.csv

All the cells containing the string indicated in the 1st column of the dictionary, will be replaced with the string indicated 
in the 2nd column of the dictionary
