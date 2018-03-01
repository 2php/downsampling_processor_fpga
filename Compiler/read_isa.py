def read_isa():
    isa_fName = "isa.txt"

    isa_file = open(isa_fName)
    isa_dict = {}

    for line in isa_file:
        line = line.strip()
        line = line.replace(" ", "")
        line = line.replace("\t", "")
        line = line.lower()

        words = line.split(":");
        isa_dict[words[0]] = words[1]
    print isa_dict
    return isa_dict
