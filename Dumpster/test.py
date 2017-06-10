import sys
import codecs

def main(argv):

    print('hello world')


    infile=argv[0]
    print('infile: %s'%infile)

    with codecs.open(argv[0]) as f:
        lines=f.read().splitlines()

    for l in lines:
        print(l)

    
if __name__== "__main__":
    main(sys.argv[1:])
