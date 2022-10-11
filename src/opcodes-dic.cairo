%lang starknet

from starkware.cairo.common.cairo_builtints import HashBuiltin
from starkware.starknet.syscall_ptr import get_caller_address
from starkware.cairo.common.invoke import invoke
from starkware.cairo.lang.compiler.lib.registers import get_ap, get_fp_and_pc
from starkware.cairo.common.registers import get_label_location



func callOpcode{syscall_ptr: felt*, pedersen_ptr:HashBuiltin*, range_check_ptr}(function: codeoffset, n_args: felt, args: felt*)){
    let (func_pc) = get_label_location(label_value);
    invoke(func_pc,n_args,args);
    return();
}


// func get_label_location(label_value: codeoffset) -> (res: felt*) {
//     let (_, pc_val) = get_fp_and_pc();

//     ret_pc_label:
//     return() (res=pc_val + (label_value - ret_pc_label));
// }




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














