typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct tss_struct;
struct mm_struct;
struct cpumask;
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct file_operations;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct seq_operations;
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long stack[64U] ;
};
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct ldv_thread;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_47 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_47 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_50 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_50 nodemask_t;
struct path;
struct inode;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct nsproxy;
struct cred;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_153 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_154 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_152 {
   struct __anonstruct____missing_field_name_153 __annonCompField36 ;
   struct __anonstruct____missing_field_name_154 __annonCompField37 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_152 __annonCompField38 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_155 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_157 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_161 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_160 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_161 __annonCompField41 ;
   int units ;
};
struct __anonstruct____missing_field_name_159 {
   union __anonunion____missing_field_name_160 __annonCompField42 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_158 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_159 __annonCompField43 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_156 {
   union __anonunion____missing_field_name_157 __annonCompField40 ;
   union __anonunion____missing_field_name_158 __annonCompField44 ;
};
struct __anonstruct____missing_field_name_163 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_164 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_162 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_163 __annonCompField46 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_164 __annonCompField47 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_165 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   struct __anonstruct____missing_field_name_156 __annonCompField45 ;
   union __anonunion____missing_field_name_162 __annonCompField48 ;
   union __anonunion____missing_field_name_165 __annonCompField49 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_166 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct __anonstruct_shared_166 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   atomic_long_t nr_pmds ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
   void *bd_addr ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_171 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_171 __annonCompField50 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_173 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_173 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_176 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_177 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_178 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_180 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_179 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_180 _addr_bnd ;
};
struct __anonstruct__sigpoll_181 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_182 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_174 {
   int _pad[28U] ;
   struct __anonstruct__kill_175 _kill ;
   struct __anonstruct__timer_176 _timer ;
   struct __anonstruct__rt_177 _rt ;
   struct __anonstruct__sigchld_178 _sigchld ;
   struct __anonstruct__sigfault_179 _sigfault ;
   struct __anonstruct__sigpoll_181 _sigpoll ;
   struct __anonstruct__sigsys_182 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_174 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_185 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_186 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_188 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_187 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_188 __annonCompField53 ;
};
union __anonunion_type_data_189 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_191 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_190 {
   union __anonunion_payload_191 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_185 __annonCompField51 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_187 __annonCompField54 ;
   union __anonunion_type_data_189 type_data ;
   union __anonunion____missing_field_name_190 __annonCompField55 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   seqlock_t stats_lock ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
};
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
struct sensor_device_attribute_2 {
   struct device_attribute dev_attr ;
   u8 index ;
   u8 nr ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_196 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_197 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_198 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_199 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_200 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_201 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_202 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_196 integer ;
   struct __anonstruct_string_197 string ;
   struct __anonstruct_buffer_198 buffer ;
   struct __anonstruct_package_199 package ;
   struct __anonstruct_reference_200 reference ;
   struct __anonstruct_processor_201 processor ;
   struct __anonstruct_power_resource_202 power_resource ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_204 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_203 {
   struct __anonstruct____missing_field_name_204 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_203 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_206 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_205 {
   struct __anonstruct____missing_field_name_206 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_205 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_207 {
   struct hlist_node d_alias ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_207 d_u ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_209 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_208 {
   struct __anonstruct____missing_field_name_209 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_208 __annonCompField64 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_211 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_211 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_212 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_212 __annonCompField66 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct writeback_control;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct hd_struct;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_215 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_216 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_217 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_215 __annonCompField67 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_216 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_217 __annonCompField69 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_218 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_218 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_220 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_219 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_220 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_219 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   unsigned int s_quota_types ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct proc_dir_entry;
struct acpi_driver;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   void (*notify_online)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned int reserved : 23 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_221 {
   unsigned char valid : 1 ;
   unsigned char os_accessible : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_221 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_222 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_222 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
   unsigned char enabled : 1 ;
};
struct acpi_device_wakeup_context {
   struct work_struct work ;
   struct device *dev ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   struct acpi_device_wakeup_context context ;
   struct wakeup_source *ws ;
   int prepare_count ;
};
struct acpi_device_data {
   union acpi_object const *pointer ;
   union acpi_object const *properties ;
   union acpi_object const *of_compatible ;
};
struct acpi_gpio_mapping;
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct fwnode_handle fwnode ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_data data ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   struct acpi_gpio_mapping const *driver_gpios ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   unsigned int dep_unmet ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct acpi_gpio_params {
   unsigned int crs_entry_index ;
   unsigned int line_index ;
   bool active_low ;
};
struct acpi_gpio_mapping {
   char const *name ;
   struct acpi_gpio_params const *data ;
   unsigned int size ;
};
enum kinds {
    nct6106 = 0,
    nct6775 = 1,
    nct6776 = 2,
    nct6779 = 3,
    nct6791 = 4,
    nct6792 = 5
} ;
enum pwm_enable {
    off = 0,
    manual = 1,
    thermal_cruise = 2,
    speed_cruise = 3,
    sf3 = 4,
    sf4 = 5
} ;
struct nct6775_data {
   int addr ;
   int sioreg ;
   enum kinds kind ;
   char const *name ;
   struct attribute_group const *groups[6U] ;
   u16 reg_temp[5U][10U] ;
   u8 temp_src[10U] ;
   u16 reg_temp_config[10U] ;
   char const * const *temp_label ;
   int temp_label_num ;
   u16 REG_CONFIG ;
   u16 REG_VBAT ;
   u16 REG_DIODE ;
   u8 DIODE_MASK ;
   s8 const *ALARM_BITS ;
   s8 const *BEEP_BITS ;
   u16 const *REG_VIN ;
   u16 const *REG_IN_MINMAX[2U] ;
   u16 const *REG_TARGET ;
   u16 const *REG_FAN ;
   u16 const *REG_FAN_MODE ;
   u16 const *REG_FAN_MIN ;
   u16 const *REG_FAN_PULSES ;
   u16 const *FAN_PULSE_SHIFT ;
   u16 const *REG_FAN_TIME[3U] ;
   u16 const *REG_TOLERANCE_H ;
   u8 const *REG_PWM_MODE ;
   u8 const *PWM_MODE_MASK ;
   u16 const *REG_PWM[7U] ;
   u16 const *REG_PWM_READ ;
   u16 const *REG_CRITICAL_PWM_ENABLE ;
   u8 CRITICAL_PWM_ENABLE_MASK ;
   u16 const *REG_CRITICAL_PWM ;
   u16 const *REG_AUTO_TEMP ;
   u16 const *REG_AUTO_PWM ;
   u16 const *REG_CRITICAL_TEMP ;
   u16 const *REG_CRITICAL_TEMP_TOLERANCE ;
   u16 const *REG_TEMP_SOURCE ;
   u16 const *REG_TEMP_SEL ;
   u16 const *REG_WEIGHT_TEMP_SEL ;
   u16 const *REG_WEIGHT_TEMP[3U] ;
   u16 const *REG_TEMP_OFFSET ;
   u16 const *REG_ALARM ;
   u16 const *REG_BEEP ;
   unsigned int (*fan_from_reg)(u16 , unsigned int ) ;
   unsigned int (*fan_from_reg_min)(u16 , unsigned int ) ;
   struct mutex update_lock ;
   bool valid ;
   unsigned long last_updated ;
   u8 bank ;
   u8 in_num ;
   u8 in[15U][3U] ;
   unsigned int rpm[6U] ;
   u16 fan_min[6U] ;
   u8 fan_pulses[6U] ;
   u8 fan_div[6U] ;
   u8 has_pwm ;
   u8 has_fan ;
   u8 has_fan_min ;
   bool has_fan_div ;
   u8 num_temp_alarms ;
   u8 num_temp_beeps ;
   u8 temp_fixed_num ;
   u8 temp_type[6U] ;
   s8 temp_offset[6U] ;
   s16 temp[5U][10U] ;
   u64 alarms ;
   u64 beeps ;
   u8 pwm_num ;
   u8 pwm_mode[6U] ;
   enum pwm_enable pwm_enable[6U] ;
   u8 pwm[7U][6U] ;
   u8 target_temp[6U] ;
   u8 target_temp_mask ;
   u32 target_speed[6U] ;
   u32 target_speed_tolerance[6U] ;
   u8 speed_tolerance_limit ;
   u8 temp_tolerance[2U][6U] ;
   u8 tolerance_mask ;
   u8 fan_time[3U][6U] ;
   int auto_pwm_num ;
   u8 auto_pwm[6U][7U] ;
   u8 auto_temp[6U][7U] ;
   u8 pwm_temp_sel[6U] ;
   u8 pwm_weight_temp_sel[6U] ;
   u8 weight_temp[3U][6U] ;
   u8 vid ;
   u8 vrm ;
   bool have_vid ;
   u16 have_temp ;
   u16 have_temp_fixed ;
   u16 have_in ;
   u8 vbat ;
   u8 fandiv1 ;
   u8 fandiv2 ;
};
struct nct6775_sio_data {
   int sioreg ;
   enum kinds kind ;
};
struct __anonstruct_s_224 {
   u8 nr ;
   u8 index ;
};
union __anonunion_u_223 {
   struct __anonstruct_s_224 s ;
   int index ;
};
struct sensor_device_template {
   struct device_attribute dev_attr ;
   union __anonunion_u_223 u ;
   bool s2 ;
};
union __anonunion_u_225 {
   struct sensor_device_attribute a1 ;
   struct sensor_device_attribute_2 a2 ;
};
struct sensor_device_attr_u {
   union __anonunion_u_225 u ;
   char name[32U] ;
};
struct sensor_template_group {
   struct sensor_device_template **templates ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   int base ;
};
struct ldv_struct_platform_instance_0 {
   struct platform_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
struct request;
struct device_private {
   void *driver_data ;
};
typedef u64 dma_addr_t;
typedef unsigned long pteval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   struct kthread_worker *worker ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_chan;
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct notifier_block;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct usb_device;
struct urb;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class(res1);
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_152(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_149(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_153(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_154(int retval ) ;
static void ldv_ldv_check_final_state_150(void) ;
static void ldv_ldv_check_final_state_151(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
static void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_124(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_130(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_132(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_134(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_136(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_138(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_142(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_144(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(struct mutex *lock ) ;
extern struct module __this_module ;
extern struct pv_cpu_ops pv_cpu_ops ;
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  }
  return (tmp);
}
}
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  {
  tmp = kstrtoll(s, base, (long long *)res);
  }
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
__inline static void slow_down_io(void)
{
  {
  {
  (*(pv_cpu_ops.io_delay))();
  }
  return;
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  }
  return (tmp != 0L);
}
}
__inline static int PTR_ERR_OR_ZERO(void const *ptr )
{
  long tmp ;
  bool tmp___0 ;
  {
  {
  tmp___0 = IS_ERR(ptr);
  }
  if ((int )tmp___0) {
    {
    tmp = PTR_ERR(ptr);
    }
    return ((int )tmp);
  } else {
    return (0);
  }
}
}
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern struct resource *__devm_request_region(struct device * , struct resource * ,
                                              resource_size_t , resource_size_t ,
                                              char const * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_125(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_133(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_135(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_137(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_143(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 ) ;
extern unsigned long volatile jiffies ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outb_p(unsigned char value , int port )
{
  {
  {
  outb((int )value, port);
  slow_down_io();
  }
  return;
}
}
__inline static unsigned char inb_p(int port )
{
  unsigned char value ;
  unsigned char tmp ;
  {
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
  }
  return (value);
}
}
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  }
  return (tmp);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
__inline static void *dev_get_platdata(struct device const *dev )
{
  {
  return ((void *)dev->platform_data);
}
}
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern struct platform_device *platform_device_alloc(char const * , int ) ;
extern int platform_device_add_resources(struct platform_device * , struct resource const * ,
                                         unsigned int ) ;
extern int platform_device_add_data(struct platform_device * , void const * , size_t ) ;
extern int platform_device_add(struct platform_device * ) ;
extern void platform_device_put(struct platform_device * ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_146(struct platform_driver *ldv_func_arg1 ,
                                              struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_147(struct platform_driver *ldv_func_arg1 ) ;
static void ldv_platform_driver_unregister_148(struct platform_driver *ldv_func_arg1 ) ;
__inline static void platform_set_drvdata(struct platform_device *pdev___0 , void *data )
{
  {
  {
  dev_set_drvdata(& pdev___0->dev, data);
  }
  return;
}
}
extern struct device *devm_hwmon_device_register_with_groups(struct device * , char const * ,
                                                             void * , struct attribute_group const ** ) ;
extern int vid_from_reg(int , u8 ) ;
extern u8 vid_which_vrm(void) ;
extern int acpi_check_resource_conflict(struct resource const * ) ;
__inline static u16 LM75_TEMP_TO_REG(long temp )
{
  int ntemp ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __max1 = temp;
  __max2 = -55000L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 125000L;
  ntemp = (int )(__min1 < __min2 ? __min1 : __min2);
  ntemp = ntemp + (ntemp < 0 ? -250 : 250);
  return ((u16 )((int )((unsigned short )(ntemp / 500)) << 7U));
}
}
__inline static int LM75_TEMP_FROM_REG(u16 reg )
{
  {
  return (((int )((short )reg) / 128) * 500);
}
}
static char const * const nct6775_device_names[6U] = { "nct6106", "nct6775", "nct6776", "nct6779",
        "nct6791", "nct6792"};
static unsigned short force_id ;
static unsigned short fan_debounce ;
__inline static void superio_outb(int ioreg , int reg , int val )
{
  {
  {
  outb((int )((unsigned char )reg), ioreg);
  outb((int )((unsigned char )val), ioreg + 1);
  }
  return;
}
}
__inline static int superio_inb(int ioreg , int reg )
{
  unsigned char tmp ;
  {
  {
  outb((int )((unsigned char )reg), ioreg);
  tmp = inb(ioreg + 1);
  }
  return ((int )tmp);
}
}
__inline static void superio_select(int ioreg , int ld )
{
  {
  {
  outb(7, ioreg);
  outb((int )((unsigned char )ld), ioreg + 1);
  }
  return;
}
}
__inline static int superio_enter(int ioreg )
{
  struct resource *tmp ;
  {
  {
  tmp = __request_region(& ioport_resource, (resource_size_t )ioreg, 2ULL, "nct6775",
                         4194304);
  }
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return (-16);
  } else {
  }
  {
  outb(135, ioreg);
  outb(135, ioreg);
  }
  return (0);
}
}
__inline static void superio_exit(int ioreg )
{
  {
  {
  outb(170, ioreg);
  outb(2, ioreg);
  outb(2, ioreg + 1);
  __release_region(& ioport_resource, (resource_size_t )ioreg, 2ULL);
  }
  return;
}
}
static u16 const NCT6775_REG_IN_MAX[15U] =
  { 43U, 45U, 47U, 49U,
        51U, 53U, 55U, 1364U,
        1366U, 1368U, 1370U, 1372U,
        1374U, 1376U, 1378U};
static u16 const NCT6775_REG_IN_MIN[15U] =
  { 44U, 46U, 48U, 50U,
        52U, 54U, 56U, 1365U,
        1367U, 1369U, 1371U, 1373U,
        1375U, 1377U, 1379U};
static u16 const NCT6775_REG_IN[10U] =
  { 32U, 33U, 34U, 35U,
        36U, 37U, 38U, 1360U,
        1361U, 1362U};
static u16 const NCT6775_REG_ALARM[7U] = { 1113U, 1114U, 1115U};
static s8 const NCT6775_ALARM_BITS[32U] =
  { 0, 1, 2, 3,
        8, 21, 20, 16,
        17, -1, -1, -1,
        -1, -1, -1, -1,
        6, 7, 11, -1,
        -1, -1, -1, -1,
        4, 5, 13, -1,
        -1, -1, 12, -1};
static u16 const NCT6775_REG_BEEP[5U] = { 86U, 87U, 1107U, 78U};
static s8 const NCT6775_BEEP_BITS[32U] =
  { 0, 1, 2, 3,
        8, 9, 10, 16,
        17, -1, -1, -1,
        -1, -1, -1, 21,
        6, 7, 11, 28,
        -1, -1, -1, -1,
        4, 5, 13, -1,
        -1, -1, 12, -1};
static u8 const NCT6775_REG_CR_CASEOPEN_CLR[2U] = { 230U, 238U};
static u8 const NCT6775_CR_CASEOPEN_CLR_MASK[2U] = { 32U, 1U};
static u8 const NCT6775_REG_PWM_MODE[3U] = { 4U, 4U, 18U};
static u8 const NCT6775_PWM_MODE_MASK[3U] = { 1U, 2U, 1U};
static u16 const NCT6775_REG_TARGET[6U] = { 257U, 513U, 769U, 2049U,
        2305U, 2561U};
static u16 const NCT6775_REG_FAN_MODE[6U] = { 258U, 514U, 770U, 2050U,
        2306U, 2562U};
static u16 const NCT6775_REG_FAN_STEP_DOWN_TIME[6U] = { 259U, 515U, 771U, 2051U,
        2307U, 2563U};
static u16 const NCT6775_REG_FAN_STEP_UP_TIME[6U] = { 260U, 516U, 772U, 2052U,
        2308U, 2564U};
static u16 const NCT6775_REG_FAN_STOP_OUTPUT[6U] = { 261U, 517U, 773U, 2053U,
        2309U, 2565U};
static u16 const NCT6775_REG_FAN_START_OUTPUT[6U] = { 262U, 518U, 774U, 2054U,
        2310U, 2566U};
static u16 const NCT6775_REG_FAN_MAX_OUTPUT[3U] = { 266U, 522U, 778U};
static u16 const NCT6775_REG_FAN_STEP_OUTPUT[3U] = { 267U, 523U, 779U};
static u16 const NCT6775_REG_FAN_STOP_TIME[6U] = { 263U, 519U, 775U, 2055U,
        2311U, 2567U};
static u16 const NCT6775_REG_PWM[6U] = { 265U, 521U, 777U, 2057U,
        2313U, 2569U};
static u16 const NCT6775_REG_PWM_READ[6U] = { 1U, 3U, 17U, 19U,
        21U, 2569U};
static u16 const NCT6775_REG_FAN[5U] = { 1584U, 1586U, 1588U, 1590U,
        1592U};
static u16 const NCT6775_REG_FAN_MIN[3U] = { 59U, 60U, 61U};
static u16 const NCT6775_REG_FAN_PULSES[5U] = { 1601U, 1602U, 1603U, 1604U,
        0U};
static u16 const NCT6775_FAN_PULSE_SHIFT[6U] = { 0U, 0U, 0U, 0U,
        0U, 0U};
static u16 const NCT6775_REG_TEMP[6U] = { 39U, 336U, 592U, 1579U,
        1580U, 1581U};
static u16 const NCT6775_REG_TEMP_MON[3U] = { 115U, 117U, 119U};
static u16 const NCT6775_REG_TEMP_CONFIG[6U] = { 0U, 338U, 594U, 1576U,
        1577U, 1578U};
static u16 const NCT6775_REG_TEMP_HYST[6U] = { 58U, 339U, 595U, 1651U,
        1656U, 1661U};
static u16 const NCT6775_REG_TEMP_OVER[6U] = { 57U, 341U, 597U, 1650U,
        1655U, 1660U};
static u16 const NCT6775_REG_TEMP_SOURCE[6U] = { 1569U, 1570U, 1571U, 1572U,
        1573U, 1574U};
static u16 const NCT6775_REG_TEMP_SEL[6U] = { 256U, 512U, 768U, 2048U,
        2304U, 2560U};
static u16 const NCT6775_REG_WEIGHT_TEMP_SEL[6U] = { 313U, 569U, 825U, 2105U,
        2361U, 2617U};
static u16 const NCT6775_REG_WEIGHT_TEMP_STEP[6U] = { 314U, 570U, 826U, 2106U,
        2362U, 2618U};
static u16 const NCT6775_REG_WEIGHT_TEMP_STEP_TOL[6U] = { 315U, 571U, 827U, 2107U,
        2363U, 2619U};
static u16 const NCT6775_REG_WEIGHT_DUTY_STEP[6U] = { 316U, 572U, 828U, 2108U,
        2364U, 2620U};
static u16 const NCT6775_REG_WEIGHT_TEMP_BASE[6U] = { 317U, 573U, 829U, 2109U,
        2365U, 2621U};
static u16 const NCT6775_REG_TEMP_OFFSET[3U] = { 1108U, 1109U, 1110U};
static u16 const NCT6775_REG_AUTO_TEMP[6U] = { 289U, 545U, 801U, 2081U,
        2337U, 2593U};
static u16 const NCT6775_REG_AUTO_PWM[6U] = { 295U, 551U, 807U, 2087U,
        2343U, 2599U};
static u16 const NCT6775_REG_CRITICAL_ENAB[3U] = { 308U, 564U, 820U};
static u16 const NCT6775_REG_CRITICAL_TEMP[6U] = { 309U, 565U, 821U, 2101U,
        2357U, 2613U};
static u16 const NCT6775_REG_CRITICAL_TEMP_TOLERANCE[6U] = { 312U, 568U, 824U, 2104U,
        2360U, 2616U};
static char const * const nct6775_temp_label[21U] =
  { "", "SYSTIN", "CPUTIN", "AUXTIN",
        "AMD SB-TSI", "PECI Agent 0", "PECI Agent 1", "PECI Agent 2",
        "PECI Agent 3", "PECI Agent 4", "PECI Agent 5", "PECI Agent 6",
        "PECI Agent 7", "PCH_CHIP_CPU_MAX_TEMP", "PCH_CHIP_TEMP", "PCH_CPU_TEMP",
        "PCH_MCH_TEMP", "PCH_DIM0_TEMP", "PCH_DIM1_TEMP", "PCH_DIM2_TEMP",
        "PCH_DIM3_TEMP"};
static u16 const NCT6775_REG_TEMP_ALTERNATE[20U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 1633U, 1634U, 1636U};
static u16 const NCT6775_REG_TEMP_CRIT[20U] =
  { 0U, 0U, 0U, 0U,
        2560U, 2561U, 2562U, 2563U,
        2564U, 2565U, 2566U, 2567U};
static s8 const NCT6776_ALARM_BITS[32U] =
  { 0, 1, 2, 3,
        8, 21, 20, 16,
        17, -1, -1, -1,
        -1, -1, -1, -1,
        6, 7, 11, 10,
        23, -1, -1, -1,
        4, 5, 13, -1,
        -1, -1, 12, 9};
static u16 const NCT6776_REG_BEEP[5U] = { 178U, 179U, 180U, 181U};
static s8 const NCT6776_BEEP_BITS[32U] =
  { 0, 1, 2, 3,
        4, 5, 6, 7,
        8, -1, -1, -1,
        -1, -1, -1, 24,
        25, 26, 27, 28,
        29, -1, -1, -1,
        16, 17, 18, 19,
        20, 21, 30, 31};
static u16 const NCT6776_REG_TOLERANCE_H[6U] = { 268U, 524U, 780U, 2060U,
        2316U, 2572U};
static u8 const NCT6776_REG_PWM_MODE[6U] = { 4U, 0U, 0U, 0U,
        0U, 0U};
static u8 const NCT6776_PWM_MODE_MASK[6U] = { 1U, 0U, 0U, 0U,
        0U, 0U};
static u16 const NCT6776_REG_FAN_MIN[5U] = { 1594U, 1596U, 1598U, 1600U,
        1602U};
static u16 const NCT6776_REG_FAN_PULSES[5U] = { 1604U, 1605U, 1606U, 0U,
        0U};
static u16 const NCT6776_REG_WEIGHT_DUTY_BASE[6U] = { 318U, 574U, 830U, 2110U,
        2366U, 2622U};
static u16 const NCT6776_REG_TEMP_CONFIG[6U] = { 24U, 338U, 594U, 1576U,
        1577U, 1578U};
static char const * const nct6776_temp_label[23U] =
  { "", "SYSTIN", "CPUTIN", "AUXTIN",
        "SMBUSMASTER 0", "SMBUSMASTER 1", "SMBUSMASTER 2", "SMBUSMASTER 3",
        "SMBUSMASTER 4", "SMBUSMASTER 5", "SMBUSMASTER 6", "SMBUSMASTER 7",
        "PECI Agent 0", "PECI Agent 1", "PCH_CHIP_CPU_MAX_TEMP", "PCH_CHIP_TEMP",
        "PCH_CPU_TEMP", "PCH_MCH_TEMP", "PCH_DIM0_TEMP", "PCH_DIM1_TEMP",
        "PCH_DIM2_TEMP", "PCH_DIM3_TEMP", "BYTE_TEMP"};
static u16 const NCT6776_REG_TEMP_ALTERNATE[22U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 1025U, 1026U,
        1028U};
static u16 const NCT6776_REG_TEMP_CRIT[22U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 1801U,
        1802U};
static u16 const NCT6779_REG_IN[15U] =
  { 1152U, 1153U, 1154U, 1155U,
        1156U, 1157U, 1158U, 1159U,
        1160U, 1161U, 1162U, 1163U,
        1164U, 1165U, 1166U};
static u16 const NCT6779_REG_ALARM[7U] = { 1113U, 1114U, 1115U, 1384U};
static s8 const NCT6779_ALARM_BITS[32U] =
  { 0, 1, 2, 3,
        8, 21, 20, 16,
        17, 24, 25, 26,
        27, 28, 29, -1,
        6, 7, 11, 10,
        23, -1, -1, -1,
        4, 5, 13, -1,
        -1, -1, 12, 9};
static s8 const NCT6779_BEEP_BITS[32U] =
  { 0, 1, 2, 3,
        4, 5, 6, 7,
        8, 9, 10, 11,
        12, 13, 14, 24,
        25, 26, 27, 28,
        29, -1, -1, -1,
        16, 17, -1, -1,
        -1, -1, 30, 31};
static u16 const NCT6779_REG_FAN[6U] = { 1200U, 1202U, 1204U, 1206U,
        1208U, 1210U};
static u16 const NCT6779_REG_FAN_PULSES[6U] = { 1604U, 1605U, 1606U, 1607U,
        1608U, 1609U};
static u16 const NCT6779_REG_CRITICAL_PWM_ENABLE[6U] = { 310U, 566U, 822U, 2102U,
        2358U, 2614U};
static u16 const NCT6779_REG_CRITICAL_PWM[6U] = { 311U, 567U, 823U, 2103U,
        2359U, 2615U};
static u16 const NCT6779_REG_TEMP[2U] = { 39U, 336U};
static u16 const NCT6779_REG_TEMP_MON[5U] = { 115U, 117U, 119U, 121U,
        123U};
static u16 const NCT6779_REG_TEMP_CONFIG[2U] = { 24U, 338U};
static u16 const NCT6779_REG_TEMP_HYST[2U] = { 58U, 339U};
static u16 const NCT6779_REG_TEMP_OVER[2U] = { 57U, 341U};
static u16 const NCT6779_REG_TEMP_OFFSET[6U] = { 1108U, 1109U, 1110U, 1098U,
        1099U, 1100U};
static char const * const nct6779_temp_label[27U] =
  { "", "SYSTIN", "CPUTIN", "AUXTIN0",
        "AUXTIN1", "AUXTIN2", "AUXTIN3", "",
        "SMBUSMASTER 0", "SMBUSMASTER 1", "SMBUSMASTER 2", "SMBUSMASTER 3",
        "SMBUSMASTER 4", "SMBUSMASTER 5", "SMBUSMASTER 6", "SMBUSMASTER 7",
        "PECI Agent 0", "PECI Agent 1", "PCH_CHIP_CPU_MAX_TEMP", "PCH_CHIP_TEMP",
        "PCH_CPU_TEMP", "PCH_MCH_TEMP", "PCH_DIM0_TEMP", "PCH_DIM1_TEMP",
        "PCH_DIM2_TEMP", "PCH_DIM3_TEMP", "BYTE_TEMP"};
static u16 const NCT6779_REG_TEMP_ALTERNATE[26U] =
  { 1168U, 1169U, 1170U, 1171U,
        1172U, 1173U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 1024U, 1025U, 1026U,
        1028U, 1029U, 1030U, 1031U,
        1032U, 0U};
static u16 const NCT6779_REG_TEMP_CRIT[26U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 1801U,
        1802U};
static u16 const NCT6791_REG_WEIGHT_TEMP_SEL[6U] = { 0U, 569U};
static u16 const NCT6791_REG_WEIGHT_TEMP_STEP[6U] = { 0U, 570U};
static u16 const NCT6791_REG_WEIGHT_TEMP_STEP_TOL[6U] = { 0U, 571U};
static u16 const NCT6791_REG_WEIGHT_DUTY_STEP[6U] = { 0U, 572U};
static u16 const NCT6791_REG_WEIGHT_TEMP_BASE[6U] = { 0U, 573U};
static u16 const NCT6791_REG_WEIGHT_DUTY_BASE[6U] = { 0U, 574U};
static u16 const NCT6791_REG_ALARM[7U] = { 1113U, 1114U, 1115U, 1384U,
        1117U};
static s8 const NCT6791_ALARM_BITS[32U] =
  { 0, 1, 2, 3,
        8, 21, 20, 16,
        17, 24, 25, 26,
        27, 28, 29, -1,
        6, 7, 11, 10,
        23, 33, -1, -1,
        4, 5, 13, -1,
        -1, -1, 12, 9};
static u16 const NCT6792_REG_TEMP_MON[6U] = { 115U, 117U, 119U, 121U,
        123U, 125U};
static u16 const NCT6792_REG_BEEP[5U] = { 178U, 179U, 180U, 181U,
        191U};
static u16 const NCT6106_REG_IN_MAX[9U] =
  { 144U, 146U, 148U, 150U,
        152U, 154U, 158U, 160U,
        162U};
static u16 const NCT6106_REG_IN_MIN[9U] =
  { 145U, 147U, 149U, 151U,
        153U, 155U, 159U, 161U,
        163U};
static u16 const NCT6106_REG_IN[9U] =
  { 0U, 1U, 2U, 3U,
        4U, 5U, 7U, 8U,
        9U};
static u16 const NCT6106_REG_TEMP[6U] = { 16U, 17U, 18U, 19U,
        20U, 21U};
static u16 const NCT6106_REG_TEMP_MON[3U] = { 24U, 25U, 26U};
static u16 const NCT6106_REG_TEMP_HYST[6U] = { 195U, 199U, 203U, 207U,
        211U, 215U};
static u16 const NCT6106_REG_TEMP_OVER[6U] = { 194U, 198U, 202U, 206U,
        210U, 214U};
static u16 const NCT6106_REG_TEMP_CRIT_L[6U] = { 192U, 196U, 200U, 204U,
        208U, 212U};
static u16 const NCT6106_REG_TEMP_CRIT_H[6U] = { 193U, 197U, 201U, 207U,
        209U, 213U};
static u16 const NCT6106_REG_TEMP_OFFSET[3U] = { 785U, 786U, 787U};
static u16 const NCT6106_REG_TEMP_CONFIG[6U] = { 183U, 184U, 185U, 186U,
        187U, 188U};
static u16 const NCT6106_REG_FAN[3U] = { 32U, 34U, 36U};
static u16 const NCT6106_REG_FAN_MIN[3U] = { 224U, 226U, 228U};
static u16 const NCT6106_REG_FAN_PULSES[5U] = { 246U, 246U, 246U, 0U,
        0U};
static u16 const NCT6106_FAN_PULSE_SHIFT[5U] = { 0U, 2U, 4U, 0U,
        0U};
static u8 const NCT6106_REG_PWM_MODE[3U] = { 243U, 243U, 243U};
static u8 const NCT6106_PWM_MODE_MASK[3U] = { 1U, 2U, 4U};
static u16 const NCT6106_REG_PWM[3U] = { 281U, 297U, 313U};
static u16 const NCT6106_REG_PWM_READ[3U] = { 74U, 75U, 76U};
static u16 const NCT6106_REG_FAN_MODE[3U] = { 275U, 291U, 307U};
static u16 const NCT6106_REG_TEMP_SEL[3U] = { 272U, 288U, 304U};
static u16 const NCT6106_REG_TEMP_SOURCE[6U] = { 176U, 177U, 178U, 179U,
        180U, 181U};
static u16 const NCT6106_REG_CRITICAL_TEMP[3U] = { 282U, 298U, 314U};
static u16 const NCT6106_REG_CRITICAL_TEMP_TOLERANCE[3U] = { 283U, 299U, 315U};
static u16 const NCT6106_REG_CRITICAL_PWM_ENABLE[3U] = { 284U, 300U, 316U};
static u16 const NCT6106_REG_CRITICAL_PWM[3U] = { 285U, 301U, 317U};
static u16 const NCT6106_REG_FAN_STEP_UP_TIME[3U] = { 276U, 292U, 308U};
static u16 const NCT6106_REG_FAN_STEP_DOWN_TIME[3U] = { 277U, 293U, 309U};
static u16 const NCT6106_REG_FAN_STOP_OUTPUT[3U] = { 278U, 294U, 310U};
static u16 const NCT6106_REG_FAN_START_OUTPUT[3U] = { 279U, 295U, 311U};
static u16 const NCT6106_REG_FAN_STOP_TIME[3U] = { 280U, 296U, 312U};
static u16 const NCT6106_REG_TARGET[3U] = { 273U, 289U, 305U};
static u16 const NCT6106_REG_WEIGHT_TEMP_SEL[3U] = { 360U, 376U, 392U};
static u16 const NCT6106_REG_WEIGHT_TEMP_STEP[3U] = { 361U, 377U, 393U};
static u16 const NCT6106_REG_WEIGHT_TEMP_STEP_TOL[3U] = { 362U, 378U, 394U};
static u16 const NCT6106_REG_WEIGHT_DUTY_STEP[3U] = { 363U, 379U, 380U};
static u16 const NCT6106_REG_WEIGHT_TEMP_BASE[3U] = { 364U, 380U, 396U};
static u16 const NCT6106_REG_WEIGHT_DUTY_BASE[3U] = { 365U, 381U, 397U};
static u16 const NCT6106_REG_AUTO_TEMP[3U] = { 352U, 368U, 384U};
static u16 const NCT6106_REG_AUTO_PWM[3U] = { 356U, 372U, 388U};
static u16 const NCT6106_REG_ALARM[7U] = { 119U, 120U, 121U, 122U,
        123U, 124U, 125U};
static s8 const NCT6106_ALARM_BITS[32U] =
  { 0, 1, 2, 3,
        4, 5, 7, 8,
        9, -1, -1, -1,
        -1, -1, -1, -1,
        32, 33, 34, -1,
        -1, -1, -1, -1,
        16, 17, 18, 19,
        20, 21, 48, -1};
static u16 const NCT6106_REG_BEEP[5U] = { 960U, 961U, 962U, 963U,
        964U};
static s8 const NCT6106_BEEP_BITS[32U] =
  { 0, 1, 2, 3,
        4, 5, 7, 8,
        9, 10, 11, 12,
        -1, -1, -1, 32,
        24, 25, 26, 27,
        28, -1, -1, -1,
        16, 17, 18, 19,
        20, 21, 34, -1};
static u16 const NCT6106_REG_TEMP_ALTERNATE[22U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 81U, 82U,
        84U};
static u16 const NCT6106_REG_TEMP_CRIT[22U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 516U,
        517U};
static enum pwm_enable reg_to_pwm_enable(int pwm , int mode )
{
  {
  if (mode == 0 && pwm == 255) {
    return (0);
  } else {
  }
  return ((enum pwm_enable )(mode + 1));
}
}
static int pwm_enable_to_reg(enum pwm_enable mode )
{
  {
  if ((unsigned int )mode == 0U) {
    return (0);
  } else {
  }
  return ((int )((unsigned int )mode - 1U));
}
}
static unsigned int step_time_from_reg(u8 reg , u8 mode )
{
  {
  return ((unsigned int )((unsigned int )mode != 0U ? (int )reg * 400 : (int )reg * 100));
}
}
static u8 step_time_to_reg(unsigned int msec , u8 mode )
{
  unsigned int __min1 ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  unsigned int __min2 ;
  {
  __max1 = (unsigned int )mode != 0U ? (msec + 200U) / 400U : (msec + 50U) / 100U;
  __max2 = 1U;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255U;
  return ((u8 )(__min1 < __min2 ? __min1 : __min2));
}
}
static unsigned int fan_from_reg8(u16 reg , unsigned int divreg )
{
  {
  if ((unsigned int )reg == 0U || (unsigned int )reg == 255U) {
    return (0U);
  } else {
  }
  return (1350000U / (unsigned int )((int )reg << (int )divreg));
}
}
static unsigned int fan_from_reg13(u16 reg , unsigned int divreg )
{
  {
  if (((int )reg & 65311) == 65311) {
    return (0U);
  } else {
  }
  reg = (u16 )(((int )((short )reg) & 31) | (int )((short )(((int )reg & 65280) >> 3)));
  if ((unsigned int )reg == 0U) {
    return (0U);
  } else {
  }
  return (1350000U / (unsigned int )reg);
}
}
static unsigned int fan_from_reg16(u16 reg , unsigned int divreg )
{
  {
  if ((unsigned int )reg - 1U > 65533U) {
    return (0U);
  } else {
  }
  return (1350000U / (unsigned int )((int )reg << (int )divreg));
}
}
static u16 fan_to_reg(u32 fan , unsigned int divreg )
{
  {
  if (fan == 0U) {
    return (0U);
  } else {
  }
  return ((u16 )(1350000U / fan >> (int )divreg));
}
}
__inline static unsigned int div_from_reg(u8 reg )
{
  {
  return ((unsigned int )(1 << (int )reg));
}
}
static u16 const scale_in[15U] =
  { 800U, 800U, 1600U, 1600U,
        800U, 800U, 800U, 1600U,
        1600U, 800U, 800U, 800U,
        800U, 800U, 800U};
__inline static long in_from_reg(u8 reg , u8 nr )
{
  int __x ;
  int __d ;
  {
  __x = (int )reg * (int )scale_in[(int )nr];
  __d = 100;
  return ((long )(__x > 0 ? (__x + __d / 2) / __d : (__x - __d / 2) / __d));
}
}
__inline static u8 in_to_reg(u32 val , u8 nr )
{
  u32 __min1 ;
  u32 __max1 ;
  u32 __x ;
  unsigned short __d ;
  u32 __max2 ;
  u32 __min2 ;
  {
  __x = val * 100U;
  __d = scale_in[(int )nr];
  __max1 = (__x + (unsigned int )__d / 2U) / (u32 )__d;
  __max2 = 0U;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255U;
  return ((u8 )(__min1 < __min2 ? __min1 : __min2));
}
}
static struct attribute_group *nct6775_create_attr_group(struct device *dev , struct sensor_template_group *tg ,
                                                         int repeat )
{
  struct attribute_group *group ;
  struct sensor_device_attr_u *su ;
  struct sensor_device_attribute *a ;
  struct sensor_device_attribute_2 *a2 ;
  struct attribute **attrs ;
  struct sensor_device_template **t ;
  int i ;
  int count ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  if (repeat <= 0) {
    {
    tmp = ERR_PTR(-22L);
    }
    return ((struct attribute_group *)tmp);
  } else {
  }
  t = tg->templates;
  count = 0;
  goto ldv_30268;
  ldv_30267:
  t = t + 1;
  count = count + 1;
  ldv_30268: ;
  if ((unsigned long )*t != (unsigned long )((struct sensor_device_template *)0)) {
    goto ldv_30267;
  } else {
  }
  if (count == 0) {
    {
    tmp___0 = ERR_PTR(-22L);
    }
    return ((struct attribute_group *)tmp___0);
  } else {
  }
  {
  tmp___1 = devm_kzalloc(dev, 32UL, 208U);
  group = (struct attribute_group *)tmp___1;
  }
  if ((unsigned long )group == (unsigned long )((struct attribute_group *)0)) {
    {
    tmp___2 = ERR_PTR(-12L);
    }
    return ((struct attribute_group *)tmp___2);
  } else {
  }
  {
  tmp___3 = devm_kzalloc(dev, (unsigned long )(repeat * count + 1) * 8UL, 208U);
  attrs = (struct attribute **)tmp___3;
  }
  if ((unsigned long )attrs == (unsigned long )((struct attribute **)0)) {
    {
    tmp___4 = ERR_PTR(-12L);
    }
    return ((struct attribute_group *)tmp___4);
  } else {
  }
  {
  tmp___5 = devm_kzalloc(dev, ((unsigned long )repeat * (unsigned long )count) * 88UL,
                         208U);
  su = (struct sensor_device_attr_u *)tmp___5;
  }
  if ((unsigned long )su == (unsigned long )((struct sensor_device_attr_u *)0)) {
    {
    tmp___6 = ERR_PTR(-12L);
    }
    return ((struct attribute_group *)tmp___6);
  } else {
  }
  group->attrs = attrs;
  group->is_visible = tg->is_visible;
  i = 0;
  goto ldv_30274;
  ldv_30273:
  t = tg->templates;
  goto ldv_30271;
  ldv_30270:
  {
  snprintf((char *)(& su->name), 32UL, (*t)->dev_attr.attr.name, tg->base + i);
  }
  if ((int )(*t)->s2) {
    a2 = & su->u.a2;
    a2->dev_attr.attr.name = (char const *)(& su->name);
    a2->nr = (int )(*t)->u.s.nr + (int )((u8 )i);
    a2->index = (*t)->u.s.index;
    a2->dev_attr.attr.mode = (*t)->dev_attr.attr.mode;
    a2->dev_attr.show = (*t)->dev_attr.show;
    a2->dev_attr.store = (*t)->dev_attr.store;
    *attrs = & a2->dev_attr.attr;
  } else {
    a = & su->u.a1;
    a->dev_attr.attr.name = (char const *)(& su->name);
    a->index = (*t)->u.index + i;
    a->dev_attr.attr.mode = (*t)->dev_attr.attr.mode;
    a->dev_attr.show = (*t)->dev_attr.show;
    a->dev_attr.store = (*t)->dev_attr.store;
    *attrs = & a->dev_attr.attr;
  }
  attrs = attrs + 1;
  su = su + 1;
  t = t + 1;
  ldv_30271: ;
  if ((unsigned long )*t != (unsigned long )((struct sensor_device_template *)0)) {
    goto ldv_30270;
  } else {
  }
  i = i + 1;
  ldv_30274: ;
  if (i < repeat) {
    goto ldv_30273;
  } else {
  }
  return (group);
}
}
static bool is_word_sized(struct nct6775_data *data , u16 reg )
{
  {
  {
  if ((unsigned int )data->kind == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )data->kind == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )data->kind == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )data->kind == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )data->kind == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )data->kind == 5U) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0: ;
  return ((bool )((((((unsigned int )reg == 32U || (unsigned int )reg == 34U) || ((unsigned int )reg == 36U || (unsigned int )reg == 224U)) || ((unsigned int )reg == 226U || (unsigned int )reg == 228U)) || ((unsigned int )reg == 273U || (unsigned int )reg == 289U)) || (unsigned int )reg == 305U));
  case_1: ;
  return ((bool )(((((((((int )reg & 65280) == 256 || ((int )reg & 65280) == 512) && ((((int )reg & 255) == 80 || ((int )reg & 255) == 83) || ((int )reg & 255) == 85)) || (((int )reg & 65520) == 1584 || (unsigned int )reg == 1600U)) || ((unsigned int )reg == 1602U || (unsigned int )reg == 1634U)) || (((int )reg & 65520) == 1616 && ((int )reg & 15) > 5)) || ((unsigned int )reg == 115U || (unsigned int )reg == 117U)) || (unsigned int )reg == 119U));
  case_2: ;
  return ((bool )(((((((((int )reg & 65280) == 256 || ((int )reg & 65280) == 512) && ((((int )reg & 255) == 80 || ((int )reg & 255) == 83) || ((int )reg & 255) == 85)) || (((int )reg & 65520) == 1584 || (unsigned int )reg == 1026U)) || ((unsigned int )reg == 1600U || (unsigned int )reg == 1602U)) || (((int )reg & 65520) == 1616 && ((int )reg & 15) > 5)) || ((unsigned int )reg == 115U || (unsigned int )reg == 117U)) || (unsigned int )reg == 119U));
  case_3: ;
  case_4: ;
  case_5: ;
  return ((bool )((((((((((unsigned int )reg == 336U || (unsigned int )reg == 339U) || (unsigned int )reg == 341U) || (((int )reg & 65520) == 1200 && ((int )reg & 15) <= 10)) || ((unsigned int )reg == 1026U || (unsigned int )reg == 1594U)) || ((unsigned int )reg == 1596U || (unsigned int )reg == 1598U)) || ((unsigned int )reg == 1600U || (unsigned int )reg == 1602U)) || ((unsigned int )reg == 115U || (unsigned int )reg == 117U)) || ((unsigned int )reg == 119U || (unsigned int )reg == 121U)) || ((unsigned int )reg == 123U || (unsigned int )reg == 125U)));
  switch_break: ;
  }
  return (0);
}
}
__inline static void nct6775_set_bank(struct nct6775_data *data , u16 reg )
{
  u8 bank ;
  {
  bank = (u8 )((int )reg >> 8);
  if ((int )data->bank != (int )bank) {
    {
    outb_p(78, data->addr);
    outb_p((int )bank, data->addr + 1);
    data->bank = bank;
    }
  } else {
  }
  return;
}
}
static u16 nct6775_read_value(struct nct6775_data *data , u16 reg )
{
  int res ;
  int word_sized ;
  bool tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  tmp = is_word_sized(data, (int )reg);
  word_sized = (int )tmp;
  nct6775_set_bank(data, (int )reg);
  outb_p((int )((unsigned char )reg), data->addr);
  tmp___0 = inb_p(data->addr + 1);
  res = (int )tmp___0;
  }
  if (word_sized != 0) {
    {
    outb_p((int )((unsigned int )((unsigned char )reg) + 1U), data->addr);
    tmp___1 = inb_p(data->addr + 1);
    res = (res << 8) + (int )tmp___1;
    }
  } else {
  }
  return ((u16 )res);
}
}
static int nct6775_write_value(struct nct6775_data *data , u16 reg , u16 value )
{
  int word_sized ;
  bool tmp ;
  {
  {
  tmp = is_word_sized(data, (int )reg);
  word_sized = (int )tmp;
  nct6775_set_bank(data, (int )reg);
  outb_p((int )((unsigned char )reg), data->addr);
  }
  if (word_sized != 0) {
    {
    outb_p((int )((unsigned char )((int )value >> 8)), data->addr + 1);
    outb_p((int )((unsigned int )((unsigned char )reg) + 1U), data->addr);
    }
  } else {
  }
  {
  outb_p((int )((unsigned char )value), data->addr + 1);
  }
  return (0);
}
}
static u16 nct6775_read_temp(struct nct6775_data *data , u16 reg )
{
  u16 res ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  res = nct6775_read_value(data, (int )reg);
  tmp = is_word_sized(data, (int )reg);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    res = (int )res << 8U;
  } else {
  }
  return (res);
}
}
static int nct6775_write_temp(struct nct6775_data *data , u16 reg , u16 value )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = is_word_sized(data, (int )reg);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    value = (u16 )((int )value >> 8);
  } else {
  }
  {
  tmp___1 = nct6775_write_value(data, (int )reg, (int )value);
  }
  return (tmp___1);
}
}
static void nct6775_write_fan_div(struct nct6775_data *data , int nr )
{
  u8 reg ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  {
  if (nr == 0) {
    goto case_0;
  } else {
  }
  if (nr == 1) {
    goto case_1;
  } else {
  }
  if (nr == 2) {
    goto case_2;
  } else {
  }
  if (nr == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tmp = nct6775_read_value(data, 1286);
  reg = (u8 )(((int )((signed char )tmp) & 112) | ((int )((signed char )data->fan_div[0]) & 7));
  nct6775_write_value(data, 1286, (int )reg);
  }
  goto ldv_30319;
  case_1:
  {
  tmp___0 = nct6775_read_value(data, 1286);
  reg = (u8 )(((int )((signed char )tmp___0) & 7) | ((int )((signed char )((int )data->fan_div[1] << 4)) & 112));
  nct6775_write_value(data, 1286, (int )reg);
  }
  goto ldv_30319;
  case_2:
  {
  tmp___1 = nct6775_read_value(data, 1287);
  reg = (u8 )(((int )((signed char )tmp___1) & 112) | ((int )((signed char )data->fan_div[2]) & 7));
  nct6775_write_value(data, 1287, (int )reg);
  }
  goto ldv_30319;
  case_3:
  {
  tmp___2 = nct6775_read_value(data, 1287);
  reg = (u8 )(((int )((signed char )tmp___2) & 7) | ((int )((signed char )((int )data->fan_div[3] << 4)) & 112));
  nct6775_write_value(data, 1287, (int )reg);
  }
  goto ldv_30319;
  switch_break: ;
  }
  ldv_30319: ;
  return;
}
}
static void nct6775_write_fan_div_common(struct nct6775_data *data , int nr )
{
  {
  if ((unsigned int )data->kind == 1U) {
    {
    nct6775_write_fan_div(data, nr);
    }
  } else {
  }
  return;
}
}
static void nct6775_update_fan_div(struct nct6775_data *data )
{
  u8 i ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  {
  tmp = nct6775_read_value(data, 1286);
  i = (u8 )tmp;
  data->fan_div[0] = (unsigned int )i & 7U;
  data->fan_div[1] = (u8 )(((int )i & 112) >> 4);
  tmp___0 = nct6775_read_value(data, 1287);
  i = (u8 )tmp___0;
  data->fan_div[2] = (unsigned int )i & 7U;
  }
  if (((int )data->has_fan & 8) != 0) {
    data->fan_div[3] = (u8 )(((int )i & 112) >> 4);
  } else {
  }
  return;
}
}
static void nct6775_update_fan_div_common(struct nct6775_data *data )
{
  {
  if ((unsigned int )data->kind == 1U) {
    {
    nct6775_update_fan_div(data);
    }
  } else {
  }
  return;
}
}
static void nct6775_init_fan_div(struct nct6775_data *data )
{
  int i ;
  {
  {
  nct6775_update_fan_div_common(data);
  i = 0;
  }
  goto ldv_30342;
  ldv_30341: ;
  if ((((int )data->has_fan >> i) & 1) == 0) {
    goto ldv_30340;
  } else {
  }
  if ((unsigned int )data->fan_div[i] == 0U) {
    {
    data->fan_div[i] = 7U;
    nct6775_write_fan_div_common(data, i);
    }
  } else {
  }
  ldv_30340:
  i = i + 1;
  ldv_30342: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_30341;
  } else {
  }
  return;
}
}
static void nct6775_init_fan_common(struct device *dev , struct nct6775_data *data )
{
  int i ;
  u8 reg ;
  u16 tmp ;
  {
  if ((int )data->has_fan_div) {
    {
    nct6775_init_fan_div(data);
    }
  } else {
  }
  i = 0;
  goto ldv_30353;
  ldv_30352: ;
  if (((int )data->has_fan_min >> i) & 1) {
    {
    tmp = nct6775_read_value(data, (int )*(data->REG_FAN_MIN + (unsigned long )i));
    reg = (u8 )tmp;
    }
    if ((unsigned int )reg == 0U) {
      {
      nct6775_write_value(data, (int )*(data->REG_FAN_MIN + (unsigned long )i), (int )data->has_fan_div ? 255 : 65311);
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_30353: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_30352;
  } else {
  }
  return;
}
}
static void nct6775_select_fan_div(struct device *dev , struct nct6775_data *data ,
                                   int nr , u16 reg )
{
  u8 fan_div ;
  u16 fan_min ;
  struct _ddebug descriptor ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  fan_div = data->fan_div[nr];
  if (! data->has_fan_div) {
    return;
  } else {
  }
  if ((unsigned int )reg == 0U && (unsigned int )fan_div <= 6U) {
    fan_div = (u8 )((int )fan_div + 1);
  } else
  if ((unsigned int )reg - 1U <= 46U && (unsigned int )fan_div != 0U) {
    fan_div = (u8 )((int )fan_div - 1);
  } else {
  }
  if ((int )fan_div != (int )data->fan_div[nr]) {
    {
    descriptor.modname = "nct6775";
    descriptor.function = "nct6775_select_fan_div";
    descriptor.filename = "drivers/hwmon/nct6775.c";
    descriptor.format = "Modifying fan%d clock divider from %u to %u\n";
    descriptor.lineno = 1254U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp = div_from_reg((int )fan_div);
      tmp___0 = div_from_reg((int )data->fan_div[nr]);
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "Modifying fan%d clock divider from %u to %u\n",
                        nr + 1, tmp___0, tmp);
      }
    } else {
    }
    if (((int )data->has_fan_min >> nr) & 1) {
      fan_min = data->fan_min[nr];
      if ((int )fan_div > (int )data->fan_div[nr]) {
        if ((unsigned int )fan_min != 255U && (unsigned int )fan_min > 1U) {
          fan_min = (u16 )((int )fan_min >> 1);
        } else {
        }
      } else
      if ((unsigned int )fan_min != 255U) {
        fan_min = (int )fan_min << 1U;
        if ((unsigned int )fan_min > 254U) {
          fan_min = 254U;
        } else {
        }
      } else {
      }
      if ((int )fan_min != (int )data->fan_min[nr]) {
        {
        data->fan_min[nr] = fan_min;
        nct6775_write_value(data, (int )*(data->REG_FAN_MIN + (unsigned long )nr),
                            (int )fan_min);
        }
      } else {
      }
    } else {
    }
    {
    data->fan_div[nr] = fan_div;
    nct6775_write_fan_div_common(data, nr);
    }
  } else {
  }
  return;
}
}
static void nct6775_update_pwm(struct device *dev )
{
  struct nct6775_data *data ;
  void *tmp ;
  int i ;
  int j ;
  int fanmodecfg ;
  int reg ;
  bool duty_is_dc ;
  u16 tmp___0 ;
  int tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u8 t ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  i = 0;
  }
  goto ldv_30387;
  ldv_30386: ;
  if ((((int )data->has_pwm >> i) & 1) == 0) {
    goto ldv_30374;
  } else {
  }
  if ((unsigned int )((unsigned char )*(data->REG_PWM_MODE + (unsigned long )i)) != 0U) {
    {
    tmp___0 = nct6775_read_value(data, (int )*(data->REG_PWM_MODE + (unsigned long )i));
    }
    if (((int )tmp___0 & (int )*(data->PWM_MODE_MASK + (unsigned long )i)) != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  {
  duty_is_dc = (bool )tmp___1;
  data->pwm_mode[i] = (u8 )duty_is_dc;
  tmp___2 = nct6775_read_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )i));
  fanmodecfg = (int )tmp___2;
  j = 0;
  }
  goto ldv_30378;
  ldv_30377: ;
  if ((unsigned long )data->REG_PWM[j] != (unsigned long )((u16 const *)0U) && (unsigned int )((unsigned short )*(data->REG_PWM[j] + (unsigned long )i)) != 0U) {
    {
    tmp___3 = nct6775_read_value(data, (int )*(data->REG_PWM[j] + (unsigned long )i));
    data->pwm[j][i] = (u8 )tmp___3;
    }
  } else {
  }
  j = j + 1;
  ldv_30378: ;
  if ((unsigned int )j <= 6U) {
    goto ldv_30377;
  } else {
  }
  {
  data->pwm_enable[i] = reg_to_pwm_enable((int )data->pwm[0][i], (fanmodecfg >> 4) & 7);
  }
  if ((unsigned int )data->temp_tolerance[0][i] == 0U || (unsigned int )data->pwm_enable[i] != 3U) {
    data->temp_tolerance[0][i] = (unsigned int )((u8 )fanmodecfg) & 15U;
  } else {
  }
  if (data->target_speed_tolerance[i] == 0U || (unsigned int )data->pwm_enable[i] == 3U) {
    t = (unsigned int )((u8 )fanmodecfg) & 15U;
    if ((unsigned long )data->REG_TOLERANCE_H != (unsigned long )((u16 const *)0U)) {
      {
      tmp___4 = nct6775_read_value(data, (int )*(data->REG_TOLERANCE_H + (unsigned long )i));
      t = (u8 )((int )((signed char )t) | (int )((signed char )(((int )tmp___4 & 112) >> 1)));
      }
    } else {
    }
    data->target_speed_tolerance[i] = (u32 )t;
  } else {
  }
  {
  tmp___5 = nct6775_read_value(data, (int )*(data->REG_CRITICAL_TEMP_TOLERANCE + (unsigned long )i));
  data->temp_tolerance[1][i] = (u8 )tmp___5;
  tmp___6 = nct6775_read_value(data, (int )*(data->REG_TEMP_SEL + (unsigned long )i));
  reg = (int )tmp___6;
  data->pwm_temp_sel[i] = (unsigned int )((u8 )reg) & 31U;
  }
  if ((reg & 128) != 0) {
    data->pwm[2][i] = 0U;
  } else {
  }
  if ((unsigned int )((unsigned short )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )i)) == 0U) {
    goto ldv_30374;
  } else {
  }
  {
  tmp___7 = nct6775_read_value(data, (int )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )i));
  reg = (int )tmp___7;
  data->pwm_weight_temp_sel[i] = (unsigned int )((u8 )reg) & 31U;
  }
  if (j == 1 && (reg & 128) == 0) {
    data->pwm_weight_temp_sel[i] = 0U;
  } else {
  }
  j = 0;
  goto ldv_30384;
  ldv_30383:
  {
  tmp___8 = nct6775_read_value(data, (int )*(data->REG_WEIGHT_TEMP[j] + (unsigned long )i));
  data->weight_temp[j][i] = (u8 )tmp___8;
  j = j + 1;
  }
  ldv_30384: ;
  if ((unsigned int )j <= 2U) {
    goto ldv_30383;
  } else {
  }
  ldv_30374:
  i = i + 1;
  ldv_30387: ;
  if (i < (int )data->pwm_num) {
    goto ldv_30386;
  } else {
  }
  return;
}
}
static void nct6775_update_pwm_limits(struct device *dev )
{
  struct nct6775_data *data ;
  void *tmp ;
  int i ;
  int j ;
  u8 reg ;
  u16 reg_t ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  i = 0;
  }
  goto ldv_30414;
  ldv_30413: ;
  if ((((int )data->has_pwm >> i) & 1) == 0) {
    goto ldv_30397;
  } else {
  }
  j = 0;
  goto ldv_30401;
  ldv_30400:
  {
  tmp___0 = nct6775_read_value(data, (int )*(data->REG_FAN_TIME[j] + (unsigned long )i));
  data->fan_time[j][i] = (u8 )tmp___0;
  j = j + 1;
  }
  ldv_30401: ;
  if ((unsigned int )j <= 2U) {
    goto ldv_30400;
  } else {
  }
  {
  reg_t = nct6775_read_value(data, (int )*(data->REG_TARGET + (unsigned long )i));
  }
  if ((unsigned int )data->target_temp[i] == 0U || (unsigned int )data->pwm_enable[i] == 2U) {
    data->target_temp[i] = (int )((u8 )reg_t) & (int )data->target_temp_mask;
  } else {
  }
  if (data->target_speed[i] == 0U || (unsigned int )data->pwm_enable[i] == 3U) {
    if ((unsigned long )data->REG_TOLERANCE_H != (unsigned long )((u16 const *)0U)) {
      {
      tmp___1 = nct6775_read_value(data, (int )*(data->REG_TOLERANCE_H + (unsigned long )i));
      reg_t = (u16 )((int )((short )reg_t) | (int )((short )(((int )tmp___1 & 15) << 8)));
      }
    } else {
    }
    data->target_speed[i] = (u32 )reg_t;
  } else {
  }
  j = 0;
  goto ldv_30404;
  ldv_30403:
  {
  tmp___2 = nct6775_read_value(data, (int )((u16 )*(data->REG_AUTO_PWM + (unsigned long )i)) + (int )((u16 )j));
  data->auto_pwm[i][j] = (u8 )tmp___2;
  tmp___3 = nct6775_read_value(data, (int )((u16 )*(data->REG_AUTO_TEMP + (unsigned long )i)) + (int )((u16 )j));
  data->auto_temp[i][j] = (u8 )tmp___3;
  j = j + 1;
  }
  ldv_30404: ;
  if (j < data->auto_pwm_num) {
    goto ldv_30403;
  } else {
  }
  {
  tmp___4 = nct6775_read_value(data, (int )*(data->REG_CRITICAL_TEMP + (unsigned long )i));
  data->auto_temp[i][data->auto_pwm_num] = (u8 )tmp___4;
  }
  {
  if ((unsigned int )data->kind == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )data->kind == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )data->kind == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )data->kind == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )data->kind == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )data->kind == 5U) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_1:
  {
  tmp___5 = nct6775_read_value(data, (int )NCT6775_REG_CRITICAL_ENAB[i]);
  reg = (u8 )tmp___5;
  data->auto_pwm[i][data->auto_pwm_num] = ((int )reg & 2) != 0 ? 255U : 0U;
  }
  goto ldv_30407;
  case_2:
  data->auto_pwm[i][data->auto_pwm_num] = 255U;
  goto ldv_30407;
  case_0: ;
  case_3: ;
  case_4: ;
  case_5:
  {
  tmp___6 = nct6775_read_value(data, (int )*(data->REG_CRITICAL_PWM_ENABLE + (unsigned long )i));
  reg = (u8 )tmp___6;
  }
  if ((unsigned int )((int )reg & (int )data->CRITICAL_PWM_ENABLE_MASK) != 0U) {
    {
    tmp___7 = nct6775_read_value(data, (int )*(data->REG_CRITICAL_PWM + (unsigned long )i));
    reg = (u8 )tmp___7;
    }
  } else {
    reg = 255U;
  }
  data->auto_pwm[i][data->auto_pwm_num] = reg;
  goto ldv_30407;
  switch_break: ;
  }
  ldv_30407: ;
  ldv_30397:
  i = i + 1;
  ldv_30414: ;
  if (i < (int )data->pwm_num) {
    goto ldv_30413;
  } else {
  }
  return;
}
}
static struct nct6775_data *nct6775_update_device(struct device *dev )
{
  struct nct6775_data *data ;
  void *tmp ;
  int i ;
  int j ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 reg ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u8 alarm ;
  u16 tmp___6 ;
  u8 beep ;
  u16 tmp___7 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  ldv_mutex_lock_96(& data->update_lock);
  }
  if ((long )((data->last_updated - (unsigned long )jiffies) + 375UL) < 0L || ! data->valid) {
    {
    nct6775_update_fan_div_common(data);
    i = 0;
    }
    goto ldv_30430;
    ldv_30429: ;
    if ((((int )data->have_in >> i) & 1) == 0) {
      goto ldv_30428;
    } else {
    }
    {
    tmp___0 = nct6775_read_value(data, (int )*(data->REG_VIN + (unsigned long )i));
    data->in[i][0] = (u8 )tmp___0;
    tmp___1 = nct6775_read_value(data, (int )*(data->REG_IN_MINMAX[0] + (unsigned long )i));
    data->in[i][1] = (u8 )tmp___1;
    tmp___2 = nct6775_read_value(data, (int )*(data->REG_IN_MINMAX[1] + (unsigned long )i));
    data->in[i][2] = (u8 )tmp___2;
    }
    ldv_30428:
    i = i + 1;
    ldv_30430: ;
    if (i < (int )data->in_num) {
      goto ldv_30429;
    } else {
    }
    i = 0;
    goto ldv_30437;
    ldv_30436: ;
    if ((((int )data->has_fan >> i) & 1) == 0) {
      goto ldv_30435;
    } else {
    }
    {
    reg = nct6775_read_value(data, (int )*(data->REG_FAN + (unsigned long )i));
    data->rpm[i] = (*(data->fan_from_reg))((int )reg, (unsigned int )data->fan_div[i]);
    }
    if (((int )data->has_fan_min >> i) & 1) {
      {
      data->fan_min[i] = nct6775_read_value(data, (int )*(data->REG_FAN_MIN + (unsigned long )i));
      }
    } else {
    }
    {
    tmp___3 = nct6775_read_value(data, (int )*(data->REG_FAN_PULSES + (unsigned long )i));
    data->fan_pulses[i] = (unsigned int )((u8 )((int )tmp___3 >> (int )*(data->FAN_PULSE_SHIFT + (unsigned long )i))) & 3U;
    nct6775_select_fan_div(dev, data, i, (int )reg);
    }
    ldv_30435:
    i = i + 1;
    ldv_30437: ;
    if ((unsigned int )i <= 5U) {
      goto ldv_30436;
    } else {
    }
    {
    nct6775_update_pwm(dev);
    nct6775_update_pwm_limits(dev);
    i = 0;
    }
    goto ldv_30446;
    ldv_30445: ;
    if ((((int )data->have_temp >> i) & 1) == 0) {
      goto ldv_30439;
    } else {
    }
    j = 0;
    goto ldv_30443;
    ldv_30442: ;
    if ((unsigned int )data->reg_temp[j][i] != 0U) {
      {
      tmp___4 = nct6775_read_temp(data, (int )data->reg_temp[j][i]);
      data->temp[j][i] = (s16 )tmp___4;
      }
    } else {
    }
    j = j + 1;
    ldv_30443: ;
    if ((unsigned int )j <= 4U) {
      goto ldv_30442;
    } else {
    }
    if (i > 5 || (((int )data->have_temp_fixed >> i) & 1) == 0) {
      goto ldv_30439;
    } else {
    }
    {
    tmp___5 = nct6775_read_value(data, (int )*(data->REG_TEMP_OFFSET + (unsigned long )i));
    data->temp_offset[i] = (s8 )tmp___5;
    }
    ldv_30439:
    i = i + 1;
    ldv_30446: ;
    if (i <= 9) {
      goto ldv_30445;
    } else {
    }
    data->alarms = 0ULL;
    i = 0;
    goto ldv_30451;
    ldv_30450: ;
    if ((unsigned int )((unsigned short )*(data->REG_ALARM + (unsigned long )i)) == 0U) {
      goto ldv_30449;
    } else {
    }
    {
    tmp___6 = nct6775_read_value(data, (int )*(data->REG_ALARM + (unsigned long )i));
    alarm = (u8 )tmp___6;
    data->alarms = data->alarms | ((unsigned long long )alarm << (i << 3));
    }
    ldv_30449:
    i = i + 1;
    ldv_30451: ;
    if (i <= 6) {
      goto ldv_30450;
    } else {
    }
    data->beeps = 0ULL;
    i = 0;
    goto ldv_30456;
    ldv_30455: ;
    if ((unsigned int )((unsigned short )*(data->REG_BEEP + (unsigned long )i)) == 0U) {
      goto ldv_30454;
    } else {
    }
    {
    tmp___7 = nct6775_read_value(data, (int )*(data->REG_BEEP + (unsigned long )i));
    beep = (u8 )tmp___7;
    data->beeps = data->beeps | ((unsigned long long )beep << (i << 3));
    }
    ldv_30454:
    i = i + 1;
    ldv_30456: ;
    if (i <= 4) {
      goto ldv_30455;
    } else {
    }
    data->last_updated = jiffies;
    data->valid = 1;
  } else {
  }
  {
  ldv_mutex_unlock_97(& data->update_lock);
  }
  return (data);
}
}
static ssize_t show_in_reg(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int index ;
  int nr ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  index = (int )sattr->index;
  nr = (int )sattr->nr;
  tmp___0 = in_from_reg((int )data->in[nr][index], (int )((u8 )nr));
  tmp___1 = sprintf(buf, "%ld\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_in_reg(struct device *dev , struct device_attribute *attr , char const *buf ,
                            size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int index ;
  int nr ;
  unsigned long val ;
  int err ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  index = (int )sattr->index;
  nr = (int )sattr->nr;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  ldv_mutex_lock_98(& data->update_lock);
  data->in[nr][index] = in_to_reg((u32 )val, (int )((u8 )nr));
  nct6775_write_value(data, (int )*(data->REG_IN_MINMAX[index + -1] + (unsigned long )nr),
                      (int )data->in[nr][index]);
  ldv_mutex_unlock_99(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_alarm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = (int )*(data->ALARM_BITS + (unsigned long )sattr->index);
  tmp___0 = sprintf(buf, "%u\n", (unsigned int )(data->alarms >> nr) & 1U);
  }
  return ((ssize_t )tmp___0);
}
}
static int find_temp_source(struct nct6775_data *data , int index , int count )
{
  int source ;
  int nr ;
  int src ;
  u16 tmp ;
  {
  source = (int )data->temp_src[index];
  nr = 0;
  goto ldv_30502;
  ldv_30501:
  {
  tmp = nct6775_read_value(data, (int )*(data->REG_TEMP_SOURCE + (unsigned long )nr));
  src = (int )tmp & 31;
  }
  if (src == source) {
    return (nr);
  } else {
  }
  nr = nr + 1;
  ldv_30502: ;
  if (nr < count) {
    goto ldv_30501;
  } else {
  }
  return (-19);
}
}
static ssize_t show_temp_alarm(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  unsigned int alarm ;
  int nr ;
  int bit ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp = nct6775_update_device(dev);
  data = tmp;
  alarm = 0U;
  nr = find_temp_source(data, sattr->index, (int )data->num_temp_alarms);
  }
  if (nr >= 0) {
    bit = (int )*(data->ALARM_BITS + ((unsigned long )nr + 24UL));
    alarm = (unsigned int )(data->alarms >> bit) & 1U;
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%u\n", alarm);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_beep(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  int nr ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp = nct6775_update_device(dev);
  data = tmp;
  nr = (int )*(data->BEEP_BITS + (unsigned long )sattr->index);
  tmp___0 = sprintf(buf, "%u\n", (unsigned int )(data->beeps >> nr) & 1U);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  int nr ;
  int regindex ;
  unsigned long val ;
  int err ;
  {
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  nr = (int )*(data->BEEP_BITS + (unsigned long )sattr->index);
  regindex = nr >> 3;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 1UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_100(& data->update_lock);
  }
  if (val != 0UL) {
    data->beeps = data->beeps | (1ULL << nr);
  } else {
    data->beeps = data->beeps & ~ (1ULL << nr);
  }
  {
  nct6775_write_value(data, (int )*(data->REG_BEEP + (unsigned long )regindex), (int )((u16 )(data->beeps >> (regindex << 3))) & 255);
  ldv_mutex_unlock_101(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_temp_beep(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  unsigned int beep ;
  int nr ;
  int bit ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp = nct6775_update_device(dev);
  data = tmp;
  beep = 0U;
  nr = find_temp_source(data, sattr->index, (int )data->num_temp_beeps);
  }
  if (nr >= 0) {
    bit = (int )*(data->BEEP_BITS + ((unsigned long )nr + 24UL));
    beep = (unsigned int )(data->beeps >> bit) & 1U;
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%u\n", beep);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp_beep(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  int nr ;
  int bit ;
  int regindex ;
  unsigned long val ;
  int err ;
  {
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 1UL) {
    return (-22L);
  } else {
  }
  {
  nr = find_temp_source(data, (int )sattr->index, (int )data->num_temp_beeps);
  }
  if (nr < 0) {
    return ((ssize_t )nr);
  } else {
  }
  {
  bit = (int )*(data->BEEP_BITS + ((unsigned long )nr + 24UL));
  regindex = bit >> 3;
  ldv_mutex_lock_102(& data->update_lock);
  }
  if (val != 0UL) {
    data->beeps = data->beeps | (1ULL << bit);
  } else {
    data->beeps = data->beeps & ~ (1ULL << bit);
  }
  {
  nct6775_write_value(data, (int )*(data->REG_BEEP + (unsigned long )regindex), (int )((u16 )(data->beeps >> (regindex << 3))) & 255);
  ldv_mutex_unlock_103(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static umode_t nct6775_in_is_visible(struct kobject *kobj , struct attribute *attr ,
                                     int index )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  int in ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  in = index / 5;
  }
  if ((((int )data->have_in >> in) & 1) == 0) {
    return (0U);
  } else {
  }
  return (attr->mode);
}
}
static struct sensor_device_template sensor_dev_template_in_input = {{{"in%d_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_reg, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                 size_t ))0}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_in_alarm = {{{"in%d_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_in_beep = {{{"in%d_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_in_min = {{{"in%d_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_reg, & store_in_reg}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_in_max = {{{"in%d_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in_reg, & store_in_reg}, {{0U, 2U}}, 1};
static struct sensor_device_template *nct6775_attributes_in_template[6U] = { & sensor_dev_template_in_input, & sensor_dev_template_in_alarm, & sensor_dev_template_in_beep, & sensor_dev_template_in_min,
        & sensor_dev_template_in_max, (struct sensor_device_template *)0};
static struct sensor_template_group nct6775_in_template_group = {(struct sensor_device_template **)(& nct6775_attributes_in_template), & nct6775_in_is_visible,
    0};
static ssize_t show_fan(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  tmp___0 = sprintf(buf, "%d\n", data->rpm[nr]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_fan_min(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  tmp___0 = (*(data->fan_from_reg_min))((int )data->fan_min[nr], (unsigned int )data->fan_div[nr]);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t show_fan_div(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  tmp___0 = div_from_reg((int )data->fan_div[nr]);
  tmp___1 = sprintf(buf, "%u\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_fan_min(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  unsigned int reg ;
  u8 new_div ;
  int err ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct _ddebug descriptor ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  ldv_mutex_lock_104(& data->update_lock);
  }
  if (! data->has_fan_div) {
    if (val == 0UL) {
      val = 65311UL;
    } else {
      if (val > 1350000UL) {
        val = 135000UL;
      } else {
      }
      val = 1350000UL / val;
      val = (val & 31UL) | ((val << 3) & 65280UL);
    }
    data->fan_min[nr] = (u16 )val;
    goto write_min;
  } else {
  }
  if (val == 0UL) {
    {
    data->fan_min[nr] = 255U;
    new_div = data->fan_div[nr];
    _dev_info((struct device const *)dev, "fan%u low limit and alarm disabled\n",
              nr + 1);
    }
    goto write_div;
  } else {
  }
  reg = (unsigned int )(1350000UL / val);
  if (reg > 32639U) {
    {
    data->fan_min[nr] = 254U;
    new_div = 7U;
    tmp___0 = (*(data->fan_from_reg_min))(254, 7U);
    dev_warn((struct device const *)dev, "fan%u low limit %lu below minimum %u, set to minimum\n",
             nr + 1, val, tmp___0);
    }
  } else
  if (reg == 0U) {
    {
    data->fan_min[nr] = 1U;
    new_div = 0U;
    tmp___1 = (*(data->fan_from_reg_min))(1, 0U);
    dev_warn((struct device const *)dev, "fan%u low limit %lu above maximum %u, set to maximum\n",
             nr + 1, val, tmp___1);
    }
  } else {
    new_div = 0U;
    goto ldv_30632;
    ldv_30631:
    reg = reg >> 1;
    new_div = (u8 )((int )new_div + 1);
    ldv_30632: ;
    if (reg > 192U && (unsigned int )new_div <= 6U) {
      goto ldv_30631;
    } else {
    }
    data->fan_min[nr] = (u16 )reg;
  }
  write_div: ;
  if ((int )new_div != (int )data->fan_div[nr]) {
    {
    descriptor.modname = "nct6775";
    descriptor.function = "store_fan_min";
    descriptor.filename = "drivers/hwmon/nct6775.c";
    descriptor.format = "fan%u clock divider changed from %u to %u\n";
    descriptor.lineno = 1847U;
    descriptor.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      tmp___2 = div_from_reg((int )new_div);
      tmp___3 = div_from_reg((int )data->fan_div[nr]);
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "fan%u clock divider changed from %u to %u\n",
                        nr + 1, tmp___3, tmp___2);
      }
    } else {
    }
    {
    data->fan_div[nr] = new_div;
    nct6775_write_fan_div_common(data, nr);
    data->last_updated = jiffies;
    }
  } else {
  }
  write_min:
  {
  nct6775_write_value(data, (int )*(data->REG_FAN_MIN + (unsigned long )nr), (int )data->fan_min[nr]);
  ldv_mutex_unlock_105(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_fan_pulses(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int p ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  p = (int )data->fan_pulses[sattr->index];
  tmp___0 = sprintf(buf, "%d\n", p != 0 ? p != 0 : 4);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_fan_pulses(struct device *dev , struct device_attribute *attr ,
                                char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  u8 reg ;
  u16 tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 4UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_106(& data->update_lock);
  data->fan_pulses[nr] = (unsigned int )((u8 )val) & 3U;
  tmp___0 = nct6775_read_value(data, (int )*(data->REG_FAN_PULSES + (unsigned long )nr));
  reg = (u8 )tmp___0;
  reg = (u8 )((int )((signed char )reg) & ~ ((int )((signed char )(3 << (int )*(data->FAN_PULSE_SHIFT + (unsigned long )nr)))));
  reg = (int )reg | (int )((u8 )((val & 3UL) << (int )*(data->FAN_PULSE_SHIFT + (unsigned long )nr)));
  nct6775_write_value(data, (int )*(data->REG_FAN_PULSES + (unsigned long )nr), (int )reg);
  ldv_mutex_unlock_107(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static umode_t nct6775_fan_is_visible(struct kobject *kobj , struct attribute *attr ,
                                      int index )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  int fan ;
  int nr ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  fan = index / 6;
  nr = index % 6;
  }
  if ((((int )data->has_fan >> fan) & 1) == 0) {
    return (0U);
  } else {
  }
  if (nr == 1 && (int )((signed char )*(data->ALARM_BITS + (unsigned long )(fan + 16))) == -1) {
    return (0U);
  } else {
  }
  if (nr == 2 && (int )((signed char )*(data->BEEP_BITS + (unsigned long )(fan + 16))) == -1) {
    return (0U);
  } else {
  }
  if (nr == 4 && (((int )data->has_fan_min >> fan) & 1) == 0) {
    return (0U);
  } else {
  }
  if (nr == 5 && (unsigned int )data->kind != 1U) {
    return (0U);
  } else {
  }
  return (attr->mode);
}
}
static struct sensor_device_template sensor_dev_template_fan_input = {{{"fan%d_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_fan_alarm = {{{"fan%d_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, {.index = 16}, 0};
static struct sensor_device_template sensor_dev_template_fan_beep = {{{"fan%d_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, {.index = 16}, 0};
static struct sensor_device_template sensor_dev_template_fan_pulses = {{{"fan%d_pulses", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_pulses, & store_fan_pulses}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_fan_min = {{{"fan%d_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_min, & store_fan_min}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_fan_div = {{{"fan%d_div", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0}, {.index = 0}, 0};
static struct sensor_device_template *nct6775_attributes_fan_template[7U] = { & sensor_dev_template_fan_input, & sensor_dev_template_fan_alarm, & sensor_dev_template_fan_beep, & sensor_dev_template_fan_pulses,
        & sensor_dev_template_fan_min, & sensor_dev_template_fan_div, (struct sensor_device_template *)0};
static struct sensor_template_group nct6775_fan_template_group = {(struct sensor_device_template **)(& nct6775_attributes_fan_template), & nct6775_fan_is_visible,
    1};
static ssize_t show_temp_label(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  tmp___0 = sprintf(buf, "%s\n", *(data->temp_label + (unsigned long )data->temp_src[nr]));
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_temp(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp___0 = LM75_TEMP_FROM_REG((int )((u16 )data->temp[index][nr]));
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_temp(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int err ;
  long val ;
  u16 tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  err = kstrtol(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  ldv_mutex_lock_108(& data->update_lock);
  tmp___0 = LM75_TEMP_TO_REG(val);
  data->temp[index][nr] = (s16 )tmp___0;
  nct6775_write_temp(data, (int )data->reg_temp[index][nr], (int )((u16 )data->temp[index][nr]));
  ldv_mutex_unlock_109(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_temp_offset(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp_offset[sattr->index] * 1000);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp_offset(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  long val ;
  int err ;
  long __min1 ;
  long __max1 ;
  long __x ;
  int __d ;
  long __max2 ;
  long __min2 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtol(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  __x = val;
  __d = 1000;
  __max1 = __x > 0L ? (__x + (long )(__d / 2)) / (long )__d : (__x - (long )(__d / 2)) / (long )__d;
  __max2 = -128L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 127L;
  val = __min1 < __min2 ? __min1 : __min2;
  ldv_mutex_lock_110(& data->update_lock);
  data->temp_offset[nr] = (s8 )val;
  nct6775_write_value(data, (int )*(data->REG_TEMP_OFFSET + (unsigned long )nr), (int )((u16 )val));
  ldv_mutex_unlock_111(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_temp_type(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp_type[nr]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp_type(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  u8 vbat ;
  u8 diode ;
  u8 vbit ;
  u8 dbit ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if ((val != 1UL && val != 3UL) && val != 4UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_112(& data->update_lock);
  data->temp_type[nr] = (u8 )val;
  vbit = (u8 )(2 << nr);
  dbit = (u8 )((int )data->DIODE_MASK << nr);
  tmp___0 = nct6775_read_value(data, (int )data->REG_VBAT);
  vbat = (u8 )((int )((signed char )tmp___0) & ~ ((int )((signed char )vbit)));
  tmp___1 = nct6775_read_value(data, (int )data->REG_DIODE);
  diode = (u8 )((int )((signed char )tmp___1) & ~ ((int )((signed char )dbit)));
  }
  {
  if (val == 1UL) {
    goto case_1;
  } else {
  }
  if (val == 3UL) {
    goto case_3;
  } else {
  }
  if (val == 4UL) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_1:
  vbat = (u8 )((int )vbat | (int )vbit);
  diode = (u8 )((int )diode | (int )dbit);
  goto ldv_30785;
  case_3:
  vbat = (u8 )((int )vbat | (int )dbit);
  goto ldv_30785;
  case_4: ;
  goto ldv_30785;
  switch_break: ;
  }
  ldv_30785:
  {
  nct6775_write_value(data, (int )data->REG_VBAT, (int )vbat);
  nct6775_write_value(data, (int )data->REG_DIODE, (int )diode);
  ldv_mutex_unlock_113(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static umode_t nct6775_temp_is_visible(struct kobject *kobj , struct attribute *attr ,
                                       int index )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  int temp ;
  int nr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  temp = index / 10;
  nr = index % 10;
  }
  if ((((int )data->have_temp >> temp) & 1) == 0) {
    return (0U);
  } else {
  }
  if (nr == 2) {
    {
    tmp___0 = find_temp_source(data, temp, (int )data->num_temp_alarms);
    }
    if (tmp___0 < 0) {
      return (0U);
    } else {
    }
  } else {
  }
  if (nr == 3) {
    {
    tmp___1 = find_temp_source(data, temp, (int )data->num_temp_beeps);
    }
    if (tmp___1 < 0) {
      return (0U);
    } else {
    }
  } else {
  }
  if (nr == 4 && (unsigned int )data->reg_temp[1][temp] == 0U) {
    return (0U);
  } else {
  }
  if (nr == 5 && (unsigned int )data->reg_temp[2][temp] == 0U) {
    return (0U);
  } else {
  }
  if (nr == 6 && (unsigned int )data->reg_temp[3][temp] == 0U) {
    return (0U);
  } else {
  }
  if (nr == 7 && (unsigned int )data->reg_temp[4][temp] == 0U) {
    return (0U);
  } else {
  }
  if (nr > 7 && (((int )data->have_temp_fixed >> temp) & 1) == 0) {
    return (0U);
  } else {
  }
  return (attr->mode);
}
}
static struct sensor_device_template sensor_dev_template_temp_input = {{{"temp%d_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_temp_label = {{{"temp%d_label", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_label, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0}, {.index = 0},
    0};
static struct sensor_device_template sensor_dev_template_temp_max = {{{"temp%d_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & store_temp}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_temp_max_hyst = {{{"temp%d_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & store_temp}, {{0U, 2U}}, 1};
static struct sensor_device_template sensor_dev_template_temp_crit = {{{"temp%d_crit", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & store_temp}, {{0U, 3U}}, 1};
static struct sensor_device_template sensor_dev_template_temp_lcrit = {{{"temp%d_lcrit", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & store_temp}, {{0U, 4U}}, 1};
static struct sensor_device_template sensor_dev_template_temp_offset = {{{"temp%d_offset", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_offset, & store_temp_offset}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_temp_type = {{{"temp%d_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_type, & store_temp_type}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_temp_alarm = {{{"temp%d_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_alarm, (ssize_t (*)(struct device * , struct device_attribute * ,
                                     char const * , size_t ))0}, {.index = 0},
    0};
static struct sensor_device_template sensor_dev_template_temp_beep = {{{"temp%d_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_beep, & store_temp_beep}, {.index = 0}, 0};
static struct sensor_device_template *nct6775_attributes_temp_template[11U] =
  { & sensor_dev_template_temp_input, & sensor_dev_template_temp_label, & sensor_dev_template_temp_alarm, & sensor_dev_template_temp_beep,
        & sensor_dev_template_temp_max, & sensor_dev_template_temp_max_hyst, & sensor_dev_template_temp_crit, & sensor_dev_template_temp_lcrit,
        & sensor_dev_template_temp_offset, & sensor_dev_template_temp_type, (struct sensor_device_template *)0};
static struct sensor_template_group nct6775_temp_template_group = {(struct sensor_device_template **)(& nct6775_attributes_temp_template), & nct6775_temp_is_visible,
    1};
static ssize_t show_pwm_mode(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp___0 = sprintf(buf, "%d\n", (unsigned int )data->pwm_mode[sattr->index] == 0U);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_pwm_mode(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  u8 reg ;
  u16 tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 1UL) {
    return (-22L);
  } else {
  }
  if ((unsigned int )((unsigned char )*(data->REG_PWM_MODE + (unsigned long )nr)) == 0U) {
    if (val != 0UL) {
      return (-22L);
    } else {
    }
    return ((ssize_t )count);
  } else {
  }
  {
  ldv_mutex_lock_114(& data->update_lock);
  data->pwm_mode[nr] = (u8 )val;
  tmp___0 = nct6775_read_value(data, (int )*(data->REG_PWM_MODE + (unsigned long )nr));
  reg = (u8 )tmp___0;
  reg = (u8 )((int )((signed char )reg) & ~ ((int )((signed char )*(data->PWM_MODE_MASK + (unsigned long )nr))));
  }
  if (val != 0UL) {
    reg = (u8 )((int )reg | (int )((unsigned char )*(data->PWM_MODE_MASK + (unsigned long )nr)));
  } else {
  }
  {
  nct6775_write_value(data, (int )*(data->REG_PWM_MODE + (unsigned long )nr), (int )reg);
  ldv_mutex_unlock_115(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_pwm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int pwm ;
  u16 tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  }
  if (index == 0 && (unsigned int )data->pwm_enable[nr] > 1U) {
    {
    tmp___0 = nct6775_read_value(data, (int )*(data->REG_PWM_READ + (unsigned long )nr));
    pwm = (int )tmp___0;
    }
  } else {
    pwm = (int )data->pwm[index][nr];
  }
  {
  tmp___1 = sprintf(buf, "%d\n", pwm);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_pwm(struct device *dev , struct device_attribute *attr , char const *buf ,
                         size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  unsigned long val ;
  int minval[7U] ;
  int maxval[7U] ;
  int err ;
  u8 reg ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  u16 tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  minval[0] = 0;
  minval[1] = 1;
  minval[2] = 1;
  minval[3] = (int )data->pwm[2][nr];
  minval[4] = 0;
  minval[5] = 0;
  minval[6] = 0;
  maxval[0] = 255;
  maxval[1] = 255;
  maxval[2] = (int )data->pwm[3][nr] != 0 ? (int )data->pwm[3][nr] != 0 : 255;
  maxval[3] = 255;
  maxval[4] = 255;
  maxval[5] = 255;
  maxval[6] = 255;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  __max1 = val;
  __max2 = (unsigned long )minval[index];
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = (unsigned long )maxval[index];
  val = __min1 < __min2 ? __min1 : __min2;
  ldv_mutex_lock_116(& data->update_lock);
  data->pwm[index][nr] = (u8 )val;
  nct6775_write_value(data, (int )*(data->REG_PWM[index] + (unsigned long )nr), (int )((u16 )val));
  }
  if (index == 2) {
    {
    tmp___0 = nct6775_read_value(data, (int )*(data->REG_TEMP_SEL + (unsigned long )nr));
    reg = (u8 )tmp___0;
    reg = (unsigned int )reg & 127U;
    }
    if (val != 0UL) {
      reg = (u8 )((unsigned int )reg | 128U);
    } else {
    }
    {
    nct6775_write_value(data, (int )*(data->REG_TEMP_SEL + (unsigned long )nr), (int )reg);
    }
  } else {
  }
  {
  ldv_mutex_unlock_117(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static int check_trip_points(struct nct6775_data *data , int nr )
{
  int i ;
  {
  i = 0;
  goto ldv_30875;
  ldv_30874: ;
  if ((int )data->auto_temp[nr][i] > (int )data->auto_temp[nr][i + 1]) {
    return (-22);
  } else {
  }
  i = i + 1;
  ldv_30875: ;
  if (i < data->auto_pwm_num + -1) {
    goto ldv_30874;
  } else {
  }
  i = 0;
  goto ldv_30878;
  ldv_30877: ;
  if ((int )data->auto_pwm[nr][i] > (int )data->auto_pwm[nr][i + 1]) {
    return (-22);
  } else {
  }
  i = i + 1;
  ldv_30878: ;
  if (i < data->auto_pwm_num + -1) {
    goto ldv_30877;
  } else {
  }
  if ((unsigned int )data->auto_pwm[nr][data->auto_pwm_num] != 0U) {
    if ((int )data->auto_temp[nr][data->auto_pwm_num + -1] > (int )data->auto_temp[nr][data->auto_pwm_num] || (int )data->auto_pwm[nr][data->auto_pwm_num + -1] > (int )data->auto_pwm[nr][data->auto_pwm_num]) {
      return (-22);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void pwm_update_registers(struct nct6775_data *data , int nr )
{
  u8 reg ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  {
  if ((unsigned int )data->pwm_enable[nr] == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )data->pwm_enable[nr] == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )data->pwm_enable[nr] == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )data->pwm_enable[nr] == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  goto ldv_30887;
  case_3:
  {
  tmp = nct6775_read_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )nr));
  reg = (u8 )tmp;
  reg = (int )((u8 )((int )((signed char )reg) & ~ ((int )((signed char )data->tolerance_mask)))) | ((int )((u8 )data->target_speed_tolerance[nr]) & (int )data->tolerance_mask);
  nct6775_write_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )nr), (int )reg);
  nct6775_write_value(data, (int )*(data->REG_TARGET + (unsigned long )nr), (int )((u16 )data->target_speed[nr]) & 255);
  }
  if ((unsigned long )data->REG_TOLERANCE_H != (unsigned long )((u16 const *)0U)) {
    {
    reg = (unsigned int )((u8 )(data->target_speed[nr] >> 8)) & 15U;
    reg = (unsigned int )reg | (((unsigned int )((u8 )data->target_speed_tolerance[nr]) & 56U) << 1U);
    nct6775_write_value(data, (int )*(data->REG_TOLERANCE_H + (unsigned long )nr),
                        (int )reg);
    }
  } else {
  }
  goto ldv_30887;
  case_2:
  {
  nct6775_write_value(data, (int )*(data->REG_TARGET + (unsigned long )nr), (int )data->target_temp[nr]);
  }
  switch_default:
  {
  tmp___0 = nct6775_read_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )nr));
  reg = (u8 )tmp___0;
  reg = (u8 )(((int )((signed char )reg) & ~ ((int )((signed char )data->tolerance_mask))) | (int )((signed char )data->temp_tolerance[0][nr]));
  nct6775_write_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )nr), (int )reg);
  }
  goto ldv_30887;
  switch_break: ;
  }
  ldv_30887: ;
  return;
}
}
static ssize_t show_pwm_enable(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp___0 = sprintf(buf, "%d\n", (unsigned int )data->pwm_enable[sattr->index]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_pwm_enable(struct device *dev , struct device_attribute *attr ,
                                char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  u16 reg ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 5UL) {
    return (-22L);
  } else {
  }
  if (val == 4UL && (unsigned int )data->kind != 1U) {
    return (-22L);
  } else {
  }
  if (val == 5UL) {
    {
    tmp___0 = check_trip_points(data, nr);
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)dev, "Inconsistent trip points, not switching to SmartFan IV mode\n");
      dev_err((struct device const *)dev, "Adjust trip points and try again\n");
      }
      return (-22L);
    } else {
    }
  } else {
  }
  {
  ldv_mutex_lock_118(& data->update_lock);
  data->pwm_enable[nr] = (enum pwm_enable )val;
  }
  if (val == 0UL) {
    {
    data->pwm[0][nr] = 255U;
    nct6775_write_value(data, (int )*(data->REG_PWM[0] + (unsigned long )nr), 255);
    }
  } else {
  }
  {
  pwm_update_registers(data, nr);
  reg = nct6775_read_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )nr));
  reg = (unsigned int )reg & 15U;
  tmp___1 = pwm_enable_to_reg((enum pwm_enable )val);
  reg = (u16 )((int )((short )reg) | (int )((short )(tmp___1 << 4)));
  nct6775_write_value(data, (int )*(data->REG_FAN_MODE + (unsigned long )nr), (int )reg);
  ldv_mutex_unlock_119(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_pwm_temp_sel_common(struct nct6775_data *data , char *buf , int src )
{
  int i ;
  int sel ;
  int tmp ;
  {
  sel = 0;
  i = 0;
  goto ldv_30924;
  ldv_30923: ;
  if ((((int )data->have_temp >> i) & 1) == 0) {
    goto ldv_30921;
  } else {
  }
  if (src == (int )data->temp_src[i]) {
    sel = i + 1;
    goto ldv_30922;
  } else {
  }
  ldv_30921:
  i = i + 1;
  ldv_30924: ;
  if (i <= 9) {
    goto ldv_30923;
  } else {
  }
  ldv_30922:
  {
  tmp = sprintf(buf, "%d\n", sel);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t show_pwm_temp_sel(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int index ;
  ssize_t tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  index = sattr->index;
  tmp___0 = show_pwm_temp_sel_common(data, buf, (int )data->pwm_temp_sel[index]);
  }
  return (tmp___0);
}
}
static ssize_t store_pwm_temp_sel(struct device *dev , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  int reg ;
  int src ;
  u16 tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val - 1UL > 9UL) {
    return (-22L);
  } else {
  }
  if ((((int )data->have_temp >> (int )((unsigned int )val - 1U)) & 1) == 0 || (unsigned int )data->temp_src[val - 1UL] == 0U) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_120(& data->update_lock);
  src = (int )data->temp_src[val - 1UL];
  data->pwm_temp_sel[nr] = (u8 )src;
  tmp___0 = nct6775_read_value(data, (int )*(data->REG_TEMP_SEL + (unsigned long )nr));
  reg = (int )tmp___0;
  reg = reg & 224;
  reg = reg | src;
  nct6775_write_value(data, (int )*(data->REG_TEMP_SEL + (unsigned long )nr), (int )((u16 )reg));
  ldv_mutex_unlock_121(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_pwm_weight_temp_sel(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int index ;
  ssize_t tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  index = sattr->index;
  tmp___0 = show_pwm_temp_sel_common(data, buf, (int )data->pwm_weight_temp_sel[index]);
  }
  return (tmp___0);
}
}
static ssize_t store_pwm_weight_temp_sel(struct device *dev , struct device_attribute *attr ,
                                         char const *buf , size_t count )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  int reg ;
  int src ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 10UL) {
    return (-22L);
  } else {
  }
  if (val != 0UL && ((((int )data->have_temp >> (int )((unsigned int )val - 1U)) & 1) == 0 || (unsigned int )data->temp_src[val - 1UL] == 0U)) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_122(& data->update_lock);
  }
  if (val != 0UL) {
    {
    src = (int )data->temp_src[val - 1UL];
    data->pwm_weight_temp_sel[nr] = (u8 )src;
    tmp___0 = nct6775_read_value(data, (int )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )nr));
    reg = (int )tmp___0;
    reg = reg & 224;
    reg = reg | (src | 128);
    nct6775_write_value(data, (int )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )nr),
                        (int )((u16 )reg));
    }
  } else {
    {
    data->pwm_weight_temp_sel[nr] = 0U;
    tmp___1 = nct6775_read_value(data, (int )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )nr));
    reg = (int )tmp___1;
    reg = reg & 127;
    nct6775_write_value(data, (int )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )nr),
                        (int )((u16 )reg));
    }
  }
  {
  ldv_mutex_unlock_123(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_target_temp(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  tmp___0 = sprintf(buf, "%d\n", (int )data->target_temp[sattr->index] * 1000);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_target_temp(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __x ;
  int __d ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  __x = val;
  __d = 1000;
  __max1 = (__x + (unsigned long )(__d / 2)) / (unsigned long )__d;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = (unsigned long )data->target_temp_mask;
  val = __min1 < __min2 ? __min1 : __min2;
  ldv_mutex_lock_124(& data->update_lock);
  data->target_temp[nr] = (u8 )val;
  pwm_update_registers(data, nr);
  ldv_mutex_unlock_125(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_target_speed(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  tmp___0 = fan_from_reg16((int )((u16 )data->target_speed[nr]), (unsigned int )data->fan_div[nr]);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_target_speed(struct device *dev , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  u16 speed ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  __max1 = val;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 1350000UL;
  val = __min1 < __min2 ? __min1 : __min2;
  speed = fan_to_reg((u32 )val, (unsigned int )data->fan_div[nr]);
  ldv_mutex_lock_126(& data->update_lock);
  data->target_speed[nr] = (u32 )speed;
  pwm_update_registers(data, nr);
  ldv_mutex_unlock_127(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_temp_tolerance(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp_tolerance[index][nr] * 1000);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp_tolerance(struct device *dev , struct device_attribute *attr ,
                                    char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  unsigned long val ;
  int err ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __x ;
  int __d ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  __x = val;
  __d = 1000;
  __max1 = (__x + (unsigned long )(__d / 2)) / (unsigned long )__d;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = (unsigned long )data->tolerance_mask;
  val = __min1 < __min2 ? __min1 : __min2;
  ldv_mutex_lock_128(& data->update_lock);
  data->temp_tolerance[index][nr] = (u8 )val;
  }
  if (index != 0) {
    {
    pwm_update_registers(data, nr);
    }
  } else {
    {
    nct6775_write_value(data, (int )*(data->REG_CRITICAL_TEMP_TOLERANCE + (unsigned long )nr),
                        (int )((u16 )val));
    }
  }
  {
  ldv_mutex_unlock_129(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_speed_tolerance(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int low ;
  int high ;
  int tolerance ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  low = (int )(data->target_speed[nr] - data->target_speed_tolerance[nr]);
  high = (int )(data->target_speed[nr] + data->target_speed_tolerance[nr]);
  }
  if (low <= 0) {
    low = 1;
  } else {
  }
  if (high > 65535) {
    high = 65535;
  } else {
  }
  if (high < low) {
    high = low;
  } else {
  }
  {
  tmp___0 = fan_from_reg16((int )((u16 )low), (unsigned int )data->fan_div[nr]);
  tmp___1 = fan_from_reg16((int )((u16 )high), (unsigned int )data->fan_div[nr]);
  tolerance = (int )((tmp___0 - tmp___1) / 2U);
  tmp___2 = sprintf(buf, "%d\n", tolerance);
  }
  return ((ssize_t )tmp___2);
}
}
static ssize_t store_speed_tolerance(struct device *dev , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  unsigned long val ;
  int err ;
  int low ;
  int high ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute *)__mptr;
  nr = sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp___0 = fan_from_reg16((int )((u16 )data->target_speed[nr]), (unsigned int )data->fan_div[nr]);
  high = (int )(tmp___0 + (unsigned int )val);
  tmp___1 = fan_from_reg16((int )((u16 )data->target_speed[nr]), (unsigned int )data->fan_div[nr]);
  low = (int )(tmp___1 - (unsigned int )val);
  }
  if (low <= 0) {
    low = 1;
  } else {
  }
  if (high < low) {
    high = low;
  } else {
  }
  {
  tmp___2 = fan_to_reg((u32 )low, (unsigned int )data->fan_div[nr]);
  tmp___3 = fan_to_reg((u32 )high, (unsigned int )data->fan_div[nr]);
  val = (unsigned long )(((int )tmp___2 - (int )tmp___3) / 2);
  __max1 = val;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = (unsigned long )data->speed_tolerance_limit;
  val = __min1 < __min2 ? __min1 : __min2;
  ldv_mutex_lock_130(& data->update_lock);
  data->target_speed_tolerance[nr] = (u32 )val;
  pwm_update_registers(data, nr);
  ldv_mutex_unlock_131(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static struct sensor_device_template sensor_dev_template_pwm = {{{"pwm%d", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & store_pwm}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_mode = {{{"pwm%d_mode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm_mode, & store_pwm_mode}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_pwm_enable = {{{"pwm%d_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm_enable, & store_pwm_enable}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_pwm_temp_sel = {{{"pwm%d_temp_sel", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm_temp_sel, & store_pwm_temp_sel}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_pwm_target_temp = {{{"pwm%d_target_temp", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_target_temp, & store_target_temp}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_fan_target = {{{"fan%d_target", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_target_speed, & store_target_speed}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_fan_tolerance = {{{"fan%d_tolerance", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_speed_tolerance, & store_speed_tolerance}, {.index = 0}, 0};
static ssize_t show_weight_temp(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->weight_temp[index][nr] * 1000);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_weight_temp(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  unsigned long val ;
  int err ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __x ;
  int __d ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  __x = val;
  __d = 1000;
  __max1 = (__x + (unsigned long )(__d / 2)) / (unsigned long )__d;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255UL;
  val = __min1 < __min2 ? __min1 : __min2;
  ldv_mutex_lock_132(& data->update_lock);
  data->weight_temp[index][nr] = (u8 )val;
  nct6775_write_value(data, (int )*(data->REG_WEIGHT_TEMP[index] + (unsigned long )nr),
                      (int )((u16 )val));
  ldv_mutex_unlock_133(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static struct sensor_device_template sensor_dev_template_pwm_weight_temp_sel = {{{"pwm%d_weight_temp_sel", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_pwm_weight_temp_sel,
     & store_pwm_weight_temp_sel}, {.index = 0}, 0};
static struct sensor_device_template sensor_dev_template_pwm_weight_temp_step = {{{"pwm%d_weight_temp_step",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_weight_temp,
     & store_weight_temp}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_weight_temp_step_tol = {{{"pwm%d_weight_temp_step_tol",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_weight_temp,
     & store_weight_temp}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_weight_temp_step_base = {{{"pwm%d_weight_temp_step_base",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_weight_temp,
     & store_weight_temp}, {{0U, 2U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_weight_duty_step = {{{"pwm%d_weight_duty_step",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm, & store_pwm},
    {{0U, 5U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_weight_duty_base = {{{"pwm%d_weight_duty_base",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm, & store_pwm},
    {{0U, 6U}}, 1};
static ssize_t show_fan_time(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp___0 = step_time_from_reg((int )data->fan_time[index][nr], (int )data->pwm_mode[nr]);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t store_fan_time(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  unsigned long val ;
  int err ;
  u8 tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp___0 = step_time_to_reg((unsigned int )val, (int )data->pwm_mode[nr]);
  val = (unsigned long )tmp___0;
  ldv_mutex_lock_134(& data->update_lock);
  data->fan_time[index][nr] = (u8 )val;
  nct6775_write_value(data, (int )*(data->REG_FAN_TIME[index] + (unsigned long )nr),
                      (int )((u16 )val));
  ldv_mutex_unlock_135(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_auto_pwm(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  tmp___0 = sprintf(buf, "%d\n", (int )data->auto_pwm[(int )sattr->nr][(int )sattr->index]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_auto_pwm(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  unsigned long val ;
  int err ;
  u8 reg ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  point = (int )sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 255UL) {
    return (-22L);
  } else {
  }
  if (point == data->auto_pwm_num) {
    if ((unsigned int )data->kind != 1U && val == 0UL) {
      return (-22L);
    } else {
    }
    if ((unsigned int )data->kind != 3U && val != 0UL) {
      val = 255UL;
    } else {
    }
  } else {
  }
  {
  ldv_mutex_lock_136(& data->update_lock);
  data->auto_pwm[nr][point] = (u8 )val;
  }
  if (point < data->auto_pwm_num) {
    {
    nct6775_write_value(data, (int )((u16 )*(data->REG_AUTO_PWM + (unsigned long )nr)) + (int )((u16 )point),
                        (int )data->auto_pwm[nr][point]);
    }
  } else {
    {
    if ((unsigned int )data->kind == 1U) {
      goto case_1;
    } else {
    }
    if ((unsigned int )data->kind == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )data->kind == 0U) {
      goto case_0;
    } else {
    }
    if ((unsigned int )data->kind == 3U) {
      goto case_3;
    } else {
    }
    if ((unsigned int )data->kind == 4U) {
      goto case_4;
    } else {
    }
    if ((unsigned int )data->kind == 5U) {
      goto case_5;
    } else {
    }
    goto switch_break;
    case_1:
    {
    tmp___0 = nct6775_read_value(data, (int )NCT6775_REG_CRITICAL_ENAB[nr]);
    reg = (u8 )tmp___0;
    }
    if (val != 0UL) {
      reg = (u8 )((unsigned int )reg | 2U);
    } else {
      reg = (unsigned int )reg & 253U;
    }
    {
    nct6775_write_value(data, (int )NCT6775_REG_CRITICAL_ENAB[nr], (int )reg);
    }
    goto ldv_31237;
    case_2: ;
    goto ldv_31237;
    case_0: ;
    case_3: ;
    case_4: ;
    case_5:
    {
    nct6775_write_value(data, (int )*(data->REG_CRITICAL_PWM + (unsigned long )nr),
                        (int )((u16 )val));
    tmp___1 = nct6775_read_value(data, (int )*(data->REG_CRITICAL_PWM_ENABLE + (unsigned long )nr));
    reg = (u8 )tmp___1;
    }
    if (val == 255UL) {
      reg = (u8 )((int )((signed char )reg) & ~ ((int )((signed char )data->CRITICAL_PWM_ENABLE_MASK)));
    } else {
      reg = (u8 )((int )reg | (int )data->CRITICAL_PWM_ENABLE_MASK);
    }
    {
    nct6775_write_value(data, (int )*(data->REG_CRITICAL_PWM_ENABLE + (unsigned long )nr),
                        (int )reg);
    }
    goto ldv_31237;
    switch_break: ;
    }
    ldv_31237: ;
  }
  {
  ldv_mutex_unlock_137(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_auto_temp(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  int tmp___0 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  point = (int )sattr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->auto_temp[nr][point] * 1000);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_auto_temp(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  unsigned long val ;
  int err ;
  unsigned long __x ;
  int __d ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  point = (int )sattr->index;
  err = kstrtoul(buf, 10U, & val);
  }
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if (val > 255000UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_138(& data->update_lock);
  __x = val;
  __d = 1000;
  data->auto_temp[nr][point] = (u8 )((__x + (unsigned long )(__d / 2)) / (unsigned long )__d);
  }
  if (point < data->auto_pwm_num) {
    {
    nct6775_write_value(data, (int )((u16 )*(data->REG_AUTO_TEMP + (unsigned long )nr)) + (int )((u16 )point),
                        (int )data->auto_temp[nr][point]);
    }
  } else {
    {
    nct6775_write_value(data, (int )*(data->REG_CRITICAL_TEMP + (unsigned long )nr),
                        (int )data->auto_temp[nr][point]);
    }
  }
  {
  ldv_mutex_unlock_139(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static umode_t nct6775_pwm_is_visible(struct kobject *kobj , struct attribute *attr ,
                                      int index )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  int pwm ;
  int nr ;
  int api ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  pwm = index / 36;
  nr = index % 36;
  }
  if ((((int )data->has_pwm >> pwm) & 1) == 0) {
    return (0U);
  } else {
  }
  if ((unsigned int )nr - 14U <= 4U || nr == 21) {
    if ((unsigned int )((unsigned short )*(data->REG_WEIGHT_TEMP_SEL + (unsigned long )pwm)) == 0U) {
      return (0U);
    } else {
    }
  } else {
  }
  if (nr == 19 && (unsigned long )data->REG_PWM[3] == (unsigned long )((u16 const *)0U)) {
    return (0U);
  } else {
  }
  if (nr == 20 && (unsigned long )data->REG_PWM[4] == (unsigned long )((u16 const *)0U)) {
    return (0U);
  } else {
  }
  if (nr == 21 && (unsigned long )data->REG_PWM[6] == (unsigned long )((u16 const *)0U)) {
    return (0U);
  } else {
  }
  if ((unsigned int )nr - 22U <= 13U) {
    api = (nr + -22) / 2;
    if (api > data->auto_pwm_num) {
      return (0U);
    } else {
    }
  } else {
  }
  return (attr->mode);
}
}
static struct sensor_device_template sensor_dev_template_pwm_stop_time = {{{"pwm%d_stop_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_time, & store_fan_time}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_step_up_time = {{{"pwm%d_step_up_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & show_fan_time,
     & store_fan_time}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_step_down_time = {{{"pwm%d_step_down_time", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_fan_time,
     & store_fan_time}, {{0U, 2U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_start = {{{"pwm%d_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm, & store_pwm}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_floor = {{{"pwm%d_floor", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm, & store_pwm}, {{0U, 2U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_temp_tolerance = {{{"pwm%d_temp_tolerance", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_temp_tolerance,
     & store_temp_tolerance}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_crit_temp_tolerance = {{{"pwm%d_crit_temp_tolerance",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_temp_tolerance,
     & store_temp_tolerance}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_max = {{{"pwm%d_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm, & store_pwm}, {{0U, 3U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_step = {{{"pwm%d_step", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm, & store_pwm}, {{0U, 4U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point1_pwm = {{{"pwm%d_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point1_temp = {{{"pwm%d_auto_point1_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 0U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point2_pwm = {{{"pwm%d_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point2_temp = {{{"pwm%d_auto_point2_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 1U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point3_pwm = {{{"pwm%d_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 2U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point3_temp = {{{"pwm%d_auto_point3_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 2U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point4_pwm = {{{"pwm%d_auto_point4_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 3U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point4_temp = {{{"pwm%d_auto_point4_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 3U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point5_pwm = {{{"pwm%d_auto_point5_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 4U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point5_temp = {{{"pwm%d_auto_point5_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 4U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point6_pwm = {{{"pwm%d_auto_point6_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 5U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point6_temp = {{{"pwm%d_auto_point6_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 5U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point7_pwm = {{{"pwm%d_auto_point7_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & store_auto_pwm}, {{0U, 6U}}, 1};
static struct sensor_device_template sensor_dev_template_pwm_auto_point7_temp = {{{"pwm%d_auto_point7_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & store_auto_temp},
    {{0U, 6U}}, 1};
static struct sensor_device_template *nct6775_attributes_pwm_template[37U] =
  { & sensor_dev_template_pwm, & sensor_dev_template_pwm_mode, & sensor_dev_template_pwm_enable, & sensor_dev_template_pwm_temp_sel,
        & sensor_dev_template_pwm_temp_tolerance, & sensor_dev_template_pwm_crit_temp_tolerance, & sensor_dev_template_pwm_target_temp, & sensor_dev_template_fan_target,
        & sensor_dev_template_fan_tolerance, & sensor_dev_template_pwm_stop_time, & sensor_dev_template_pwm_step_up_time, & sensor_dev_template_pwm_step_down_time,
        & sensor_dev_template_pwm_start, & sensor_dev_template_pwm_floor, & sensor_dev_template_pwm_weight_temp_sel, & sensor_dev_template_pwm_weight_temp_step,
        & sensor_dev_template_pwm_weight_temp_step_tol, & sensor_dev_template_pwm_weight_temp_step_base, & sensor_dev_template_pwm_weight_duty_step, & sensor_dev_template_pwm_max,
        & sensor_dev_template_pwm_step, & sensor_dev_template_pwm_weight_duty_base, & sensor_dev_template_pwm_auto_point1_pwm, & sensor_dev_template_pwm_auto_point1_temp,
        & sensor_dev_template_pwm_auto_point2_pwm, & sensor_dev_template_pwm_auto_point2_temp, & sensor_dev_template_pwm_auto_point3_pwm, & sensor_dev_template_pwm_auto_point3_temp,
        & sensor_dev_template_pwm_auto_point4_pwm, & sensor_dev_template_pwm_auto_point4_temp, & sensor_dev_template_pwm_auto_point5_pwm, & sensor_dev_template_pwm_auto_point5_temp,
        & sensor_dev_template_pwm_auto_point6_pwm, & sensor_dev_template_pwm_auto_point6_temp, & sensor_dev_template_pwm_auto_point7_pwm, & sensor_dev_template_pwm_auto_point7_temp,
        (struct sensor_device_template *)0};
static struct sensor_template_group nct6775_pwm_template_group = {(struct sensor_device_template **)(& nct6775_attributes_pwm_template), & nct6775_pwm_is_visible,
    1};
static ssize_t show_vid(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct nct6775_data *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  tmp___0 = vid_from_reg((int )data->vid, (int )data->vrm);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_cpu0_vid = {{"cpu0_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_vid, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0};
static ssize_t clear_caseopen(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct nct6775_data *data ;
  void *tmp ;
  int nr ;
  struct device_attribute const *__mptr ;
  unsigned long val ;
  u8 reg ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  nr = ((struct sensor_device_attribute *)__mptr)->index + -30;
  tmp___0 = kstrtoul(buf, 10U, & val);
  }
  if (tmp___0 != 0 || val != 0UL) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_140(& data->update_lock);
  ret = superio_enter(data->sioreg);
  }
  if (ret != 0) {
    count = (size_t )ret;
    goto error;
  } else {
  }
  {
  superio_select(data->sioreg, 10);
  tmp___1 = superio_inb(data->sioreg, (int )NCT6775_REG_CR_CASEOPEN_CLR[nr]);
  reg = (u8 )tmp___1;
  reg = (u8 )((int )reg | (int )((unsigned char )NCT6775_CR_CASEOPEN_CLR_MASK[nr]));
  superio_outb(data->sioreg, (int )NCT6775_REG_CR_CASEOPEN_CLR[nr], (int )reg);
  reg = (u8 )((int )((signed char )reg) & ~ ((int )((signed char )NCT6775_CR_CASEOPEN_CLR_MASK[nr])));
  superio_outb(data->sioreg, (int )NCT6775_REG_CR_CASEOPEN_CLR[nr], (int )reg);
  superio_exit(data->sioreg);
  data->valid = 0;
  }
  error:
  {
  ldv_mutex_unlock_141(& data->update_lock);
  }
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_intrusion0_alarm = {{{"intrusion0_alarm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, & clear_caseopen}, 30};
static struct sensor_device_attribute sensor_dev_attr_intrusion1_alarm = {{{"intrusion1_alarm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, & clear_caseopen}, 31};
static struct sensor_device_attribute sensor_dev_attr_intrusion0_beep = {{{"intrusion0_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 30};
static struct sensor_device_attribute sensor_dev_attr_intrusion1_beep = {{{"intrusion1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 31};
static struct sensor_device_attribute sensor_dev_attr_beep_enable = {{{"beep_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & store_beep}, 15};
static umode_t nct6775_other_is_visible(struct kobject *kobj , struct attribute *attr ,
                                        int index )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct nct6775_data *data ;
  void *tmp ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  }
  if (index == 0 && ! data->have_vid) {
    return (0U);
  } else {
  }
  if ((unsigned int )index - 1U <= 1U) {
    if ((int )((signed char )*(data->ALARM_BITS + ((unsigned long )(index + 30) + 0xffffffffffffffffUL))) < 0) {
      return (0U);
    } else {
    }
  } else {
  }
  if ((unsigned int )index - 3U <= 1U) {
    if ((int )((signed char )*(data->BEEP_BITS + ((unsigned long )(index + 30) + 0xfffffffffffffffdUL))) < 0) {
      return (0U);
    } else {
    }
  } else {
  }
  return (attr->mode);
}
}
static struct attribute *nct6775_attributes_other[7U] = { & dev_attr_cpu0_vid.attr, & sensor_dev_attr_intrusion0_alarm.dev_attr.attr, & sensor_dev_attr_intrusion1_alarm.dev_attr.attr, & sensor_dev_attr_intrusion0_beep.dev_attr.attr,
        & sensor_dev_attr_intrusion1_beep.dev_attr.attr, & sensor_dev_attr_beep_enable.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const nct6775_group_other = {0, & nct6775_other_is_visible, (struct attribute **)(& nct6775_attributes_other),
    0};
__inline static void nct6775_init_device(struct nct6775_data *data )
{
  int i ;
  u8 tmp ;
  u8 diode ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  {
  if ((unsigned int )data->REG_CONFIG != 0U) {
    {
    tmp___0 = nct6775_read_value(data, (int )data->REG_CONFIG);
    tmp = (u8 )tmp___0;
    }
    if (((int )tmp & 1) == 0) {
      {
      nct6775_write_value(data, (int )data->REG_CONFIG, (int )((unsigned int )tmp | 1U));
      }
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_31413;
  ldv_31412: ;
  if ((((int )data->have_temp >> i) & 1) == 0) {
    goto ldv_31411;
  } else {
  }
  if ((unsigned int )data->reg_temp_config[i] == 0U) {
    goto ldv_31411;
  } else {
  }
  {
  tmp___1 = nct6775_read_value(data, (int )data->reg_temp_config[i]);
  tmp = (u8 )tmp___1;
  }
  if ((int )tmp & 1) {
    {
    nct6775_write_value(data, (int )data->reg_temp_config[i], (int )tmp & 254);
    }
  } else {
  }
  ldv_31411:
  i = i + 1;
  ldv_31413: ;
  if (i <= 9) {
    goto ldv_31412;
  } else {
  }
  {
  tmp___2 = nct6775_read_value(data, (int )data->REG_VBAT);
  tmp = (u8 )tmp___2;
  }
  if (((int )tmp & 1) == 0) {
    {
    nct6775_write_value(data, (int )data->REG_VBAT, (int )((unsigned int )tmp | 1U));
    }
  } else {
  }
  {
  tmp___3 = nct6775_read_value(data, (int )data->REG_DIODE);
  diode = (u8 )tmp___3;
  i = 0;
  }
  goto ldv_31417;
  ldv_31416: ;
  if ((((int )data->have_temp_fixed >> i) & 1) == 0) {
    goto ldv_31415;
  } else {
  }
  if (((int )tmp & ((int )data->DIODE_MASK << i)) != 0) {
    data->temp_type[i] = 3U - (unsigned int )((u8 )((int )((signed char )((int )diode >> i)) & (int )((signed char )data->DIODE_MASK)));
  } else {
    data->temp_type[i] = 4U;
  }
  ldv_31415:
  i = i + 1;
  ldv_31417: ;
  if (i < (int )data->temp_fixed_num) {
    goto ldv_31416;
  } else {
  }
  return;
}
}
static void nct6775_check_fan_inputs(struct nct6775_data *data )
{
  bool fan3pin ;
  bool fan4pin ;
  bool fan4min ;
  bool fan5pin ;
  bool fan6pin ;
  bool pwm3pin ;
  bool pwm4pin ;
  bool pwm5pin ;
  bool pwm6pin ;
  int sioreg ;
  int regval ;
  int tmp ;
  bool gpok ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  sioreg = data->sioreg;
  if ((unsigned int )data->kind == 1U) {
    {
    regval = superio_inb(sioreg, 44);
    fan3pin = (regval & 64) != 0;
    pwm3pin = (regval & 128) != 0;
    tmp = superio_inb(sioreg, 42);
    fan4pin = (tmp & 128) == 0;
    fan4min = 0;
    fan5pin = 0;
    fan6pin = 0;
    pwm4pin = 0;
    pwm5pin = 0;
    pwm6pin = 0;
    }
  } else
  if ((unsigned int )data->kind == 2U) {
    {
    tmp___0 = superio_inb(sioreg, 39);
    gpok = (tmp___0 & 128) != 0;
    superio_select(sioreg, 11);
    regval = superio_inb(sioreg, 48);
    }
    if ((regval & 128) != 0) {
      fan3pin = gpok;
    } else {
      {
      tmp___1 = superio_inb(sioreg, 36);
      fan3pin = (tmp___1 & 64) == 0;
      }
    }
    if ((regval & 64) != 0) {
      fan4pin = gpok;
    } else {
      {
      tmp___2 = superio_inb(sioreg, 28);
      fan4pin = (tmp___2 & 1) != 0;
      }
    }
    if ((regval & 32) != 0) {
      fan5pin = gpok;
    } else {
      {
      tmp___3 = superio_inb(sioreg, 28);
      fan5pin = (tmp___3 & 2) != 0;
      }
    }
    fan4min = fan4pin;
    fan6pin = 0;
    pwm3pin = fan3pin;
    pwm4pin = 0;
    pwm5pin = 0;
    pwm6pin = 0;
  } else
  if ((unsigned int )data->kind == 0U) {
    {
    regval = superio_inb(sioreg, 36);
    fan3pin = (regval & 128) == 0;
    pwm3pin = (regval & 8) != 0;
    fan4pin = 0;
    fan4min = 0;
    fan5pin = 0;
    fan6pin = 0;
    pwm4pin = 0;
    pwm5pin = 0;
    pwm6pin = 0;
    }
  } else {
    {
    regval = superio_inb(sioreg, 28);
    fan3pin = (regval & 32) == 0;
    fan4pin = (regval & 64) == 0;
    fan5pin = (regval & 128) == 0;
    pwm3pin = (regval & 1) == 0;
    pwm4pin = (regval & 2) == 0;
    pwm5pin = (regval & 4) == 0;
    fan4min = fan4pin;
    }
    if ((unsigned int )data->kind - 4U <= 1U) {
      {
      regval = superio_inb(sioreg, 45);
      fan6pin = (regval & 2) != 0;
      pwm6pin = (regval & 1) != 0;
      }
    } else {
      fan6pin = 0;
      pwm6pin = 0;
    }
  }
  data->has_fan = (u8 )(((((int )((signed char )((int )fan3pin << 2)) | 3) | (int )((signed char )((int )fan4pin << 3))) | (int )((signed char )((int )fan5pin << 4))) | (int )((signed char )((int )fan6pin << 5)));
  data->has_fan_min = (u8 )((((int )((signed char )((int )fan3pin << 2)) | 3) | (int )((signed char )((int )fan4min << 3))) | (int )((signed char )((int )fan5pin << 4)));
  data->has_pwm = (u8 )(((((int )((signed char )((int )pwm3pin << 2)) | 3) | (int )((signed char )((int )pwm4pin << 3))) | (int )((signed char )((int )pwm5pin << 4))) | (int )((signed char )((int )pwm6pin << 5)));
  return;
}
}
static void add_temp_sensors(struct nct6775_data *data , u16 const *regp , int *available ,
                             int *mask )
{
  int i ;
  u8 src ;
  int index ;
  u16 tmp ;
  size_t tmp___0 ;
  unsigned long tmp___1 ;
  {
  i = 0;
  goto ldv_31445;
  ldv_31444: ;
  if ((unsigned int )((unsigned short )*(regp + (unsigned long )i)) == 0U) {
    goto ldv_31443;
  } else {
  }
  {
  tmp = nct6775_read_value(data, (int )*(regp + (unsigned long )i));
  src = (u8 )tmp;
  src = (unsigned int )src & 31U;
  }
  if ((unsigned int )src == 0U || (*mask >> (int )src) & 1) {
    goto ldv_31443;
  } else {
  }
  if ((int )src >= data->temp_label_num) {
    goto ldv_31443;
  } else {
    {
    tmp___0 = strlen(*(data->temp_label + (unsigned long )src));
    }
    if (tmp___0 == 0UL) {
      goto ldv_31443;
    } else {
    }
  }
  {
  tmp___1 = __ffs((unsigned long )*available);
  index = (int )tmp___1;
  nct6775_write_value(data, (int )*(data->REG_TEMP_SOURCE + (unsigned long )index),
                      (int )src);
  *available = *available & ~ (1 << index);
  *mask = *mask | (1 << (int )src);
  }
  ldv_31443:
  i = i + 1;
  ldv_31445: ;
  if (i < (int )data->pwm_num && *available != 0) {
    goto ldv_31444;
  } else {
  }
  return;
}
}
static int nct6775_probe(struct platform_device *pdev___0 )
{
  struct device *dev ;
  struct nct6775_sio_data *sio_data ;
  void *tmp ;
  struct nct6775_data *data ;
  struct resource *res ;
  int i ;
  int s ;
  int err ;
  int src ;
  int mask ;
  int available ;
  u16 const *reg_temp ;
  u16 const *reg_temp_over ;
  u16 const *reg_temp_hyst ;
  u16 const *reg_temp_config ;
  u16 const *reg_temp_mon ;
  u16 const *reg_temp_alternate ;
  u16 const *reg_temp_crit ;
  u16 const *reg_temp_crit_l ;
  u16 const *reg_temp_crit_h ;
  int num_reg_temp ;
  int num_reg_temp_mon ;
  u8 cr2a ;
  struct attribute_group *group ;
  struct device *hwmon_dev ;
  int num_attr_groups ;
  struct resource *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  size_t tmp___4 ;
  u16 tmp___5 ;
  size_t tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  u8 tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  long tmp___15 ;
  bool tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  bool tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  long tmp___23 ;
  bool tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  {
  {
  dev = & pdev___0->dev;
  tmp = dev_get_platdata((struct device const *)dev);
  sio_data = (struct nct6775_sio_data *)tmp;
  err = 0;
  reg_temp_crit_l = (u16 const *)0U;
  reg_temp_crit_h = (u16 const *)0U;
  num_attr_groups = 0;
  res = platform_get_resource(pdev___0, 256U, 0U);
  tmp___0 = __devm_request_region(& pdev___0->dev, & ioport_resource, res->start,
                                  2ULL, "nct6775");
  }
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    return (-16);
  } else {
  }
  {
  tmp___1 = devm_kzalloc(& pdev___0->dev, 1280UL, 208U);
  data = (struct nct6775_data *)tmp___1;
  }
  if ((unsigned long )data == (unsigned long )((struct nct6775_data *)0)) {
    return (-12);
  } else {
  }
  {
  data->kind = sio_data->kind;
  data->sioreg = sio_data->sioreg;
  data->addr = (int )res->start;
  __mutex_init(& data->update_lock, "&data->update_lock", & __key);
  data->name = nct6775_device_names[(unsigned int )data->kind];
  data->bank = 255U;
  platform_set_drvdata(pdev___0, (void *)data);
  }
  {
  if ((unsigned int )data->kind == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )data->kind == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )data->kind == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )data->kind == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )data->kind == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )data->kind == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0:
  data->in_num = 9U;
  data->pwm_num = 3U;
  data->auto_pwm_num = 4;
  data->temp_fixed_num = 3U;
  data->num_temp_alarms = 6U;
  data->num_temp_beeps = 6U;
  data->fan_from_reg = & fan_from_reg13;
  data->fan_from_reg_min = & fan_from_reg13;
  data->temp_label = (char const * const *)(& nct6776_temp_label);
  data->temp_label_num = 23;
  data->REG_VBAT = 792U;
  data->REG_DIODE = 793U;
  data->DIODE_MASK = 1U;
  data->REG_VIN = (u16 const *)(& NCT6106_REG_IN);
  data->REG_IN_MINMAX[0] = (u16 const *)(& NCT6106_REG_IN_MIN);
  data->REG_IN_MINMAX[1] = (u16 const *)(& NCT6106_REG_IN_MAX);
  data->REG_TARGET = (u16 const *)(& NCT6106_REG_TARGET);
  data->REG_FAN = (u16 const *)(& NCT6106_REG_FAN);
  data->REG_FAN_MODE = (u16 const *)(& NCT6106_REG_FAN_MODE);
  data->REG_FAN_MIN = (u16 const *)(& NCT6106_REG_FAN_MIN);
  data->REG_FAN_PULSES = (u16 const *)(& NCT6106_REG_FAN_PULSES);
  data->FAN_PULSE_SHIFT = (u16 const *)(& NCT6106_FAN_PULSE_SHIFT);
  data->REG_FAN_TIME[0] = (u16 const *)(& NCT6106_REG_FAN_STOP_TIME);
  data->REG_FAN_TIME[1] = (u16 const *)(& NCT6106_REG_FAN_STEP_UP_TIME);
  data->REG_FAN_TIME[2] = (u16 const *)(& NCT6106_REG_FAN_STEP_DOWN_TIME);
  data->REG_PWM[0] = (u16 const *)(& NCT6106_REG_PWM);
  data->REG_PWM[1] = (u16 const *)(& NCT6106_REG_FAN_START_OUTPUT);
  data->REG_PWM[2] = (u16 const *)(& NCT6106_REG_FAN_STOP_OUTPUT);
  data->REG_PWM[5] = (u16 const *)(& NCT6106_REG_WEIGHT_DUTY_STEP);
  data->REG_PWM[6] = (u16 const *)(& NCT6106_REG_WEIGHT_DUTY_BASE);
  data->REG_PWM_READ = (u16 const *)(& NCT6106_REG_PWM_READ);
  data->REG_PWM_MODE = (u8 const *)(& NCT6106_REG_PWM_MODE);
  data->PWM_MODE_MASK = (u8 const *)(& NCT6106_PWM_MODE_MASK);
  data->REG_AUTO_TEMP = (u16 const *)(& NCT6106_REG_AUTO_TEMP);
  data->REG_AUTO_PWM = (u16 const *)(& NCT6106_REG_AUTO_PWM);
  data->REG_CRITICAL_TEMP = (u16 const *)(& NCT6106_REG_CRITICAL_TEMP);
  data->REG_CRITICAL_TEMP_TOLERANCE = (u16 const *)(& NCT6106_REG_CRITICAL_TEMP_TOLERANCE);
  data->REG_CRITICAL_PWM_ENABLE = (u16 const *)(& NCT6106_REG_CRITICAL_PWM_ENABLE);
  data->CRITICAL_PWM_ENABLE_MASK = 16U;
  data->REG_CRITICAL_PWM = (u16 const *)(& NCT6106_REG_CRITICAL_PWM);
  data->REG_TEMP_OFFSET = (u16 const *)(& NCT6106_REG_TEMP_OFFSET);
  data->REG_TEMP_SOURCE = (u16 const *)(& NCT6106_REG_TEMP_SOURCE);
  data->REG_TEMP_SEL = (u16 const *)(& NCT6106_REG_TEMP_SEL);
  data->REG_WEIGHT_TEMP_SEL = (u16 const *)(& NCT6106_REG_WEIGHT_TEMP_SEL);
  data->REG_WEIGHT_TEMP[0] = (u16 const *)(& NCT6106_REG_WEIGHT_TEMP_STEP);
  data->REG_WEIGHT_TEMP[1] = (u16 const *)(& NCT6106_REG_WEIGHT_TEMP_STEP_TOL);
  data->REG_WEIGHT_TEMP[2] = (u16 const *)(& NCT6106_REG_WEIGHT_TEMP_BASE);
  data->REG_ALARM = (u16 const *)(& NCT6106_REG_ALARM);
  data->ALARM_BITS = (s8 const *)(& NCT6106_ALARM_BITS);
  data->REG_BEEP = (u16 const *)(& NCT6106_REG_BEEP);
  data->BEEP_BITS = (s8 const *)(& NCT6106_BEEP_BITS);
  reg_temp = (u16 const *)(& NCT6106_REG_TEMP);
  reg_temp_mon = (u16 const *)(& NCT6106_REG_TEMP_MON);
  num_reg_temp = 6;
  num_reg_temp_mon = 3;
  reg_temp_over = (u16 const *)(& NCT6106_REG_TEMP_OVER);
  reg_temp_hyst = (u16 const *)(& NCT6106_REG_TEMP_HYST);
  reg_temp_config = (u16 const *)(& NCT6106_REG_TEMP_CONFIG);
  reg_temp_alternate = (u16 const *)(& NCT6106_REG_TEMP_ALTERNATE);
  reg_temp_crit = (u16 const *)(& NCT6106_REG_TEMP_CRIT);
  reg_temp_crit_l = (u16 const *)(& NCT6106_REG_TEMP_CRIT_L);
  reg_temp_crit_h = (u16 const *)(& NCT6106_REG_TEMP_CRIT_H);
  goto ldv_31483;
  case_1:
  data->in_num = 9U;
  data->pwm_num = 3U;
  data->auto_pwm_num = 6;
  data->has_fan_div = 1;
  data->temp_fixed_num = 3U;
  data->num_temp_alarms = 3U;
  data->num_temp_beeps = 3U;
  data->ALARM_BITS = (s8 const *)(& NCT6775_ALARM_BITS);
  data->BEEP_BITS = (s8 const *)(& NCT6775_BEEP_BITS);
  data->fan_from_reg = & fan_from_reg16;
  data->fan_from_reg_min = & fan_from_reg8;
  data->target_temp_mask = 127U;
  data->tolerance_mask = 15U;
  data->speed_tolerance_limit = 15U;
  data->temp_label = (char const * const *)(& nct6775_temp_label);
  data->temp_label_num = 21;
  data->REG_CONFIG = 64U;
  data->REG_VBAT = 93U;
  data->REG_DIODE = 94U;
  data->DIODE_MASK = 2U;
  data->REG_VIN = (u16 const *)(& NCT6775_REG_IN);
  data->REG_IN_MINMAX[0] = (u16 const *)(& NCT6775_REG_IN_MIN);
  data->REG_IN_MINMAX[1] = (u16 const *)(& NCT6775_REG_IN_MAX);
  data->REG_TARGET = (u16 const *)(& NCT6775_REG_TARGET);
  data->REG_FAN = (u16 const *)(& NCT6775_REG_FAN);
  data->REG_FAN_MODE = (u16 const *)(& NCT6775_REG_FAN_MODE);
  data->REG_FAN_MIN = (u16 const *)(& NCT6775_REG_FAN_MIN);
  data->REG_FAN_PULSES = (u16 const *)(& NCT6775_REG_FAN_PULSES);
  data->FAN_PULSE_SHIFT = (u16 const *)(& NCT6775_FAN_PULSE_SHIFT);
  data->REG_FAN_TIME[0] = (u16 const *)(& NCT6775_REG_FAN_STOP_TIME);
  data->REG_FAN_TIME[1] = (u16 const *)(& NCT6775_REG_FAN_STEP_UP_TIME);
  data->REG_FAN_TIME[2] = (u16 const *)(& NCT6775_REG_FAN_STEP_DOWN_TIME);
  data->REG_PWM[0] = (u16 const *)(& NCT6775_REG_PWM);
  data->REG_PWM[1] = (u16 const *)(& NCT6775_REG_FAN_START_OUTPUT);
  data->REG_PWM[2] = (u16 const *)(& NCT6775_REG_FAN_STOP_OUTPUT);
  data->REG_PWM[3] = (u16 const *)(& NCT6775_REG_FAN_MAX_OUTPUT);
  data->REG_PWM[4] = (u16 const *)(& NCT6775_REG_FAN_STEP_OUTPUT);
  data->REG_PWM[5] = (u16 const *)(& NCT6775_REG_WEIGHT_DUTY_STEP);
  data->REG_PWM_READ = (u16 const *)(& NCT6775_REG_PWM_READ);
  data->REG_PWM_MODE = (u8 const *)(& NCT6775_REG_PWM_MODE);
  data->PWM_MODE_MASK = (u8 const *)(& NCT6775_PWM_MODE_MASK);
  data->REG_AUTO_TEMP = (u16 const *)(& NCT6775_REG_AUTO_TEMP);
  data->REG_AUTO_PWM = (u16 const *)(& NCT6775_REG_AUTO_PWM);
  data->REG_CRITICAL_TEMP = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP);
  data->REG_CRITICAL_TEMP_TOLERANCE = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP_TOLERANCE);
  data->REG_TEMP_OFFSET = (u16 const *)(& NCT6775_REG_TEMP_OFFSET);
  data->REG_TEMP_SOURCE = (u16 const *)(& NCT6775_REG_TEMP_SOURCE);
  data->REG_TEMP_SEL = (u16 const *)(& NCT6775_REG_TEMP_SEL);
  data->REG_WEIGHT_TEMP_SEL = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_SEL);
  data->REG_WEIGHT_TEMP[0] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_STEP);
  data->REG_WEIGHT_TEMP[1] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_STEP_TOL);
  data->REG_WEIGHT_TEMP[2] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_BASE);
  data->REG_ALARM = (u16 const *)(& NCT6775_REG_ALARM);
  data->REG_BEEP = (u16 const *)(& NCT6775_REG_BEEP);
  reg_temp = (u16 const *)(& NCT6775_REG_TEMP);
  reg_temp_mon = (u16 const *)(& NCT6775_REG_TEMP_MON);
  num_reg_temp = 6;
  num_reg_temp_mon = 3;
  reg_temp_over = (u16 const *)(& NCT6775_REG_TEMP_OVER);
  reg_temp_hyst = (u16 const *)(& NCT6775_REG_TEMP_HYST);
  reg_temp_config = (u16 const *)(& NCT6775_REG_TEMP_CONFIG);
  reg_temp_alternate = (u16 const *)(& NCT6775_REG_TEMP_ALTERNATE);
  reg_temp_crit = (u16 const *)(& NCT6775_REG_TEMP_CRIT);
  goto ldv_31483;
  case_2:
  data->in_num = 9U;
  data->pwm_num = 3U;
  data->auto_pwm_num = 4;
  data->has_fan_div = 0;
  data->temp_fixed_num = 3U;
  data->num_temp_alarms = 3U;
  data->num_temp_beeps = 6U;
  data->ALARM_BITS = (s8 const *)(& NCT6776_ALARM_BITS);
  data->BEEP_BITS = (s8 const *)(& NCT6776_BEEP_BITS);
  data->fan_from_reg = & fan_from_reg13;
  data->fan_from_reg_min = & fan_from_reg13;
  data->target_temp_mask = 255U;
  data->tolerance_mask = 7U;
  data->speed_tolerance_limit = 63U;
  data->temp_label = (char const * const *)(& nct6776_temp_label);
  data->temp_label_num = 23;
  data->REG_CONFIG = 64U;
  data->REG_VBAT = 93U;
  data->REG_DIODE = 94U;
  data->DIODE_MASK = 2U;
  data->REG_VIN = (u16 const *)(& NCT6775_REG_IN);
  data->REG_IN_MINMAX[0] = (u16 const *)(& NCT6775_REG_IN_MIN);
  data->REG_IN_MINMAX[1] = (u16 const *)(& NCT6775_REG_IN_MAX);
  data->REG_TARGET = (u16 const *)(& NCT6775_REG_TARGET);
  data->REG_FAN = (u16 const *)(& NCT6775_REG_FAN);
  data->REG_FAN_MODE = (u16 const *)(& NCT6775_REG_FAN_MODE);
  data->REG_FAN_MIN = (u16 const *)(& NCT6776_REG_FAN_MIN);
  data->REG_FAN_PULSES = (u16 const *)(& NCT6776_REG_FAN_PULSES);
  data->FAN_PULSE_SHIFT = (u16 const *)(& NCT6775_FAN_PULSE_SHIFT);
  data->REG_FAN_TIME[0] = (u16 const *)(& NCT6775_REG_FAN_STOP_TIME);
  data->REG_FAN_TIME[1] = (u16 const *)(& NCT6775_REG_FAN_STEP_UP_TIME);
  data->REG_FAN_TIME[2] = (u16 const *)(& NCT6775_REG_FAN_STEP_DOWN_TIME);
  data->REG_TOLERANCE_H = (u16 const *)(& NCT6776_REG_TOLERANCE_H);
  data->REG_PWM[0] = (u16 const *)(& NCT6775_REG_PWM);
  data->REG_PWM[1] = (u16 const *)(& NCT6775_REG_FAN_START_OUTPUT);
  data->REG_PWM[2] = (u16 const *)(& NCT6775_REG_FAN_STOP_OUTPUT);
  data->REG_PWM[5] = (u16 const *)(& NCT6775_REG_WEIGHT_DUTY_STEP);
  data->REG_PWM[6] = (u16 const *)(& NCT6776_REG_WEIGHT_DUTY_BASE);
  data->REG_PWM_READ = (u16 const *)(& NCT6775_REG_PWM_READ);
  data->REG_PWM_MODE = (u8 const *)(& NCT6776_REG_PWM_MODE);
  data->PWM_MODE_MASK = (u8 const *)(& NCT6776_PWM_MODE_MASK);
  data->REG_AUTO_TEMP = (u16 const *)(& NCT6775_REG_AUTO_TEMP);
  data->REG_AUTO_PWM = (u16 const *)(& NCT6775_REG_AUTO_PWM);
  data->REG_CRITICAL_TEMP = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP);
  data->REG_CRITICAL_TEMP_TOLERANCE = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP_TOLERANCE);
  data->REG_TEMP_OFFSET = (u16 const *)(& NCT6775_REG_TEMP_OFFSET);
  data->REG_TEMP_SOURCE = (u16 const *)(& NCT6775_REG_TEMP_SOURCE);
  data->REG_TEMP_SEL = (u16 const *)(& NCT6775_REG_TEMP_SEL);
  data->REG_WEIGHT_TEMP_SEL = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_SEL);
  data->REG_WEIGHT_TEMP[0] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_STEP);
  data->REG_WEIGHT_TEMP[1] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_STEP_TOL);
  data->REG_WEIGHT_TEMP[2] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_BASE);
  data->REG_ALARM = (u16 const *)(& NCT6775_REG_ALARM);
  data->REG_BEEP = (u16 const *)(& NCT6776_REG_BEEP);
  reg_temp = (u16 const *)(& NCT6775_REG_TEMP);
  reg_temp_mon = (u16 const *)(& NCT6775_REG_TEMP_MON);
  num_reg_temp = 6;
  num_reg_temp_mon = 3;
  reg_temp_over = (u16 const *)(& NCT6775_REG_TEMP_OVER);
  reg_temp_hyst = (u16 const *)(& NCT6775_REG_TEMP_HYST);
  reg_temp_config = (u16 const *)(& NCT6776_REG_TEMP_CONFIG);
  reg_temp_alternate = (u16 const *)(& NCT6776_REG_TEMP_ALTERNATE);
  reg_temp_crit = (u16 const *)(& NCT6776_REG_TEMP_CRIT);
  goto ldv_31483;
  case_3:
  data->in_num = 15U;
  data->pwm_num = 5U;
  data->auto_pwm_num = 4;
  data->has_fan_div = 0;
  data->temp_fixed_num = 6U;
  data->num_temp_alarms = 2U;
  data->num_temp_beeps = 2U;
  data->ALARM_BITS = (s8 const *)(& NCT6779_ALARM_BITS);
  data->BEEP_BITS = (s8 const *)(& NCT6779_BEEP_BITS);
  data->fan_from_reg = & fan_from_reg13;
  data->fan_from_reg_min = & fan_from_reg13;
  data->target_temp_mask = 255U;
  data->tolerance_mask = 7U;
  data->speed_tolerance_limit = 63U;
  data->temp_label = (char const * const *)(& nct6779_temp_label);
  data->temp_label_num = 27;
  data->REG_CONFIG = 64U;
  data->REG_VBAT = 93U;
  data->REG_DIODE = 94U;
  data->DIODE_MASK = 2U;
  data->REG_VIN = (u16 const *)(& NCT6779_REG_IN);
  data->REG_IN_MINMAX[0] = (u16 const *)(& NCT6775_REG_IN_MIN);
  data->REG_IN_MINMAX[1] = (u16 const *)(& NCT6775_REG_IN_MAX);
  data->REG_TARGET = (u16 const *)(& NCT6775_REG_TARGET);
  data->REG_FAN = (u16 const *)(& NCT6779_REG_FAN);
  data->REG_FAN_MODE = (u16 const *)(& NCT6775_REG_FAN_MODE);
  data->REG_FAN_MIN = (u16 const *)(& NCT6776_REG_FAN_MIN);
  data->REG_FAN_PULSES = (u16 const *)(& NCT6779_REG_FAN_PULSES);
  data->FAN_PULSE_SHIFT = (u16 const *)(& NCT6775_FAN_PULSE_SHIFT);
  data->REG_FAN_TIME[0] = (u16 const *)(& NCT6775_REG_FAN_STOP_TIME);
  data->REG_FAN_TIME[1] = (u16 const *)(& NCT6775_REG_FAN_STEP_UP_TIME);
  data->REG_FAN_TIME[2] = (u16 const *)(& NCT6775_REG_FAN_STEP_DOWN_TIME);
  data->REG_TOLERANCE_H = (u16 const *)(& NCT6776_REG_TOLERANCE_H);
  data->REG_PWM[0] = (u16 const *)(& NCT6775_REG_PWM);
  data->REG_PWM[1] = (u16 const *)(& NCT6775_REG_FAN_START_OUTPUT);
  data->REG_PWM[2] = (u16 const *)(& NCT6775_REG_FAN_STOP_OUTPUT);
  data->REG_PWM[5] = (u16 const *)(& NCT6775_REG_WEIGHT_DUTY_STEP);
  data->REG_PWM[6] = (u16 const *)(& NCT6776_REG_WEIGHT_DUTY_BASE);
  data->REG_PWM_READ = (u16 const *)(& NCT6775_REG_PWM_READ);
  data->REG_PWM_MODE = (u8 const *)(& NCT6776_REG_PWM_MODE);
  data->PWM_MODE_MASK = (u8 const *)(& NCT6776_PWM_MODE_MASK);
  data->REG_AUTO_TEMP = (u16 const *)(& NCT6775_REG_AUTO_TEMP);
  data->REG_AUTO_PWM = (u16 const *)(& NCT6775_REG_AUTO_PWM);
  data->REG_CRITICAL_TEMP = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP);
  data->REG_CRITICAL_TEMP_TOLERANCE = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP_TOLERANCE);
  data->REG_CRITICAL_PWM_ENABLE = (u16 const *)(& NCT6779_REG_CRITICAL_PWM_ENABLE);
  data->CRITICAL_PWM_ENABLE_MASK = 1U;
  data->REG_CRITICAL_PWM = (u16 const *)(& NCT6779_REG_CRITICAL_PWM);
  data->REG_TEMP_OFFSET = (u16 const *)(& NCT6779_REG_TEMP_OFFSET);
  data->REG_TEMP_SOURCE = (u16 const *)(& NCT6775_REG_TEMP_SOURCE);
  data->REG_TEMP_SEL = (u16 const *)(& NCT6775_REG_TEMP_SEL);
  data->REG_WEIGHT_TEMP_SEL = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_SEL);
  data->REG_WEIGHT_TEMP[0] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_STEP);
  data->REG_WEIGHT_TEMP[1] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_STEP_TOL);
  data->REG_WEIGHT_TEMP[2] = (u16 const *)(& NCT6775_REG_WEIGHT_TEMP_BASE);
  data->REG_ALARM = (u16 const *)(& NCT6779_REG_ALARM);
  data->REG_BEEP = (u16 const *)(& NCT6776_REG_BEEP);
  reg_temp = (u16 const *)(& NCT6779_REG_TEMP);
  reg_temp_mon = (u16 const *)(& NCT6779_REG_TEMP_MON);
  num_reg_temp = 2;
  num_reg_temp_mon = 5;
  reg_temp_over = (u16 const *)(& NCT6779_REG_TEMP_OVER);
  reg_temp_hyst = (u16 const *)(& NCT6779_REG_TEMP_HYST);
  reg_temp_config = (u16 const *)(& NCT6779_REG_TEMP_CONFIG);
  reg_temp_alternate = (u16 const *)(& NCT6779_REG_TEMP_ALTERNATE);
  reg_temp_crit = (u16 const *)(& NCT6779_REG_TEMP_CRIT);
  goto ldv_31483;
  case_4: ;
  case_5:
  data->in_num = 15U;
  data->pwm_num = 6U;
  data->auto_pwm_num = 4;
  data->has_fan_div = 0;
  data->temp_fixed_num = 6U;
  data->num_temp_alarms = 2U;
  data->num_temp_beeps = 2U;
  data->ALARM_BITS = (s8 const *)(& NCT6791_ALARM_BITS);
  data->BEEP_BITS = (s8 const *)(& NCT6779_BEEP_BITS);
  data->fan_from_reg = & fan_from_reg13;
  data->fan_from_reg_min = & fan_from_reg13;
  data->target_temp_mask = 255U;
  data->tolerance_mask = 7U;
  data->speed_tolerance_limit = 63U;
  data->temp_label = (char const * const *)(& nct6779_temp_label);
  data->temp_label_num = 27;
  data->REG_CONFIG = 64U;
  data->REG_VBAT = 93U;
  data->REG_DIODE = 94U;
  data->DIODE_MASK = 2U;
  data->REG_VIN = (u16 const *)(& NCT6779_REG_IN);
  data->REG_IN_MINMAX[0] = (u16 const *)(& NCT6775_REG_IN_MIN);
  data->REG_IN_MINMAX[1] = (u16 const *)(& NCT6775_REG_IN_MAX);
  data->REG_TARGET = (u16 const *)(& NCT6775_REG_TARGET);
  data->REG_FAN = (u16 const *)(& NCT6779_REG_FAN);
  data->REG_FAN_MODE = (u16 const *)(& NCT6775_REG_FAN_MODE);
  data->REG_FAN_MIN = (u16 const *)(& NCT6776_REG_FAN_MIN);
  data->REG_FAN_PULSES = (u16 const *)(& NCT6779_REG_FAN_PULSES);
  data->FAN_PULSE_SHIFT = (u16 const *)(& NCT6775_FAN_PULSE_SHIFT);
  data->REG_FAN_TIME[0] = (u16 const *)(& NCT6775_REG_FAN_STOP_TIME);
  data->REG_FAN_TIME[1] = (u16 const *)(& NCT6775_REG_FAN_STEP_UP_TIME);
  data->REG_FAN_TIME[2] = (u16 const *)(& NCT6775_REG_FAN_STEP_DOWN_TIME);
  data->REG_TOLERANCE_H = (u16 const *)(& NCT6776_REG_TOLERANCE_H);
  data->REG_PWM[0] = (u16 const *)(& NCT6775_REG_PWM);
  data->REG_PWM[1] = (u16 const *)(& NCT6775_REG_FAN_START_OUTPUT);
  data->REG_PWM[2] = (u16 const *)(& NCT6775_REG_FAN_STOP_OUTPUT);
  data->REG_PWM[5] = (u16 const *)(& NCT6791_REG_WEIGHT_DUTY_STEP);
  data->REG_PWM[6] = (u16 const *)(& NCT6791_REG_WEIGHT_DUTY_BASE);
  data->REG_PWM_READ = (u16 const *)(& NCT6775_REG_PWM_READ);
  data->REG_PWM_MODE = (u8 const *)(& NCT6776_REG_PWM_MODE);
  data->PWM_MODE_MASK = (u8 const *)(& NCT6776_PWM_MODE_MASK);
  data->REG_AUTO_TEMP = (u16 const *)(& NCT6775_REG_AUTO_TEMP);
  data->REG_AUTO_PWM = (u16 const *)(& NCT6775_REG_AUTO_PWM);
  data->REG_CRITICAL_TEMP = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP);
  data->REG_CRITICAL_TEMP_TOLERANCE = (u16 const *)(& NCT6775_REG_CRITICAL_TEMP_TOLERANCE);
  data->REG_CRITICAL_PWM_ENABLE = (u16 const *)(& NCT6779_REG_CRITICAL_PWM_ENABLE);
  data->CRITICAL_PWM_ENABLE_MASK = 1U;
  data->REG_CRITICAL_PWM = (u16 const *)(& NCT6779_REG_CRITICAL_PWM);
  data->REG_TEMP_OFFSET = (u16 const *)(& NCT6779_REG_TEMP_OFFSET);
  data->REG_TEMP_SOURCE = (u16 const *)(& NCT6775_REG_TEMP_SOURCE);
  data->REG_TEMP_SEL = (u16 const *)(& NCT6775_REG_TEMP_SEL);
  data->REG_WEIGHT_TEMP_SEL = (u16 const *)(& NCT6791_REG_WEIGHT_TEMP_SEL);
  data->REG_WEIGHT_TEMP[0] = (u16 const *)(& NCT6791_REG_WEIGHT_TEMP_STEP);
  data->REG_WEIGHT_TEMP[1] = (u16 const *)(& NCT6791_REG_WEIGHT_TEMP_STEP_TOL);
  data->REG_WEIGHT_TEMP[2] = (u16 const *)(& NCT6791_REG_WEIGHT_TEMP_BASE);
  data->REG_ALARM = (u16 const *)(& NCT6791_REG_ALARM);
  if ((unsigned int )data->kind == 4U) {
    data->REG_BEEP = (u16 const *)(& NCT6776_REG_BEEP);
  } else {
    data->REG_BEEP = (u16 const *)(& NCT6792_REG_BEEP);
  }
  reg_temp = (u16 const *)(& NCT6779_REG_TEMP);
  num_reg_temp = 2;
  if ((unsigned int )data->kind == 4U) {
    reg_temp_mon = (u16 const *)(& NCT6779_REG_TEMP_MON);
    num_reg_temp_mon = 5;
  } else {
    reg_temp_mon = (u16 const *)(& NCT6792_REG_TEMP_MON);
    num_reg_temp_mon = 6;
  }
  reg_temp_over = (u16 const *)(& NCT6779_REG_TEMP_OVER);
  reg_temp_hyst = (u16 const *)(& NCT6779_REG_TEMP_HYST);
  reg_temp_config = (u16 const *)(& NCT6779_REG_TEMP_CONFIG);
  reg_temp_alternate = (u16 const *)(& NCT6779_REG_TEMP_ALTERNATE);
  reg_temp_crit = (u16 const *)(& NCT6779_REG_TEMP_CRIT);
  goto ldv_31483;
  switch_default: ;
  return (-19);
  switch_break: ;
  }
  ldv_31483:
  data->have_in = (unsigned int )((u16 )(1 << (int )data->in_num)) + 65535U;
  data->have_temp = 0U;
  mask = 0;
  available = 0;
  i = 0;
  goto ldv_31518;
  ldv_31517: ;
  if ((unsigned int )((unsigned short )*(reg_temp + (unsigned long )i)) == 0U) {
    goto ldv_31516;
  } else {
  }
  {
  tmp___2 = nct6775_read_value(data, (int )*(data->REG_TEMP_SOURCE + (unsigned long )i));
  src = (int )tmp___2 & 31;
  }
  if (src == 0 || (mask >> src) & 1) {
    available = available | (1 << i);
  } else {
  }
  mask = mask | (1 << src);
  ldv_31516:
  i = i + 1;
  ldv_31518: ;
  if (i < num_reg_temp) {
    goto ldv_31517;
  } else {
  }
  {
  add_temp_sensors(data, data->REG_TEMP_SEL, & available, & mask);
  add_temp_sensors(data, data->REG_WEIGHT_TEMP_SEL, & available, & mask);
  mask = 0;
  s = 6;
  i = 0;
  }
  goto ldv_31522;
  ldv_31521: ;
  if ((unsigned int )((unsigned short )*(reg_temp + (unsigned long )i)) == 0U) {
    goto ldv_31520;
  } else {
  }
  {
  tmp___3 = nct6775_read_value(data, (int )*(data->REG_TEMP_SOURCE + (unsigned long )i));
  src = (int )tmp___3 & 31;
  }
  if (src == 0 || (mask >> src) & 1) {
    goto ldv_31520;
  } else {
  }
  if (src >= data->temp_label_num) {
    {
    _dev_info((struct device const *)dev, "Invalid temperature source %d at index %d, source register 0x%x, temp register 0x%x\n",
              src, i, (int )*(data->REG_TEMP_SOURCE + (unsigned long )i), (int )*(reg_temp + (unsigned long )i));
    }
    goto ldv_31520;
  } else {
    {
    tmp___4 = strlen(*(data->temp_label + (unsigned long )src));
    }
    if (tmp___4 == 0UL) {
      {
      _dev_info((struct device const *)dev, "Invalid temperature source %d at index %d, source register 0x%x, temp register 0x%x\n",
                src, i, (int )*(data->REG_TEMP_SOURCE + (unsigned long )i), (int )*(reg_temp + (unsigned long )i));
      }
      goto ldv_31520;
    } else {
    }
  }
  mask = mask | (1 << src);
  if (src <= (int )data->temp_fixed_num) {
    data->have_temp = (u16 )((int )((short )data->have_temp) | (int )((short )(1 << (src + -1))));
    data->have_temp_fixed = (u16 )((int )((short )data->have_temp_fixed) | (int )((short )(1 << (src + -1))));
    data->reg_temp[0][src + -1] = *(reg_temp + (unsigned long )i);
    data->reg_temp[1][src + -1] = *(reg_temp_over + (unsigned long )i);
    data->reg_temp[2][src + -1] = *(reg_temp_hyst + (unsigned long )i);
    if ((unsigned long )reg_temp_crit_h != (unsigned long )((u16 const *)0U) && (unsigned int )((unsigned short )*(reg_temp_crit_h + (unsigned long )i)) != 0U) {
      data->reg_temp[3][src + -1] = *(reg_temp_crit_h + (unsigned long )i);
    } else
    if ((unsigned int )((unsigned short )*(reg_temp_crit + ((unsigned long )src + 0xffffffffffffffffUL))) != 0U) {
      data->reg_temp[3][src + -1] = *(reg_temp_crit + ((unsigned long )src + 0xffffffffffffffffUL));
    } else {
    }
    if ((unsigned long )reg_temp_crit_l != (unsigned long )((u16 const *)0U) && (unsigned int )((unsigned short )*(reg_temp_crit_l + (unsigned long )i)) != 0U) {
      data->reg_temp[4][src + -1] = *(reg_temp_crit_l + (unsigned long )i);
    } else {
    }
    data->reg_temp_config[src + -1] = *(reg_temp_config + (unsigned long )i);
    data->temp_src[src + -1] = (u8 )src;
    goto ldv_31520;
  } else {
  }
  if (s > 9) {
    goto ldv_31520;
  } else {
  }
  data->have_temp = (u16 )((int )((short )data->have_temp) | (int )((short )(1 << s)));
  data->reg_temp[0][s] = *(reg_temp + (unsigned long )i);
  data->reg_temp[1][s] = *(reg_temp_over + (unsigned long )i);
  data->reg_temp[2][s] = *(reg_temp_hyst + (unsigned long )i);
  data->reg_temp_config[s] = *(reg_temp_config + (unsigned long )i);
  if ((unsigned long )reg_temp_crit_h != (unsigned long )((u16 const *)0U) && (unsigned int )((unsigned short )*(reg_temp_crit_h + (unsigned long )i)) != 0U) {
    data->reg_temp[3][s] = *(reg_temp_crit_h + (unsigned long )i);
  } else
  if ((unsigned int )((unsigned short )*(reg_temp_crit + ((unsigned long )src + 0xffffffffffffffffUL))) != 0U) {
    data->reg_temp[3][s] = *(reg_temp_crit + ((unsigned long )src + 0xffffffffffffffffUL));
  } else {
  }
  if ((unsigned long )reg_temp_crit_l != (unsigned long )((u16 const *)0U) && (unsigned int )((unsigned short )*(reg_temp_crit_l + (unsigned long )i)) != 0U) {
    data->reg_temp[4][s] = *(reg_temp_crit_l + (unsigned long )i);
  } else {
  }
  data->temp_src[s] = (u8 )src;
  s = s + 1;
  ldv_31520:
  i = i + 1;
  ldv_31522: ;
  if (i < num_reg_temp) {
    goto ldv_31521;
  } else {
  }
  i = 0;
  goto ldv_31526;
  ldv_31525: ;
  if ((unsigned int )((unsigned short )*(reg_temp_mon + (unsigned long )i)) == 0U) {
    goto ldv_31524;
  } else {
  }
  {
  tmp___5 = nct6775_read_value(data, (int )*(data->REG_TEMP_SEL + (unsigned long )i));
  src = (int )tmp___5 & 31;
  }
  if (src == 0 || (mask >> src) & 1) {
    goto ldv_31524;
  } else {
  }
  if (src >= data->temp_label_num) {
    {
    _dev_info((struct device const *)dev, "Invalid temperature source %d at index %d, source register 0x%x, temp register 0x%x\n",
              src, i, (int )*(data->REG_TEMP_SEL + (unsigned long )i), (int )*(reg_temp_mon + (unsigned long )i));
    }
    goto ldv_31524;
  } else {
    {
    tmp___6 = strlen(*(data->temp_label + (unsigned long )src));
    }
    if (tmp___6 == 0UL) {
      {
      _dev_info((struct device const *)dev, "Invalid temperature source %d at index %d, source register 0x%x, temp register 0x%x\n",
                src, i, (int )*(data->REG_TEMP_SEL + (unsigned long )i), (int )*(reg_temp_mon + (unsigned long )i));
      }
      goto ldv_31524;
    } else {
    }
  }
  mask = mask | (1 << src);
  if (src <= (int )data->temp_fixed_num) {
    if (((int )data->have_temp >> (src + -1)) & 1) {
      goto ldv_31524;
    } else {
    }
    data->have_temp = (u16 )((int )((short )data->have_temp) | (int )((short )(1 << (src + -1))));
    data->have_temp_fixed = (u16 )((int )((short )data->have_temp_fixed) | (int )((short )(1 << (src + -1))));
    data->reg_temp[0][src + -1] = *(reg_temp_mon + (unsigned long )i);
    data->temp_src[src + -1] = (u8 )src;
    goto ldv_31524;
  } else {
  }
  if (s > 9) {
    goto ldv_31524;
  } else {
  }
  data->have_temp = (u16 )((int )((short )data->have_temp) | (int )((short )(1 << s)));
  data->reg_temp[0][s] = *(reg_temp_mon + (unsigned long )i);
  data->temp_src[s] = (u8 )src;
  s = s + 1;
  ldv_31524:
  i = i + 1;
  ldv_31526: ;
  if (i < num_reg_temp_mon) {
    goto ldv_31525;
  } else {
  }
  i = 0;
  goto ldv_31531;
  ldv_31530: ;
  if ((unsigned int )((unsigned short )*(reg_temp_alternate + (unsigned long )i)) == 0U) {
    goto ldv_31528;
  } else {
  }
  if ((mask >> (i + 1)) & 1) {
    goto ldv_31528;
  } else {
  }
  if (i < (int )data->temp_fixed_num) {
    if (((int )data->have_temp >> i) & 1) {
      goto ldv_31528;
    } else {
    }
    data->have_temp = (u16 )((int )((short )data->have_temp) | (int )((short )(1 << i)));
    data->have_temp_fixed = (u16 )((int )((short )data->have_temp_fixed) | (int )((short )(1 << i)));
    data->reg_temp[0][i] = *(reg_temp_alternate + (unsigned long )i);
    if (i < num_reg_temp) {
      data->reg_temp[1][i] = *(reg_temp_over + (unsigned long )i);
      data->reg_temp[2][i] = *(reg_temp_hyst + (unsigned long )i);
    } else {
    }
    data->temp_src[i] = (unsigned int )((u8 )i) + 1U;
    goto ldv_31528;
  } else {
  }
  if (s > 9) {
    goto ldv_31529;
  } else {
  }
  data->have_temp = (u16 )((int )((short )data->have_temp) | (int )((short )(1 << s)));
  data->reg_temp[0][s] = *(reg_temp_alternate + (unsigned long )i);
  data->temp_src[s] = (unsigned int )((u8 )i) + 1U;
  s = s + 1;
  ldv_31528:
  i = i + 1;
  ldv_31531: ;
  if (i < data->temp_label_num + -1) {
    goto ldv_31530;
  } else {
  }
  ldv_31529:
  {
  nct6775_init_device(data);
  err = superio_enter(sio_data->sioreg);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___7 = superio_inb(sio_data->sioreg, 42);
  cr2a = (u8 )tmp___7;
  }
  {
  if ((unsigned int )data->kind == 1U) {
    goto case_1___0;
  } else {
  }
  if ((unsigned int )data->kind == 2U) {
    goto case_2___0;
  } else {
  }
  if ((unsigned int )data->kind == 0U) {
    goto case_0___0;
  } else {
  }
  if ((unsigned int )data->kind == 3U) {
    goto case_3___0;
  } else {
  }
  if ((unsigned int )data->kind == 4U) {
    goto case_4___0;
  } else {
  }
  if ((unsigned int )data->kind == 5U) {
    goto case_5___0;
  } else {
  }
  goto switch_break___0;
  case_1___0:
  data->have_vid = ((int )cr2a & 64) != 0;
  goto ldv_31533;
  case_2___0:
  data->have_vid = ((int )cr2a & 96) == 64;
  goto ldv_31533;
  case_0___0: ;
  case_3___0: ;
  case_4___0: ;
  case_5___0: ;
  goto ldv_31533;
  switch_break___0: ;
  }
  ldv_31533: ;
  if ((int )data->have_vid) {
    {
    superio_select(sio_data->sioreg, 13);
    tmp___8 = superio_inb(sio_data->sioreg, 227);
    data->vid = (u8 )tmp___8;
    data->vrm = vid_which_vrm();
    }
  } else {
  }
  if ((unsigned int )fan_debounce != 0U) {
    {
    superio_select(sio_data->sioreg, 11);
    tmp___10 = superio_inb(sio_data->sioreg, 240);
    tmp___9 = (u8 )tmp___10;
    }
    {
    if ((unsigned int )data->kind == 0U) {
      goto case_0___1;
    } else {
    }
    if ((unsigned int )data->kind == 1U) {
      goto case_1___1;
    } else {
    }
    if ((unsigned int )data->kind == 2U) {
      goto case_2___1;
    } else {
    }
    if ((unsigned int )data->kind == 3U) {
      goto case_3___1;
    } else {
    }
    if ((unsigned int )data->kind == 4U) {
      goto case_4___1;
    } else {
    }
    if ((unsigned int )data->kind == 5U) {
      goto case_5___1;
    } else {
    }
    goto switch_break___1;
    case_0___1:
    tmp___9 = (u8 )((unsigned int )tmp___9 | 224U);
    goto ldv_31541;
    case_1___1:
    tmp___9 = (u8 )((unsigned int )tmp___9 | 30U);
    goto ldv_31541;
    case_2___1: ;
    case_3___1:
    tmp___9 = (u8 )((unsigned int )tmp___9 | 62U);
    goto ldv_31541;
    case_4___1: ;
    case_5___1:
    tmp___9 = (u8 )((unsigned int )tmp___9 | 126U);
    goto ldv_31541;
    switch_break___1: ;
    }
    ldv_31541:
    {
    superio_outb(sio_data->sioreg, 240, (int )tmp___9);
    _dev_info((struct device const *)(& pdev___0->dev), "Enabled fan debounce for chip %s\n",
              data->name);
    }
  } else {
  }
  {
  nct6775_check_fan_inputs(data);
  superio_exit(sio_data->sioreg);
  nct6775_init_fan_common(dev, data);
  group = nct6775_create_attr_group(dev, & nct6775_pwm_template_group, (int )data->pwm_num);
  tmp___12 = IS_ERR((void const *)group);
  }
  if ((int )tmp___12) {
    {
    tmp___11 = PTR_ERR((void const *)group);
    }
    return ((int )tmp___11);
  } else {
  }
  {
  tmp___13 = num_attr_groups;
  num_attr_groups = num_attr_groups + 1;
  data->groups[tmp___13] = (struct attribute_group const *)group;
  tmp___14 = fls((int )data->have_in);
  group = nct6775_create_attr_group(dev, & nct6775_in_template_group, tmp___14);
  tmp___16 = IS_ERR((void const *)group);
  }
  if ((int )tmp___16) {
    {
    tmp___15 = PTR_ERR((void const *)group);
    }
    return ((int )tmp___15);
  } else {
  }
  {
  tmp___17 = num_attr_groups;
  num_attr_groups = num_attr_groups + 1;
  data->groups[tmp___17] = (struct attribute_group const *)group;
  tmp___18 = fls((int )data->has_fan);
  group = nct6775_create_attr_group(dev, & nct6775_fan_template_group, tmp___18);
  tmp___20 = IS_ERR((void const *)group);
  }
  if ((int )tmp___20) {
    {
    tmp___19 = PTR_ERR((void const *)group);
    }
    return ((int )tmp___19);
  } else {
  }
  {
  tmp___21 = num_attr_groups;
  num_attr_groups = num_attr_groups + 1;
  data->groups[tmp___21] = (struct attribute_group const *)group;
  tmp___22 = fls((int )data->have_temp);
  group = nct6775_create_attr_group(dev, & nct6775_temp_template_group, tmp___22);
  tmp___24 = IS_ERR((void const *)group);
  }
  if ((int )tmp___24) {
    {
    tmp___23 = PTR_ERR((void const *)group);
    }
    return ((int )tmp___23);
  } else {
  }
  {
  tmp___25 = num_attr_groups;
  num_attr_groups = num_attr_groups + 1;
  data->groups[tmp___25] = (struct attribute_group const *)group;
  tmp___26 = num_attr_groups;
  num_attr_groups = num_attr_groups + 1;
  data->groups[tmp___26] = & nct6775_group_other;
  hwmon_dev = devm_hwmon_device_register_with_groups(dev, data->name, (void *)data,
                                                     (struct attribute_group const **)(& data->groups));
  tmp___27 = PTR_ERR_OR_ZERO((void const *)hwmon_dev);
  }
  return (tmp___27);
}
}
static void nct6791_enable_io_mapping(int sioaddr )
{
  int val ;
  {
  {
  val = superio_inb(sioaddr, 40);
  }
  if ((val & 16) != 0) {
    {
    printk("\016nct6775: Enabling hardware monitor logical device mappings.\n");
    superio_outb(sioaddr, 40, val & -17);
    }
  } else {
  }
  return;
}
}
static int nct6775_suspend(struct device *dev )
{
  struct nct6775_data *data ;
  struct nct6775_data *tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  {
  tmp = nct6775_update_device(dev);
  data = tmp;
  ldv_mutex_lock_142(& data->update_lock);
  tmp___0 = nct6775_read_value(data, (int )data->REG_VBAT);
  data->vbat = (u8 )tmp___0;
  }
  if ((unsigned int )data->kind == 1U) {
    {
    tmp___1 = nct6775_read_value(data, 1286);
    data->fandiv1 = (u8 )tmp___1;
    tmp___2 = nct6775_read_value(data, 1287);
    data->fandiv2 = (u8 )tmp___2;
    }
  } else {
  }
  {
  ldv_mutex_unlock_143(& data->update_lock);
  }
  return (0);
}
}
static int nct6775_resume(struct device *dev )
{
  struct nct6775_data *data ;
  void *tmp ;
  int i ;
  int j ;
  int err ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct nct6775_data *)tmp;
  err = 0;
  ldv_mutex_lock_144(& data->update_lock);
  data->bank = 255U;
  }
  if ((unsigned int )data->kind - 4U <= 1U) {
    {
    err = superio_enter(data->sioreg);
    }
    if (err != 0) {
      goto abort;
    } else {
    }
    {
    nct6791_enable_io_mapping(data->sioreg);
    superio_exit(data->sioreg);
    }
  } else {
  }
  i = 0;
  goto ldv_31565;
  ldv_31564: ;
  if ((((int )data->have_in >> i) & 1) == 0) {
    goto ldv_31563;
  } else {
  }
  {
  nct6775_write_value(data, (int )*(data->REG_IN_MINMAX[0] + (unsigned long )i), (int )data->in[i][1]);
  nct6775_write_value(data, (int )*(data->REG_IN_MINMAX[1] + (unsigned long )i), (int )data->in[i][2]);
  }
  ldv_31563:
  i = i + 1;
  ldv_31565: ;
  if (i < (int )data->in_num) {
    goto ldv_31564;
  } else {
  }
  i = 0;
  goto ldv_31571;
  ldv_31570: ;
  if ((((int )data->has_fan_min >> i) & 1) == 0) {
    goto ldv_31569;
  } else {
  }
  {
  nct6775_write_value(data, (int )*(data->REG_FAN_MIN + (unsigned long )i), (int )data->fan_min[i]);
  }
  ldv_31569:
  i = i + 1;
  ldv_31571: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_31570;
  } else {
  }
  i = 0;
  goto ldv_31580;
  ldv_31579: ;
  if ((((int )data->have_temp >> i) & 1) == 0) {
    goto ldv_31573;
  } else {
  }
  j = 1;
  goto ldv_31577;
  ldv_31576: ;
  if ((unsigned int )data->reg_temp[j][i] != 0U) {
    {
    nct6775_write_temp(data, (int )data->reg_temp[j][i], (int )((u16 )data->temp[j][i]));
    }
  } else {
  }
  j = j + 1;
  ldv_31577: ;
  if ((unsigned int )j <= 4U) {
    goto ldv_31576;
  } else {
  }
  ldv_31573:
  i = i + 1;
  ldv_31580: ;
  if (i <= 9) {
    goto ldv_31579;
  } else {
  }
  {
  nct6775_write_value(data, (int )data->REG_VBAT, (int )data->vbat);
  }
  if ((unsigned int )data->kind == 1U) {
    {
    nct6775_write_value(data, 1286, (int )data->fandiv1);
    nct6775_write_value(data, 1287, (int )data->fandiv2);
    }
  } else {
  }
  abort:
  {
  data->valid = 0;
  ldv_mutex_unlock_145(& data->update_lock);
  }
  return (err);
}
}
static struct dev_pm_ops const nct6775_dev_pm_ops =
     {0, 0, & nct6775_suspend, & nct6775_resume, & nct6775_suspend, 0, 0, & nct6775_resume,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct platform_driver nct6775_driver =
     {& nct6775_probe, 0, 0, 0, 0, {"nct6775", 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                                  0, 0, & nct6775_dev_pm_ops, 0}, 0, (_Bool)0};
static char const * const nct6775_sio_names[6U] = { "NCT6106D", "NCT6775F", "NCT6776D/F", "NCT6779D",
        "NCT6791D", "NCT6792D"};
static int nct6775_find(int sioaddr , struct nct6775_sio_data *sio_data )
{
  u16 val ;
  int err ;
  int addr ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  err = superio_enter(sioaddr);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )force_id != 0U) {
    val = force_id;
  } else {
    {
    tmp = superio_inb(sioaddr, 32);
    tmp___0 = superio_inb(sioaddr, 33);
    val = (u16 )((int )((short )(tmp << 8)) | (int )((short )tmp___0));
    }
  }
  {
  if (((int )val & 65520) == 50256) {
    goto case_50256;
  } else {
  }
  if (((int )val & 65520) == 46192) {
    goto case_46192;
  } else {
  }
  if (((int )val & 65520) == 49968) {
    goto case_49968;
  } else {
  }
  if (((int )val & 65520) == 50528) {
    goto case_50528;
  } else {
  }
  if (((int )val & 65520) == 51200) {
    goto case_51200;
  } else {
  }
  if (((int )val & 65520) == 51472) {
    goto case_51472;
  } else {
  }
  goto switch_default;
  case_50256:
  sio_data->kind = 0;
  goto ldv_31593;
  case_46192:
  sio_data->kind = 1;
  goto ldv_31593;
  case_49968:
  sio_data->kind = 2;
  goto ldv_31593;
  case_50528:
  sio_data->kind = 3;
  goto ldv_31593;
  case_51200:
  sio_data->kind = 4;
  goto ldv_31593;
  case_51472:
  sio_data->kind = 5;
  goto ldv_31593;
  switch_default: ;
  if ((unsigned int )val != 65535U) {
    {
    descriptor.modname = "nct6775";
    descriptor.function = "nct6775_find";
    descriptor.filename = "drivers/hwmon/nct6775.c";
    descriptor.format = "unsupported chip ID: 0x%04x\n";
    descriptor.lineno = 4135U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "nct6775: unsupported chip ID: 0x%04x\n", (int )val);
      }
    } else {
    }
  } else {
  }
  {
  superio_exit(sioaddr);
  }
  return (-19);
  switch_break: ;
  }
  ldv_31593:
  {
  superio_select(sioaddr, 11);
  tmp___2 = superio_inb(sioaddr, 96);
  tmp___3 = superio_inb(sioaddr, 97);
  val = (u16 )((int )((short )(tmp___2 << 8)) | (int )((short )tmp___3));
  addr = (int )val & -8;
  }
  if (addr == 0) {
    {
    printk("\vnct6775: Refusing to enable a Super-I/O device with a base I/O port 0\n");
    superio_exit(sioaddr);
    }
    return (-19);
  } else {
  }
  {
  tmp___4 = superio_inb(sioaddr, 48);
  val = (u16 )tmp___4;
  }
  if (((int )val & 1) == 0) {
    {
    printk("\fnct6775: Forcibly enabling Super-I/O. Sensor is probably unusable.\n");
    superio_outb(sioaddr, 48, (int )((unsigned int )val | 1U));
    }
  } else {
  }
  if ((unsigned int )sio_data->kind - 4U <= 1U) {
    {
    nct6791_enable_io_mapping(sioaddr);
    }
  } else {
  }
  {
  superio_exit(sioaddr);
  printk("\016nct6775: Found %s or compatible chip at %#x:%#x\n", nct6775_sio_names[(unsigned int )sio_data->kind],
         sioaddr, addr);
  sio_data->sioreg = sioaddr;
  }
  return (addr);
}
}
static struct platform_device *pdev[2U] ;
static int sensors_nct6775_init(void)
{
  int i ;
  int err ;
  bool found ;
  int address ;
  struct resource res ;
  struct nct6775_sio_data sio_data ;
  int sioaddr[2U] ;
  {
  {
  found = 0;
  sioaddr[0] = 46;
  sioaddr[1] = 78;
  err = ldv___platform_driver_register_146(& nct6775_driver, & __this_module);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_31619;
  ldv_31618:
  {
  address = nct6775_find(sioaddr[i], & sio_data);
  }
  if (address <= 0) {
    goto ldv_31615;
  } else {
  }
  {
  found = 1;
  pdev[i] = platform_device_alloc("nct6775", address);
  }
  if ((unsigned long )pdev[i] == (unsigned long )((struct platform_device *)0)) {
    err = -12;
    goto exit_device_unregister;
  } else {
  }
  {
  err = platform_device_add_data(pdev[i], (void const *)(& sio_data), 8UL);
  }
  if (err != 0) {
    goto exit_device_put;
  } else {
  }
  {
  memset((void *)(& res), 0, 56UL);
  res.name = "nct6775";
  res.start = (resource_size_t )(address + 5);
  res.end = (resource_size_t )(address + 6);
  res.flags = 256UL;
  err = acpi_check_resource_conflict((struct resource const *)(& res));
  }
  if (err != 0) {
    {
    platform_device_put(pdev[i]);
    pdev[i] = (struct platform_device *)0;
    }
    goto ldv_31615;
  } else {
  }
  {
  err = platform_device_add_resources(pdev[i], (struct resource const *)(& res),
                                      1U);
  }
  if (err != 0) {
    goto exit_device_put;
  } else {
  }
  {
  err = platform_device_add(pdev[i]);
  }
  if (err != 0) {
    goto exit_device_put;
  } else {
  }
  ldv_31615:
  i = i + 1;
  ldv_31619: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_31618;
  } else {
  }
  if (! found) {
    err = -19;
    goto exit_unregister;
  } else {
  }
  return (0);
  exit_device_put:
  {
  platform_device_put(pdev[i]);
  }
  exit_device_unregister: ;
  goto ldv_31623;
  ldv_31622: ;
  if ((unsigned long )pdev[i] != (unsigned long )((struct platform_device *)0)) {
    {
    platform_device_unregister(pdev[i]);
    }
  } else {
  }
  ldv_31623:
  i = i - 1;
  if (i >= 0) {
    goto ldv_31622;
  } else {
  }
  exit_unregister:
  {
  ldv_platform_driver_unregister_147(& nct6775_driver);
  }
  return (err);
}
}
static void sensors_nct6775_exit(void)
{
  int i ;
  {
  i = 0;
  goto ldv_31632;
  ldv_31631: ;
  if ((unsigned long )pdev[i] != (unsigned long )((struct platform_device *)0)) {
    {
    platform_device_unregister(pdev[i]);
    }
  } else {
  }
  i = i + 1;
  ldv_31632: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_31631;
  } else {
  }
  {
  ldv_platform_driver_unregister_148(& nct6775_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_sensors_nct6775_exit_36_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_sensors_nct6775_init_36_11(int (*arg0)(void) ) ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
void ldv_dispatch_deregister_35_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_36_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_6_36_5(void) ;
void ldv_dispatch_pm_deregister_0_5(void) ;
void ldv_dispatch_pm_register_0_6(void) ;
void ldv_dispatch_register_34_2(struct platform_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_36_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_6_36_7(void) ;
void ldv_dummy_resourceless_instance_callback_10_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_19_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_20_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_21_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_21_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_22_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_22_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_23_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_23_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_24_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_24_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_25_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_25_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_26_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_26_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_27_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_27_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_28_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_28_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_29_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_30_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_31_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_32_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_33_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_entry_EMGentry_36(void *arg0 ) ;
int main(void) ;
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
int ldv_platform_instance_probe_0_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_0_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_0(void *arg0 ) ;
void ldv_platform_pm_ops_instance_1(void *arg0 ) ;
void ldv_pm_ops_instance_complete_1_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_1_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_1_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_1_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_1_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_1_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_1_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_1_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_1_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_1_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_1_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_1_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_1_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_1_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_1_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_1_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_1_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_1_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_1_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_1_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_1_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_1_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_1_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_19(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_20(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_21(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_22(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_23(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_24(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_25(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_26(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_27(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_28(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_sensor_device_template_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_struct_sensor_template_group_dummy_resourceless_instance_29(void *arg0 ) ;
void ldv_struct_sensor_template_group_dummy_resourceless_instance_30(void *arg0 ) ;
void ldv_struct_sensor_template_group_dummy_resourceless_instance_31(void *arg0 ) ;
void ldv_struct_sensor_template_group_dummy_resourceless_instance_32(void *arg0 ) ;
void ldv_struct_sensor_template_group_dummy_resourceless_instance_33(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_17 ;
struct ldv_thread ldv_thread_18 ;
struct ldv_thread ldv_thread_19 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_21 ;
struct ldv_thread ldv_thread_22 ;
struct ldv_thread ldv_thread_23 ;
struct ldv_thread ldv_thread_24 ;
struct ldv_thread ldv_thread_25 ;
struct ldv_thread ldv_thread_26 ;
struct ldv_thread ldv_thread_27 ;
struct ldv_thread ldv_thread_28 ;
struct ldv_thread ldv_thread_29 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_30 ;
struct ldv_thread ldv_thread_31 ;
struct ldv_thread ldv_thread_32 ;
struct ldv_thread ldv_thread_33 ;
struct ldv_thread ldv_thread_36 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_sensors_nct6775_exit_36_2(void (*arg0)(void) )
{
  {
  {
  sensors_nct6775_exit();
  }
  return;
}
}
int ldv_EMGentry_init_sensors_nct6775_init_36_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = sensors_nct6775_init();
  }
  return (tmp);
}
}
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_34_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_34_platform_driver_platform_driver = arg1;
    ldv_dispatch_register_34_2(ldv_34_platform_driver_platform_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_dispatch_deregister_35_1(struct platform_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_36_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_6_36_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_deregister_0_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_register_0_6(void)
{
  struct ldv_struct_platform_instance_0 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_platform_instance_0 *)tmp;
  ldv_platform_pm_ops_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_34_2(struct platform_driver *arg0 )
{
  struct ldv_struct_platform_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_0 = (struct ldv_struct_platform_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  ldv_platform_platform_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_36_6(void)
{
  struct ldv_struct_platform_instance_0 *cf_arg_2 ;
  struct ldv_struct_platform_instance_0 *cf_arg_3 ;
  struct ldv_struct_platform_instance_0 *cf_arg_4 ;
  struct ldv_struct_platform_instance_0 *cf_arg_5 ;
  struct ldv_struct_platform_instance_0 *cf_arg_6 ;
  struct ldv_struct_platform_instance_0 *cf_arg_7 ;
  struct ldv_struct_platform_instance_0 *cf_arg_8 ;
  struct ldv_struct_platform_instance_0 *cf_arg_9 ;
  struct ldv_struct_platform_instance_0 *cf_arg_10 ;
  struct ldv_struct_platform_instance_0 *cf_arg_11 ;
  struct ldv_struct_platform_instance_0 *cf_arg_12 ;
  struct ldv_struct_platform_instance_0 *cf_arg_13 ;
  struct ldv_struct_platform_instance_0 *cf_arg_14 ;
  struct ldv_struct_platform_instance_0 *cf_arg_15 ;
  struct ldv_struct_platform_instance_0 *cf_arg_16 ;
  struct ldv_struct_platform_instance_0 *cf_arg_17 ;
  struct ldv_struct_platform_instance_0 *cf_arg_18 ;
  struct ldv_struct_platform_instance_0 *cf_arg_19 ;
  struct ldv_struct_platform_instance_0 *cf_arg_20 ;
  struct ldv_struct_platform_instance_0 *cf_arg_21 ;
  struct ldv_struct_platform_instance_0 *cf_arg_22 ;
  struct ldv_struct_platform_instance_0 *cf_arg_23 ;
  struct ldv_struct_platform_instance_0 *cf_arg_24 ;
  struct ldv_struct_platform_instance_0 *cf_arg_25 ;
  struct ldv_struct_platform_instance_0 *cf_arg_26 ;
  struct ldv_struct_platform_instance_0 *cf_arg_27 ;
  struct ldv_struct_platform_instance_0 *cf_arg_28 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  void *tmp___25 ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_platform_instance_0 *)tmp;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_2((void *)cf_arg_2);
  tmp___0 = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_0 *)tmp___0;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_3((void *)cf_arg_3);
  tmp___1 = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_0 *)tmp___1;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_4((void *)cf_arg_4);
  tmp___2 = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_platform_instance_0 *)tmp___2;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_5((void *)cf_arg_5);
  tmp___3 = ldv_xmalloc(16UL);
  cf_arg_6 = (struct ldv_struct_platform_instance_0 *)tmp___3;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_6((void *)cf_arg_6);
  tmp___4 = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_platform_instance_0 *)tmp___4;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_7((void *)cf_arg_7);
  tmp___5 = ldv_xmalloc(16UL);
  cf_arg_8 = (struct ldv_struct_platform_instance_0 *)tmp___5;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_8((void *)cf_arg_8);
  tmp___6 = ldv_xmalloc(16UL);
  cf_arg_9 = (struct ldv_struct_platform_instance_0 *)tmp___6;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_9((void *)cf_arg_9);
  tmp___7 = ldv_xmalloc(16UL);
  cf_arg_10 = (struct ldv_struct_platform_instance_0 *)tmp___7;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_10((void *)cf_arg_10);
  tmp___8 = ldv_xmalloc(16UL);
  cf_arg_11 = (struct ldv_struct_platform_instance_0 *)tmp___8;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_11((void *)cf_arg_11);
  tmp___9 = ldv_xmalloc(16UL);
  cf_arg_12 = (struct ldv_struct_platform_instance_0 *)tmp___9;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_12((void *)cf_arg_12);
  tmp___10 = ldv_xmalloc(16UL);
  cf_arg_13 = (struct ldv_struct_platform_instance_0 *)tmp___10;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_13((void *)cf_arg_13);
  tmp___11 = ldv_xmalloc(16UL);
  cf_arg_14 = (struct ldv_struct_platform_instance_0 *)tmp___11;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_14((void *)cf_arg_14);
  tmp___12 = ldv_xmalloc(16UL);
  cf_arg_15 = (struct ldv_struct_platform_instance_0 *)tmp___12;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_15((void *)cf_arg_15);
  tmp___13 = ldv_xmalloc(16UL);
  cf_arg_16 = (struct ldv_struct_platform_instance_0 *)tmp___13;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_16((void *)cf_arg_16);
  tmp___14 = ldv_xmalloc(16UL);
  cf_arg_17 = (struct ldv_struct_platform_instance_0 *)tmp___14;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_17((void *)cf_arg_17);
  tmp___15 = ldv_xmalloc(16UL);
  cf_arg_18 = (struct ldv_struct_platform_instance_0 *)tmp___15;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_18((void *)cf_arg_18);
  tmp___16 = ldv_xmalloc(16UL);
  cf_arg_19 = (struct ldv_struct_platform_instance_0 *)tmp___16;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_19((void *)cf_arg_19);
  tmp___17 = ldv_xmalloc(16UL);
  cf_arg_20 = (struct ldv_struct_platform_instance_0 *)tmp___17;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_20((void *)cf_arg_20);
  tmp___18 = ldv_xmalloc(16UL);
  cf_arg_21 = (struct ldv_struct_platform_instance_0 *)tmp___18;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_21((void *)cf_arg_21);
  tmp___19 = ldv_xmalloc(16UL);
  cf_arg_22 = (struct ldv_struct_platform_instance_0 *)tmp___19;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_22((void *)cf_arg_22);
  tmp___20 = ldv_xmalloc(16UL);
  cf_arg_23 = (struct ldv_struct_platform_instance_0 *)tmp___20;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_23((void *)cf_arg_23);
  tmp___21 = ldv_xmalloc(16UL);
  cf_arg_24 = (struct ldv_struct_platform_instance_0 *)tmp___21;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_24((void *)cf_arg_24);
  tmp___22 = ldv_xmalloc(16UL);
  cf_arg_25 = (struct ldv_struct_platform_instance_0 *)tmp___22;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_25((void *)cf_arg_25);
  tmp___23 = ldv_xmalloc(16UL);
  cf_arg_26 = (struct ldv_struct_platform_instance_0 *)tmp___23;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_26((void *)cf_arg_26);
  tmp___24 = ldv_xmalloc(16UL);
  cf_arg_27 = (struct ldv_struct_platform_instance_0 *)tmp___24;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_27((void *)cf_arg_27);
  tmp___25 = ldv_xmalloc(16UL);
  cf_arg_28 = (struct ldv_struct_platform_instance_0 *)tmp___25;
  ldv_struct_sensor_device_template_dummy_resourceless_instance_28((void *)cf_arg_28);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_6_36_7(void)
{
  struct ldv_struct_platform_instance_0 *cf_arg_32 ;
  struct ldv_struct_platform_instance_0 *cf_arg_33 ;
  struct ldv_struct_platform_instance_0 *cf_arg_29 ;
  struct ldv_struct_platform_instance_0 *cf_arg_30 ;
  struct ldv_struct_platform_instance_0 *cf_arg_31 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_32 = (struct ldv_struct_platform_instance_0 *)tmp;
  ldv_struct_sensor_template_group_dummy_resourceless_instance_32((void *)cf_arg_32);
  tmp___0 = ldv_xmalloc(16UL);
  cf_arg_33 = (struct ldv_struct_platform_instance_0 *)tmp___0;
  ldv_struct_sensor_template_group_dummy_resourceless_instance_33((void *)cf_arg_33);
  tmp___1 = ldv_xmalloc(16UL);
  cf_arg_29 = (struct ldv_struct_platform_instance_0 *)tmp___1;
  ldv_struct_sensor_template_group_dummy_resourceless_instance_29((void *)cf_arg_29);
  tmp___2 = ldv_xmalloc(16UL);
  cf_arg_30 = (struct ldv_struct_platform_instance_0 *)tmp___2;
  ldv_struct_sensor_template_group_dummy_resourceless_instance_30((void *)cf_arg_30);
  tmp___3 = ldv_xmalloc(16UL);
  cf_arg_31 = (struct ldv_struct_platform_instance_0 *)tmp___3;
  ldv_struct_sensor_template_group_dummy_resourceless_instance_31((void *)cf_arg_31);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_fan_time(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_fan_time(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_in_reg(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_in_reg(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_pwm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_pwm(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_pwm_enable(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_pwm_enable(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_pwm_mode(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_pwm_mode(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_pwm_temp_sel(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_pwm_temp_sel(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_pwm_weight_temp_sel(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_pwm_weight_temp_sel(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_speed_tolerance(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_speed_tolerance(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_target_speed(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_target_speed(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_target_temp(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_target_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp_alarm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_weight_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp_beep(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_temp_beep(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_23_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp_label(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_23_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_weight_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_24_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp_offset(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_24_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_temp_offset(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_25_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp_tolerance(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_25_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_temp_tolerance(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_26_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_temp_type(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_26_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_temp_type(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_27_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_vid(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_27_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_weight_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_28_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  show_weight_temp(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_28_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  store_weight_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_29_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 )
{
  {
  {
  nct6775_fan_is_visible(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_alarm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  clear_caseopen(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_30_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 )
{
  {
  {
  nct6775_in_is_visible(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_31_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 )
{
  {
  {
  nct6775_other_is_visible(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_32_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 )
{
  {
  {
  nct6775_pwm_is_visible(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_33_3(unsigned short (*arg0)(struct kobject * ,
                                                                          struct attribute * ,
                                                                          int ) ,
                                                   struct kobject *arg1 , struct attribute *arg2 ,
                                                   int arg3 )
{
  {
  {
  nct6775_temp_is_visible(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_auto_pwm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_auto_pwm(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_auto_temp(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_auto_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_beep(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_beep(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_fan(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_weight_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_fan_div(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_weight_temp(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_fan_min(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_fan_min(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  show_fan_pulses(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  store_fan_pulses(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_entry_EMGentry_36(void *arg0 )
{
  void (*ldv_36_exit_sensors_nct6775_exit_default)(void) ;
  int (*ldv_36_init_sensors_nct6775_init_default)(void) ;
  int ldv_36_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_36_ret_default = ldv_EMGentry_init_sensors_nct6775_init_36_11(ldv_36_init_sensors_nct6775_init_default);
  ldv_36_ret_default = ldv_ldv_post_init_149(ldv_36_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_36_ret_default != 0);
    ldv_ldv_check_final_state_150();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_36_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_6_36_7();
      ldv_dispatch_register_dummy_resourceless_instance_5_36_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_6_36_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_5_36_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_sensors_nct6775_exit_36_2(ldv_36_exit_sensors_nct6775_exit_default);
    ldv_ldv_check_final_state_151();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_ldv_initialize_152();
  ldv_entry_EMGentry_36((void *)0);
  }
return 0;
}
}
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 )
{
  struct platform_driver *ldv_35_platform_driver_platform_driver ;
  {
  {
  ldv_35_platform_driver_platform_driver = arg1;
  ldv_dispatch_deregister_35_1(ldv_35_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_0_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = nct6775_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_0_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_0(void *arg0 )
{
  struct platform_driver *ldv_0_container_platform_driver ;
  int ldv_0_probed_default ;
  struct platform_device *ldv_0_resource_platform_device ;
  struct ldv_struct_platform_instance_0 *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  data = (struct ldv_struct_platform_instance_0 *)arg0;
  ldv_0_probed_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_platform_instance_0 *)0)) {
    {
    ldv_0_container_platform_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1464UL);
  ldv_0_resource_platform_device = (struct platform_device *)tmp;
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_ldv_pre_probe_153();
    ldv_0_probed_default = ldv_platform_instance_probe_0_14(ldv_0_container_platform_driver->probe,
                                                            ldv_0_resource_platform_device);
    ldv_0_probed_default = ldv_ldv_post_probe_154(ldv_0_probed_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_0_probed_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_probed_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_platform_device);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___2 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___2 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_0;
  case_2:
  {
  ldv_dispatch_pm_register_0_6();
  ldv_dispatch_pm_deregister_0_5();
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3: ;
  if ((unsigned long )ldv_0_container_platform_driver->remove != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_platform_instance_release_0_3(ldv_0_container_platform_driver->remove, ldv_0_resource_platform_device);
    }
  } else {
  }
  ldv_0_probed_default = 1;
  goto ldv_main_0;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_platform_pm_ops_instance_1(void *arg0 )
{
  struct device *ldv_1_device_device ;
  struct dev_pm_ops *ldv_1_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_1;
  return;
  ldv_do_1:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_1_27(ldv_1_pm_ops_dev_pm_ops->runtime_idle, ldv_1_device_device);
    }
  } else {
  }
  goto ldv_do_1;
  case_2: ;
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_1_25(ldv_1_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_1_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_1_24(ldv_1_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_1_device_device);
    }
  } else {
  }
  goto ldv_do_1;
  case_3: ;
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_1_22(ldv_1_pm_ops_dev_pm_ops->prepare, ldv_1_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  {
  if (tmp___0 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___0 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___0 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_pm_ops_instance_suspend_1_21(ldv_1_pm_ops_dev_pm_ops->suspend, ldv_1_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_1_20(ldv_1_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_1_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_1_19(ldv_1_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_1_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_1_18(ldv_1_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_1_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_1_17(ldv_1_pm_ops_dev_pm_ops->resume_early,
                                            ldv_1_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_resume_1_16(ldv_1_pm_ops_dev_pm_ops->resume, ldv_1_device_device);
  }
  goto ldv_33153;
  case_2___0:
  {
  ldv_pm_ops_instance_freeze_1_15(ldv_1_pm_ops_dev_pm_ops->freeze, ldv_1_device_device);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_1_14(ldv_1_pm_ops_dev_pm_ops->freeze_late, ldv_1_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_1_13(ldv_1_pm_ops_dev_pm_ops->thaw_early, ldv_1_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_1_12(ldv_1_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_1_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_1_11(ldv_1_pm_ops_dev_pm_ops->thaw_noirq, ldv_1_device_device);
      }
    } else {
    }
  }
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->thaw != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_1_10(ldv_1_pm_ops_dev_pm_ops->thaw, ldv_1_device_device);
    }
  } else {
  }
  goto ldv_33153;
  case_3___0: ;
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->poweroff != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_1_9(ldv_1_pm_ops_dev_pm_ops->poweroff, ldv_1_device_device);
    }
  } else {
  }
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_1_8(ldv_1_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_1_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_1_7(ldv_1_pm_ops_dev_pm_ops->restore_early,
                                            ldv_1_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_1_6(ldv_1_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_1_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_1_5(ldv_1_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_1_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_restore_1_4(ldv_1_pm_ops_dev_pm_ops->restore, ldv_1_device_device);
  }
  goto ldv_33153;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_33153: ;
  if ((unsigned long )ldv_1_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_1_3(ldv_1_pm_ops_dev_pm_ops->complete, ldv_1_device_device);
    }
  } else {
  }
  goto ldv_do_1;
  case_4: ;
  return;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pm_ops_instance_complete_1_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_1_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  nct6775_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_1_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_1_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_1_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_1_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_1_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_1_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_1_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  nct6775_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_1_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_1_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_1_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  nct6775_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_1_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_1_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_1_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_1_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_1_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_1_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  nct6775_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_1_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_1_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_1_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_1_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_1_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_10(void *arg0 )
{
  long (*ldv_10_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_10_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_10_container_struct_device_attribute ;
  struct device *ldv_10_container_struct_device_ptr ;
  char *ldv_10_ldv_param_3_2_default ;
  char *ldv_10_ldv_param_9_2_default ;
  unsigned long ldv_10_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_10;
  return;
  ldv_call_10:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_10_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_10_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_10_9(ldv_10_callback_store, ldv_10_container_struct_device_ptr,
                                                    ldv_10_container_struct_device_attribute,
                                                    ldv_10_ldv_param_9_2_default,
                                                    ldv_10_ldv_param_9_3_default);
      ldv_free((void *)ldv_10_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_show, ldv_10_container_struct_device_ptr,
                                                    ldv_10_container_struct_device_attribute,
                                                    ldv_10_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_10_ldv_param_3_2_default);
    }
    goto ldv_call_10;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_11(void *arg0 )
{
  long (*ldv_11_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_11_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_11_container_struct_device_attribute ;
  struct device *ldv_11_container_struct_device_ptr ;
  char *ldv_11_ldv_param_3_2_default ;
  char *ldv_11_ldv_param_9_2_default ;
  unsigned long ldv_11_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_11_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_11_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_11_9(ldv_11_callback_store, ldv_11_container_struct_device_ptr,
                                                    ldv_11_container_struct_device_attribute,
                                                    ldv_11_ldv_param_9_2_default,
                                                    ldv_11_ldv_param_9_3_default);
      ldv_free((void *)ldv_11_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_show, ldv_11_container_struct_device_ptr,
                                                    ldv_11_container_struct_device_attribute,
                                                    ldv_11_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_11_ldv_param_3_2_default);
    }
    goto ldv_call_11;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_12(void *arg0 )
{
  long (*ldv_12_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_12_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_12_container_struct_device_attribute ;
  struct device *ldv_12_container_struct_device_ptr ;
  char *ldv_12_ldv_param_3_2_default ;
  char *ldv_12_ldv_param_9_2_default ;
  unsigned long ldv_12_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_12_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_12_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_12_9(ldv_12_callback_store, ldv_12_container_struct_device_ptr,
                                                    ldv_12_container_struct_device_attribute,
                                                    ldv_12_ldv_param_9_2_default,
                                                    ldv_12_ldv_param_9_3_default);
      ldv_free((void *)ldv_12_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_show, ldv_12_container_struct_device_ptr,
                                                    ldv_12_container_struct_device_attribute,
                                                    ldv_12_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_12_ldv_param_3_2_default);
    }
    goto ldv_call_12;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_13(void *arg0 )
{
  long (*ldv_13_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_13_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_13_container_struct_device_attribute ;
  struct device *ldv_13_container_struct_device_ptr ;
  char *ldv_13_ldv_param_3_2_default ;
  char *ldv_13_ldv_param_9_2_default ;
  unsigned long ldv_13_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_13_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_13_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_13_9(ldv_13_callback_store, ldv_13_container_struct_device_ptr,
                                                    ldv_13_container_struct_device_attribute,
                                                    ldv_13_ldv_param_9_2_default,
                                                    ldv_13_ldv_param_9_3_default);
      ldv_free((void *)ldv_13_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_show, ldv_13_container_struct_device_ptr,
                                                    ldv_13_container_struct_device_attribute,
                                                    ldv_13_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_13_ldv_param_3_2_default);
    }
    goto ldv_call_13;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_14(void *arg0 )
{
  long (*ldv_14_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_14_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_14_container_struct_device_attribute ;
  struct device *ldv_14_container_struct_device_ptr ;
  char *ldv_14_ldv_param_3_2_default ;
  char *ldv_14_ldv_param_9_2_default ;
  unsigned long ldv_14_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_14;
  return;
  ldv_call_14:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_14_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_14_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_14_9(ldv_14_callback_store, ldv_14_container_struct_device_ptr,
                                                    ldv_14_container_struct_device_attribute,
                                                    ldv_14_ldv_param_9_2_default,
                                                    ldv_14_ldv_param_9_3_default);
      ldv_free((void *)ldv_14_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_show, ldv_14_container_struct_device_ptr,
                                                    ldv_14_container_struct_device_attribute,
                                                    ldv_14_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_14_ldv_param_3_2_default);
    }
    goto ldv_call_14;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_15(void *arg0 )
{
  long (*ldv_15_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_15_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_15_container_struct_device_attribute ;
  struct device *ldv_15_container_struct_device_ptr ;
  char *ldv_15_ldv_param_3_2_default ;
  char *ldv_15_ldv_param_9_2_default ;
  unsigned long ldv_15_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_15;
  return;
  ldv_call_15:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_15_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_15_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_15_9(ldv_15_callback_store, ldv_15_container_struct_device_ptr,
                                                    ldv_15_container_struct_device_attribute,
                                                    ldv_15_ldv_param_9_2_default,
                                                    ldv_15_ldv_param_9_3_default);
      ldv_free((void *)ldv_15_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_show, ldv_15_container_struct_device_ptr,
                                                    ldv_15_container_struct_device_attribute,
                                                    ldv_15_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_15_ldv_param_3_2_default);
    }
    goto ldv_call_15;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_16(void *arg0 )
{
  long (*ldv_16_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_16_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_16_container_struct_device_attribute ;
  struct device *ldv_16_container_struct_device_ptr ;
  char *ldv_16_ldv_param_3_2_default ;
  char *ldv_16_ldv_param_9_2_default ;
  unsigned long ldv_16_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_16;
  return;
  ldv_call_16:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_16_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_16_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_16_9(ldv_16_callback_store, ldv_16_container_struct_device_ptr,
                                                    ldv_16_container_struct_device_attribute,
                                                    ldv_16_ldv_param_9_2_default,
                                                    ldv_16_ldv_param_9_3_default);
      ldv_free((void *)ldv_16_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_show, ldv_16_container_struct_device_ptr,
                                                    ldv_16_container_struct_device_attribute,
                                                    ldv_16_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_16_ldv_param_3_2_default);
    }
    goto ldv_call_16;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_17(void *arg0 )
{
  long (*ldv_17_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_17_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_17_container_struct_device_attribute ;
  struct device *ldv_17_container_struct_device_ptr ;
  char *ldv_17_ldv_param_3_2_default ;
  char *ldv_17_ldv_param_9_2_default ;
  unsigned long ldv_17_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_17;
  return;
  ldv_call_17:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_17_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_17_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_17_9(ldv_17_callback_store, ldv_17_container_struct_device_ptr,
                                                    ldv_17_container_struct_device_attribute,
                                                    ldv_17_ldv_param_9_2_default,
                                                    ldv_17_ldv_param_9_3_default);
      ldv_free((void *)ldv_17_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_show, ldv_17_container_struct_device_ptr,
                                                    ldv_17_container_struct_device_attribute,
                                                    ldv_17_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_17_ldv_param_3_2_default);
    }
    goto ldv_call_17;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_18(void *arg0 )
{
  long (*ldv_18_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_18_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_18_container_struct_device_attribute ;
  struct device *ldv_18_container_struct_device_ptr ;
  char *ldv_18_ldv_param_3_2_default ;
  char *ldv_18_ldv_param_9_2_default ;
  unsigned long ldv_18_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_18;
  return;
  ldv_call_18:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_18_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_18_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_18_9(ldv_18_callback_store, ldv_18_container_struct_device_ptr,
                                                    ldv_18_container_struct_device_attribute,
                                                    ldv_18_ldv_param_9_2_default,
                                                    ldv_18_ldv_param_9_3_default);
      ldv_free((void *)ldv_18_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_show, ldv_18_container_struct_device_ptr,
                                                    ldv_18_container_struct_device_attribute,
                                                    ldv_18_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_18_ldv_param_3_2_default);
    }
    goto ldv_call_18;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_19(void *arg0 )
{
  long (*ldv_19_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_19_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_19_container_struct_device_attribute ;
  struct device *ldv_19_container_struct_device_ptr ;
  char *ldv_19_ldv_param_3_2_default ;
  char *ldv_19_ldv_param_9_2_default ;
  unsigned long ldv_19_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_19;
  return;
  ldv_call_19:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_19_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_19_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_19_9(ldv_19_callback_store, ldv_19_container_struct_device_ptr,
                                                    ldv_19_container_struct_device_attribute,
                                                    ldv_19_ldv_param_9_2_default,
                                                    ldv_19_ldv_param_9_3_default);
      ldv_free((void *)ldv_19_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_19_3(ldv_19_callback_show, ldv_19_container_struct_device_ptr,
                                                    ldv_19_container_struct_device_attribute,
                                                    ldv_19_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_19_ldv_param_3_2_default);
    }
    goto ldv_call_19;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_2(void *arg0 )
{
  long (*ldv_2_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_2_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_2_container_struct_device_attribute ;
  struct device *ldv_2_container_struct_device_ptr ;
  char *ldv_2_ldv_param_3_2_default ;
  char *ldv_2_ldv_param_9_2_default ;
  unsigned long ldv_2_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_2;
  return;
  ldv_call_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_2_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_2_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_2_9(ldv_2_callback_store, ldv_2_container_struct_device_ptr,
                                                   ldv_2_container_struct_device_attribute,
                                                   ldv_2_ldv_param_9_2_default, ldv_2_ldv_param_9_3_default);
      ldv_free((void *)ldv_2_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_show, ldv_2_container_struct_device_ptr,
                                                   ldv_2_container_struct_device_attribute,
                                                   ldv_2_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_2_ldv_param_3_2_default);
    }
    goto ldv_call_2;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_20(void *arg0 )
{
  long (*ldv_20_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_20_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_20_container_struct_device_attribute ;
  struct device *ldv_20_container_struct_device_ptr ;
  char *ldv_20_ldv_param_3_2_default ;
  char *ldv_20_ldv_param_9_2_default ;
  unsigned long ldv_20_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_20;
  return;
  ldv_call_20:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_20_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_20_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_20_9(ldv_20_callback_store, ldv_20_container_struct_device_ptr,
                                                    ldv_20_container_struct_device_attribute,
                                                    ldv_20_ldv_param_9_2_default,
                                                    ldv_20_ldv_param_9_3_default);
      ldv_free((void *)ldv_20_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_20_3(ldv_20_callback_show, ldv_20_container_struct_device_ptr,
                                                    ldv_20_container_struct_device_attribute,
                                                    ldv_20_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_20_ldv_param_3_2_default);
    }
    goto ldv_call_20;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_21(void *arg0 )
{
  long (*ldv_21_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_21_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_21_container_struct_device_attribute ;
  struct device *ldv_21_container_struct_device_ptr ;
  char *ldv_21_ldv_param_3_2_default ;
  char *ldv_21_ldv_param_9_2_default ;
  unsigned long ldv_21_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_21;
  return;
  ldv_call_21:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_21_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_21_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_21_9(ldv_21_callback_store, ldv_21_container_struct_device_ptr,
                                                    ldv_21_container_struct_device_attribute,
                                                    ldv_21_ldv_param_9_2_default,
                                                    ldv_21_ldv_param_9_3_default);
      ldv_free((void *)ldv_21_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_21_3(ldv_21_callback_show, ldv_21_container_struct_device_ptr,
                                                    ldv_21_container_struct_device_attribute,
                                                    ldv_21_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_21_ldv_param_3_2_default);
    }
    goto ldv_call_21;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_22(void *arg0 )
{
  long (*ldv_22_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_22_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_22_container_struct_device_attribute ;
  struct device *ldv_22_container_struct_device_ptr ;
  char *ldv_22_ldv_param_3_2_default ;
  char *ldv_22_ldv_param_9_2_default ;
  unsigned long ldv_22_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_22;
  return;
  ldv_call_22:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_22_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_22_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_22_9(ldv_22_callback_store, ldv_22_container_struct_device_ptr,
                                                    ldv_22_container_struct_device_attribute,
                                                    ldv_22_ldv_param_9_2_default,
                                                    ldv_22_ldv_param_9_3_default);
      ldv_free((void *)ldv_22_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_22_3(ldv_22_callback_show, ldv_22_container_struct_device_ptr,
                                                    ldv_22_container_struct_device_attribute,
                                                    ldv_22_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_22_ldv_param_3_2_default);
    }
    goto ldv_call_22;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_23(void *arg0 )
{
  long (*ldv_23_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_23_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_23_container_struct_device_attribute ;
  struct device *ldv_23_container_struct_device_ptr ;
  char *ldv_23_ldv_param_3_2_default ;
  char *ldv_23_ldv_param_9_2_default ;
  unsigned long ldv_23_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_23;
  return;
  ldv_call_23:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_23_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_23_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_23_9(ldv_23_callback_store, ldv_23_container_struct_device_ptr,
                                                    ldv_23_container_struct_device_attribute,
                                                    ldv_23_ldv_param_9_2_default,
                                                    ldv_23_ldv_param_9_3_default);
      ldv_free((void *)ldv_23_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_23_3(ldv_23_callback_show, ldv_23_container_struct_device_ptr,
                                                    ldv_23_container_struct_device_attribute,
                                                    ldv_23_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_23_ldv_param_3_2_default);
    }
    goto ldv_call_23;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_24(void *arg0 )
{
  long (*ldv_24_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_24_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_24_container_struct_device_attribute ;
  struct device *ldv_24_container_struct_device_ptr ;
  char *ldv_24_ldv_param_3_2_default ;
  char *ldv_24_ldv_param_9_2_default ;
  unsigned long ldv_24_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_24;
  return;
  ldv_call_24:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_24_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_24_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_24_9(ldv_24_callback_store, ldv_24_container_struct_device_ptr,
                                                    ldv_24_container_struct_device_attribute,
                                                    ldv_24_ldv_param_9_2_default,
                                                    ldv_24_ldv_param_9_3_default);
      ldv_free((void *)ldv_24_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_24_3(ldv_24_callback_show, ldv_24_container_struct_device_ptr,
                                                    ldv_24_container_struct_device_attribute,
                                                    ldv_24_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_24_ldv_param_3_2_default);
    }
    goto ldv_call_24;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_25(void *arg0 )
{
  long (*ldv_25_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_25_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_25_container_struct_device_attribute ;
  struct device *ldv_25_container_struct_device_ptr ;
  char *ldv_25_ldv_param_3_2_default ;
  char *ldv_25_ldv_param_9_2_default ;
  unsigned long ldv_25_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_25;
  return;
  ldv_call_25:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_25_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_25_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_25_9(ldv_25_callback_store, ldv_25_container_struct_device_ptr,
                                                    ldv_25_container_struct_device_attribute,
                                                    ldv_25_ldv_param_9_2_default,
                                                    ldv_25_ldv_param_9_3_default);
      ldv_free((void *)ldv_25_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_25_3(ldv_25_callback_show, ldv_25_container_struct_device_ptr,
                                                    ldv_25_container_struct_device_attribute,
                                                    ldv_25_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_25_ldv_param_3_2_default);
    }
    goto ldv_call_25;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_26(void *arg0 )
{
  long (*ldv_26_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_26_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_26_container_struct_device_attribute ;
  struct device *ldv_26_container_struct_device_ptr ;
  char *ldv_26_ldv_param_3_2_default ;
  char *ldv_26_ldv_param_9_2_default ;
  unsigned long ldv_26_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_26;
  return;
  ldv_call_26:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_26_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_26_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_26_9(ldv_26_callback_store, ldv_26_container_struct_device_ptr,
                                                    ldv_26_container_struct_device_attribute,
                                                    ldv_26_ldv_param_9_2_default,
                                                    ldv_26_ldv_param_9_3_default);
      ldv_free((void *)ldv_26_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_26_3(ldv_26_callback_show, ldv_26_container_struct_device_ptr,
                                                    ldv_26_container_struct_device_attribute,
                                                    ldv_26_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_26_ldv_param_3_2_default);
    }
    goto ldv_call_26;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_27(void *arg0 )
{
  long (*ldv_27_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_27_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_27_container_struct_device_attribute ;
  struct device *ldv_27_container_struct_device_ptr ;
  char *ldv_27_ldv_param_3_2_default ;
  char *ldv_27_ldv_param_9_2_default ;
  unsigned long ldv_27_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_27;
  return;
  ldv_call_27:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_27_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_27_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_27_9(ldv_27_callback_store, ldv_27_container_struct_device_ptr,
                                                    ldv_27_container_struct_device_attribute,
                                                    ldv_27_ldv_param_9_2_default,
                                                    ldv_27_ldv_param_9_3_default);
      ldv_free((void *)ldv_27_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_27_3(ldv_27_callback_show, ldv_27_container_struct_device_ptr,
                                                    ldv_27_container_struct_device_attribute,
                                                    ldv_27_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_27_ldv_param_3_2_default);
    }
    goto ldv_call_27;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_28(void *arg0 )
{
  long (*ldv_28_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_28_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_28_container_struct_device_attribute ;
  struct device *ldv_28_container_struct_device_ptr ;
  char *ldv_28_ldv_param_3_2_default ;
  char *ldv_28_ldv_param_9_2_default ;
  unsigned long ldv_28_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_28;
  return;
  ldv_call_28:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_28_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_28_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_28_9(ldv_28_callback_store, ldv_28_container_struct_device_ptr,
                                                    ldv_28_container_struct_device_attribute,
                                                    ldv_28_ldv_param_9_2_default,
                                                    ldv_28_ldv_param_9_3_default);
      ldv_free((void *)ldv_28_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_28_3(ldv_28_callback_show, ldv_28_container_struct_device_ptr,
                                                    ldv_28_container_struct_device_attribute,
                                                    ldv_28_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_28_ldv_param_3_2_default);
    }
    goto ldv_call_28;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_3(void *arg0 )
{
  long (*ldv_3_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_3_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_3_container_struct_device_attribute ;
  struct device *ldv_3_container_struct_device_ptr ;
  char *ldv_3_ldv_param_3_2_default ;
  char *ldv_3_ldv_param_9_2_default ;
  unsigned long ldv_3_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_3_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_3_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_store, ldv_3_container_struct_device_ptr,
                                                   ldv_3_container_struct_device_attribute,
                                                   ldv_3_ldv_param_9_2_default, ldv_3_ldv_param_9_3_default);
      ldv_free((void *)ldv_3_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_show, ldv_3_container_struct_device_ptr,
                                                   ldv_3_container_struct_device_attribute,
                                                   ldv_3_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_3_ldv_param_3_2_default);
    }
    goto ldv_call_3;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_4(void *arg0 )
{
  long (*ldv_4_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_4_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_4_container_struct_device_attribute ;
  struct device *ldv_4_container_struct_device_ptr ;
  char *ldv_4_ldv_param_3_2_default ;
  char *ldv_4_ldv_param_9_2_default ;
  unsigned long ldv_4_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_4_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_4_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_store, ldv_4_container_struct_device_ptr,
                                                   ldv_4_container_struct_device_attribute,
                                                   ldv_4_ldv_param_9_2_default, ldv_4_ldv_param_9_3_default);
      ldv_free((void *)ldv_4_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_show, ldv_4_container_struct_device_ptr,
                                                   ldv_4_container_struct_device_attribute,
                                                   ldv_4_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_4_ldv_param_3_2_default);
    }
    goto ldv_call_4;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_5(void *arg0 )
{
  long (*ldv_5_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_5_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_5_container_struct_device_attribute ;
  struct device *ldv_5_container_struct_device_ptr ;
  char *ldv_5_ldv_param_3_2_default ;
  char *ldv_5_ldv_param_9_2_default ;
  unsigned long ldv_5_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_5_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_5_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_store, ldv_5_container_struct_device_ptr,
                                                   ldv_5_container_struct_device_attribute,
                                                   ldv_5_ldv_param_9_2_default, ldv_5_ldv_param_9_3_default);
      ldv_free((void *)ldv_5_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_show, ldv_5_container_struct_device_ptr,
                                                   ldv_5_container_struct_device_attribute,
                                                   ldv_5_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_5_ldv_param_3_2_default);
    }
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_6(void *arg0 )
{
  long (*ldv_6_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_6_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_6_container_struct_device_attribute ;
  struct device *ldv_6_container_struct_device_ptr ;
  char *ldv_6_ldv_param_3_2_default ;
  char *ldv_6_ldv_param_9_2_default ;
  unsigned long ldv_6_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_6_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_6_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_6_9(ldv_6_callback_store, ldv_6_container_struct_device_ptr,
                                                   ldv_6_container_struct_device_attribute,
                                                   ldv_6_ldv_param_9_2_default, ldv_6_ldv_param_9_3_default);
      ldv_free((void *)ldv_6_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_show, ldv_6_container_struct_device_ptr,
                                                   ldv_6_container_struct_device_attribute,
                                                   ldv_6_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_6_ldv_param_3_2_default);
    }
    goto ldv_call_6;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_7(void *arg0 )
{
  long (*ldv_7_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_7_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_7_container_struct_device_attribute ;
  struct device *ldv_7_container_struct_device_ptr ;
  char *ldv_7_ldv_param_3_2_default ;
  char *ldv_7_ldv_param_9_2_default ;
  unsigned long ldv_7_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_7_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_7_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_7_9(ldv_7_callback_store, ldv_7_container_struct_device_ptr,
                                                   ldv_7_container_struct_device_attribute,
                                                   ldv_7_ldv_param_9_2_default, ldv_7_ldv_param_9_3_default);
      ldv_free((void *)ldv_7_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_show, ldv_7_container_struct_device_ptr,
                                                   ldv_7_container_struct_device_attribute,
                                                   ldv_7_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_7_ldv_param_3_2_default);
    }
    goto ldv_call_7;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_8(void *arg0 )
{
  long (*ldv_8_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_8_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_8_container_struct_device_attribute ;
  struct device *ldv_8_container_struct_device_ptr ;
  char *ldv_8_ldv_param_3_2_default ;
  char *ldv_8_ldv_param_9_2_default ;
  unsigned long ldv_8_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_8;
  return;
  ldv_call_8:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_8_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_8_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_8_9(ldv_8_callback_store, ldv_8_container_struct_device_ptr,
                                                   ldv_8_container_struct_device_attribute,
                                                   ldv_8_ldv_param_9_2_default, ldv_8_ldv_param_9_3_default);
      ldv_free((void *)ldv_8_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_show, ldv_8_container_struct_device_ptr,
                                                   ldv_8_container_struct_device_attribute,
                                                   ldv_8_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_8_ldv_param_3_2_default);
    }
    goto ldv_call_8;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_device_template_dummy_resourceless_instance_9(void *arg0 )
{
  long (*ldv_9_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_9_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_9_container_struct_device_attribute ;
  struct device *ldv_9_container_struct_device_ptr ;
  char *ldv_9_ldv_param_3_2_default ;
  char *ldv_9_ldv_param_9_2_default ;
  unsigned long ldv_9_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_9;
  return;
  ldv_call_9:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_9_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_9_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_9_9(ldv_9_callback_store, ldv_9_container_struct_device_ptr,
                                                   ldv_9_container_struct_device_attribute,
                                                   ldv_9_ldv_param_9_2_default, ldv_9_ldv_param_9_3_default);
      ldv_free((void *)ldv_9_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_show, ldv_9_container_struct_device_ptr,
                                                   ldv_9_container_struct_device_attribute,
                                                   ldv_9_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_9_ldv_param_3_2_default);
    }
    goto ldv_call_9;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_template_group_dummy_resourceless_instance_29(void *arg0 )
{
  unsigned short (*ldv_29_callback_is_visible)(struct kobject * , struct attribute * ,
                                               int ) ;
  struct attribute *ldv_29_container_struct_attribute_ptr ;
  struct kobject *ldv_29_container_struct_kobject_ptr ;
  int ldv_29_ldv_param_3_2_default ;
  int tmp ;
  {
  goto ldv_call_29;
  return;
  ldv_call_29:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_29_3(ldv_29_callback_is_visible, ldv_29_container_struct_kobject_ptr,
                                                  ldv_29_container_struct_attribute_ptr,
                                                  ldv_29_ldv_param_3_2_default);
    }
    goto ldv_call_29;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_template_group_dummy_resourceless_instance_30(void *arg0 )
{
  unsigned short (*ldv_30_callback_is_visible)(struct kobject * , struct attribute * ,
                                               int ) ;
  struct attribute *ldv_30_container_struct_attribute_ptr ;
  struct kobject *ldv_30_container_struct_kobject_ptr ;
  int ldv_30_ldv_param_3_2_default ;
  int tmp ;
  {
  goto ldv_call_30;
  return;
  ldv_call_30:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_30_3(ldv_30_callback_is_visible, ldv_30_container_struct_kobject_ptr,
                                                  ldv_30_container_struct_attribute_ptr,
                                                  ldv_30_ldv_param_3_2_default);
    }
    goto ldv_call_30;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_template_group_dummy_resourceless_instance_31(void *arg0 )
{
  unsigned short (*ldv_31_callback_is_visible)(struct kobject * , struct attribute * ,
                                               int ) ;
  struct attribute *ldv_31_container_struct_attribute_ptr ;
  struct kobject *ldv_31_container_struct_kobject_ptr ;
  int ldv_31_ldv_param_3_2_default ;
  int tmp ;
  {
  goto ldv_call_31;
  return;
  ldv_call_31:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_31_3(ldv_31_callback_is_visible, ldv_31_container_struct_kobject_ptr,
                                                  ldv_31_container_struct_attribute_ptr,
                                                  ldv_31_ldv_param_3_2_default);
    }
    goto ldv_call_31;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_template_group_dummy_resourceless_instance_32(void *arg0 )
{
  unsigned short (*ldv_32_callback_is_visible)(struct kobject * , struct attribute * ,
                                               int ) ;
  struct attribute *ldv_32_container_struct_attribute_ptr ;
  struct kobject *ldv_32_container_struct_kobject_ptr ;
  int ldv_32_ldv_param_3_2_default ;
  int tmp ;
  {
  goto ldv_call_32;
  return;
  ldv_call_32:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_32_3(ldv_32_callback_is_visible, ldv_32_container_struct_kobject_ptr,
                                                  ldv_32_container_struct_attribute_ptr,
                                                  ldv_32_ldv_param_3_2_default);
    }
    goto ldv_call_32;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_sensor_template_group_dummy_resourceless_instance_33(void *arg0 )
{
  unsigned short (*ldv_33_callback_is_visible)(struct kobject * , struct attribute * ,
                                               int ) ;
  struct attribute *ldv_33_container_struct_attribute_ptr ;
  struct kobject *ldv_33_container_struct_kobject_ptr ;
  int ldv_33_ldv_param_3_2_default ;
  int tmp ;
  {
  goto ldv_call_33;
  return;
  ldv_call_33:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_33_3(ldv_33_callback_is_visible, ldv_33_container_struct_kobject_ptr,
                                                  ldv_33_container_struct_attribute_ptr,
                                                  ldv_33_ldv_param_3_2_default);
    }
    goto ldv_call_33;
  } else {
    return;
  }
  return;
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_124(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_125(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_130(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_132(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_133(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_134(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_135(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_136(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_137(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_138(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_142(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_143(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_144(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(ldv_func_arg1);
  }
  return;
}
}
static int ldv___platform_driver_register_146(struct platform_driver *ldv_func_arg1 ,
                                              struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv___platform_driver_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_platform_driver_unregister_147(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_platform_driver_unregister_148(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_149(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_150(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_151(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_152(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_153(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_154(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(size_t size )
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_malloc(sizeof(struct class));
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
int ldv_filter_err_code(int ret_val ) ;
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_pre_register_netdev(void) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(size_t size )
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void *is_got )
{
  long tmp ;
  {
  {
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
  }
  return;
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
int ldv_undef_int_negative(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data ;
void ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_update_lock_of_nct6775_data(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_update_lock_of_nct6775_data(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_update_lock_of_nct6775_data(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_update_lock_of_nct6775_data(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_update_lock_of_nct6775_data(atomic_t *cnt ,
                                                                                         struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_nct6775_data(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_nct6775_data(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_nct6775_data);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__not_initialized(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_sock__double_release(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__probe_failed(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__double_put(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__get_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
struct resource *__devm_request_region(struct device *arg0, struct resource *arg1, resource_size_t arg2, resource_size_t arg3, const char *arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int acpi_check_resource_conflict(const struct resource *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *devm_hwmon_device_register_with_groups(struct device *arg0, const char *arg1, void *arg2, const struct attribute_group **arg3) {
  return ldv_malloc(sizeof(struct device));
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_device_add_data(struct platform_device *arg0, const void *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_device_add_resources(struct platform_device *arg0, const struct resource *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vid_from_reg(int arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 vid_which_vrm() {
  return __VERIFIER_nondet_uchar();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
