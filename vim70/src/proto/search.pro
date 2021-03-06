/* search.c */
extern int search_regcomp __ARGS((char_u *pat, int pat_save, int pat_use, int options, regmmatch_T *regmatch));
extern char_u *get_search_pat __ARGS((void));
extern void save_search_patterns __ARGS((void));
extern void restore_search_patterns __ARGS((void));
extern void free_search_patterns __ARGS((void));
extern int ignorecase __ARGS((char_u *pat));
extern char_u *last_search_pat __ARGS((void));
extern void reset_search_dir __ARGS((void));
extern void set_last_search_pat __ARGS((char_u *s, int idx, int magic, int setlast));
extern void last_pat_prog __ARGS((regmmatch_T *regmatch));
extern int searchit __ARGS((win_T *win, buf_T *buf, pos_T *pos, int dir, char_u *pat, long count, int options, int pat_use, linenr_T stop_lnum));
extern int do_search __ARGS((oparg_T *oap, int dirc, char_u *pat, long count, int options));
extern int search_for_exact_line __ARGS((buf_T *buf, pos_T *pos, int dir, char_u *pat));
extern int searchc __ARGS((cmdarg_T *cap, int t_cmd));
extern pos_T *findmatch __ARGS((oparg_T *oap, int initc));
extern pos_T *findmatchlimit __ARGS((oparg_T *oap, int initc, int flags, int maxtravel));
extern void showmatch __ARGS((int c));
extern int findsent __ARGS((int dir, long count));
extern int findpar __ARGS((int *pincl, int dir, long count, int what, int both));
extern int startPS __ARGS((linenr_T lnum, int para, int both));
extern int fwd_word __ARGS((long count, int bigword, int eol));
extern int bck_word __ARGS((long count, int bigword, int stop));
extern int end_word __ARGS((long count, int bigword, int stop, int empty));
extern int bckend_word __ARGS((long count, int bigword, int eol));
extern int current_word __ARGS((oparg_T *oap, long count, int include, int bigword));
extern int current_sent __ARGS((oparg_T *oap, long count, int include));
extern int current_block __ARGS((oparg_T *oap, long count, int include, int what, int other));
extern int current_tagblock __ARGS((oparg_T *oap, long count_arg, int include));
extern int current_par __ARGS((oparg_T *oap, long count, int include, int type));
extern int current_quote __ARGS((oparg_T *oap, long count, int include, int quotechar));
extern int linewhite __ARGS((linenr_T lnum));
extern void find_pattern_in_path __ARGS((char_u *ptr, int dir, int len, int whole, int skip_comments, int type, long count, int action, linenr_T start_lnum, linenr_T end_lnum));
extern int read_viminfo_search_pattern __ARGS((vir_T *virp, int force));
extern void write_viminfo_search_pattern __ARGS((FILE *fp));
/* vim: set ft=c : */
