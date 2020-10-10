#!/bin/bash

def remove_quotes_comma(csvfile, year, month):
    try:
        outfile = os.path.join(os.path.dirname(csvfile),
                          '{}{}.csv'.format(year, month))
        with open(csvfile, 'r') as infp:
            with open(outfile, 'w') as outfp:
                for line in infp:
                    outline = line.rstrip().rstrip(',').translate(None, '"')
                    outfp.write(outline)
                    outfp.write('\n')
    finally:
        print ("... removing {}".format(csvfile))
        os.remove(csvfile)

