import pandas as pd
import numpy as np


def read_isa():
    
    file_name = 'ISA.xlsx'
    isa_file = pd.ExcelFile(file_name)
    isa_df = isa_file.parse('ISA')
    isa_df = isa_df[isa_df['OPCODE'].notnull()]
    isa_df = isa_df[isa_df['BINARY'].notnull()]
    isa_df = isa_df.fillna(0)
    isa_df = isa_df[['OPCODE', 'BINARY', '#Op']]
    isa_df = isa_df.set_index('OPCODE')
    isa_df[['BINARY']] = isa_df[['BINARY']].astype(np.uint16)
    isa_df[['BINARY']] = isa_df[['BINARY']].astype(np.str)
    
    return isa_df
