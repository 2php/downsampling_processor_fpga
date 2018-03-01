hex_fName = "output1.hex"
hex_file = open(hex_fName, "wb")

nums = [0x34, 0xA3, 0x22]
byte_array = bytearray([0x45])

hex_file.write(byte_array)

hex_file.close()
