// This script loads and runs the code in AbsoluteValue.vm.
//
// If you want this script to produce an output file, you should
// add an infinite loop at the end of your VM programme. If you
// don't, the VM Emulator will throw the error:
//
//    No more instructions to execute
//
// In this case, you can validate your programe by checking the
// content of your RAM (memory segments and stack).
//
// The output file will contain the first four elements of the
// argument segment at the end of the execution of your VM code.
// With the initial data supplied below, the output file should
// contain:
//
// |RAM[500]|RAM[501]|RAM[502]|RAM[503]|
// |    -10 |     10 |      1 |      0 |

load AbsoluteValue.vm,
output-file AbsoluteValue.out,
output-list RAM[500]%D1.6.1 RAM[501]%D1.6.1 RAM[502]%D1.6.1 RAM[503]%D1.6.1;

set sp 256, set local 400, set argument 500, set this 600, set that 700,
set argument[0] -10, set argument[1] 999, set argument[2] 999, set argument[3] 999,
repeat 100 {
  vmstep;
}
output;