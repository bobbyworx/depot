/* mbyte.c */
extern int enc_canon_props __ARGS((char_u *name));
extern char_u *mb_init __ARGS((void));
extern int bomb_size __ARGS((void));
extern int mb_get_class __ARGS((char_u *p));
extern int dbcs_class __ARGS((unsigned lead, unsigned trail));
extern int latin_char2len __ARGS((int c));
extern int latin_char2bytes __ARGS((int c, char_u *buf));
extern int latin_ptr2len __ARGS((char_u *p));
extern int utf_char2cells __ARGS((int c));
extern int latin_ptr2cells __ARGS((char_u *p));
extern int utf_ptr2cells __ARGS((char_u *p));
extern int dbcs_ptr2cells __ARGS((char_u *p));
extern int latin_char2cells __ARGS((int c));
extern int latin_off2cells __ARGS((unsigned off));
extern int dbcs_off2cells __ARGS((unsigned off));
extern int utf_off2cells __ARGS((unsigned off));
extern int latin_ptr2char __ARGS((char_u *p));
extern int utf_ptr2char __ARGS((char_u *p));
extern int mb_ptr2char_adv __ARGS((char_u **pp));
extern int mb_cptr2char_adv __ARGS((char_u **pp));
extern int arabic_combine __ARGS((int one, int two));
extern int arabic_maycombine __ARGS((int two));
extern int utf_composinglike __ARGS((char_u *p1, char_u *p2));
extern int utfc_ptr2char __ARGS((char_u *p, int *pcc));
extern int utfc_ptr2char_len __ARGS((char_u *p, int *pcc, int maxlen));
extern int utfc_char2bytes __ARGS((int off, char_u *buf));
extern int utf_ptr2len __ARGS((char_u *p));
extern int utf_byte2len __ARGS((int b));
extern int utf_ptr2len_len __ARGS((char_u *p, int size));
extern int utfc_ptr2len __ARGS((char_u *p));
extern int utfc_ptr2len_len __ARGS((char_u *p, int size));
extern int utf_char2len __ARGS((int c));
extern int utf_char2bytes __ARGS((int c, char_u *buf));
extern int utf_iscomposing __ARGS((int c));
extern int utf_printable __ARGS((int c));
extern int utf_class __ARGS((int c));
extern int utf_fold __ARGS((int a));
extern int utf_toupper __ARGS((int a));
extern int utf_islower __ARGS((int a));
extern int utf_tolower __ARGS((int a));
extern int utf_isupper __ARGS((int a));
extern int mb_strnicmp __ARGS((char_u *s1, char_u *s2, size_t nn));
extern void show_utf8 __ARGS((void));
extern int latin_head_off __ARGS((char_u *base, char_u *p));
extern int dbcs_head_off __ARGS((char_u *base, char_u *p));
extern int dbcs_screen_head_off __ARGS((char_u *base, char_u *p));
extern int utf_head_off __ARGS((char_u *base, char_u *p));
extern void mb_copy_char __ARGS((char_u **fp, char_u **tp));
extern int mb_off_next __ARGS((char_u *base, char_u *p));
extern int mb_tail_off __ARGS((char_u *base, char_u *p));
extern void utf_find_illegal __ARGS((void));
extern int utf_valid_string __ARGS((char_u *s, char_u *end));
extern int dbcs_screen_tail_off __ARGS((char_u *base, char_u *p));
extern void mb_adjust_cursor __ARGS((void));
extern void mb_adjustpos __ARGS((pos_T *lp));
extern char_u *mb_prevptr __ARGS((char_u *line, char_u *p));
extern int mb_charlen __ARGS((char_u *str));
extern int mb_charlen_len __ARGS((char_u *str, int len));
extern char_u *mb_unescape __ARGS((char_u **pp));
extern int mb_lefthalve __ARGS((int row, int col));
extern int mb_fix_col __ARGS((int col, int row));
extern char_u *enc_skip __ARGS((char_u *p));
extern char_u *enc_canonize __ARGS((char_u *enc));
extern char_u *enc_locale __ARGS((void));
extern int encname2codepage __ARGS((char_u *name));
extern void *my_iconv_open __ARGS((char_u *to, char_u *from));
extern int iconv_enabled __ARGS((int verbose));
extern void iconv_end __ARGS((void));
extern int im_xim_isvalid_imactivate __ARGS((void));
extern void im_set_active __ARGS((int active));
extern void xim_set_focus __ARGS((int focus));
extern void im_set_position __ARGS((int row, int col));
extern void xim_set_preedit __ARGS((void));
extern void xim_set_status_area __ARGS((void));
extern void xim_init __ARGS((void));
extern void xim_decide_input_style __ARGS((void));
extern int im_get_feedback_attr __ARGS((int col));
extern void xim_reset __ARGS((void));
extern int xim_queue_key_press_event __ARGS((GdkEventKey *event, int down));
extern void xim_init __ARGS((void));
extern void im_shutdown __ARGS((void));
extern int xim_get_status_area_height __ARGS((void));
extern int im_get_status __ARGS((void));
extern int im_is_preediting __ARGS((void));
extern int convert_setup __ARGS((vimconv_T *vcp, char_u *from, char_u *to));
extern int convert_input __ARGS((char_u *ptr, int len, int maxlen));
extern int convert_input_safe __ARGS((char_u *ptr, int len, int maxlen, char_u **restp, int *restlenp));
extern char_u *string_convert __ARGS((vimconv_T *vcp, char_u *ptr, int *lenp));
extern char_u *string_convert_ext __ARGS((vimconv_T *vcp, char_u *ptr, int *lenp, int *unconvlenp));
/* vim: set ft=c : */
