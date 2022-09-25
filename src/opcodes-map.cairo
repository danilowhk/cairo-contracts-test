%lang starknet


from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.starknet.syscall_ptr import get_caller_address

struct Opcode{
    name: felt,
    fee: felt,
    isAsync: felt,
}

@storage_var
func opcodes_list(index: felt) -> (opcode: Opcode) {
}


@constructor
func constructor{syscall_ptr : felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}( opcodesList_len:felt , opcodesList: Opcode* ){
    addOpcodes(opcodesList_len ,opcodesList );
    return();
}

@internal
func addOpcodes{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr}(opcodesList_len:felt , opcodesList: Opcode*){
    if(opcodesList_len == 0){
        return();
    }
    addOpcodes(opcodesList_len -1 , opcodesList + 1);
    opcodes_list.write(opcodesList,opcodesList[0], opcodesList[1], opcodesList[2]);

    return();
}

//Opcodes list format https://github.com/dethcrypto/ethereumjs-vm/blob/master/lib/evm/opcodes.ts