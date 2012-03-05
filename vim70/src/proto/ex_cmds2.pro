/* ex_cmds2.c */
extern void do_debug __ARGS((char_u *cmd));
extern void ex_debug __ARGS((exarg_T *eap));
extern void dbg_check_breakpoint __ARGS((exarg_T *eap));
extern int dbg_check_skipped __ARGS((exarg_T *eap));
extern void ex_breakadd __ARGS((exarg_T *eap));
extern void ex_debuggreedy __ARGS((exarg_T *eap));
extern void ex_breakdel __ARGS((exarg_T *eap));
extern void ex_breaklist __ARGS((exarg_T *eap));
extern linenr_T dbg_find_breakpoint __ARGS((int file, char_u *fname, linenr_T after));
extern int has_profiling __ARGS((int file, char_u *fname, int *fp));
extern void dbg_breakpoint __ARGS((char_u *name, linenr_T lnum));
extern void profile_start __ARGS((proftime_T *tm));
extern void profile_end __ARGS((proftime_T *tm));
extern void profile_sub __ARGS((proftime_T *tm, proftime_T *tm2));
extern char *profile_msg __ARGS((proftime_T *tm));
extern void profile_zero __ARGS((proftime_T *tm));
extern void profile_add __ARGS((proftime_T *tm, proftime_T *tm2));
extern void profile_self __ARGS((proftime_T *self, proftime_T *total, proftime_T *children));
extern void profile_get_wait __ARGS((proftime_T *tm));
extern void profile_sub_wait __ARGS((proftime_T *tm, proftime_T *tma));
extern int profile_equal __ARGS((proftime_T *tm1, proftime_T *tm2));
extern int profile_cmp __ARGS((proftime_T *tm1, proftime_T *tm2));
extern void ex_profile __ARGS((exarg_T *eap));
extern void profile_dump __ARGS((void));
extern void script_prof_save __ARGS((proftime_T *tm));
extern void script_prof_restore __ARGS((proftime_T *tm));
extern void prof_inchar_enter __ARGS((void));
extern void prof_inchar_exit __ARGS((void));
extern int prof_def_func __ARGS((void));
extern int autowrite __ARGS((buf_T *buf, int forceit));
extern void autowrite_all __ARGS((void));
extern int check_changed __ARGS((buf_T *buf, int checkaw, int mult_win, int forceit, int allbuf));
extern void browse_save_fname __ARGS((buf_T *buf));
extern void dialog_changed __ARGS((buf_T *buf, int checkall));
extern int can_abandon __ARGS((buf_T *buf, int forceit));
extern int check_changed_any __ARGS((int hidden));
extern int check_fname __ARGS((void));
extern int buf_write_all __ARGS((buf_T *buf, int forceit));
extern int get_arglist __ARGS((garray_T *gap, char_u *str));
extern int get_arglist_exp __ARGS((char_u *str, int *fcountp, char_u ***fnamesp));
extern void set_arglist __ARGS((char_u *str));
extern void check_arg_idx __ARGS((win_T *win));
extern void ex_args __ARGS((exarg_T *eap));
extern void ex_previous __ARGS((exarg_T *eap));
extern void ex_rewind __ARGS((exarg_T *eap));
extern void ex_last __ARGS((exarg_T *eap));
extern void ex_argument __ARGS((exarg_T *eap));
extern void do_argfile __ARGS((exarg_T *eap, int argn));
extern void ex_next __ARGS((exarg_T *eap));
extern void ex_argedit __ARGS((exarg_T *eap));
extern void ex_argadd __ARGS((exarg_T *eap));
extern void ex_argdelete __ARGS((exarg_T *eap));
extern void ex_listdo __ARGS((exarg_T *eap));
extern void ex_compiler __ARGS((exarg_T *eap));
extern void ex_runtime __ARGS((exarg_T *eap));
extern int source_runtime __ARGS((char_u *name, int all));
extern int do_in_runtimepath __ARGS((char_u *name, int all, void (*callback)(char_u *fname, void *ck), void *cookie));
extern void ex_options __ARGS((exarg_T *eap));
extern void ex_source __ARGS((exarg_T *eap));
extern linenr_T *source_breakpoint __ARGS((void *cookie));
extern int *source_dbg_tick __ARGS((void *cookie));
extern int source_level __ARGS((void *cookie));
extern int do_source __ARGS((char_u *fname, int check_other, int is_vimrc));
extern void ex_scriptnames __ARGS((exarg_T *eap));
extern void scriptnames_slash_adjust __ARGS((void));
extern char_u *get_scriptname __ARGS((scid_T id));
extern void free_scriptnames __ARGS((void));
extern char *fgets_cr __ARGS((char *s, int n, FILE *stream));
extern char_u *getsourceline __ARGS((int c, void *cookie, int indent));
extern void script_line_start __ARGS((void));
extern void script_line_exec __ARGS((void));
extern void script_line_end __ARGS((void));
extern void ex_scriptencoding __ARGS((exarg_T *eap));
extern void ex_finish __ARGS((exarg_T *eap));
extern void do_finish __ARGS((exarg_T *eap, int reanimate));
extern int source_finished __ARGS((char_u *(*getline)(int, void *, int), void *cookie));
extern void ex_checktime __ARGS((exarg_T *eap));
extern char_u *get_mess_lang __ARGS((void));
extern void set_lang_var __ARGS((void));
extern void ex_language __ARGS((exarg_T *eap));
extern char_u *get_lang_arg __ARGS((expand_T *xp, int idx));
/* vim: set ft=c : */