from read_isa import *
import binascii

isa = read_isa()

program_fName = "program.txt"
program_file  = open(program_fName)

hex_fName = "output.hex"
hex_file = open(hex_fName, "ab")

lineNo = 0;
loop = {}


for line in program_file:
    lineNo += 1                                 #Line numbers: 1,2,3...
    error = "";
    
    line = line.strip()
    line = line.replace(" ", "")
    line = line.replace("\t", "")
    line = line.lower()
    line = line.replace("#", ":#")              #For splitting

    words = line.split(":");                    #: should be used between opcode, operand and loop
    
    if (len(words) == 0):
            continue
        
    try:
        if(words[0][0] == "#"): continue        #For a single line comment
        bin_array = []
        
        opcode_txt = words[0]
        bin_array += [int(isa[opcode_txt],2)]
        operand_bin = None

        if (len(words) == 2):
            if(words[1][0] == "#"): continue    #Comment after one word instruction
            
            arg2 = words[1]

            if(arg2.isdigit()):                   #If 2nd word is integer, make it an operand 
                bin_array += [int(arg2,2)]
                
            elif (arg2[0] == '$'):              #Check for Loop Definition on 2nd word
                loop_name = arg3[1:]
                loop[loop_name] = lineNo
                
            elif (arg2[0] == '@'):              #Check for Loop request on 3rd word
                loop_name = arg2[1:]
                operand_bin = int(loop[loop_name])
                bin_array += [operad_bin]
            else:
                error += "'%s'" %(arg2)
                raise Exception('Error')
                
                

        elif( len(words) == 3 ):
            if(words[2][0] == "#"):continue     #Comment after two word instruction
            
            arg3 = words[2]                     #Loop Definition on 3rd word
            if (arg3[0] == '$'):
                loop_name = arg3[1:]
                loop[loop_name] = lineNo
            else:
                error += "%s" %(arg3)
                raise Exception('Error')

        byte_array = bytearray(bin_array)
        
        hex_file.write(byte_array)
    except ValueError:
        print "Syntax error at line: %s at word: '%s'" %(lineNo, error)
        

program_file.close()
hex_file.close()
