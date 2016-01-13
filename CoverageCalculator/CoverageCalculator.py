print
print "Welcome to the Coverage Calculator!"
print "C = LN/G"
print

# Name of strain

name = raw_input("Enter name of strain/organism: ")

print

# Insert read length.

read_length = int(input("Enter read length L = " ))

print

# Insert number of reads.

number_of_reads = int(input("Enter number of reads N = "))

print

# Insert genome length

genome_length = int(input("Enter aproximate genome length G = "))

# Calcultate coverage

cov = read_length * number_of_reads / genome_length

print
print
print "For strain/organism", name, ":"
print "Coverage =", cov
print 

