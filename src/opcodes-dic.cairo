%lang starknet

from starkware.cairo.common.cairo_builtints import HashBuiltin
from starkware.starknet.syscall_ptr import get_caller_address
from starkware.cairo.common.invoke import invoke
from starkware.cairo.lang.compiler.lib.registers import get_ap, get_fp_and_pc
from starkware.cairo.common.registers import get_label_location
from starkware.cairo.common.dict_access import DictAccess
from starkware.cairo.common.squash_dict import squash_dict




func callOpcode{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr}(hex: felt, n_args: felt, args: felt*)){
    let func_pc: codeoffset = dict_read(hex);
    let (func_pc) = get_label_location(label_value);
    invoke(func_pc,n_args,args);
    return();
}

func build_dict(
    hex_list: felt*,
    opcodes_list: codeoffset*,
    n_steps,
    dict: DictAccess*,
) -> (dict: DictAccess*) {
    if (n_steps == 0) {
        return (dict=dict);
    }

    assert dict.key = [hex_list];

    assert dict.prev_value = opcodes_list;
    assert dict.new_value = opcodes_list;

    return build_dict(
        hex_list= hex_list + 1,
        opcodes_list=opcodes_list + 1,
        n_steps=n_steps - 1,
        dict=dict + DictAccess.SIZE,
    );
}

func dict_read{dict_ptr: DictAccess*}(key: felt) -> (value: felt) {
    alloc_locals;
    local value;
    %{
        dict_tracker = __dict_manager.get_tracker(ids.dict_ptr)
        dict_tracker.current_ptr += ids.DictAccess.SIZE
        ids.value = dict_tracker.data[ids.key]
    %}
    dict_ptr.key = key;
    dict_ptr.prev_value = value;
    dict_ptr.new_value = value;
    let dict_ptr = dict_ptr + DictAccess.SIZE;
    return (value=value);
}



func STOP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 0;
    return();
}

func ADD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func MUL{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5;
    return();
}

func SUB{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func DIV{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5;
    return();
}

func SDIV{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5;
    return();
}

func MOD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5;
    return();
}

func SMOD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 8;
    return();
}

func ADDMOD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 8;
    return();
}

func MULMOD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 8;
    return();
}

func EXP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 8;
    return();
}

func EXP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 10;
    return();
}

func SIGNEXTEND{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5;
    return();
}

func LT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func GT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SLT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SGT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func EQ{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func ISZERO{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func AND{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func OR{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func XOR{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func NOT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func BYTE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SHL{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SHR{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SAR{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SHA3{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 30;
    return();
}


func ADDRESS{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}


func BALANCE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 400;
    return();
}


func ORIGIN{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func CALLER{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}


func CALLVALUE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}


func CALLDATALOAD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func CALLDATASIZE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func CALLDATACOPY{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func CODESIZE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func CODECOPY{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func GASPRICE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func EXTCODESIZE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}

func EXTCODECOPY{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}

func return()DATASIZE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func return()DATACOPY{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func EXTCODEHASH{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 400;
    return();
}

func BLOCKHASH{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 20;
    return();
}

func COINBASE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func TIMESTAMP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func NUMBER{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func DIFFICULTY{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func GASLIMIT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func POP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func MLOAD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func MSTORE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func MSTORE8{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3l
    return();
}


func SLOAD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 200;
    return();
}


func SSTORE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 0;
    return();
}

func JUMP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 8;
    return();
}

func JUMPI{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 10;
    return();
}

func PC{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func MSIZE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func GAS{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}

func JUMPDEST{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 1;
    return();
}

func PUSH{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func DUP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}

func SWAP{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 3;
    return();
}


func LOG{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 275;
    return();
}

func CREATE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 32000;
    return();
}

func CALL{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}


func CALLCODE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}


func return(){syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 0;
    return();
}

func DELEGATECALL{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}


func CREATE2{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 32000;
    return();
}


func STATICCALL{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}


func REVERT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 0;
    return();
}

func INVALID{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 0;
    return();
}


func SELFDESTRUCT{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5000;
    return();
}


func BALANCE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}

func EXTCODEHASH{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 700;
    return();
}


func CHAINID{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 2;
    return();
}


func SELFBALANCE{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 5;
    return();
}

func SLOAD{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr} (stack: felt*, value: felt){
    let fee = 800;
    return();
}














