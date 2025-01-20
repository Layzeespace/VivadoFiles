/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_548(char*, char *);
extern void execute_549(char*, char *);
extern void execute_1419(char*, char *);
extern void execute_1420(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_946(char*, char *);
extern void execute_948(char*, char *);
extern void execute_950(char*, char *);
extern void execute_952(char*, char *);
extern void execute_954(char*, char *);
extern void execute_956(char*, char *);
extern void execute_958(char*, char *);
extern void execute_959(char*, char *);
extern void execute_6(char*, char *);
extern void execute_555(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_558(char*, char *);
extern void execute_559(char*, char *);
extern void execute_560(char*, char *);
extern void execute_561(char*, char *);
extern void execute_562(char*, char *);
extern void execute_554(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_10(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_567(char*, char *);
extern void execute_568(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_573(char*, char *);
extern void execute_574(char*, char *);
extern void execute_20(char*, char *);
extern void execute_630(char*, char *);
extern void execute_631(char*, char *);
extern void execute_632(char*, char *);
extern void execute_633(char*, char *);
extern void execute_629(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_986(char*, char *);
extern void execute_231(char*, char *);
extern void execute_987(char*, char *);
extern void execute_1172(char*, char *);
extern void execute_1180(char*, char *);
extern void execute_1190(char*, char *);
extern void execute_1206(char*, char *);
extern void execute_1216(char*, char *);
extern void execute_235(char*, char *);
extern void execute_989(char*, char *);
extern void execute_990(char*, char *);
extern void execute_988(char*, char *);
extern void execute_1333(char*, char *);
extern void execute_1339(char*, char *);
extern void execute_1340(char*, char *);
extern void execute_1345(char*, char *);
extern void execute_1351(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_1219(char*, char *);
extern void execute_1220(char*, char *);
extern void execute_1221(char*, char *);
extern void execute_1222(char*, char *);
extern void execute_460(char*, char *);
extern void execute_519(char*, char *);
extern void execute_1374(char*, char *);
extern void execute_1375(char*, char *);
extern void execute_1376(char*, char *);
extern void execute_551(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_1421(char*, char *);
extern void execute_1422(char*, char *);
extern void execute_1423(char*, char *);
extern void execute_1424(char*, char *);
extern void execute_1425(char*, char *);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_20(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_514(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_515(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_516(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_517(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_519(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_521(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_523(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_526(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_529(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_531(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_533(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_535(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_536(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_537(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_540(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_541(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_544(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_545(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_548(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_549(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_550(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_551(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_552(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_553(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_555(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_556(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_557(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_560(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_811(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_815(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_816(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_819(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_820(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_821(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_823(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_824(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_825(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_826(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_827(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_828(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_829(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_830(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_831(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_832(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_833(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_834(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_835(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_836(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_846(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_849(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_850(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_413(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_417(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_421(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_429(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_437(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_445(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_457(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_465(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_477(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_481(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_493(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_497(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_501(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_509(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_513(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_631(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_680(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_692(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_713(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_721(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_738(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_879(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_892(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_897(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_902(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_907(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_919(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_924(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_938(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_943(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_948(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_953(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_967(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_972(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_977(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[234] = {(funcp)execute_548, (funcp)execute_549, (funcp)execute_1419, (funcp)execute_1420, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_946, (funcp)execute_948, (funcp)execute_950, (funcp)execute_952, (funcp)execute_954, (funcp)execute_956, (funcp)execute_958, (funcp)execute_959, (funcp)execute_6, (funcp)execute_555, (funcp)execute_556, (funcp)execute_557, (funcp)execute_558, (funcp)execute_559, (funcp)execute_560, (funcp)execute_561, (funcp)execute_562, (funcp)execute_554, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_566, (funcp)execute_567, (funcp)execute_568, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_571, (funcp)execute_572, (funcp)execute_573, (funcp)execute_574, (funcp)execute_20, (funcp)execute_630, (funcp)execute_631, (funcp)execute_632, (funcp)execute_633, (funcp)execute_629, (funcp)execute_74, (funcp)execute_75, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_78, (funcp)execute_79, (funcp)execute_99, (funcp)execute_100, (funcp)execute_986, (funcp)execute_231, (funcp)execute_987, (funcp)execute_1172, (funcp)execute_1180, (funcp)execute_1190, (funcp)execute_1206, (funcp)execute_1216, (funcp)execute_235, (funcp)execute_989, (funcp)execute_990, (funcp)execute_988, (funcp)execute_1333, (funcp)execute_1339, (funcp)execute_1340, (funcp)execute_1345, (funcp)execute_1351, (funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_1219, (funcp)execute_1220, (funcp)execute_1221, (funcp)execute_1222, (funcp)execute_460, (funcp)execute_519, (funcp)execute_1374, (funcp)execute_1375, (funcp)execute_1376, (funcp)execute_551, (funcp)execute_552, (funcp)execute_553, (funcp)execute_1421, (funcp)execute_1422, (funcp)execute_1423, (funcp)execute_1424, (funcp)execute_1425, (funcp)transaction_12, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_15, (funcp)transaction_16, (funcp)transaction_17, (funcp)transaction_18, (funcp)transaction_19, (funcp)transaction_20, (funcp)transaction_29, (funcp)transaction_30, (funcp)transaction_31, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_37, (funcp)transaction_514, (funcp)transaction_515, (funcp)transaction_516, (funcp)transaction_517, (funcp)transaction_518, (funcp)transaction_519, (funcp)transaction_520, (funcp)transaction_521, (funcp)transaction_522, (funcp)transaction_523, (funcp)transaction_524, (funcp)transaction_525, (funcp)transaction_526, (funcp)transaction_527, (funcp)transaction_528, (funcp)transaction_529, (funcp)transaction_530, (funcp)transaction_531, (funcp)transaction_532, (funcp)transaction_533, (funcp)transaction_534, (funcp)transaction_535, (funcp)transaction_536, (funcp)transaction_537, (funcp)transaction_538, (funcp)transaction_540, (funcp)transaction_541, (funcp)transaction_542, (funcp)transaction_543, (funcp)transaction_544, (funcp)transaction_545, (funcp)transaction_546, (funcp)transaction_547, (funcp)transaction_548, (funcp)transaction_549, (funcp)transaction_550, (funcp)transaction_551, (funcp)transaction_552, (funcp)transaction_553, (funcp)transaction_554, (funcp)transaction_555, (funcp)transaction_556, (funcp)transaction_557, (funcp)transaction_559, (funcp)transaction_560, (funcp)transaction_811, (funcp)transaction_815, (funcp)transaction_816, (funcp)transaction_819, (funcp)transaction_820, (funcp)transaction_821, (funcp)transaction_822, (funcp)transaction_823, (funcp)transaction_824, (funcp)transaction_825, (funcp)transaction_826, (funcp)transaction_827, (funcp)transaction_828, (funcp)transaction_829, (funcp)transaction_830, (funcp)transaction_831, (funcp)transaction_832, (funcp)transaction_833, (funcp)transaction_834, (funcp)transaction_835, (funcp)transaction_836, (funcp)transaction_846, (funcp)transaction_848, (funcp)transaction_849, (funcp)transaction_850, (funcp)transaction_92, (funcp)transaction_413, (funcp)transaction_417, (funcp)transaction_421, (funcp)transaction_425, (funcp)transaction_429, (funcp)transaction_433, (funcp)transaction_437, (funcp)transaction_441, (funcp)transaction_445, (funcp)transaction_449, (funcp)transaction_453, (funcp)transaction_457, (funcp)transaction_461, (funcp)transaction_465, (funcp)transaction_469, (funcp)transaction_473, (funcp)transaction_477, (funcp)transaction_481, (funcp)transaction_485, (funcp)transaction_489, (funcp)transaction_493, (funcp)transaction_497, (funcp)transaction_501, (funcp)transaction_505, (funcp)transaction_509, (funcp)transaction_513, (funcp)transaction_618, (funcp)transaction_631, (funcp)transaction_635, (funcp)transaction_639, (funcp)transaction_652, (funcp)transaction_656, (funcp)transaction_660, (funcp)transaction_664, (funcp)transaction_676, (funcp)transaction_680, (funcp)transaction_684, (funcp)transaction_688, (funcp)transaction_692, (funcp)transaction_696, (funcp)transaction_700, (funcp)transaction_713, (funcp)transaction_717, (funcp)transaction_721, (funcp)transaction_725, (funcp)transaction_738, (funcp)transaction_879, (funcp)transaction_892, (funcp)transaction_897, (funcp)transaction_902, (funcp)transaction_907, (funcp)transaction_919, (funcp)transaction_924, (funcp)transaction_938, (funcp)transaction_943, (funcp)transaction_948, (funcp)transaction_953, (funcp)transaction_967, (funcp)transaction_972, (funcp)transaction_977};
const int NumRelocateId= 234;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/lab1source_tb_func_impl/xsim.reloc",  (void **)funcTab, 234);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/lab1source_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/lab1source_tb_func_impl/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/lab1source_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/lab1source_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/lab1source_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
