// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Skip function: __VERIFIER_nondet_loff_t

// Skip function: __VERIFIER_nondet_pointer

// Skip function: __VERIFIER_nondet_size_t

// Skip function: __VERIFIER_nondet_ulong

// Function: __class_create
// with type: struct class *__class_create(struct module *, const char *, struct lock_class_key *)
// with return type: (struct class)*
struct class *__class_create(struct module *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Pointer type
  return ldv_malloc(sizeof(struct class));
}

// Function: __const_udelay
// with type: void __const_udelay(unsigned long)
// with return type: void
void __const_udelay(unsigned long arg0) {
  // Void type
  return;
}

// Function: __copy_from_user_overflow
// with type: void __copy_from_user_overflow()
// with return type: void
void __copy_from_user_overflow() {
  // Void type
  return;
}

// Function: __copy_to_user_overflow
// with type: void __copy_to_user_overflow()
// with return type: void
void __copy_to_user_overflow() {
  // Void type
  return;
}

// Function: __register_chrdev
// with type: int __register_chrdev(unsigned int, unsigned int, unsigned int, const char *, const struct file_operations *)
// with return type: int
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: __unregister_chrdev
// with type: void __unregister_chrdev(unsigned int, unsigned int, unsigned int, const char *)
// with return type: void
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  // Void type
  return;
}

// Function: _copy_from_user
// with type: unsigned long int _copy_from_user(void *, const void *, unsigned int)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: _copy_to_user
// with type: unsigned long int _copy_to_user(void *, const void *, unsigned int)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Skip function: calloc

// Function: class_destroy
// with type: void class_destroy(struct class *)
// with return type: void
void class_destroy(struct class *arg0) {
  // Void type
  return;
}

// Function: device_create
// with type: struct device *device_create(struct class *, struct device *, dev_t , void *, const char *, ...)
// with return type: (struct device)*
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  // Pointer type
  return ldv_malloc(sizeof(struct device));
}

// Function: device_destroy
// with type: void device_destroy(struct class *, dev_t )
// with return type: void
void device_destroy(struct class *arg0, dev_t arg1) {
  // Void type
  return;
}

// Skip function: kfree

// Function: kmem_cache_alloc
// with type: void *kmem_cache_alloc(struct kmem_cache *, gfp_t )
// with return type: (void)*
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  // Pointer type
  return ldv_malloc(0UL);
}

// Function: ldv_check_final_state
// with type: void ldv_check_final_state()
// with return type: void
void ldv_check_final_state() {
  // Void type
  return;
}

// Function: ldv_initialize
// with type: void ldv_initialize()
// with return type: void
void ldv_initialize() {
  // Void type
  return;
}

// Function: ldv_some_page
// with type: struct page___0 *ldv_some_page()
// with return type: (struct page___0)*
struct page___0 *ldv_some_page() {
  // Pointer type
  return ldv_malloc(sizeof(struct page___0));
}

// Skip function: malloc

// Skip function: memcmp

// Skip function: memset

// Function: might_fault
// with type: void might_fault()
// with return type: void
void might_fault() {
  // Void type
  return;
}

// Function: mutex_lock_nested
// with type: void mutex_lock_nested(struct mutex *, unsigned int)
// with return type: void
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  // Void type
  return;
}

// Function: mutex_unlock
// with type: void mutex_unlock(struct mutex *)
// with return type: void
void mutex_unlock(struct mutex *arg0) {
  // Void type
  return;
}

// Function: noop_llseek
// with type: loff_t noop_llseek(struct file *, loff_t , int)
// with return type: loff_t 
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  // Typedef type
  // Real type: __kernel_loff_t 
  // Typedef type
  // Real type: long long
  // Simple type
  return __VERIFIER_nondet_long();
}

// Function: pi_connect
// with type: void pi_connect(PIA *)
// with return type: void
void pi_connect(PIA *arg0) {
  // Void type
  return;
}

// Function: pi_disconnect
// with type: void pi_disconnect(PIA *)
// with return type: void
void pi_disconnect(PIA *arg0) {
  // Void type
  return;
}

// Function: pi_init
// with type: int pi_init(PIA *, int, int, int, int, int, int, char *, int, int, char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int pi_init(PIA *arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, char *arg7, int arg8, int arg9, char *arg10) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: pi_read_block
// with type: void pi_read_block(PIA *, char *, int)
// with return type: void
void pi_read_block(PIA *arg0, char *arg1, int arg2) {
  // Void type
  return;
}

// Function: pi_read_regr
// with type: int pi_read_regr(PIA *, int, int)
// with return type: int
int __VERIFIER_nondet_int(void);
int pi_read_regr(PIA *arg0, int arg1, int arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: pi_release
// with type: void pi_release(PIA *)
// with return type: void
void pi_release(PIA *arg0) {
  // Void type
  return;
}

// Function: pi_write_block
// with type: void pi_write_block(PIA *, char *, int)
// with return type: void
void pi_write_block(PIA *arg0, char *arg1, int arg2) {
  // Void type
  return;
}

// Function: pi_write_regr
// with type: void pi_write_regr(PIA *, int, int, int)
// with return type: void
void pi_write_regr(PIA *arg0, int arg1, int arg2, int arg3) {
  // Void type
  return;
}

// Function: printk
// with type: int printk(const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: schedule_timeout_interruptible
// with type: long int schedule_timeout_interruptible(long)
// with return type: long int
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  // Simple type
  return __VERIFIER_nondet_long();
}

// Skip function: snprintf

