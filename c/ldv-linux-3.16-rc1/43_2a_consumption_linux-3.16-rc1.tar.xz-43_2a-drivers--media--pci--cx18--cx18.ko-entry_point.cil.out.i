extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
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
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_13760_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13762_128 {
   struct __anonstruct_ldv_13760_129 ldv_13760 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13762_128 ldv_13762 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct cred;
struct inode;
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
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
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
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
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
   union __anonunion_shared_148 shared ;
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
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
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
struct dentry;
struct iattr;
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
};
union __anonunion_ldv_14668_154 {
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
   union __anonunion_ldv_14668_154 ldv_14668 ;
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
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
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
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
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
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct v4l2_subdev;
struct videobuf_buffer;
struct v4l2_encoder_cmd;
struct videobuf_queue;
struct v4l2_buffer;
struct cx2341x_handler;
struct v4l2_format;
struct v4l2_sliced_vbi_format;
struct v4l2_audio;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
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
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
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
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
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
union __anonunion_ldv_17679_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17687_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_17700_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_17701_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_17700_174 ldv_17700 ;
};
union __anonunion_type_data_175 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_17716_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17679_171 ldv_17679 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17687_172 ldv_17687 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_17701_173 ldv_17701 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_17716_176 ldv_17716 ;
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
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
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
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   struct timespec start_time ;
   struct timespec real_start_time ;
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
   struct task_struct *pi_top_task ;
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
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_19510_180 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_19511_179 {
   struct __anonstruct_ldv_19510_180 ldv_19510 ;
};
struct lockref {
   union __anonunion_ldv_19511_179 ldv_19511 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_19535_182 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_19537_181 {
   struct __anonstruct_ldv_19535_182 ldv_19535 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_19537_181 ldv_19537 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_183 {
   struct list_head d_child ;
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
   union __anonunion_d_u_183 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_19898_185 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_19900_184 {
   struct __anonstruct_ldv_19898_185 ldv_19898 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_19900_184 ldv_19900 ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct iovec;
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
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
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
struct __anonstruct_kprojid_t_186 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_186 kprojid_t;
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
union __anonunion_ldv_20450_187 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_20450_187 ldv_20450 ;
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
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
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
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
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
   struct rw_semaphore dqptr_sem ;
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
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
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
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
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
union __anonunion_ldv_20865_190 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_20885_191 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_20902_192 {
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
   union __anonunion_ldv_20865_190 ldv_20865 ;
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
   union __anonunion_ldv_20885_191 ldv_20885 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_20902_192 ldv_20902 ;
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
union __anonunion_f_u_193 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_193 f_u ;
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
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
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
struct __anonstruct_afs_195 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_194 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_195 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
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
   union __anonunion_fl_u_194 fl_u ;
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
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
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
   int (*freeze_fs)(struct super_block * ) ;
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
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
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
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
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
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
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
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_24556_199 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_24556_199 ldv_24556 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*reset_notify)(struct pci_dev * , bool ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
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
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct i2c_algo_bit_data {
   void *data ;
   void (*setsda)(void * , int ) ;
   void (*setscl)(void * , int ) ;
   int (*getsda)(void * ) ;
   int (*getscl)(void * ) ;
   int (*pre_xfer)(struct i2c_adapter * ) ;
   void (*post_xfer)(struct i2c_adapter * ) ;
   int udelay ;
   int timeout ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct v4l2_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_SDR_CAPTURE = 11,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion_ldv_33087_203 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion_ldv_33087_203 ldv_33087 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion_ldv_33106_204 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion_ldv_33106_204 ldv_33106 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_205 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_205 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_206 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_206 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion_ldv_33239_207 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion_ldv_33239_207 ldv_33239 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 pad ;
   __u32 reserved[2U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion_ldv_33262_208 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion_ldv_33262_208 ldv_33262 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion_ldv_33293_209 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion_ldv_33293_209 ldv_33293 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion_ldv_33326_210 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion_ldv_33326_210 ldv_33326 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_212 {
   __u32 data[8U] ;
};
union __anonunion_ldv_33403_211 {
   struct __anonstruct_raw_212 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_33403_211 ldv_33403 ;
};
struct __anonstruct_stop_214 {
   __u64 pts ;
};
struct __anonstruct_start_215 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_216 {
   __u32 data[16U] ;
};
union __anonunion_ldv_33418_213 {
   struct __anonstruct_stop_214 stop ;
   struct __anonstruct_start_215 start ;
   struct __anonstruct_raw_216 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_33418_213 ldv_33418 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
struct v4l2_sdr_format {
   __u32 pixelformat ;
   __u8 reserved[28U] ;
};
union __anonunion_fmt_218 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   struct v4l2_sdr_format sdr ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_218 fmt ;
};
union __anonunion_parm_219 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_219 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion_ldv_33532_222 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion_ldv_33532_222 ldv_33532 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_228 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_229 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_230 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_227 {
   struct __anonstruct_v4l_228 v4l ;
   struct __anonstruct_fb_229 fb ;
   struct __anonstruct_alsa_230 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_227 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_fh;
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_sdr_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_g_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_s_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_UYVY10_2X10 = 8216,
    V4L2_MBUS_FMT_VYUY10_2X10 = 8217,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_UYVY10_1X20 = 8218,
    V4L2_MBUS_FMT_VYUY10_1X20 = 8219,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_UYVY12_2X12 = 8220,
    V4L2_MBUS_FMT_VYUY12_2X12 = 8221,
    V4L2_MBUS_FMT_YUYV12_2X12 = 8222,
    V4L2_MBUS_FMT_YVYU12_2X12 = 8223,
    V4L2_MBUS_FMT_UYVY12_1X24 = 8224,
    V4L2_MBUS_FMT_VYUY12_1X24 = 8225,
    V4L2_MBUS_FMT_YUYV12_1X24 = 8226,
    V4L2_MBUS_FMT_YVYU12_1X24 = 8227,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_233 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_234 {
   char const *name ;
};
struct __anonstruct_i2c_235 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_236 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_232 {
   struct __anonstruct_of_233 of ;
   struct __anonstruct_device_name_234 device_name ;
   struct __anonstruct_i2c_235 i2c ;
   struct __anonstruct_custom_236 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_232 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   long (*compat_ioctl32)(struct v4l2_subdev * , unsigned int , unsigned long ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*enum_freq_bands)(struct v4l2_subdev * , struct v4l2_frequency_band * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   bool owner_v4l2_dev ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_237 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_237 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_241 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_241 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17,
    RC_TYPE_SHARP = 18
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct rc_scancode_filter {
   u32 data ;
   u32 mask ;
};
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   struct attribute_group const *sysfs_groups[5U] ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protocols[2U] ;
   u64 enabled_protocols[2U] ;
   u32 users ;
   u32 scanmask ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   struct rc_scancode_filter scancode_filters[2U] ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*change_wakeup_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
   int (*s_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
   int (*s_wakeup_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct cx18;
struct cx18_mdl_ack {
   u32 id ;
   u32 data_used ;
};
struct cx18_mailbox {
   u32 request ;
   u32 ack ;
   u32 reserved[6U] ;
   u32 cmd ;
   u32 args[6U] ;
   u32 error ;
};
struct cx18_stream;
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion_ldv_36490_244 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion_ldv_36494_245 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_246 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion_ldv_36505_247 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion_ldv_36490_244 ldv_36490 ;
   union __anonunion_ldv_36494_245 ldv_36494 ;
   unsigned long flags ;
   union __anonunion_cur_246 cur ;
   union __anonunion_ldv_36505_247 ldv_36505 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
enum cx18_av_video_input {
    CX18_AV_COMPOSITE1 = 1,
    CX18_AV_COMPOSITE2 = 2,
    CX18_AV_COMPOSITE3 = 3,
    CX18_AV_COMPOSITE4 = 4,
    CX18_AV_COMPOSITE5 = 5,
    CX18_AV_COMPOSITE6 = 6,
    CX18_AV_COMPOSITE7 = 7,
    CX18_AV_COMPOSITE8 = 8,
    CX18_AV_SVIDEO_LUMA1 = 16,
    CX18_AV_SVIDEO_LUMA2 = 32,
    CX18_AV_SVIDEO_LUMA3 = 48,
    CX18_AV_SVIDEO_LUMA4 = 64,
    CX18_AV_SVIDEO_LUMA5 = 80,
    CX18_AV_SVIDEO_LUMA6 = 96,
    CX18_AV_SVIDEO_LUMA7 = 112,
    CX18_AV_SVIDEO_LUMA8 = 128,
    CX18_AV_SVIDEO_CHROMA4 = 1024,
    CX18_AV_SVIDEO_CHROMA5 = 1280,
    CX18_AV_SVIDEO_CHROMA6 = 1536,
    CX18_AV_SVIDEO_CHROMA7 = 1792,
    CX18_AV_SVIDEO_CHROMA8 = 2048,
    CX18_AV_SVIDEO1 = 1296,
    CX18_AV_SVIDEO2 = 1568,
    CX18_AV_SVIDEO3 = 1840,
    CX18_AV_SVIDEO4 = 2112,
    CX18_AV_COMPONENT_LUMA1 = 4096,
    CX18_AV_COMPONENT_LUMA2 = 8192,
    CX18_AV_COMPONENT_LUMA3 = 12288,
    CX18_AV_COMPONENT_LUMA4 = 16384,
    CX18_AV_COMPONENT_LUMA5 = 20480,
    CX18_AV_COMPONENT_LUMA6 = 24576,
    CX18_AV_COMPONENT_LUMA7 = 28672,
    CX18_AV_COMPONENT_LUMA8 = 32768,
    CX18_AV_COMPONENT_R_CHROMA4 = 262144,
    CX18_AV_COMPONENT_R_CHROMA5 = 327680,
    CX18_AV_COMPONENT_R_CHROMA6 = 393216,
    CX18_AV_COMPONENT_B_CHROMA7 = 7340032,
    CX18_AV_COMPONENT_B_CHROMA8 = 8388608,
    CX18_AV_COMPONENT1 = 8785920
} ;
enum cx18_av_audio_input {
    CX18_AV_AUDIO_SERIAL1 = 0,
    CX18_AV_AUDIO_SERIAL2 = 1,
    CX18_AV_AUDIO4 = 4,
    CX18_AV_AUDIO5 = 5,
    CX18_AV_AUDIO6 = 6,
    CX18_AV_AUDIO7 = 7,
    CX18_AV_AUDIO8 = 8
} ;
struct cx18_av_state {
   struct v4l2_subdev sd ;
   struct v4l2_ctrl_handler hdl ;
   struct v4l2_ctrl *volume ;
   int radio ;
   v4l2_std_id std ;
   enum cx18_av_video_input vid_input ;
   enum cx18_av_audio_input aud_input ;
   u32 audclk_freq ;
   int audmode ;
   u32 rev ;
   int is_initialized ;
   int slicer_line_delay ;
   int slicer_line_offset ;
};
enum cx2341x_port {
    CX2341X_PORT_MEMORY = 0,
    CX2341X_PORT_STREAMING = 1,
    CX2341X_PORT_SERIAL = 2
} ;
struct cx2341x_handler_ops {
   int (*s_audio_sampling_freq)(struct cx2341x_handler * , u32 ) ;
   int (*s_audio_mode)(struct cx2341x_handler * , u32 ) ;
   int (*s_video_encoding)(struct cx2341x_handler * , u32 ) ;
   int (*s_stream_vbi_fmt)(struct cx2341x_handler * , u32 ) ;
};
struct __anonstruct_ldv_36957_248 {
   struct v4l2_ctrl *audio_sampling_freq ;
   struct v4l2_ctrl *audio_encoding ;
   struct v4l2_ctrl *audio_l2_bitrate ;
   struct v4l2_ctrl *audio_mode ;
   struct v4l2_ctrl *audio_mode_extension ;
   struct v4l2_ctrl *audio_emphasis ;
   struct v4l2_ctrl *audio_crc ;
   struct v4l2_ctrl *audio_ac3_bitrate ;
};
struct __anonstruct_ldv_36961_249 {
   struct v4l2_ctrl *video_b_frames ;
   struct v4l2_ctrl *video_gop_size ;
};
struct __anonstruct_ldv_36968_250 {
   struct v4l2_ctrl *stream_type ;
   struct v4l2_ctrl *video_encoding ;
   struct v4l2_ctrl *video_bitrate_mode ;
   struct v4l2_ctrl *video_bitrate ;
   struct v4l2_ctrl *video_bitrate_peak ;
};
struct __anonstruct_ldv_36972_251 {
   struct v4l2_ctrl *video_mute ;
   struct v4l2_ctrl *video_mute_yuv ;
};
struct __anonstruct_ldv_36977_252 {
   struct v4l2_ctrl *video_spatial_filter_mode ;
   struct v4l2_ctrl *video_temporal_filter_mode ;
   struct v4l2_ctrl *video_median_filter_type ;
};
struct __anonstruct_ldv_36981_253 {
   struct v4l2_ctrl *video_luma_spatial_filter_type ;
   struct v4l2_ctrl *video_chroma_spatial_filter_type ;
};
struct __anonstruct_ldv_36985_254 {
   struct v4l2_ctrl *video_spatial_filter ;
   struct v4l2_ctrl *video_temporal_filter ;
};
struct __anonstruct_ldv_36991_255 {
   struct v4l2_ctrl *video_luma_median_filter_top ;
   struct v4l2_ctrl *video_luma_median_filter_bottom ;
   struct v4l2_ctrl *video_chroma_median_filter_top ;
   struct v4l2_ctrl *video_chroma_median_filter_bottom ;
};
struct cx2341x_handler {
   u32 capabilities ;
   enum cx2341x_port port ;
   u16 width ;
   u16 height ;
   u16 is_50hz ;
   u32 audio_properties ;
   struct v4l2_ctrl_handler hdl ;
   void *priv ;
   int (*func)(void * , u32 , int , int , u32 * ) ;
   struct cx2341x_handler_ops const *ops ;
   struct v4l2_ctrl *stream_vbi_fmt ;
   struct __anonstruct_ldv_36957_248 ldv_36957 ;
   struct __anonstruct_ldv_36961_249 ldv_36961 ;
   struct __anonstruct_ldv_36968_250 ldv_36968 ;
   struct __anonstruct_ldv_36972_251 ldv_36972 ;
   struct __anonstruct_ldv_36977_252 ldv_36977 ;
   struct __anonstruct_ldv_36981_253 ldv_36981 ;
   struct __anonstruct_ldv_36985_254 ldv_36985 ;
   struct __anonstruct_ldv_36991_255 ldv_36991 ;
};
typedef int dmx_output_t;
typedef int dmx_input_t;
enum dmx_ts_pes {
    DMX_PES_AUDIO0 = 0,
    DMX_PES_VIDEO0 = 1,
    DMX_PES_TELETEXT0 = 2,
    DMX_PES_SUBTITLE0 = 3,
    DMX_PES_PCR0 = 4,
    DMX_PES_AUDIO1 = 5,
    DMX_PES_VIDEO1 = 6,
    DMX_PES_TELETEXT1 = 7,
    DMX_PES_SUBTITLE1 = 8,
    DMX_PES_PCR1 = 9,
    DMX_PES_AUDIO2 = 10,
    DMX_PES_VIDEO2 = 11,
    DMX_PES_TELETEXT2 = 12,
    DMX_PES_SUBTITLE2 = 13,
    DMX_PES_PCR2 = 14,
    DMX_PES_AUDIO3 = 15,
    DMX_PES_VIDEO3 = 16,
    DMX_PES_TELETEXT3 = 17,
    DMX_PES_SUBTITLE3 = 18,
    DMX_PES_PCR3 = 19,
    DMX_PES_OTHER = 20
} ;
typedef enum dmx_ts_pes dmx_pes_type_t;
struct dmx_filter {
   __u8 filter[16U] ;
   __u8 mask[16U] ;
   __u8 mode[16U] ;
};
typedef struct dmx_filter dmx_filter_t;
struct dmx_sct_filter_params {
   __u16 pid ;
   dmx_filter_t filter ;
   __u32 timeout ;
   __u32 flags ;
};
struct dmx_pes_filter_params {
   __u16 pid ;
   dmx_input_t input ;
   dmx_output_t output ;
   dmx_pes_type_t pes_type ;
   __u32 flags ;
};
struct dmx_caps {
   __u32 caps ;
   int num_decoders ;
};
typedef int dmx_source_t;
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
} ;
struct dmx_demux;
struct dmx_ts_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int (*set)(struct dmx_ts_feed * , u16 , int , enum dmx_ts_pes , size_t , struct timespec ) ;
   int (*start_filtering)(struct dmx_ts_feed * ) ;
   int (*stop_filtering)(struct dmx_ts_feed * ) ;
};
struct dmx_section_feed;
struct dmx_section_filter {
   u8 filter_value[18U] ;
   u8 filter_mask[18U] ;
   u8 filter_mode[18U] ;
   struct dmx_section_feed *parent ;
   void *priv ;
};
struct dmx_section_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int check_crc ;
   u32 crc_val ;
   u8 *secbuf ;
   u8 secbuf_base[4284U] ;
   u16 secbufp ;
   u16 seclen ;
   u16 tsfeedp ;
   int (*set)(struct dmx_section_feed * , u16 , size_t , int ) ;
   int (*allocate_filter)(struct dmx_section_feed * , struct dmx_section_filter ** ) ;
   int (*release_filter)(struct dmx_section_feed * , struct dmx_section_filter * ) ;
   int (*start_filtering)(struct dmx_section_feed * ) ;
   int (*stop_filtering)(struct dmx_section_feed * ) ;
};
enum dmx_frontend_source {
    DMX_MEMORY_FE = 0,
    DMX_FRONTEND_0 = 1,
    DMX_FRONTEND_1 = 2,
    DMX_FRONTEND_2 = 3,
    DMX_FRONTEND_3 = 4,
    DMX_STREAM_0 = 5,
    DMX_STREAM_1 = 6,
    DMX_STREAM_2 = 7,
    DMX_STREAM_3 = 8
} ;
struct dmx_frontend {
   struct list_head connectivity_list ;
   enum dmx_frontend_source source ;
};
struct dmx_demux {
   u32 capabilities ;
   struct dmx_frontend *frontend ;
   void *priv ;
   int (*open)(struct dmx_demux * ) ;
   int (*close)(struct dmx_demux * ) ;
   int (*write)(struct dmx_demux * , char const * , size_t ) ;
   int (*allocate_ts_feed)(struct dmx_demux * , struct dmx_ts_feed ** , int (*)(u8 const * ,
                                                                                size_t ,
                                                                                u8 const * ,
                                                                                size_t ,
                                                                                struct dmx_ts_feed * ,
                                                                                enum dmx_success ) ) ;
   int (*release_ts_feed)(struct dmx_demux * , struct dmx_ts_feed * ) ;
   int (*allocate_section_feed)(struct dmx_demux * , struct dmx_section_feed ** ,
                                int (*)(u8 const * , size_t , u8 const * , size_t ,
                                        struct dmx_section_filter * , enum dmx_success ) ) ;
   int (*release_section_feed)(struct dmx_demux * , struct dmx_section_feed * ) ;
   int (*add_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*remove_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   struct list_head *(*get_frontends)(struct dmx_demux * ) ;
   int (*connect_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*disconnect_frontend)(struct dmx_demux * ) ;
   int (*get_pes_pids)(struct dmx_demux * , u16 * ) ;
   int (*get_caps)(struct dmx_demux * , struct dmx_caps * ) ;
   int (*set_source)(struct dmx_demux * , dmx_source_t const * ) ;
   int (*get_stc)(struct dmx_demux * , unsigned int , u64 * , unsigned int * ) ;
};
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct dvb_ringbuffer {
   u8 *data ;
   ssize_t size ;
   ssize_t pread ;
   ssize_t pwrite ;
   int error ;
   wait_queue_head_t queue ;
   spinlock_t lock ;
};
enum dmxdev_type {
    DMXDEV_TYPE_NONE = 0,
    DMXDEV_TYPE_SEC = 1,
    DMXDEV_TYPE_PES = 2
} ;
enum dmxdev_state {
    DMXDEV_STATE_FREE = 0,
    DMXDEV_STATE_ALLOCATED = 1,
    DMXDEV_STATE_SET = 2,
    DMXDEV_STATE_GO = 3,
    DMXDEV_STATE_DONE = 4,
    DMXDEV_STATE_TIMEDOUT = 5
} ;
union __anonunion_filter_256 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_257 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_258 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_256 filter ;
   union __anonunion_feed_257 feed ;
   union __anonunion_params_258 params ;
   enum dmxdev_type type ;
   enum dmxdev_state state ;
   struct dmxdev *dev ;
   struct dvb_ringbuffer buffer ;
   struct mutex mutex ;
   struct timer_list timer ;
   int todo ;
   u8 secheader[3U] ;
};
struct dmxdev {
   struct dvb_device *dvbdev ;
   struct dvb_device *dvr_dvbdev ;
   struct dmxdev_filter *filter ;
   struct dmx_demux *demux ;
   int filternum ;
   int capabilities ;
   unsigned char exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
struct dvb_demux_feed;
struct dvb_demux_filter {
   struct dmx_section_filter filter ;
   u8 maskandmode[18U] ;
   u8 maskandnotmode[18U] ;
   int doneq ;
   struct dvb_demux_filter *next ;
   struct dvb_demux_feed *feed ;
   int index ;
   int state ;
   int type ;
   u16 hw_handle ;
   struct timer_list timer ;
};
union __anonunion_feed_259 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_260 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_259 feed ;
   union __anonunion_cb_260 cb ;
   struct dvb_demux *demux ;
   void *priv ;
   int type ;
   int state ;
   u16 pid ;
   u8 *buffer ;
   int buffer_size ;
   struct timespec timeout ;
   struct dvb_demux_filter *filter ;
   int ts_type ;
   enum dmx_ts_pes pes_type ;
   int cc ;
   int pusi_seen ;
   u16 peslen ;
   struct list_head list_head ;
   unsigned int index ;
};
struct dvb_demux {
   struct dmx_demux dmx ;
   void *priv ;
   int filternum ;
   int feednum ;
   int (*start_feed)(struct dvb_demux_feed * ) ;
   int (*stop_feed)(struct dvb_demux_feed * ) ;
   int (*write_to_decoder)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   u32 (*check_crc32)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   void (*memcopy)(struct dvb_demux_feed * , u8 * , u8 const * , size_t ) ;
   int users ;
   struct dvb_demux_filter *filter ;
   struct dvb_demux_feed *feed ;
   struct list_head frontend_list ;
   struct dvb_demux_feed *pesfilter[20U] ;
   u16 pids[20U] ;
   int playing ;
   int recording ;
   struct list_head feed_list ;
   u8 tsbuf[204U] ;
   int tsbufp ;
   struct mutex mutex ;
   spinlock_t lock ;
   uint8_t *cnt_storage ;
   struct timespec speed_last_time ;
   uint32_t speed_pkts_cnt ;
};
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = 2147483648U
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
union __anonunion_ldv_37694_261 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion_ldv_37694_261 ldv_37694 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_263 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_262 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_263 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_262 u ;
   int result ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_264 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_264 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
   struct dtv_fe_stats strength ;
   struct dtv_fe_stats cnr ;
   struct dtv_fe_stats pre_bit_error ;
   struct dtv_fe_stats pre_bit_count ;
   struct dtv_fe_stats post_bit_error ;
   struct dtv_fe_stats post_bit_count ;
   struct dtv_fe_stats block_error ;
   struct dtv_fe_stats block_count ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_265 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_265 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_38227_266 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_38227_266 ldv_38227 ;
   unsigned long nr_segs ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_268 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_268 sync_serial_settings;
struct __anonstruct_te1_settings_269 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_269 te1_settings;
struct __anonstruct_raw_hdlc_proto_270 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_270 raw_hdlc_proto;
struct __anonstruct_fr_proto_271 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_271 fr_proto;
struct __anonstruct_fr_proto_pvc_272 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_272 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_273 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_273 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_274 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_274 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_275 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_275 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_276 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_277 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_276 ifr_ifrn ;
   union __anonunion_ifr_ifru_277 ifr_ifru ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct sk_buff;
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_40913_296 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_40914_295 {
   u64 v64 ;
   struct __anonstruct_ldv_40913_296 ldv_40913 ;
};
struct skb_mstamp {
   union __anonunion_ldv_40914_295 ldv_40914 ;
};
union __anonunion_ldv_40933_297 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_40949_299 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_40950_298 {
   __wsum csum ;
   struct __anonstruct_ldv_40949_299 ldv_40949 ;
};
union __anonunion_ldv_40989_300 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_40995_301 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_40933_297 ldv_40933 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_40950_298 ldv_40950 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_40989_300 ldv_40989 ;
   __u32 secmark ;
   union __anonunion_ldv_40995_301 ldv_40995 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[103U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
   u16 max_dsize ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *base_cftypes ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_313 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_314 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion_ldv_48768_315 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_313 adj_list ;
   struct __anonstruct_all_adj_list_314 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_48768_315 ldv_48768 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned char exit : 1 ;
   struct dmx_demux *demux ;
   struct mutex ioctl_mutex ;
};
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned char streaming : 1 ;
   unsigned char reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct cx18_options {
   int megabytes[7U] ;
   int cardtype ;
   int tuner ;
   int radio ;
};
struct cx18_buffer {
   struct list_head list ;
   dma_addr_t dma_handle ;
   char *buf ;
   u32 bytesused ;
   u32 readpos ;
};
struct cx18_mdl {
   struct list_head list ;
   u32 id ;
   unsigned int skipped ;
   unsigned long m_flags ;
   struct list_head buf_list ;
   struct cx18_buffer *curr_buf ;
   u32 bytesused ;
   u32 readpos ;
};
struct cx18_queue {
   struct list_head list ;
   atomic_t depth ;
   u32 bytesused ;
   spinlock_t lock ;
};
struct cx18_dvb {
   struct cx18_stream *stream ;
   struct dmx_frontend hw_frontend ;
   struct dmx_frontend mem_frontend ;
   struct dmxdev dmxdev ;
   struct dvb_adapter dvb_adapter ;
   struct dvb_demux demux ;
   struct dvb_frontend *fe ;
   struct dvb_net dvbnet ;
   int enabled ;
   int feeding ;
   struct mutex feedlock ;
};
struct cx18_scb;
struct cx18_in_work_order {
   struct work_struct work ;
   atomic_t pending ;
   struct cx18 *cx ;
   unsigned long flags ;
   int rpu ;
   struct cx18_mailbox mb ;
   struct cx18_mdl_ack mdl_ack[2U] ;
   char *str ;
};
struct cx18_stream {
   struct video_device *video_dev ;
   struct cx18_dvb *dvb ;
   struct cx18 *cx ;
   char const *name ;
   int type ;
   u32 handle ;
   unsigned int mdl_base_idx ;
   u32 id ;
   unsigned long s_flags ;
   int dma ;
   wait_queue_head_t waitq ;
   struct list_head buf_pool ;
   u32 buffers ;
   u32 buf_size ;
   u32 bufs_per_mdl ;
   u32 mdl_size ;
   struct cx18_queue q_free ;
   struct cx18_queue q_busy ;
   struct cx18_queue q_full ;
   struct cx18_queue q_idle ;
   struct work_struct out_work_order ;
   u32 pixelformat ;
   u32 vb_bytes_per_frame ;
   struct list_head vb_capture ;
   spinlock_t vb_lock ;
   struct timer_list vb_timeout ;
   struct videobuf_queue vbuf_q ;
   spinlock_t vbuf_q_lock ;
   enum v4l2_buf_type vb_type ;
};
struct cx18_open_id {
   struct v4l2_fh fh ;
   u32 open_id ;
   int type ;
   struct cx18 *cx ;
};
struct cx18_card;
struct vbi_info {
   struct v4l2_format in ;
   struct v4l2_sliced_vbi_format *sliced_in ;
   u32 count ;
   u32 start[2U] ;
   u32 frame ;
   int insert_mpeg ;
   struct v4l2_sliced_vbi_data sliced_data[36U] ;
   u8 *sliced_mpeg_data[32U] ;
   u32 sliced_mpeg_size[32U] ;
   u32 inserted_frame ;
   struct cx18_mdl sliced_mpeg_mdl ;
   struct cx18_buffer sliced_mpeg_buf ;
};
struct cx18_i2c_algo_callback_data {
   struct cx18 *cx ;
   int bus_index ;
};
struct cx18_card_tuner_i2c;
struct snd_cx18_card;
struct cx18 {
   int instance ;
   struct pci_dev *pci_dev ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_subdev *sd_av ;
   struct v4l2_subdev *sd_extmux ;
   struct cx18_card const *card ;
   char const *card_name ;
   struct cx18_card_tuner_i2c const *card_i2c ;
   u8 is_50hz ;
   u8 is_60hz ;
   u8 nof_inputs ;
   u8 nof_audio_inputs ;
   u32 v4l2_cap ;
   u32 hw_flags ;
   unsigned int free_mdl_idx ;
   struct cx18_scb *scb ;
   struct mutex epu2apu_mb_lock ;
   struct mutex epu2cpu_mb_lock ;
   struct cx18_av_state av_state ;
   struct cx2341x_handler cxhdl ;
   u32 filter_mode ;
   u32 temporal_strength ;
   u32 spatial_strength ;
   unsigned long dualwatch_jiffies ;
   u32 dualwatch_stereo_mode ;
   struct mutex serialize_lock ;
   struct cx18_options options ;
   int stream_buffers[7U] ;
   int stream_buf_size[7U] ;
   struct cx18_stream streams[7U] ;
   struct snd_cx18_card *alsa ;
   void (*pcm_announce_callback)(struct snd_cx18_card * , u8 * , size_t ) ;
   unsigned long i_flags ;
   atomic_t ana_capturing ;
   atomic_t tot_capturing ;
   int search_pack_header ;
   int open_id ;
   resource_size_t base_addr ;
   u8 card_rev ;
   void *enc_mem ;
   void *reg_mem ;
   struct vbi_info vbi ;
   u64 mpg_data_received ;
   u64 vbi_data_inserted ;
   wait_queue_head_t mb_apu_waitq ;
   wait_queue_head_t mb_cpu_waitq ;
   wait_queue_head_t cap_w ;
   wait_queue_head_t dma_waitq ;
   u32 sw1_irq_mask ;
   u32 sw2_irq_mask ;
   u32 hw2_irq_mask ;
   struct workqueue_struct *in_work_queue ;
   char in_workq_name[11U] ;
   struct cx18_in_work_order in_work_order[70U] ;
   char epu_debug_str[256U] ;
   struct i2c_adapter i2c_adap[2U] ;
   struct i2c_algo_bit_data i2c_algo[2U] ;
   struct cx18_i2c_algo_callback_data i2c_algo_cb_data[2U] ;
   struct IR_i2c_init_data ir_i2c_init_data ;
   u32 gpio_dir ;
   u32 gpio_val ;
   struct mutex gpio_lock ;
   struct v4l2_subdev sd_gpiomux ;
   struct v4l2_subdev sd_resetctrl ;
   u32 audio_input ;
   u32 active_input ;
   v4l2_std_id std ;
   v4l2_std_id tuner_std ;
   struct work_struct request_module_wk ;
};
struct tveeprom;
struct cx18_card_video_input {
   u8 video_type ;
   u8 audio_index ;
   u32 video_input ;
};
struct cx18_card_audio_input {
   u8 audio_type ;
   u32 audio_input ;
   u16 muxer_input ;
};
struct cx18_card_pci_info {
   u16 device ;
   u16 subsystem_vendor ;
   u16 subsystem_device ;
};
struct cx18_gpio_init {
   u32 direction ;
   u32 initial_value ;
};
struct cx18_gpio_i2c_slave_reset {
   u32 active_lo_mask ;
   u32 active_hi_mask ;
   int msecs_asserted ;
   int msecs_recovery ;
   u32 ir_reset_mask ;
};
struct cx18_gpio_audio_input {
   u32 mask ;
   u32 tuner ;
   u32 linein ;
   u32 radio ;
};
struct cx18_card_tuner {
   v4l2_std_id std ;
   int tuner ;
};
struct cx18_card_tuner_i2c {
   unsigned short radio[2U] ;
   unsigned short demod[3U] ;
   unsigned short tv[4U] ;
};
struct cx18_ddr {
   u32 chip_config ;
   u32 refresh ;
   u32 timing1 ;
   u32 timing2 ;
   u32 tune_lane ;
   u32 initial_emrs ;
};
struct cx18_card {
   int type ;
   char *name ;
   char *comment ;
   u32 v4l2_capabilities ;
   u32 hw_audio_ctrl ;
   u32 hw_muxer ;
   u32 hw_all ;
   struct cx18_card_video_input video_inputs[6U] ;
   struct cx18_card_audio_input audio_inputs[3U] ;
   struct cx18_card_audio_input radio_input ;
   u8 xceive_pin ;
   struct cx18_gpio_init gpio_init ;
   struct cx18_gpio_i2c_slave_reset gpio_i2c_slave_reset ;
   struct cx18_gpio_audio_input gpio_audio_input ;
   struct cx18_card_tuner tuners[2U] ;
   struct cx18_card_tuner_i2c *i2c ;
   struct cx18_ddr ddr ;
   struct cx18_card_pci_info const *pci_list ;
};
struct cx18_mdl_ent {
   u32 paddr ;
   u32 length ;
};
struct cx18_scb {
   u32 ipc_offset ;
   u32 reserved01[7U] ;
   u32 cpu_code_offset ;
   u32 reserved02[3U] ;
   u32 apu_code_offset ;
   u32 reserved03[3U] ;
   u32 hpu_code_offset ;
   u32 reserved04[3U] ;
   u32 ppu_code_offset ;
   u32 reserved05[3U] ;
   u32 cpu_state ;
   u32 reserved1[7U] ;
   u32 apu2cpu_mb_offset ;
   u32 apu2cpu_irq ;
   u32 cpu2apu_irq_ack ;
   u32 reserved2[13U] ;
   u32 hpu2cpu_mb_offset ;
   u32 hpu2cpu_irq ;
   u32 cpu2hpu_irq_ack ;
   u32 reserved3[13U] ;
   u32 ppu2cpu_mb_offset ;
   u32 ppu2cpu_irq ;
   u32 cpu2ppu_irq_ack ;
   u32 reserved4[13U] ;
   u32 epu2cpu_mb_offset ;
   u32 epu2cpu_irq ;
   u32 cpu2epu_irq_ack ;
   u32 reserved5[13U] ;
   u32 reserved6[8U] ;
   u32 apu_state ;
   u32 reserved11[7U] ;
   u32 cpu2apu_mb_offset ;
   u32 cpu2apu_irq ;
   u32 apu2cpu_irq_ack ;
   u32 reserved12[13U] ;
   u32 hpu2apu_mb_offset ;
   u32 hpu2apu_irq ;
   u32 apu2hpu_irq_ack ;
   u32 reserved13[13U] ;
   u32 ppu2apu_mb_offset ;
   u32 ppu2apu_irq ;
   u32 apu2ppu_irq_ack ;
   u32 reserved14[13U] ;
   u32 epu2apu_mb_offset ;
   u32 epu2apu_irq ;
   u32 apu2epu_irq_ack ;
   u32 reserved15[13U] ;
   u32 reserved16[8U] ;
   u32 hpu_state ;
   u32 reserved21[7U] ;
   u32 cpu2hpu_mb_offset ;
   u32 cpu2hpu_irq ;
   u32 hpu2cpu_irq_ack ;
   u32 reserved22[13U] ;
   u32 apu2hpu_mb_offset ;
   u32 apu2hpu_irq ;
   u32 hpu2apu_irq_ack ;
   u32 reserved23[13U] ;
   u32 ppu2hpu_mb_offset ;
   u32 ppu2hpu_irq ;
   u32 hpu2ppu_irq_ack ;
   u32 reserved24[13U] ;
   u32 epu2hpu_mb_offset ;
   u32 epu2hpu_irq ;
   u32 hpu2epu_irq_ack ;
   u32 reserved25[13U] ;
   u32 reserved26[8U] ;
   u32 ppu_state ;
   u32 reserved31[7U] ;
   u32 cpu2ppu_mb_offset ;
   u32 cpu2ppu_irq ;
   u32 ppu2cpu_irq_ack ;
   u32 reserved32[13U] ;
   u32 apu2ppu_mb_offset ;
   u32 apu2ppu_irq ;
   u32 ppu2apu_irq_ack ;
   u32 reserved33[13U] ;
   u32 hpu2ppu_mb_offset ;
   u32 hpu2ppu_irq ;
   u32 ppu2hpu_irq_ack ;
   u32 reserved34[13U] ;
   u32 epu2ppu_mb_offset ;
   u32 epu2ppu_irq ;
   u32 ppu2epu_irq_ack ;
   u32 reserved35[13U] ;
   u32 reserved36[8U] ;
   u32 epu_state ;
   u32 reserved41[7U] ;
   u32 cpu2epu_mb_offset ;
   u32 cpu2epu_irq ;
   u32 epu2cpu_irq_ack ;
   u32 reserved42[13U] ;
   u32 apu2epu_mb_offset ;
   u32 apu2epu_irq ;
   u32 epu2apu_irq_ack ;
   u32 reserved43[13U] ;
   u32 hpu2epu_mb_offset ;
   u32 hpu2epu_irq ;
   u32 epu2hpu_irq_ack ;
   u32 reserved44[13U] ;
   u32 ppu2epu_mb_offset ;
   u32 ppu2epu_irq ;
   u32 epu2ppu_irq_ack ;
   u32 reserved45[13U] ;
   u32 reserved46[8U] ;
   u32 semaphores[8U] ;
   u32 reserved50[32U] ;
   struct cx18_mailbox apu2cpu_mb ;
   struct cx18_mailbox hpu2cpu_mb ;
   struct cx18_mailbox ppu2cpu_mb ;
   struct cx18_mailbox epu2cpu_mb ;
   struct cx18_mailbox cpu2apu_mb ;
   struct cx18_mailbox hpu2apu_mb ;
   struct cx18_mailbox ppu2apu_mb ;
   struct cx18_mailbox epu2apu_mb ;
   struct cx18_mailbox cpu2hpu_mb ;
   struct cx18_mailbox apu2hpu_mb ;
   struct cx18_mailbox ppu2hpu_mb ;
   struct cx18_mailbox epu2hpu_mb ;
   struct cx18_mailbox cpu2ppu_mb ;
   struct cx18_mailbox apu2ppu_mb ;
   struct cx18_mailbox hpu2ppu_mb ;
   struct cx18_mailbox epu2ppu_mb ;
   struct cx18_mailbox cpu2epu_mb ;
   struct cx18_mailbox apu2epu_mb ;
   struct cx18_mailbox hpu2epu_mb ;
   struct cx18_mailbox ppu2epu_mb ;
   struct cx18_mdl_ack cpu_mdl_ack[7U][2U] ;
   struct cx18_mdl_ent cpu_mdl[1U] ;
};
struct xc2028_ctrl {
   char *fname ;
   int max_len ;
   int msleep ;
   unsigned int scode_table ;
   unsigned char mts : 1 ;
   unsigned char input1 : 1 ;
   unsigned char vhfbw7 : 1 ;
   unsigned char uhfbw8 : 1 ;
   unsigned char disable_power_mgmt : 1 ;
   unsigned char read_not_reliable : 1 ;
   unsigned int demod ;
   unsigned char type : 2 ;
};
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
};
typedef int ldv_func_ret_type___2;
enum hrtimer_restart;
enum hrtimer_restart;
struct i2c_board_info;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
enum hrtimer_restart;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct cx18_apu_rom_seghdr {
   u32 sync1 ;
   u32 sync2 ;
   u32 addr ;
   u32 size ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
struct cx18_videobuf_buffer {
   struct videobuf_buffer vb ;
   v4l2_std_id tvnorm ;
   u32 bytes_used ;
};
struct __anonstruct_cx18_stream_info_319 {
   char const *name ;
   int vfl_type ;
   int num_offset ;
   int dma ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
typedef __u32 __le32;
enum hrtimer_restart;
struct cx18_enc_idx_entry {
   __le32 length ;
   __le32 offset_low ;
   __le32 offset_high ;
   __le32 flags ;
   __le32 pts_low ;
   __le32 pts_high ;
};
enum hrtimer_restart;
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
enum hrtimer_restart;
struct cx18_api_info {
   u32 cmd ;
   u8 flags ;
   u8 rpu ;
   char const *name ;
};
enum hrtimer_restart;
struct vbi_data_hdr {
   __be32 magic ;
   __be32 unknown ;
   __be32 pts ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum analog_signal_type {
    NONE = 0,
    CVBS = 1,
    Y = 2,
    C = 3,
    SIF = 4,
    Pb = 5,
    Pr = 6
} ;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct vbi_anc_data {
   u8 preamble[3U] ;
   u8 did ;
   u8 sdid ;
   u8 data_count ;
   u8 idid[2U] ;
   u8 payload[1U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct s5h1409_config {
   u8 demod_address ;
   u8 output_mode ;
   u8 gpio ;
   u16 qam_if ;
   u8 inversion ;
   u8 status_mode ;
   u16 mpeg_timing ;
   u8 hvr1600_opt ;
};
struct mxl5005s_config {
   u8 i2c_address ;
   u32 if_freq ;
   u32 xtal_freq ;
   u8 agc_mode ;
   u8 tracking_filter ;
   u8 rssi_enable ;
   u8 cap_select ;
   u8 div_out ;
   u8 clock_out ;
   u32 output_load ;
   u32 top ;
   u8 mod_mode ;
   u8 if_mode ;
   u8 qam_gain ;
   u8 AgcMasterByte ;
};
struct s5h1411_config {
   u8 output_mode ;
   u8 gpio ;
   u16 mpeg_timing ;
   u16 qam_if ;
   u16 vsb_if ;
   u8 inversion ;
   u8 status_mode ;
};
struct tda18271_std_map_item {
   u16 if_freq ;
   unsigned char agc_mode : 2 ;
   unsigned char std : 3 ;
   unsigned char fm_rfn : 1 ;
   unsigned char if_lvl : 3 ;
   unsigned char rfagc_top : 7 ;
};
struct tda18271_std_map {
   struct tda18271_std_map_item fm_radio ;
   struct tda18271_std_map_item atv_b ;
   struct tda18271_std_map_item atv_dk ;
   struct tda18271_std_map_item atv_gh ;
   struct tda18271_std_map_item atv_i ;
   struct tda18271_std_map_item atv_l ;
   struct tda18271_std_map_item atv_lc ;
   struct tda18271_std_map_item atv_mn ;
   struct tda18271_std_map_item atsc_6 ;
   struct tda18271_std_map_item dvbt_6 ;
   struct tda18271_std_map_item dvbt_7 ;
   struct tda18271_std_map_item dvbt_8 ;
   struct tda18271_std_map_item qam_6 ;
   struct tda18271_std_map_item qam_7 ;
   struct tda18271_std_map_item qam_8 ;
};
enum tda18271_role {
    TDA18271_MASTER = 0,
    TDA18271_SLAVE = 1
} ;
enum tda18271_i2c_gate {
    TDA18271_GATE_AUTO = 0,
    TDA18271_GATE_ANALOG = 1,
    TDA18271_GATE_DIGITAL = 2
} ;
enum tda18271_output_options {
    TDA18271_OUTPUT_LT_XT_ON = 0,
    TDA18271_OUTPUT_LT_OFF = 1,
    TDA18271_OUTPUT_XT_OFF = 2
} ;
enum tda18271_small_i2c {
    TDA18271_39_BYTE_CHUNK_INIT = 0,
    TDA18271_16_BYTE_CHUNK_INIT = 16,
    TDA18271_08_BYTE_CHUNK_INIT = 8,
    TDA18271_03_BYTE_CHUNK_INIT = 3
} ;
struct tda18271_config {
   struct tda18271_std_map *std_map ;
   enum tda18271_role role ;
   enum tda18271_i2c_gate gate ;
   enum tda18271_output_options output_opt ;
   enum tda18271_small_i2c small_i2c ;
   unsigned char rf_cal_on_startup : 1 ;
   unsigned char delay_cal : 1 ;
   unsigned int config ;
};
struct zl10353_config {
   u8 demod_address ;
   int adc_clock ;
   int if2 ;
   int no_tuner ;
   int parallel_ts ;
   unsigned char disable_i2c_gate_ctrl : 1 ;
   u8 clock_ctl_1 ;
   u8 pll_0 ;
};
struct mt352_config {
   u8 demod_address ;
   int adc_clock ;
   int if2 ;
   int no_tuner ;
   int (*demod_init)(struct dvb_frontend * ) ;
};
struct xc2028_config {
   struct i2c_adapter *i2c_adap ;
   u8 i2c_addr ;
   struct xc2028_ctrl *ctrl ;
};
enum hrtimer_restart;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14126_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void __xchg_wrong_size(void) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  default:
  __xadd_wrong_size();
  }
  ldv_5626: ;
  return (__ret + i);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
extern int __request_module(bool , char const * , ...) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
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
  ldv_error();
  return;
}
}
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
struct v4l2_subdev *cx18_av_vbi_ops_group1 ;
int ldv_state_variable_20 ;
struct file *cx18_ioctl_ops_group1 ;
struct videobuf_buffer *cx18_videobuf_qops_group2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
struct v4l2_subdev *resetctrl_core_ops_group0 ;
struct file *cx18_v4l2_enc_fops_group0 ;
int ldv_state_variable_13 ;
int ldv_state_variable_12 ;
struct v4l2_encoder_cmd *cx18_ioctl_ops_group4 ;
int ldv_state_variable_14 ;
struct videobuf_queue *cx18_videobuf_qops_group1 ;
struct v4l2_buffer *cx18_ioctl_ops_group2 ;
int ldv_state_variable_17 ;
struct cx2341x_handler *cx18_cxhdl_ops_group0 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
struct v4l2_format *cx18_ioctl_ops_group0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
struct v4l2_sliced_vbi_format *cx18_av_vbi_ops_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
struct v4l2_subdev *cx18_av_video_ops_group0 ;
int ldv_state_variable_10 ;
struct v4l2_subdev *cx18_av_audio_ops_group0 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
int ldv_state_variable_16 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_2 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_state_variable_18 ;
struct pci_dev *cx18_pci_driver_group0 ;
int ldv_timer_state_2 = 0;
int ldv_irq_line_1_3 ;
struct v4l2_subdev *cx18_av_general_ops_group0 ;
int ldv_state_variable_3 ;
struct timer_list *ldv_timer_list_2 ;
int ldv_irq_line_1_0 ;
struct v4l2_audio *cx18_ioctl_ops_group3 ;
struct v4l2_subdev *cx18_av_tuner_ops_group0 ;
int ldv_state_variable_4 ;
void ldv_initialize_v4l2_file_operations_14(void) ;
void ldv_initialize_v4l2_subdev_video_ops_6(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void choose_interrupt_1(void) ;
void ldv_initialize_cx2341x_handler_ops_11(void) ;
void ldv_initialize_v4l2_subdev_audio_ops_7(void) ;
void ldv_initialize_v4l2_subdev_core_ops_15(void) ;
void ldv_initialize_v4l2_subdev_core_ops_9(void) ;
void ldv_initialize_v4l2_subdev_tuner_ops_8(void) ;
void ldv_initialize_v4l2_subdev_vbi_ops_5(void) ;
void ldv_videobuf_queue_ops_13(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void ldv_initialize_pci_driver_21(void) ;
void ldv_initialize_v4l2_ioctl_ops_12(void) ;
extern long schedule_timeout(long ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_33(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_34(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_35(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
int cx18_vapi(struct cx18 *cx , u32 cmd , int args , ...) ;
int cx18_api_func(void *priv , u32 cmd , int in , int out , u32 *data ) ;
void cx18_in_work_handler(struct work_struct *work ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
int cx18_av_probe(struct cx18 *cx ) ;
extern int cx2341x_handler_init(struct cx2341x_handler * , unsigned int ) ;
extern void cx2341x_handler_set_50hz(struct cx2341x_handler * , int ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
int cx18_debug ;
static unsigned int const vbi_active_samples = 1444U;
__inline static struct cx18 *to_cx18(struct v4l2_device *v4l2_dev )
{
  struct v4l2_device const *__mptr ;
  {
  __mptr = (struct v4l2_device const *)v4l2_dev;
  return ((struct cx18 *)__mptr + 0xfffffffffffffff0UL);
}
}
int (*cx18_ext_init)(struct cx18 * ) ;
int cx18_first_minor ;
int cx18_msleep_timeout(unsigned int msecs , int intr ) ;
void cx18_read_eeprom(struct cx18 *cx , struct tveeprom *tv ) ;
int cx18_init_on_first_open(struct cx18 *cx ) ;
__inline static u32 cx18_readl(struct cx18 *cx , void const *addr )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)addr);
  return (tmp);
}
}
__inline static u32 cx18_read_reg(struct cx18 *cx , u32 reg )
{
  u32 tmp ;
  {
  tmp = cx18_readl(cx, (void const *)cx->reg_mem + (unsigned long )reg);
  return (tmp);
}
}
void cx18_sw1_irq_disable(struct cx18 *cx , u32 val ) ;
void cx18_sw2_irq_disable(struct cx18 *cx , u32 val ) ;
struct cx18_card const *cx18_get_card(u16 index ) ;
int cx18_i2c_register(struct cx18 *cx , unsigned int idx ) ;
struct v4l2_subdev *cx18_find_hw(struct cx18 *cx , u32 hw ) ;
int init_cx18_i2c(struct cx18 *cx ) ;
void exit_cx18_i2c(struct cx18 *cx ) ;
irqreturn_t cx18_irq_handler(int irq , void *dev_id ) ;
void cx18_gpio_init(struct cx18 *cx ) ;
int cx18_gpio_register(struct cx18 *cx , u32 hw ) ;
int cx18_reset_tuner_gpio(void *dev , int component , int cmd , int value ) ;
int cx18_firmware_init(struct cx18 *cx ) ;
void cx18_halt_firmware(struct cx18 *cx ) ;
void cx18_init_memory(struct cx18 *cx ) ;
void cx18_init_power(struct cx18 *cx , int lowpwr ) ;
int cx18_streams_setup(struct cx18 *cx ) ;
int cx18_streams_register(struct cx18 *cx ) ;
void cx18_streams_cleanup(struct cx18 *cx , int unregister ) ;
void cx18_stop_all_captures(struct cx18 *cx ) ;
void cx18_init_scb(struct cx18 *cx ) ;
int cx18_s_std(struct file *file , void *fh , v4l2_std_id std ) ;
int cx18_s_frequency(struct file *file , void *fh , struct v4l2_frequency const *vf ) ;
int cx18_s_input(struct file *file , void *fh , unsigned int inp ) ;
struct cx2341x_handler_ops cx18_cxhdl_ops ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
extern int tveeprom_read(struct i2c_client * , unsigned char * , int ) ;
static char const __kstrtab_cx18_ext_init[14U] =
  { 'c', 'x', '1', '8',
        '_', 'e', 'x', 't',
        '_', 'i', 'n', 'i',
        't', '\000'};
struct kernel_symbol const __ksymtab_cx18_ext_init ;
struct kernel_symbol const __ksymtab_cx18_ext_init = {(unsigned long )(& cx18_ext_init), (char const *)(& __kstrtab_cx18_ext_init)};
static struct pci_device_id cx18_pci_tbl[2U] = { {5361U, 23418U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__cx18_pci_tbl_device_table ;
static atomic_t cx18_instance = {0};
static int cardtype[32U] ;
static int tuner[32U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static int radio[32U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static char pal[3U] = { '-', '-', '\000'};
static char secam[3U] = { '-', '-', '\000'};
static char ntsc[2U] = { '-', '\000'};
static int enc_ts_buffers = 1;
static int enc_mpg_buffers = 2;
static int enc_idx_buffers = 1;
static int enc_yuv_buffers = 2;
static int enc_vbi_buffers = 1;
static int enc_pcm_buffers = 1;
static int enc_ts_bufsize = 32;
static int enc_mpg_bufsize = 32;
static int enc_idx_bufsize = 2;
static int enc_yuv_bufsize = 102;
static int enc_pcm_bufsize = 4;
static int enc_ts_bufs = -1;
static int enc_mpg_bufs = -1;
static int enc_idx_bufs = 63;
static int enc_yuv_bufs = -1;
static int enc_vbi_bufs = -1;
static int enc_pcm_bufs = -1;
static int cx18_pci_latency = 1;
static void request_module_async(struct work_struct *work )
{
  struct cx18 *dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct cx18 *)__mptr + 0xffffffffffff73f0UL;
  __request_module(1, "cx18-alsa");
  if ((unsigned long )cx18_ext_init != (unsigned long )((int (*)(struct cx18 * ))0)) {
    (*cx18_ext_init)(dev);
  } else {
  }
  return;
}
}
static void request_modules(struct cx18 *dev )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  __init_work(& dev->request_module_wk, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->request_module_wk.data = __constr_expr_0;
  lockdep_init_map(& dev->request_module_wk.lockdep_map, "(&dev->request_module_wk)",
                   & __key, 0);
  INIT_LIST_HEAD(& dev->request_module_wk.entry);
  dev->request_module_wk.func = & request_module_async;
  schedule_work(& dev->request_module_wk);
  return;
}
}
static void flush_request_modules(struct cx18 *dev )
{
  {
  flush_work(& dev->request_module_wk);
  return;
}
}
int cx18_msleep_timeout(unsigned int msecs , int intr )
{
  long timeout ;
  unsigned long tmp ;
  int sig ;
  long volatile __ret ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  {
  tmp = msecs_to_jiffies(msecs);
  timeout = (long )tmp;
  ldv_52344:
  __ret = intr != 0 ? 1L : 2L;
  switch (8UL) {
  case 1UL:
  tmp___0 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___0->state): : "memory",
                       "cc");
  goto ldv_52338;
  case 2UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_52338;
  case 4UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_52338;
  case 8UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_52338;
  default:
  __xchg_wrong_size();
  }
  ldv_52338:
  timeout = schedule_timeout(timeout);
  if (intr != 0) {
    tmp___4 = get_current();
    tmp___5 = signal_pending(tmp___4);
    sig = tmp___5;
  } else {
    sig = 0;
  }
  if (sig == 0 && timeout != 0L) {
    goto ldv_52344;
  } else {
  }
  return (sig);
}
}
static void cx18_iounmap(struct cx18 *cx )
{
  {
  if ((unsigned long )cx == (unsigned long )((struct cx18 *)0)) {
    return;
  } else {
  }
  if ((unsigned long )cx->enc_mem != (unsigned long )((void *)0)) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: releasing enc_mem\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    iounmap((void volatile *)cx->enc_mem);
    cx->enc_mem = (void *)0;
  } else {
  }
  return;
}
}
static void cx18_eeprom_dump(struct cx18 *cx , unsigned char *eedata , int len )
{
  int i ;
  {
  printk("\016%s: eeprom dump:\n", (char *)(& cx->v4l2_dev.name));
  i = 0;
  goto ldv_52356;
  ldv_52355: ;
  if (((unsigned int )i & 15U) == 0U) {
    printk("\016%s: eeprom %02x:", (char *)(& cx->v4l2_dev.name), i);
  } else {
  }
  printk(" %02x", (int )*(eedata + (unsigned long )i));
  if (i % 16 == 15) {
    printk("\n");
  } else {
  }
  i = i + 1;
  ldv_52356: ;
  if (i < len) {
    goto ldv_52355;
  } else {
  }
  return;
}
}
void cx18_read_eeprom(struct cx18 *cx , struct tveeprom *tv )
{
  struct i2c_client *c ;
  u8 eedata[256U] ;
  void *tmp ;
  int tmp___0 ;
  {
  memset((void *)tv, 0, 76UL);
  tmp = kzalloc(1472UL, 208U);
  c = (struct i2c_client *)tmp;
  if ((unsigned long )c == (unsigned long )((struct i2c_client *)0)) {
    return;
  } else {
  }
  strlcpy((char *)(& c->name), "cx18 tveeprom tmp", 20UL);
  c->adapter = (struct i2c_adapter *)(& cx->i2c_adap);
  c->addr = 80U;
  tmp___0 = tveeprom_read(c, (unsigned char *)(& eedata), 256);
  if (tmp___0 != 0) {
    goto ret;
  } else {
  }
  switch ((cx->card)->type) {
  case 0: ;
  case 1: ;
  case 9:
  tveeprom_hauppauge_analog(c, tv, (unsigned char *)(& eedata));
  goto ldv_52368;
  case 3: ;
  case 8:
  tv->model = 1816U;
  cx18_eeprom_dump(cx, (unsigned char *)(& eedata), 256);
  printk("\016%s: eeprom PCI ID: %02x%02x:%02x%02x\n", (char *)(& cx->v4l2_dev.name),
         (int )eedata[2], (int )eedata[1], (int )eedata[4], (int )eedata[3]);
  goto ldv_52368;
  default:
  tv->model = 4294967295U;
  cx18_eeprom_dump(cx, (unsigned char *)(& eedata), 256);
  goto ldv_52368;
  }
  ldv_52368: ;
  ret:
  kfree((void const *)c);
  return;
}
}
static void cx18_process_eeprom(struct cx18 *cx )
{
  struct tveeprom tv ;
  {
  cx18_read_eeprom(cx, & tv);
  switch (tv.model) {
  case 74301U: ;
  case 74321U: ;
  case 74351U: ;
  case 74361U:
  cx->card = cx18_get_card(9);
  goto ldv_52380;
  case 74021U: ;
  case 74031U: ;
  case 74041U: ;
  case 74141U: ;
  case 74541U: ;
  case 74551U: ;
  case 74591U: ;
  case 74651U: ;
  case 74691U: ;
  case 74751U: ;
  case 74891U:
  cx->card = cx18_get_card(0);
  goto ldv_52380;
  case 1816U: ;
  return;
  case 4294967295U:
  printk("\016%s: Unknown EEPROM encoding\n", (char *)(& cx->v4l2_dev.name));
  return;
  case 0U:
  printk("\v%s: Invalid EEPROM\n", (char *)(& cx->v4l2_dev.name));
  return;
  default:
  printk("\v%s: Unknown model %d, defaulting to original HVR-1600 (cardtype=1)\n",
         (char *)(& cx->v4l2_dev.name), tv.model);
  cx->card = cx18_get_card(0);
  goto ldv_52380;
  }
  ldv_52380:
  cx->v4l2_cap = (cx->card)->v4l2_capabilities;
  cx->card_name = (char const *)(cx->card)->name;
  cx->card_i2c = (struct cx18_card_tuner_i2c const *)(cx->card)->i2c;
  printk("\016%s: Autodetected %s\n", (char *)(& cx->v4l2_dev.name), cx->card_name);
  if (tv.tuner_type == 4U) {
    printk("\v%s: tveeprom cannot autodetect tuner!\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  if (cx->options.tuner == -1) {
    cx->options.tuner = (int )tv.tuner_type;
  } else {
  }
  if (cx->options.radio == -1) {
    cx->options.radio = tv.has_radio != 0U;
  } else {
  }
  if (cx->std != 0ULL) {
    return;
  } else {
  }
  if (((unsigned long long )tv.tuner_formats & 16758783ULL) == 16758783ULL) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Worldwide tuner detected\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    cx->std = 16777215ULL;
  } else
  if (((unsigned long long )tv.tuner_formats & 255ULL) != 0ULL) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: PAL tuner detected\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    cx->std = cx->std | 15ULL;
  } else
  if (((unsigned long long )tv.tuner_formats & 45056ULL) != 0ULL) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: NTSC tuner detected\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    cx->std = cx->std | 4096ULL;
  } else
  if (((unsigned long long )tv.tuner_formats & 16711680ULL) != 0ULL) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: SECAM tuner detected\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    cx->std = cx->std | 4194304ULL;
  } else {
    printk("\016%s: No tuner detected, default to NTSC-M\n", (char *)(& cx->v4l2_dev.name));
    cx->std = cx->std | 4096ULL;
  }
  return;
}
}
static v4l2_std_id cx18_parse_std(struct cx18 *cx )
{
  {
  switch ((int )pal[0]) {
  case 54: ;
  return (2048ULL);
  case 98: ;
  case 66: ;
  case 103: ;
  case 71: ;
  return (7ULL);
  case 104: ;
  case 72: ;
  return (8ULL);
  case 110: ;
  case 78: ;
  if ((int )((signed char )pal[1]) == 99 || (int )((signed char )pal[1]) == 67) {
    return (1024ULL);
  } else {
  }
  return (512ULL);
  case 105: ;
  case 73: ;
  return (16ULL);
  case 100: ;
  case 68: ;
  case 107: ;
  case 75: ;
  return (224ULL);
  case 77: ;
  case 109: ;
  return (256ULL);
  case 45: ;
  goto ldv_52417;
  default:
  printk("\f%s: pal= argument not recognised\n", (char *)(& cx->v4l2_dev.name));
  return (0ULL);
  }
  ldv_52417: ;
  switch ((int )secam[0]) {
  case 98: ;
  case 66: ;
  case 103: ;
  case 71: ;
  case 104: ;
  case 72: ;
  return (851968ULL);
  case 100: ;
  case 68: ;
  case 107: ;
  case 75: ;
  return (3276800ULL);
  case 108: ;
  case 76: ;
  if ((int )((signed char )secam[1]) == 67 || (int )((signed char )secam[1]) == 99) {
    return (8388608ULL);
  } else {
  }
  return (4194304ULL);
  case 45: ;
  goto ldv_52432;
  default:
  printk("\f%s: secam= argument not recognised\n", (char *)(& cx->v4l2_dev.name));
  return (0ULL);
  }
  ldv_52432: ;
  switch ((int )ntsc[0]) {
  case 109: ;
  case 77: ;
  return (4096ULL);
  case 106: ;
  case 74: ;
  return (8192ULL);
  case 107: ;
  case 75: ;
  return (32768ULL);
  case 45: ;
  goto ldv_52441;
  default:
  printk("\f%s: ntsc= argument not recognised\n", (char *)(& cx->v4l2_dev.name));
  return (0ULL);
  }
  ldv_52441: ;
  return (0ULL);
}
}
static void cx18_process_options(struct cx18 *cx )
{
  int i ;
  int j ;
  struct cx18_card const *tmp ;
  {
  cx->options.megabytes[1] = enc_ts_buffers;
  cx->options.megabytes[0] = enc_mpg_buffers;
  cx->options.megabytes[5] = enc_idx_buffers;
  cx->options.megabytes[2] = enc_yuv_buffers;
  cx->options.megabytes[3] = enc_vbi_buffers;
  cx->options.megabytes[4] = enc_pcm_buffers;
  cx->options.megabytes[6] = 0;
  cx->stream_buffers[1] = enc_ts_bufs;
  cx->stream_buffers[0] = enc_mpg_bufs;
  cx->stream_buffers[5] = enc_idx_bufs;
  cx->stream_buffers[2] = enc_yuv_bufs;
  cx->stream_buffers[3] = enc_vbi_bufs;
  cx->stream_buffers[4] = enc_pcm_bufs;
  cx->stream_buffers[6] = 0;
  cx->stream_buf_size[1] = enc_ts_bufsize;
  cx->stream_buf_size[0] = enc_mpg_bufsize;
  cx->stream_buf_size[5] = enc_idx_bufsize;
  cx->stream_buf_size[2] = enc_yuv_bufsize;
  cx->stream_buf_size[3] = (int )((unsigned int )vbi_active_samples * 36U);
  cx->stream_buf_size[4] = enc_pcm_bufsize;
  cx->stream_buf_size[6] = 0;
  i = 0;
  goto ldv_52450;
  ldv_52449: ;
  if ((cx->stream_buffers[i] == 0 || cx->options.megabytes[i] <= 0) || cx->stream_buf_size[i] <= 0) {
    cx->options.megabytes[i] = 0;
    cx->stream_buffers[i] = 0;
    cx->stream_buf_size[i] = 0;
    goto ldv_52448;
  } else {
  }
  if (i == 2) {
    cx->stream_buf_size[i] = cx->stream_buf_size[i] * 1024;
    cx->stream_buf_size[i] = cx->stream_buf_size[i] - cx->stream_buf_size[i] % 34560;
    if (cx->stream_buf_size[i] <= 34559) {
      cx->stream_buf_size[i] = 34560;
    } else {
    }
  } else
  if (i == 5) {
    cx->stream_buf_size[i] = cx->stream_buf_size[i] * 1024;
    cx->stream_buf_size[i] = (int )((unsigned int )cx->stream_buf_size[i] - (unsigned int )((unsigned long )cx->stream_buf_size[i] % 1536UL));
    if ((unsigned int )cx->stream_buf_size[i] <= 1535U) {
      cx->stream_buf_size[i] = 1536;
    } else {
    }
  } else {
  }
  if ((i == 3 || i == 2) || i == 5) {
    if (cx->stream_buffers[i] < 0) {
      cx->stream_buffers[i] = (cx->options.megabytes[i] * 1048576) / cx->stream_buf_size[i];
    } else {
      cx->options.megabytes[i] = (cx->stream_buffers[i] * cx->stream_buf_size[i]) / 1048576;
    }
  } else {
    if (cx->stream_buffers[i] < 0) {
      cx->stream_buffers[i] = (cx->options.megabytes[i] * 1024) / cx->stream_buf_size[i];
    } else {
      cx->options.megabytes[i] = (cx->stream_buffers[i] * cx->stream_buf_size[i]) / 1024;
    }
    cx->stream_buf_size[i] = cx->stream_buf_size[i] * 1024;
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Stream type %d options: %d MB, %d buffers, %d bytes\n",
           (char *)(& cx->v4l2_dev.name), i, cx->options.megabytes[i], cx->stream_buffers[i],
           cx->stream_buf_size[i]);
  } else {
  }
  ldv_52448:
  i = i + 1;
  ldv_52450: ;
  if (i <= 6) {
    goto ldv_52449;
  } else {
  }
  cx->options.cardtype = cardtype[cx->instance];
  cx->options.tuner = tuner[cx->instance];
  cx->options.radio = radio[cx->instance];
  cx->std = cx18_parse_std(cx);
  if (cx->options.cardtype == -1) {
    printk("\016%s: Ignore card\n", (char *)(& cx->v4l2_dev.name));
    return;
  } else {
  }
  cx->card = cx18_get_card((int )((unsigned int )((u16 )cx->options.cardtype) + 65535U));
  if ((unsigned long )cx->card != (unsigned long )((struct cx18_card const *)0)) {
    printk("\016%s: User specified %s card\n", (char *)(& cx->v4l2_dev.name), (cx->card)->name);
  } else
  if (cx->options.cardtype != 0) {
    printk("\v%s: Unknown user specified type, trying to autodetect card\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  if ((unsigned long )cx->card == (unsigned long )((struct cx18_card const *)0)) {
    if ((unsigned int )(cx->pci_dev)->subsystem_vendor == 112U) {
      cx->card = cx18_get_card(0);
      printk("\016%s: Autodetected Hauppauge card\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
  } else {
  }
  if ((unsigned long )cx->card == (unsigned long )((struct cx18_card const *)0)) {
    i = 0;
    goto ldv_52459;
    ldv_52458: ;
    if ((unsigned long )(cx->card)->pci_list == (unsigned long )((struct cx18_card_pci_info const * )0)) {
      goto ldv_52452;
    } else {
    }
    j = 0;
    goto ldv_52456;
    ldv_52455: ;
    if ((int )(cx->pci_dev)->device != (int )((unsigned short )((cx->card)->pci_list + (unsigned long )j)->device)) {
      goto ldv_52453;
    } else {
    }
    if ((int )(cx->pci_dev)->subsystem_vendor != (int )((unsigned short )((cx->card)->pci_list + (unsigned long )j)->subsystem_vendor)) {
      goto ldv_52453;
    } else {
    }
    if ((int )(cx->pci_dev)->subsystem_device != (int )((unsigned short )((cx->card)->pci_list + (unsigned long )j)->subsystem_device)) {
      goto ldv_52453;
    } else {
    }
    printk("\016%s: Autodetected %s card\n", (char *)(& cx->v4l2_dev.name), (cx->card)->name);
    goto done;
    ldv_52453:
    j = j + 1;
    ldv_52456: ;
    if ((unsigned int )((unsigned short )((cx->card)->pci_list + (unsigned long )j)->device) != 0U) {
      goto ldv_52455;
    } else {
    }
    ldv_52452:
    i = i + 1;
    ldv_52459:
    tmp = cx18_get_card((int )((u16 )i));
    cx->card = tmp;
    if ((unsigned long )tmp != (unsigned long )((struct cx18_card const *)0)) {
      goto ldv_52458;
    } else {
    }
  } else {
  }
  done: ;
  if ((unsigned long )cx->card == (unsigned long )((struct cx18_card const *)0)) {
    cx->card = cx18_get_card(0);
    printk("\v%s: Unknown card: vendor/device: [%04x:%04x]\n", (char *)(& cx->v4l2_dev.name),
           (int )(cx->pci_dev)->vendor, (int )(cx->pci_dev)->device);
    printk("\v%s:               subsystem vendor/device: [%04x:%04x]\n", (char *)(& cx->v4l2_dev.name),
           (int )(cx->pci_dev)->subsystem_vendor, (int )(cx->pci_dev)->subsystem_device);
    printk("\v%s: Defaulting to %s card\n", (char *)(& cx->v4l2_dev.name), (cx->card)->name);
    printk("\v%s: Please mail the vendor/device and subsystem vendor/device IDs and what kind of\n",
           (char *)(& cx->v4l2_dev.name));
    printk("\v%s: card you have to the ivtv-devel mailinglist (www.ivtvdriver.org)\n",
           (char *)(& cx->v4l2_dev.name));
    printk("\v%s: Prefix your subject line with [UNKNOWN CX18 CARD].\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  cx->v4l2_cap = (cx->card)->v4l2_capabilities;
  cx->card_name = (char const *)(cx->card)->name;
  cx->card_i2c = (struct cx18_card_tuner_i2c const *)(cx->card)->i2c;
  return;
}
}
static int cx18_create_in_workq(struct cx18 *cx )
{
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  snprintf((char *)(& cx->in_workq_name), 11UL, "%s-in", (char *)(& cx->v4l2_dev.name));
  __lock_name = "\"%s\"cx->in_workq_name";
  tmp = __alloc_workqueue_key("%s", 131074U, 1, & __key, __lock_name, (char *)(& cx->in_workq_name));
  cx->in_work_queue = tmp;
  if ((unsigned long )cx->in_work_queue == (unsigned long )((struct workqueue_struct *)0)) {
    printk("\v%s: Unable to create incoming mailbox handler thread\n", (char *)(& cx->v4l2_dev.name));
    return (-12);
  } else {
  }
  return (0);
}
}
static void cx18_init_in_work_orders(struct cx18 *cx )
{
  int i ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  i = 0;
  goto ldv_52474;
  ldv_52473:
  cx->in_work_order[i].cx = cx;
  cx->in_work_order[i].str = (char *)(& cx->epu_debug_str);
  __init_work(& cx->in_work_order[i].work, 0);
  __constr_expr_0.counter = 137438953408L;
  cx->in_work_order[i].work.data = __constr_expr_0;
  lockdep_init_map(& cx->in_work_order[i].work.lockdep_map, "(&cx->in_work_order[i].work)",
                   & __key, 0);
  INIT_LIST_HEAD(& cx->in_work_order[i].work.entry);
  cx->in_work_order[i].work.func = & cx18_in_work_handler;
  i = i + 1;
  ldv_52474: ;
  if (i <= 69) {
    goto ldv_52473;
  } else {
  }
  return;
}
}
static int cx18_init_struct1(struct cx18 *cx )
{
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  {
  cx->base_addr = (cx->pci_dev)->resource[0].start;
  __mutex_init(& cx->serialize_lock, "&cx->serialize_lock", & __key);
  __mutex_init(& cx->gpio_lock, "&cx->gpio_lock", & __key___0);
  __mutex_init(& cx->epu2apu_mb_lock, "&cx->epu2apu_mb_lock", & __key___1);
  __mutex_init(& cx->epu2cpu_mb_lock, "&cx->epu2cpu_mb_lock", & __key___2);
  ret = cx18_create_in_workq(cx);
  if (ret != 0) {
    return (ret);
  } else {
  }
  cx18_init_in_work_orders(cx);
  cx->open_id = 1;
  cx->cxhdl.port = 0;
  cx->cxhdl.capabilities = 3U;
  cx->cxhdl.ops = (struct cx2341x_handler_ops const *)(& cx18_cxhdl_ops);
  cx->cxhdl.func = & cx18_api_func;
  cx->cxhdl.priv = (void *)(& cx->streams);
  ret = cx2341x_handler_init(& cx->cxhdl, 50U);
  if (ret != 0) {
    return (ret);
  } else {
  }
  cx->v4l2_dev.ctrl_handler = & cx->cxhdl.hdl;
  cx->temporal_strength = (u32 )(cx->cxhdl.ldv_36985.video_temporal_filter)->cur.val;
  cx->spatial_strength = (u32 )(cx->cxhdl.ldv_36985.video_spatial_filter)->cur.val;
  cx->filter_mode = (u32 )(((cx->cxhdl.ldv_36977.video_spatial_filter_mode)->cur.val | ((cx->cxhdl.ldv_36977.video_temporal_filter_mode)->cur.val << 1)) | ((cx->cxhdl.ldv_36977.video_median_filter_type)->cur.val << 2));
  __init_waitqueue_head(& cx->cap_w, "&cx->cap_w", & __key___3);
  __init_waitqueue_head(& cx->mb_apu_waitq, "&cx->mb_apu_waitq", & __key___4);
  __init_waitqueue_head(& cx->mb_cpu_waitq, "&cx->mb_cpu_waitq", & __key___5);
  __init_waitqueue_head(& cx->dma_waitq, "&cx->dma_waitq", & __key___6);
  cx->vbi.in.type = 4U;
  cx->vbi.sliced_in = & cx->vbi.in.fmt.sliced;
  INIT_LIST_HEAD(& cx->vbi.sliced_mpeg_buf.list);
  INIT_LIST_HEAD(& cx->vbi.sliced_mpeg_mdl.list);
  INIT_LIST_HEAD(& cx->vbi.sliced_mpeg_mdl.buf_list);
  list_add(& cx->vbi.sliced_mpeg_buf.list, & cx->vbi.sliced_mpeg_mdl.buf_list);
  return (0);
}
}
static void cx18_init_struct2(struct cx18 *cx )
{
  int i ;
  {
  i = 0;
  goto ldv_52494;
  ldv_52493: ;
  if ((unsigned int )((unsigned char )(cx->card)->video_inputs[i].video_type) == 0U) {
    goto ldv_52492;
  } else {
  }
  i = i + 1;
  ldv_52494: ;
  if (i <= 5) {
    goto ldv_52493;
  } else {
  }
  ldv_52492:
  cx->nof_inputs = (u8 )i;
  i = 0;
  goto ldv_52497;
  ldv_52496: ;
  if ((unsigned int )((unsigned char )(cx->card)->audio_inputs[i].audio_type) == 0U) {
    goto ldv_52495;
  } else {
  }
  i = i + 1;
  ldv_52497: ;
  if (i <= 2) {
    goto ldv_52496;
  } else {
  }
  ldv_52495:
  cx->nof_audio_inputs = (u8 )i;
  i = 0;
  goto ldv_52500;
  ldv_52499: ;
  if ((unsigned int )((unsigned char )(cx->card)->video_inputs[i].video_type) == 1U) {
    goto ldv_52498;
  } else {
  }
  i = i + 1;
  ldv_52500: ;
  if ((int )cx->nof_inputs > i) {
    goto ldv_52499;
  } else {
  }
  ldv_52498: ;
  if ((int )cx->nof_inputs == i) {
    i = 0;
  } else {
  }
  cx->active_input = (u32 )i;
  cx->audio_input = (u32 )(cx->card)->video_inputs[i].audio_index;
  return;
}
}
static int cx18_setup_pci(struct cx18 *cx , struct pci_dev *pci_dev , struct pci_device_id const *pci_id )
{
  u16 cmd ;
  unsigned char pci_latency ;
  int tmp ;
  int tmp___0 ;
  struct resource *tmp___1 ;
  {
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Enabling pci device\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  tmp = pci_enable_device(pci_dev);
  if (tmp != 0) {
    printk("\v%s: Can\'t enable device %d!\n", (char *)(& cx->v4l2_dev.name), cx->instance);
    return (-5);
  } else {
  }
  tmp___0 = pci_set_dma_mask(pci_dev, 4294967295ULL);
  if (tmp___0 != 0) {
    printk("\v%s: No suitable DMA available, card %d\n", (char *)(& cx->v4l2_dev.name),
           cx->instance);
    return (-5);
  } else {
  }
  tmp___1 = __request_region(& iomem_resource, cx->base_addr, 67108864ULL, "cx18 encoder",
                             0);
  if ((unsigned long )tmp___1 == (unsigned long )((struct resource *)0)) {
    printk("\v%s: Cannot request encoder memory region, card %d\n", (char *)(& cx->v4l2_dev.name),
           cx->instance);
    return (-5);
  } else {
  }
  pci_read_config_word((struct pci_dev const *)pci_dev, 4, & cmd);
  cmd = (u16 )((unsigned int )cmd | 6U);
  pci_write_config_word((struct pci_dev const *)pci_dev, 4, (int )cmd);
  cx->card_rev = pci_dev->revision;
  pci_read_config_byte((struct pci_dev const *)pci_dev, 13, & pci_latency);
  if ((unsigned int )pci_latency <= 63U && cx18_pci_latency != 0) {
    printk("\016%s: Unreasonably low latency timer, setting to 64 (was %d)\n", (char *)(& cx->v4l2_dev.name),
           (int )pci_latency);
    pci_write_config_byte((struct pci_dev const *)pci_dev, 13, 64);
    pci_read_config_byte((struct pci_dev const *)pci_dev, 13, & pci_latency);
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: cx%d (rev %d) at %02x:%02x.%x, irq: %d, latency: %d, memory: 0x%llx\n",
           (char *)(& cx->v4l2_dev.name), (int )(cx->pci_dev)->device, (int )cx->card_rev,
           (int )(pci_dev->bus)->number, (pci_dev->devfn >> 3) & 31U, pci_dev->devfn & 7U,
           (cx->pci_dev)->irq, (int )pci_latency, cx->base_addr);
  } else {
  }
  return (0);
}
}
static void cx18_init_subdevs(struct cx18 *cx )
{
  u32 hw ;
  u32 device ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  hw = (cx->card)->hw_all;
  i = 0;
  device = 1U;
  goto ldv_52523;
  ldv_52522: ;
  if ((device & hw) == 0U) {
    goto ldv_52514;
  } else {
  }
  switch (device) {
  case 8U: ;
  case 2U:
  cx->hw_flags = cx->hw_flags | device;
  goto ldv_52517;
  case 16U:
  cx->hw_flags = cx->hw_flags | device;
  goto ldv_52517;
  case 64U: ;
  goto ldv_52517;
  case 32U:
  tmp = cx18_gpio_register(cx, device);
  if (tmp == 0) {
    cx->hw_flags = cx->hw_flags | device;
  } else {
  }
  goto ldv_52517;
  default:
  tmp___0 = cx18_i2c_register(cx, (unsigned int )i);
  if (tmp___0 == 0) {
    cx->hw_flags = cx->hw_flags | device;
  } else {
  }
  goto ldv_52517;
  }
  ldv_52517: ;
  ldv_52514:
  i = i + 1;
  device = device << 1;
  ldv_52523: ;
  if (i <= 31) {
    goto ldv_52522;
  } else {
  }
  if ((cx->hw_flags & 16U) != 0U) {
    cx->sd_av = cx18_find_hw(cx, 16U);
  } else {
  }
  if ((unsigned int )(cx->card)->hw_muxer != 0U) {
    cx->sd_extmux = cx18_find_hw(cx, (cx->card)->hw_muxer);
  } else {
  }
  return;
}
}
static int cx18_probe(struct pci_dev *pci_dev , struct pci_device_id const *pci_id )
{
  int retval ;
  int i ;
  u32 devtype ;
  struct cx18 *cx ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  struct cx18_card const *orig_card ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct tuner_setup setup ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct xc2028_ctrl ctrl ;
  struct v4l2_priv_tun_config cfg ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  retval = 0;
  tmp = atomic_add_return(1, & cx18_instance);
  i = tmp + -1;
  if (i > 31) {
    printk("\vcx18: cannot manage card %d, driver has a limit of 0 - %d\n", i, 31);
    return (-12);
  } else {
  }
  tmp___0 = kzalloc(35936UL, 32U);
  cx = (struct cx18 *)tmp___0;
  if ((unsigned long )cx == (unsigned long )((struct cx18 *)0)) {
    printk("\vcx18: cannot manage card %d, out of memory\n", i);
    return (-12);
  } else {
  }
  cx->pci_dev = pci_dev;
  cx->instance = i;
  retval = v4l2_device_register(& pci_dev->dev, & cx->v4l2_dev);
  if (retval != 0) {
    printk("\vcx18: v4l2_device_register of card %d failed\n", cx->instance);
    kfree((void const *)cx);
    return (retval);
  } else {
  }
  snprintf((char *)(& cx->v4l2_dev.name), 36UL, "cx18-%d", cx->instance);
  printk("\016%s: Initializing card %d\n", (char *)(& cx->v4l2_dev.name), cx->instance);
  cx18_process_options(cx);
  if (cx->options.cardtype == -1) {
    retval = -19;
    goto err;
  } else {
  }
  retval = cx18_init_struct1(cx);
  if (retval != 0) {
    goto err;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: base addr: 0x%llx\n", (char *)(& cx->v4l2_dev.name), cx->base_addr);
  } else {
  }
  retval = cx18_setup_pci(cx, pci_dev, pci_id);
  if (retval != 0) {
    goto free_workqueues;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: attempting ioremap at 0x%llx len 0x%08x\n", (char *)(& cx->v4l2_dev.name),
           cx->base_addr, 67108864);
  } else {
  }
  cx->enc_mem = ioremap_nocache(cx->base_addr, 67108864UL);
  if ((unsigned long )cx->enc_mem == (unsigned long )((void *)0)) {
    printk("\v%s: ioremap failed. Can\'t get a window into CX23418 memory and register space\n",
           (char *)(& cx->v4l2_dev.name));
    printk("\v%s: Each capture card with a CX23418 needs 64 MB of vmalloc address space for the window\n",
           (char *)(& cx->v4l2_dev.name));
    printk("\v%s: Check the output of \'grep Vmalloc /proc/meminfo\'\n", (char *)(& cx->v4l2_dev.name));
    printk("\v%s: Use the vmalloc= kernel command line option to set VmallocTotal to a larger value\n",
           (char *)(& cx->v4l2_dev.name));
    retval = -12;
    goto free_mem;
  } else {
  }
  cx->reg_mem = cx->enc_mem + 33554432UL;
  devtype = cx18_read_reg(cx, 13049896U);
  switch (devtype & 4278190080U) {
  case 4278190080U:
  printk("\016%s: cx23418 revision %08x (A)\n", (char *)(& cx->v4l2_dev.name), devtype);
  goto ldv_52537;
  case 16777216U:
  printk("\016%s: cx23418 revision %08x (B)\n", (char *)(& cx->v4l2_dev.name), devtype);
  goto ldv_52537;
  default:
  printk("\016%s: cx23418 revision %08x (Unknown)\n", (char *)(& cx->v4l2_dev.name),
         devtype);
  goto ldv_52537;
  }
  ldv_52537:
  cx18_init_power(cx, 1);
  cx18_init_memory(cx);
  cx->scb = (struct cx18_scb *)cx->enc_mem + 14417920U;
  cx18_init_scb(cx);
  cx18_gpio_init(cx);
  retval = cx18_av_probe(cx);
  if (retval != 0) {
    printk("\v%s: Could not register A/V decoder subdevice\n", (char *)(& cx->v4l2_dev.name));
    goto free_map;
  } else {
  }
  if (((unsigned int )(cx->card)->hw_all & 64U) != 0U) {
    tmp___1 = cx18_gpio_register(cx, 64U);
    if (tmp___1 != 0) {
      printk("\f%s: Could not register GPIO reset controllersubdevice; proceeding anyway.\n",
             (char *)(& cx->v4l2_dev.name));
    } else {
      cx->hw_flags = cx->hw_flags | 64U;
    }
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: activating i2c...\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  retval = init_cx18_i2c(cx);
  if (retval != 0) {
    printk("\v%s: Could not initialize i2c\n", (char *)(& cx->v4l2_dev.name));
    goto free_map;
  } else {
  }
  if (((unsigned int )(cx->card)->hw_all & 2U) != 0U) {
    orig_card = cx->card;
    cx18_process_eeprom(cx);
    if ((unsigned long )cx->card != (unsigned long )orig_card) {
      cx18_gpio_init(cx);
      __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
      goto ldv_52548;
      ldv_52547: ;
      if (((__sd->grp_id & 64U) != 0U && (unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0)) && (unsigned long )((__sd->ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                             u32 ))0)) {
        (*(((__sd->ops)->core)->reset))(__sd, 0U);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_52548: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
        goto ldv_52547;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )(cx->card)->comment != (unsigned long )((char * )0)) {
    printk("\016%s: %s", (char *)(& cx->v4l2_dev.name), (cx->card)->comment);
  } else {
  }
  if ((unsigned int )(cx->card)->v4l2_capabilities == 0U) {
    retval = -19;
    goto free_i2c;
  } else {
  }
  cx18_init_memory(cx);
  cx18_init_scb(cx);
  retval = ldv_request_irq_33((cx->pci_dev)->irq, & cx18_irq_handler, 128UL, (char const *)(& cx->v4l2_dev.name),
                              (void *)cx);
  if (retval != 0) {
    printk("\v%s: Failed to register irq %d\n", (char *)(& cx->v4l2_dev.name), retval);
    goto free_i2c;
  } else {
  }
  if (cx->std == 0ULL) {
    cx->std = 4096ULL;
  } else {
  }
  if (cx->options.tuner == -1) {
    i = 0;
    goto ldv_52554;
    ldv_52553: ;
    if ((cx->std & (unsigned long long )(cx->card)->tuners[i].std) == 0ULL) {
      goto ldv_52551;
    } else {
    }
    cx->options.tuner = (cx->card)->tuners[i].tuner;
    goto ldv_52552;
    ldv_52551:
    i = i + 1;
    ldv_52554: ;
    if (i <= 1) {
      goto ldv_52553;
    } else {
    }
    ldv_52552: ;
  } else {
  }
  if (cx->options.tuner == -1 && (unsigned long long )(cx->card)->tuners[0].std != 0ULL) {
    cx->std = (cx->card)->tuners[0].std;
    if ((cx->std & 255ULL) != 0ULL) {
      cx->std = 15ULL;
    } else
    if ((cx->std & 45056ULL) != 0ULL) {
      cx->std = 4096ULL;
    } else
    if ((cx->std & 16711680ULL) != 0ULL) {
      cx->std = 4194304ULL;
    } else {
    }
    cx->options.tuner = (cx->card)->tuners[0].tuner;
  } else {
  }
  if (cx->options.radio == -1) {
    cx->options.radio = (unsigned int )((unsigned char )(cx->card)->radio_input.audio_type) != 0U;
  } else {
  }
  cx18_init_struct2(cx);
  cx18_init_subdevs(cx);
  if ((cx->std & 63744ULL) != 0ULL) {
    cx->is_60hz = 1U;
  } else {
    cx->is_50hz = 1U;
  }
  cx2341x_handler_set_50hz(& cx->cxhdl, (unsigned int )cx->is_60hz == 0U);
  if (cx->options.radio > 0) {
    cx->v4l2_cap = cx->v4l2_cap | 262144U;
  } else {
  }
  if (cx->options.tuner >= 0) {
    setup.addr = 255U;
    setup.type = (unsigned int )cx->options.tuner;
    setup.mode_mask = 4U;
    if (cx->options.radio > 0) {
      setup.mode_mask = setup.mode_mask | 2U;
    } else {
    }
    setup.tuner_callback = setup.type == 71U ? & cx18_reset_tuner_gpio : (int (*)(void * ,
                                                                                  int ,
                                                                                  int ,
                                                                                  int ))0;
    __mptr___1 = (struct list_head const *)cx->v4l2_dev.subdevs.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    goto ldv_52562;
    ldv_52561: ;
    if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                            struct tuner_setup * ))0)) {
      (*(((__sd___0->ops)->tuner)->s_type_addr))(__sd___0, & setup);
    } else {
    }
    __mptr___2 = (struct list_head const *)__sd___0->list.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
    ldv_52562: ;
    if ((unsigned long )(& __sd___0->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
      goto ldv_52561;
    } else {
    }
    if (setup.type == 71U) {
      ctrl.fname = (char *)"xc3028-v27.fw";
      ctrl.max_len = 64;
      ctrl.msleep = 0;
      ctrl.scode_table = 0U;
      ctrl.mts = (unsigned char)0;
      ctrl.input1 = (unsigned char)0;
      ctrl.vhfbw7 = (unsigned char)0;
      ctrl.uhfbw8 = (unsigned char)0;
      ctrl.disable_power_mgmt = (unsigned char)0;
      ctrl.read_not_reliable = (unsigned char)0;
      ctrl.demod = 0U;
      ctrl.type = (unsigned char)0;
      cfg.tuner = cx->options.tuner;
      cfg.priv = (void *)(& ctrl);
      __mptr___3 = (struct list_head const *)cx->v4l2_dev.subdevs.next;
      __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
      goto ldv_52572;
      ldv_52571: ;
      if ((unsigned long )(__sd___1->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___1->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                           struct v4l2_priv_tun_config const * ))0)) {
        (*(((__sd___1->ops)->tuner)->s_config))(__sd___1, (struct v4l2_priv_tun_config const *)(& cfg));
      } else {
      }
      __mptr___4 = (struct list_head const *)__sd___1->list.next;
      __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
      ldv_52572: ;
      if ((unsigned long )(& __sd___1->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
        goto ldv_52571;
      } else {
      }
    } else {
    }
  } else {
  }
  cx->tuner_std = cx->std;
  if (cx->std == 16777215ULL) {
    cx->std = 4096ULL;
  } else {
  }
  retval = cx18_streams_setup(cx);
  if (retval != 0) {
    printk("\v%s: Error %d setting up streams\n", (char *)(& cx->v4l2_dev.name), retval);
    goto free_irq;
  } else {
  }
  retval = cx18_streams_register(cx);
  if (retval != 0) {
    printk("\v%s: Error %d registering devices\n", (char *)(& cx->v4l2_dev.name),
           retval);
    goto free_streams;
  } else {
  }
  printk("\016%s: Initialized card: %s\n", (char *)(& cx->v4l2_dev.name), cx->card_name);
  request_modules(cx);
  return (0);
  free_streams:
  cx18_streams_cleanup(cx, 1);
  free_irq:
  ldv_free_irq_34((cx->pci_dev)->irq, (void *)cx);
  free_i2c:
  exit_cx18_i2c(cx);
  free_map:
  cx18_iounmap(cx);
  free_mem:
  __release_region(& iomem_resource, cx->base_addr, 67108864ULL);
  free_workqueues:
  destroy_workqueue(cx->in_work_queue);
  err: ;
  if (retval == 0) {
    retval = -19;
  } else {
  }
  printk("\v%s: Error %d on initialization\n", (char *)(& cx->v4l2_dev.name), retval);
  v4l2_device_unregister(& cx->v4l2_dev);
  kfree((void const *)cx);
  return (retval);
}
}
int cx18_init_on_first_open(struct cx18 *cx )
{
  int video_input ;
  int fw_retry_count ;
  struct v4l2_frequency vf ;
  struct cx18_open_id fh ;
  v4l2_std_id std ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  fw_retry_count = 3;
  fh.cx = cx;
  tmp = constant_test_bit(22L, (unsigned long const volatile *)(& cx->i_flags));
  if (tmp != 0) {
    return (-6);
  } else {
  }
  tmp___0 = test_and_set_bit(21L, (unsigned long volatile *)(& cx->i_flags));
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  goto ldv_52586;
  ldv_52585:
  tmp___1 = cx18_firmware_init(cx);
  if (tmp___1 == 0) {
    goto ldv_52584;
  } else {
  }
  if (fw_retry_count > 1) {
    printk("\f%s: Retry loading firmware\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  ldv_52586:
  fw_retry_count = fw_retry_count - 1;
  if (fw_retry_count > 0) {
    goto ldv_52585;
  } else {
  }
  ldv_52584: ;
  if (fw_retry_count == 0) {
    set_bit(22L, (unsigned long volatile *)(& cx->i_flags));
    return (-6);
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& cx->i_flags));
  cx18_vapi(cx, 268435457U, 2, 185, 0);
  cx18_vapi(cx, 268435461U, 0);
  cx18_vapi(cx, 268435458U, 1, 0);
  fw_retry_count = 3;
  goto ldv_52589;
  ldv_52588:
  tmp___2 = cx18_firmware_init(cx);
  if (tmp___2 == 0) {
    goto ldv_52587;
  } else {
  }
  if (fw_retry_count > 1) {
    printk("\f%s: Retry loading firmware\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  ldv_52589:
  fw_retry_count = fw_retry_count - 1;
  if (fw_retry_count > 0) {
    goto ldv_52588;
  } else {
  }
  ldv_52587: ;
  if (fw_retry_count == 0) {
    set_bit(22L, (unsigned long volatile *)(& cx->i_flags));
    return (-6);
  } else {
  }
  cx18_vapi(cx, 268435457U, 2, 185, 0);
  cx18_vapi(cx, 268435461U, 0);
  cx18_vapi(cx, 268435458U, 1, 0);
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->core)->load_fw != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
      (*((((cx->sd_av)->ops)->core)->load_fw))(cx->sd_av);
    } else {
    }
  } else {
  }
  vf.tuner = 0U;
  vf.type = 2U;
  vf.frequency = 6400U;
  if (cx->std == 8192ULL) {
    vf.frequency = 1460U;
  } else
  if ((cx->std & 4096ULL) != 0ULL) {
    vf.frequency = 1076U;
  } else {
  }
  video_input = (int )cx->active_input;
  cx->active_input = cx->active_input + 1U;
  cx18_s_input((struct file *)0, (void *)(& fh), (unsigned int )video_input);
  cx->std = cx->std + 1ULL;
  std = cx->tuner_std != 16777215ULL ? cx->tuner_std : 4096ULL;
  cx18_s_std((struct file *)0, (void *)(& fh), std);
  cx18_s_frequency((struct file *)0, (void *)(& fh), (struct v4l2_frequency const *)(& vf));
  return (0);
}
}
static void cx18_cancel_in_work_orders(struct cx18 *cx )
{
  int i ;
  {
  i = 0;
  goto ldv_52595;
  ldv_52594:
  cancel_work_sync(& cx->in_work_order[i].work);
  i = i + 1;
  ldv_52595: ;
  if (i <= 69) {
    goto ldv_52594;
  } else {
  }
  return;
}
}
static void cx18_cancel_out_work_orders(struct cx18 *cx )
{
  int i ;
  {
  i = 0;
  goto ldv_52602;
  ldv_52601: ;
  if ((unsigned long )(& cx->streams[i].video_dev) != (unsigned long )((struct video_device **)0)) {
    cancel_work_sync(& cx->streams[i].out_work_order);
  } else {
  }
  i = i + 1;
  ldv_52602: ;
  if (i <= 6) {
    goto ldv_52601;
  } else {
  }
  return;
}
}
static void cx18_remove(struct pci_dev *pci_dev )
{
  struct v4l2_device *v4l2_dev ;
  void *tmp ;
  struct cx18 *cx ;
  struct cx18 *tmp___0 ;
  int i ;
  int tmp___1 ;
  {
  tmp = pci_get_drvdata(pci_dev);
  v4l2_dev = (struct v4l2_device *)tmp;
  tmp___0 = to_cx18(v4l2_dev);
  cx = tmp___0;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Removing Card\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  flush_request_modules(cx);
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Stopping all streams\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& cx->tot_capturing));
  if (tmp___1 > 0) {
    cx18_stop_all_captures(cx);
  } else {
  }
  cx18_sw1_irq_disable(cx, 196608U);
  cx18_cancel_in_work_orders(cx);
  cx18_cancel_out_work_orders(cx);
  cx18_sw2_irq_disable(cx, 136U);
  cx18_halt_firmware(cx);
  destroy_workqueue(cx->in_work_queue);
  cx18_streams_cleanup(cx, 1);
  exit_cx18_i2c(cx);
  ldv_free_irq_35((cx->pci_dev)->irq, (void *)cx);
  cx18_iounmap(cx);
  __release_region(& iomem_resource, cx->base_addr, 67108864ULL);
  pci_disable_device(cx->pci_dev);
  if ((unsigned long )cx->vbi.sliced_mpeg_data[0] != (unsigned long )((u8 *)0U)) {
    i = 0;
    goto ldv_52611;
    ldv_52610:
    kfree((void const *)cx->vbi.sliced_mpeg_data[i]);
    i = i + 1;
    ldv_52611: ;
    if (i <= 31) {
      goto ldv_52610;
    } else {
    }
  } else {
  }
  v4l2_ctrl_handler_free(& cx->av_state.hdl);
  printk("\016%s: Removed %s\n", (char *)(& cx->v4l2_dev.name), cx->card_name);
  v4l2_device_unregister(v4l2_dev);
  kfree((void const *)cx);
  return;
}
}
static struct pci_driver cx18_pci_driver =
     {{0, 0}, "cx18", (struct pci_device_id const *)(& cx18_pci_tbl), & cx18_probe,
    & cx18_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                         0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                               0},
                                                                           0, 0, 0UL}}}},
                                                    {0, 0}}};
static int module_start(void)
{
  int tmp ;
  {
  printk("\016cx18:  Start initialization, version %s\n", (char *)"1.5.1");
  if (cx18_first_minor < 0 || cx18_first_minor > 31) {
    printk("\vcx18:  Exiting, cx18_first_minor must be between 0 and %d\n", 31);
    return (-1);
  } else {
  }
  if (cx18_debug < 0 || cx18_debug > 511) {
    cx18_debug = 0;
    printk("\016cx18:   Debug value must be >= 0 and <= 511!\n");
  } else {
  }
  tmp = __pci_register_driver(& cx18_pci_driver, & __this_module, "cx18");
  if (tmp != 0) {
    printk("\vcx18:   Error detecting PCI card\n");
    return (-19);
  } else {
  }
  printk("\016cx18:  End initialization\n");
  return (0);
}
}
static void module_cleanup(void)
{
  {
  pci_unregister_driver(& cx18_pci_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& cx18_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_52646;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_52646;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_52646;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_52646;
  default:
  ldv_stop();
  }
  ldv_52646: ;
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = cx18_irq_handler(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_52662;
    default:
    ldv_stop();
    }
    ldv_52662: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_pci_driver_21(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  cx18_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_12(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_20(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_18(void) ;
void ldv_main_exported_19(void) ;
void ldv_main_exported_16(void) ;
void ldv_main_exported_17(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_11(void) ;
int main(void)
{
  struct pci_device_id *ldvarg4 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg4 = (struct pci_device_id *)tmp;
  ldv_initialize();
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_52750:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_52718;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      ldv_retval_0 = cx18_probe(cx18_pci_driver_group0, (struct pci_device_id const *)ldvarg4);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_21 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52721;
    case 1: ;
    if (ldv_state_variable_21 == 2) {
      cx18_remove(cx18_pci_driver_group0);
      ldv_state_variable_21 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52721;
    default:
    ldv_stop();
    }
    ldv_52721: ;
  } else {
  }
  goto ldv_52718;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_52718;
  case 3: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_52718;
  case 4: ;
  goto ldv_52718;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_52718;
  case 6: ;
  if (ldv_state_variable_18 != 0) {
    ldv_main_exported_18();
  } else {
  }
  goto ldv_52718;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      module_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_52732;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = module_start();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_v4l2_subdev_vbi_ops_5();
        ldv_state_variable_19 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_v4l2_subdev_tuner_ops_8();
        ldv_state_variable_15 = 1;
        ldv_initialize_v4l2_subdev_core_ops_15();
        ldv_state_variable_14 = 1;
        ldv_initialize_v4l2_file_operations_14();
        ldv_state_variable_20 = 1;
        ldv_state_variable_12 = 1;
        ldv_initialize_v4l2_ioctl_ops_12();
        ldv_state_variable_9 = 1;
        ldv_initialize_v4l2_subdev_core_ops_9();
        ldv_state_variable_3 = 1;
        ldv_state_variable_6 = 1;
        ldv_initialize_v4l2_subdev_video_ops_6();
        ldv_state_variable_13 = 1;
        ldv_videobuf_queue_ops_13();
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_state_variable_17 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_v4l2_subdev_audio_ops_7();
        ldv_state_variable_21 = 1;
        ldv_initialize_pci_driver_21();
        ldv_state_variable_11 = 1;
        ldv_initialize_cx2341x_handler_ops_11();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_52732;
    default:
    ldv_stop();
    }
    ldv_52732: ;
  } else {
  }
  goto ldv_52718;
  case 8: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_52718;
  case 9: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_52718;
  case 10: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_52718;
  case 11: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_52718;
  case 12: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_52718;
  case 13: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_52718;
  case 14: ;
  if (ldv_state_variable_20 != 0) {
    ldv_main_exported_20();
  } else {
  }
  goto ldv_52718;
  case 15: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_52718;
  case 16: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_52718;
  case 17: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_52718;
  case 18: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_52718;
  case 19: ;
  if (ldv_state_variable_19 != 0) {
    ldv_main_exported_19();
  } else {
  }
  goto ldv_52718;
  case 20: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_52718;
  case 21: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_52718;
  default:
  ldv_stop();
  }
  ldv_52718: ;
  goto ldv_52750;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static int ldv_request_irq_33(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_34(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_35(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
struct sk_buff *ldv_skb_clone_72(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_80(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_74(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_70(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_78(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_79(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_75(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_76(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_77(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
int cx18_get_input(struct cx18 *cx , u16 index , struct v4l2_input *input ) ;
int cx18_get_audio_input(struct cx18 *cx , u16 index , struct v4l2_audio *audio ) ;
static struct cx18_card_tuner_i2c cx18_i2c_std = {{65534U}, {67U, 65534U}, {97U, 96U, 65534U}};
static struct cx18_card_tuner_i2c cx18_i2c_nxp = {{65534U}, {66U, 67U, 65534U}, {97U, 96U, 65534U}};
static struct cx18_card const cx18_card_hvr1600_esmt =
     {0, (char *)"Hauppauge HVR-1600", (char *)"Simultaneous Digital and Analog TV capture supported\n",
    16973905U, 16U, 4U, 479U, {{1U, 0U, 7U}, {2U, 1U, 1296U}, {4U, 1U, 3U}, {3U, 2U,
                                                                             1568U},
                               {5U, 2U, 4U}}, {{1U, 8U, 17U}, {2U, 0U, 2U}, {3U, 0U,
                                                                             3U}},
    {1U, 0U, 4U}, (unsigned char)0, {12289U, 12289U}, {12289U, 0U, 10, 40, 1U}, {0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U},
    {{0ULL, 0}, {0ULL, 0}}, & cx18_i2c_std, {3U, 780U, 1143082626U, 8U, 0U, 0U}, 0};
static struct cx18_card const cx18_card_hvr1600_s5h1411 =
     {9, (char *)"Hauppauge HVR-1600", (char *)"Simultaneous Digital and Analog TV capture supported\n",
    16973905U, 16U, 4U, 479U, {{1U, 0U, 7U}, {2U, 1U, 1296U}, {4U, 1U, 3U}, {3U, 2U,
                                                                             1568U},
                               {5U, 2U, 4U}}, {{1U, 8U, 17U}, {2U, 0U, 2U}, {3U, 0U,
                                                                             3U}},
    {1U, 0U, 4U}, (unsigned char)0, {14337U, 14337U}, {14337U, 0U, 10, 40, 1U}, {0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U},
    {{0ULL, 0}, {0ULL, 0}}, & cx18_i2c_nxp, {3U, 780U, 1143082626U, 8U, 0U, 0U}, 0};
static struct cx18_card const cx18_card_hvr1600_samsung =
     {1, (char *)"Hauppauge HVR-1600 (Preproduction)", (char *)"Simultaneous Digital and Analog TV capture supported\n",
    16973905U, 16U, 4U, 479U, {{1U, 0U, 7U}, {2U, 1U, 1296U}, {4U, 1U, 3U}, {3U, 2U,
                                                                             1568U},
                               {5U, 2U, 4U}}, {{1U, 8U, 17U}, {2U, 0U, 2U}, {3U, 0U,
                                                                             3U}},
    {1U, 0U, 4U}, (unsigned char)0, {12289U, 12289U}, {12289U, 0U, 10, 40, 1U}, {0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U},
    {{0ULL, 0}, {0ULL, 0}}, & cx18_i2c_std, {3U, 780U, 589499251U, 8U, 0U, 2U}, 0};
static struct cx18_card_pci_info const cx18_pci_h900[2U] = { {23418U, 6235U, 57600U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_h900 =
     {2, (char *)"Compro VideoMate H900", (char *)"Analog TV capture supported\n", 16973905U,
    16U, 0U, 81U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 1U}}, {{1U, 5U, 0U}, {2U,
                                                                                 0U,
                                                                                 0U}},
    {1U, 0U, 0U}, 15U, {0U, 0U}, {0U, 0U, 0, 0, 0U}, {0U, 0U, 0U, 0U}, {{16777215ULL,
                                                                         71}}, & cx18_i2c_std,
    {327683U, 1875U, 607325828U, 31U, 0U, 0U}, (struct cx18_card_pci_info const *)(& cx18_pci_h900)};
static struct cx18_card_pci_info const cx18_pci_mpc718[2U] = { {23418U, 4779U, 1816U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_mpc718 =
     {3, (char *)"Yuan MPC718 MiniPCI DVB-T/Analog", (char *)"Experimenters needed for device to work well.\n\tTo help, mail the ivtv-devel list (www.ivtvdriver.org).\n",
    16973905U, 16U, 32U, 123U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 1U}, {3U,
                                                                              2U,
                                                                              2160U},
                                {5U, 2U, 6U}}, {{1U, 5U, 0U}, {2U, 0U, 1U}, {3U, 1U,
                                                                             1U}},
    {1U, 5U, 2U}, 0U, {3U, 1U}, {0U, 0U, 0, 0, 0U}, {3U, 1U, 3U, 1U}, {{16777215ULL,
                                                                        71}}, & cx18_i2c_std,
    {771U, 957U, 909248870U, 31U, 0U, 2U}, (struct cx18_card_pci_info const *)(& cx18_pci_mpc718)};
static struct cx18_card_pci_info const cx18_pci_gotview_dvd3[2U] = { {23418U, 22612U, 13123U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_gotview_dvd3 =
     {8, (char *)"GoTView PCI DVD3 Hybrid", (char *)"Experimenters needed for device to work well.\n\tTo help, mail the ivtv-devel list (www.ivtvdriver.org).\n",
    16973905U, 16U, 32U, 123U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 1U}, {3U,
                                                                              2U,
                                                                              2160U},
                                {5U, 2U, 6U}}, {{1U, 5U, 0U}, {2U, 0U, 1U}, {3U, 1U,
                                                                             1U}},
    {1U, 5U, 2U}, 0U, {3U, 1U}, {0U, 0U, 0, 0, 0U}, {3U, 1U, 2U, 1U}, {{16777215ULL,
                                                                        71}}, & cx18_i2c_std,
    {771U, 957U, 909248870U, 31U, 0U, 2U}, (struct cx18_card_pci_info const *)(& cx18_pci_gotview_dvd3)};
static struct cx18_card_pci_info const cx18_pci_cnxt_raptor_pal[2U] = { {23418U, 5361U, 9U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_cnxt_raptor_pal =
     {4, (char *)"Conexant Raptor PAL/SECAM", (char *)"Analog TV capture supported\n",
    16973905U, 16U, 32U, 49U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 1U}, {3U, 2U,
                                                                             2160U},
                               {5U, 2U, 6U}}, {{1U, 5U, 0U}, {2U, 0U, 1U}, {3U, 1U,
                                                                            1U}},
    {1U, 0U, 2U}, (unsigned char)0, {61442U, 4098U}, {0U, 0U, 0, 0, 0U}, {61442U,
                                                                          4098U, 8192U,
                                                                          16386U},
    {{16711935ULL, 38}}, & cx18_i2c_std, {328454U, 1875U, 857868627U, 9U, 0U, 0U},
    (struct cx18_card_pci_info const *)(& cx18_pci_cnxt_raptor_pal)};
static struct cx18_card_pci_info const cx18_pci_toshiba_qosmio_dvbt[2U] = { {23418U, 4473U, 272U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_toshiba_qosmio_dvbt =
     {5, (char *)"Toshiba Qosmio DVB-T/Analog", (char *)"Experimenters and photos needed for device to work well.\n\tTo help, mail the ivtv-devel list (www.ivtvdriver.org).\n",
    16973905U, 16U, 0U, 81U, {{1U, 0U, 6U}, {2U, 1U, 1072U}, {4U, 1U, 1U}}, {{1U,
                                                                              5U,
                                                                              0U},
                                                                             {2U,
                                                                              0U,
                                                                              1U}},
    {(unsigned char)0, 0U, (unsigned short)0}, 15U, {0U, 0U}, {0U, 0U, 0, 0, 0U},
    {0U, 0U, 0U, 0U}, {{16777215ULL, 71}}, & cx18_i2c_std, {514U, 955U, 858917475U,
                                                            10U, 0U, 66U}, (struct cx18_card_pci_info const *)(& cx18_pci_toshiba_qosmio_dvbt)};
static struct cx18_card_pci_info const cx18_pci_leadtek_pvr2100[2U] = { {23418U, 4221U, 28455U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_leadtek_pvr2100 =
     {6, (char *)"Leadtek WinFast PVR2100", (char *)"Experimenters and photos needed for device to work well.\n\tTo help, mail the ivtv-devel list (www.ivtvdriver.org).\n",
    16973905U, 16U, 32U, 113U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 7U}, {6U,
                                                                              1U,
                                                                              8785920U}},
    {{1U, 5U, 0U}, {2U, 0U, 1U}}, {1U, 5U, 2U}, 1U, {7U, 6U}, {0U, 0U, 0, 0, 0U},
    {7U, 6U, 2U, 2U}, {{16777215ULL, 71}}, & cx18_i2c_std, {771U, 955U, 606211715U,
                                                            31U, 0U, 2U}, (struct cx18_card_pci_info const *)(& cx18_pci_leadtek_pvr2100)};
static struct cx18_card_pci_info const cx18_pci_leadtek_dvr3100h[2U] = { {23418U, 4221U, 26256U},
        {0U, 0U, 0U}};
static struct cx18_card const cx18_card_leadtek_dvr3100h =
     {7, (char *)"Leadtek WinFast DVR3100 H", (char *)"Simultaneous DVB-T and Analog capture supported,\n\texcept when capturing Analog from the antenna input.\n",
    16973905U, 16U, 32U, 121U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 7U}, {6U,
                                                                              1U,
                                                                              8785920U}},
    {{1U, 5U, 0U}, {2U, 0U, 1U}}, {1U, 5U, 2U}, 1U, {7U, 6U}, {0U, 0U, 0, 0, 0U},
    {7U, 6U, 2U, 2U}, {{16777215ULL, 71}}, & cx18_i2c_std, {771U, 955U, 606211715U,
                                                            31U, 0U, 2U}, (struct cx18_card_pci_info const *)(& cx18_pci_leadtek_dvr3100h)};
static struct cx18_card const *cx18_card_list[10U] =
  { & cx18_card_hvr1600_esmt, & cx18_card_hvr1600_samsung, & cx18_card_h900, & cx18_card_mpc718,
        & cx18_card_cnxt_raptor_pal, & cx18_card_toshiba_qosmio_dvbt, & cx18_card_leadtek_pvr2100, & cx18_card_leadtek_dvr3100h,
        & cx18_card_gotview_dvd3, & cx18_card_hvr1600_s5h1411};
struct cx18_card const *cx18_get_card(u16 index )
{
  {
  if ((unsigned int )index > 9U) {
    return ((struct cx18_card const *)0);
  } else {
  }
  return (cx18_card_list[(int )index]);
}
}
int cx18_get_input(struct cx18 *cx , u16 index , struct v4l2_input *input )
{
  struct cx18_card_video_input const *card_input ;
  char const *input_strs[6U] ;
  {
  card_input = (struct cx18_card_video_input const *)(& (cx->card)->video_inputs) + (unsigned long )index;
  input_strs[0] = "Tuner 1";
  input_strs[1] = "S-Video 1";
  input_strs[2] = "S-Video 2";
  input_strs[3] = "Composite 1";
  input_strs[4] = "Composite 2";
  input_strs[5] = "Component 1";
  if ((int )((unsigned short )cx->nof_inputs) <= (int )index) {
    return (-22);
  } else {
  }
  input->index = (__u32 )index;
  strlcpy((char *)(& input->name), input_strs[(int )card_input->video_type + -1],
          32UL);
  input->type = (unsigned int )((unsigned char )card_input->video_type) == 1U ? 1U : 2U;
  input->audioset = (__u32 )((1 << (int )cx->nof_audio_inputs) + -1);
  input->std = input->type == 1U ? cx->tuner_std : 16777215ULL;
  return (0);
}
}
int cx18_get_audio_input(struct cx18 *cx , u16 index , struct v4l2_audio *audio )
{
  struct cx18_card_audio_input const *aud_input ;
  char const *input_strs[3U] ;
  {
  aud_input = (struct cx18_card_audio_input const *)(& (cx->card)->audio_inputs) + (unsigned long )index;
  input_strs[0] = "Tuner 1";
  input_strs[1] = "Line In 1";
  input_strs[2] = "Line In 2";
  memset((void *)audio, 0, 52UL);
  if ((int )((unsigned short )cx->nof_audio_inputs) <= (int )index) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& audio->name), input_strs[(int )aud_input->audio_type + -1], 32UL);
  audio->index = (__u32 )index;
  audio->capability = 1U;
  return (0);
}
}
int ldv_pskb_expand_head_70(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_72(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_74(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_75(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_76(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_77(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_78(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_79(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_80(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern int sprintf(char * , char const * , ...) ;
extern size_t strlen(char const * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_91(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_95(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void __const_udelay(unsigned long ) ;
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern struct i2c_client *i2c_new_probed_device(struct i2c_adapter * , struct i2c_board_info * ,
                                                unsigned short const * , int (*)(struct i2c_adapter * ,
                                                                                   unsigned short ) ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern void i2c_del_adapter(struct i2c_adapter * ) ;
extern int i2c_bit_add_bus(struct i2c_adapter * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
struct sk_buff *ldv_skb_clone_114(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_122(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_116(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_112(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_120(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_121(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_117(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_118(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_119(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void cx18_writel_noretry(struct cx18 *cx , u32 val , void *addr )
{
  {
  writel(val, (void volatile *)addr);
  return;
}
}
__inline static void cx18_writel(struct cx18 *cx , u32 val , void *addr )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_51294;
  ldv_51293:
  cx18_writel_noretry(cx, val, addr);
  tmp = cx18_readl(cx, (void const *)addr);
  if (tmp == val) {
    goto ldv_51292;
  } else {
  }
  i = i + 1;
  ldv_51294: ;
  if (i <= 9) {
    goto ldv_51293;
  } else {
  }
  ldv_51292: ;
  return;
}
}
__inline static void cx18_writel_expect(struct cx18 *cx , u32 val , void *addr , u32 eval ,
                                        u32 mask )
{
  int i ;
  u32 r ;
  {
  eval = eval & mask;
  i = 0;
  goto ldv_51307;
  ldv_51306:
  cx18_writel_noretry(cx, val, addr);
  r = cx18_readl(cx, (void const *)addr);
  if (r == 4294967295U && eval != 4294967295U) {
    goto ldv_51304;
  } else {
  }
  if ((r & mask) == eval) {
    goto ldv_51305;
  } else {
  }
  ldv_51304:
  i = i + 1;
  ldv_51307: ;
  if (i <= 9) {
    goto ldv_51306;
  } else {
  }
  ldv_51305: ;
  return;
}
}
__inline static void cx18_write_reg(struct cx18 *cx , u32 val , u32 reg )
{
  {
  cx18_writel(cx, val, cx->reg_mem + (unsigned long )reg);
  return;
}
}
__inline static void cx18_write_reg_expect(struct cx18 *cx , u32 val , u32 reg , u32 eval ,
                                           u32 mask )
{
  {
  cx18_writel_expect(cx, val, cx->reg_mem + (unsigned long )reg, eval, mask);
  return;
}
}
static u8 const hw_addrs[9U] =
  { 0U, 0U, 76U, 0U,
        0U, 0U, 0U, 112U,
        113U};
static u8 const hw_bus[9U] =
  { 1U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static char const * const hw_devicenames[9U] =
  { "tuner", "tveeprom", "cs5345", "cx23418_DTV",
        "cx23418_AV", "gpio_mux", "gpio_reset_ctrl", "ir_tx_z8f0811_haup",
        "ir_rx_z8f0811_haup"};
static int cx18_i2c_new_ir(struct cx18 *cx , struct i2c_adapter *adap , u32 hw , char const *type ,
                           u8 addr )
{
  struct i2c_board_info info ;
  struct IR_i2c_init_data *init_data ;
  unsigned short addr_list[2U] ;
  struct i2c_client *tmp ;
  {
  init_data = & cx->ir_i2c_init_data;
  addr_list[0] = (unsigned short )addr;
  addr_list[1] = 65534U;
  memset((void *)(& info), 0, 64UL);
  strlcpy((char *)(& info.type), type, 20UL);
  switch (hw) {
  case 256U:
  init_data->ir_codes = (char *)"rc-hauppauge";
  init_data->internal_get_key_func = 5;
  init_data->type = 8ULL;
  init_data->name = cx->card_name;
  info.platform_data = (void *)init_data;
  goto ldv_51513;
  }
  ldv_51513:
  tmp = i2c_new_probed_device(adap, & info, (unsigned short const *)(& addr_list),
                              (int (*)(struct i2c_adapter * , unsigned short ))0);
  return ((unsigned long )tmp == (unsigned long )((struct i2c_client *)0) ? -1 : 0);
}
}
int cx18_i2c_register(struct cx18 *cx , unsigned int idx )
{
  struct v4l2_subdev *sd ;
  int bus ;
  struct i2c_adapter *adap ;
  char const *type ;
  u32 hw ;
  int tmp ;
  {
  bus = (int )hw_bus[idx];
  adap = (struct i2c_adapter *)(& cx->i2c_adap) + (unsigned long )bus;
  type = hw_devicenames[idx];
  hw = (u32 )(1 << (int )idx);
  if (hw == 1U) {
    sd = v4l2_i2c_new_subdev(& cx->v4l2_dev, adap, type, 0, (unsigned short const *)(& (cx->card_i2c)->radio));
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      sd->grp_id = hw;
    } else {
    }
    sd = v4l2_i2c_new_subdev(& cx->v4l2_dev, adap, type, 0, (unsigned short const *)(& (cx->card_i2c)->demod));
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      sd->grp_id = hw;
    } else {
    }
    sd = v4l2_i2c_new_subdev(& cx->v4l2_dev, adap, type, 0, (unsigned short const *)(& (cx->card_i2c)->tv));
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      sd->grp_id = hw;
    } else {
    }
    return ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0) ? 0 : -1);
  } else {
  }
  if ((hw & 384U) != 0U) {
    tmp = cx18_i2c_new_ir(cx, adap, hw, type, (int )hw_addrs[idx]);
    return (tmp);
  } else {
  }
  if ((unsigned int )((unsigned char )hw_addrs[idx]) == 0U) {
    return (-1);
  } else {
  }
  sd = v4l2_i2c_new_subdev(& cx->v4l2_dev, adap, type, (int )hw_addrs[idx], (unsigned short const *)0U);
  if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
    sd->grp_id = hw;
  } else {
  }
  return ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0) ? 0 : -1);
}
}
struct v4l2_subdev *cx18_find_hw(struct cx18 *cx , u32 hw )
{
  struct v4l2_subdev *result ;
  struct v4l2_subdev *sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  result = (struct v4l2_subdev *)0;
  spin_lock(& cx->v4l2_dev.lock);
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51535;
  ldv_51534: ;
  if (sd->grp_id == hw) {
    result = sd;
    goto ldv_51533;
  } else {
  }
  __mptr___0 = (struct list_head const *)sd->list.next;
  sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51535: ;
  if ((unsigned long )(& sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51534;
  } else {
  }
  ldv_51533:
  spin_unlock(& cx->v4l2_dev.lock);
  return (result);
}
}
static void cx18_setscl(void *data , int state )
{
  struct cx18 *cx ;
  int bus_index ;
  u32 addr ;
  u32 r ;
  u32 tmp ;
  {
  cx = ((struct cx18_i2c_algo_callback_data *)data)->cx;
  bus_index = ((struct cx18_i2c_algo_callback_data *)data)->bus_index;
  addr = bus_index != 0 ? 15880448U : 15814656U;
  tmp = cx18_read_reg(cx, addr);
  r = tmp;
  if (state != 0) {
    cx18_write_reg(cx, r | 1U, addr);
  } else {
    cx18_write_reg(cx, r & 4294967294U, addr);
  }
  return;
}
}
static void cx18_setsda(void *data , int state )
{
  struct cx18 *cx ;
  int bus_index ;
  u32 addr ;
  u32 r ;
  u32 tmp ;
  {
  cx = ((struct cx18_i2c_algo_callback_data *)data)->cx;
  bus_index = ((struct cx18_i2c_algo_callback_data *)data)->bus_index;
  addr = bus_index != 0 ? 15880448U : 15814656U;
  tmp = cx18_read_reg(cx, addr);
  r = tmp;
  if (state != 0) {
    cx18_write_reg(cx, r | 2U, addr);
  } else {
    cx18_write_reg(cx, r & 4294967293U, addr);
  }
  return;
}
}
static int cx18_getscl(void *data )
{
  struct cx18 *cx ;
  int bus_index ;
  u32 addr ;
  u32 tmp ;
  {
  cx = ((struct cx18_i2c_algo_callback_data *)data)->cx;
  bus_index = ((struct cx18_i2c_algo_callback_data *)data)->bus_index;
  addr = bus_index != 0 ? 15880456U : 15814664U;
  tmp = cx18_read_reg(cx, addr);
  return ((int )tmp & 4);
}
}
static int cx18_getsda(void *data )
{
  struct cx18 *cx ;
  int bus_index ;
  u32 addr ;
  u32 tmp ;
  {
  cx = ((struct cx18_i2c_algo_callback_data *)data)->cx;
  bus_index = ((struct cx18_i2c_algo_callback_data *)data)->bus_index;
  addr = bus_index != 0 ? 15880456U : 15814664U;
  tmp = cx18_read_reg(cx, addr);
  return ((int )tmp & 8);
}
}
static struct i2c_adapter cx18_i2c_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)0, (void *)0, {{{{0U}}, 0U,
                                                                         0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                        {0}, 0, 0,
                                                                        0, 0, 0, 0,
                                                                        0}, 0, 0,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0,
            {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0,
                                                  (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
                                                  (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U,
                                                                   0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                                {0, 0}}}, 0, (_Bool)0,
                                                  (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL,
                                                             0, 0, 0, {(char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0},
                                                             {0, {0, 0}, 0, 0, 0UL}},
                                                  0UL, {{0L}, {0, 0}, 0, {0, {0, 0},
                                                                          0, 0, 0UL}},
                                                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                   {0, 0}}, {0}, {0}, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL,
                                                  0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL,
     0, {0, 0}, 0, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0,
                                                                     0, 0UL}}}}, {0,
                                                                                  0},
     {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'c', 'x', '1', '8',
                                                              ' ', 'i', '2', 'c',
                                                              ' ', 'd', 'r', 'i',
                                                              'v', 'e', 'r', '\000'},
    {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0U}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                      {0, 0}, 0, 0,
                                                                      0, {0, {0, 0},
                                                                          0, 0, 0UL}},
    {0, 0}, 0};
static struct i2c_algo_bit_data cx18_i2c_algo_template =
     {0, & cx18_setsda, & cx18_setscl, & cx18_getsda, & cx18_getscl, 0, 0, 5, 500};
int init_cx18_i2c(struct cx18 *cx )
{
  int i ;
  int err ;
  size_t tmp ;
  u32 tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  unsigned long __ms___0 ;
  unsigned long tmp___2 ;
  unsigned long __ms___1 ;
  unsigned long tmp___3 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((cx18_debug & 64) != 0) {
    printk("\016%s:  i2c: i2c init\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  i = 0;
  goto ldv_51572;
  ldv_51571:
  cx->i2c_algo[i] = cx18_i2c_algo_template;
  cx->i2c_algo_cb_data[i].cx = cx;
  cx->i2c_algo_cb_data[i].bus_index = i;
  cx->i2c_algo[i].data = (void *)(& cx->i2c_algo_cb_data) + (unsigned long )i;
  cx->i2c_adap[i] = cx18_i2c_adap_template;
  cx->i2c_adap[i].algo_data = (void *)(& cx->i2c_algo) + (unsigned long )i;
  tmp = strlen((char const *)(& cx->i2c_adap[i].name));
  sprintf((char *)(& cx->i2c_adap[i].name) + tmp, " #%d-%d", cx->instance, i);
  i2c_set_adapdata((struct i2c_adapter *)(& cx->i2c_adap) + (unsigned long )i, (void *)(& cx->v4l2_dev));
  cx->i2c_adap[i].dev.parent = & (cx->pci_dev)->dev;
  i = i + 1;
  ldv_51572: ;
  if (i <= 1) {
    goto ldv_51571;
  } else {
  }
  tmp___0 = cx18_read_reg(cx, 15880448U);
  if (tmp___0 != 245807U) {
    cx18_write_reg_expect(cx, 268435456U, 13045764U, 0U, 268439552U);
    cx18_write_reg_expect(cx, 268439552U, 13045796U, 4096U, 268439552U);
  } else {
  }
  cx18_write_reg_expect(cx, 12582912U, 13041692U, 0U, 12583104U);
  __ms = 10UL;
  goto ldv_51576;
  ldv_51575:
  __const_udelay(4295000UL);
  ldv_51576:
  tmp___1 = __ms;
  __ms = __ms - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_51575;
  } else {
  }
  cx18_write_reg_expect(cx, 12583104U, 13041692U, 192U, 12583104U);
  __ms___0 = 10UL;
  goto ldv_51580;
  ldv_51579:
  __const_udelay(4295000UL);
  ldv_51580:
  tmp___2 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___2 != 0UL) {
    goto ldv_51579;
  } else {
  }
  cx18_write_reg_expect(cx, 12582912U, 13041692U, 0U, 12583104U);
  __ms___1 = 10UL;
  goto ldv_51584;
  ldv_51583:
  __const_udelay(4295000UL);
  ldv_51584:
  tmp___3 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___3 != 0UL) {
    goto ldv_51583;
  } else {
  }
  cx18_write_reg(cx, 12582912U, 13054152U);
  cx18_write_reg_expect(cx, 12582912U, 13054148U, 4282384383U, 12582912U);
  cx18_write_reg(cx, 138251U, 15814656U);
  cx18_setscl((void *)(& cx->i2c_algo_cb_data), 1);
  cx18_setsda((void *)(& cx->i2c_algo_cb_data), 1);
  cx18_write_reg(cx, 138251U, 15880448U);
  cx18_setscl((void *)(& cx->i2c_algo_cb_data) + 1U, 1);
  cx18_setsda((void *)(& cx->i2c_algo_cb_data) + 1U, 1);
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51592;
  ldv_51591: ;
  if (((__sd->grp_id & 64U) != 0U && (unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0)) && (unsigned long )((__sd->ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                         u32 ))0)) {
    (*(((__sd->ops)->core)->reset))(__sd, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51592: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51591;
  } else {
  }
  err = i2c_bit_add_bus((struct i2c_adapter *)(& cx->i2c_adap));
  if (err != 0) {
    goto err;
  } else {
  }
  err = i2c_bit_add_bus((struct i2c_adapter *)(& cx->i2c_adap) + 1UL);
  if (err != 0) {
    goto err_del_bus_0;
  } else {
  }
  return (0);
  err_del_bus_0:
  i2c_del_adapter((struct i2c_adapter *)(& cx->i2c_adap));
  err: ;
  return (err);
}
}
void exit_cx18_i2c(struct cx18 *cx )
{
  int i ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  if ((cx18_debug & 64) != 0) {
    printk("\016%s:  i2c: i2c exit\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  tmp = cx18_read_reg(cx, 15814656U);
  cx18_write_reg(cx, tmp | 4U, 15814656U);
  tmp___0 = cx18_read_reg(cx, 15880448U);
  cx18_write_reg(cx, tmp___0 | 4U, 15880448U);
  i = 0;
  goto ldv_51601;
  ldv_51600:
  i2c_del_adapter((struct i2c_adapter *)(& cx->i2c_adap) + (unsigned long )i);
  i = i + 1;
  ldv_51601: ;
  if (i <= 1) {
    goto ldv_51600;
  } else {
  }
  return;
}
}
void ldv_main_exported_20(void)
{
  void *ldvarg99 ;
  void *tmp ;
  void *ldvarg96 ;
  void *tmp___0 ;
  void *ldvarg94 ;
  void *tmp___1 ;
  int ldvarg97 ;
  int tmp___2 ;
  int ldvarg95 ;
  int tmp___3 ;
  void *ldvarg98 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg99 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg96 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg94 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg97 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  ldvarg95 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg98 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_20 == 1) {
    cx18_getscl(ldvarg99);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_51613;
  case 1: ;
  if (ldv_state_variable_20 == 1) {
    cx18_getsda(ldvarg98);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_51613;
  case 2: ;
  if (ldv_state_variable_20 == 1) {
    cx18_setsda(ldvarg96, ldvarg97);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_51613;
  case 3: ;
  if (ldv_state_variable_20 == 1) {
    cx18_setscl(ldvarg94, ldvarg95);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_51613;
  default:
  ldv_stop();
  }
  ldv_51613: ;
  return;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_91(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_95(lock);
  return;
}
}
int ldv_pskb_expand_head_112(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_114(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_116(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_117(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_118(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_119(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_120(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_121(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_122(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static unsigned int __readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)));
  return (ret);
}
}
__inline static void __writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)));
  return;
}
}
int cx18_vapi_result(struct cx18 *cx , u32 *data , u32 cmd , int args , ...) ;
struct sk_buff *ldv_skb_clone_156(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_164(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_158(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_154(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_162(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_163(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_159(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_160(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_161(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static u32 cx18_raw_readl(struct cx18 *cx , void const *addr )
{
  unsigned int tmp ;
  {
  tmp = __readl((void const volatile *)addr);
  return (tmp);
}
}
__inline static void cx18_raw_writel_noretry(struct cx18 *cx , u32 val , void *addr )
{
  {
  __writel(val, (void volatile *)addr);
  return;
}
}
__inline static void cx18_raw_writel(struct cx18 *cx , u32 val , void *addr )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_51276;
  ldv_51275:
  cx18_raw_writel_noretry(cx, val, addr);
  tmp = cx18_raw_readl(cx, (void const *)addr);
  if (tmp == val) {
    goto ldv_51274;
  } else {
  }
  i = i + 1;
  ldv_51276: ;
  if (i <= 9) {
    goto ldv_51275;
  } else {
  }
  ldv_51274: ;
  return;
}
}
void cx18_sw1_irq_enable(struct cx18 *cx , u32 val ) ;
void cx18_sw2_irq_enable(struct cx18 *cx , u32 val ) ;
void cx18_sw2_irq_disable_cpu(struct cx18 *cx , u32 val ) ;
void cx18_setup_page(struct cx18 *cx , u32 addr ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
static int load_cpu_fw_direct(char const *fn , u8 *mem , struct cx18 *cx )
{
  struct firmware const *fw ;
  int i ;
  int j ;
  unsigned int size ;
  u32 *dst ;
  u32 const *src ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  fw = (struct firmware const *)0;
  dst = (u32 *)mem;
  tmp = request_firmware(& fw, fn, & (cx->pci_dev)->dev);
  if (tmp != 0) {
    printk("\v%s: Unable to open firmware %s\n", (char *)(& cx->v4l2_dev.name), fn);
    printk("\v%s: Did you put the firmware in the hotplug firmware directory?\n",
           (char *)(& cx->v4l2_dev.name));
    return (-12);
  } else {
  }
  src = (u32 const *)fw->data;
  i = 0;
  goto ldv_51665;
  ldv_51664:
  cx18_setup_page(cx, (u32 )i);
  j = i;
  goto ldv_51662;
  ldv_51661:
  cx18_raw_writel(cx, *src, (void *)dst);
  tmp___0 = cx18_raw_readl(cx, (void const *)dst);
  if (tmp___0 != (u32 )*src) {
    printk("\v%s: Mismatch at offset %x\n", (char *)(& cx->v4l2_dev.name), i);
    release_firmware(fw);
    cx18_setup_page(cx, 0U);
    return (-5);
  } else {
  }
  dst = dst + 1;
  src = src + 1;
  j = j + 4;
  ldv_51662: ;
  if ((unsigned long )j < (unsigned long )fw->size && i + 4096 > j) {
    goto ldv_51661;
  } else {
  }
  i = i + 4096;
  ldv_51665: ;
  if ((unsigned long )i < (unsigned long )fw->size) {
    goto ldv_51664;
  } else {
  }
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& cx->i_flags));
  if (tmp___1 == 0) {
    printk("\016%s: loaded %s firmware (%zd bytes)\n", (char *)(& cx->v4l2_dev.name),
           fn, fw->size);
  } else {
  }
  size = (unsigned int )fw->size;
  release_firmware(fw);
  cx18_setup_page(cx, 14417920U);
  return ((int )size);
}
}
static int load_apu_fw_direct(char const *fn , u8 *dst , struct cx18 *cx , u32 *entry_addr )
{
  struct firmware const *fw ;
  int i ;
  int j ;
  unsigned int size ;
  u32 const *src ;
  struct cx18_apu_rom_seghdr seghdr ;
  u8 const *vers ;
  u32 offset ;
  u32 apu_version ;
  int sz ;
  int tmp ;
  u32 const *shptr ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  fw = (struct firmware const *)0;
  offset = 0U;
  apu_version = 0U;
  tmp = request_firmware(& fw, fn, & (cx->pci_dev)->dev);
  if (tmp != 0) {
    printk("\v%s: unable to open firmware %s\n", (char *)(& cx->v4l2_dev.name), fn);
    printk("\v%s: did you put the firmware in the hotplug firmware directory?\n",
           (char *)(& cx->v4l2_dev.name));
    cx18_setup_page(cx, 0U);
    return (-12);
  } else {
  }
  *entry_addr = 0U;
  src = (u32 const *)fw->data;
  vers = fw->data + 16UL;
  sz = (int )fw->size;
  apu_version = (u32 )((((int )*vers << 24) | ((int )*(vers + 4UL) << 16)) | (int )*(vers + 32UL));
  goto ldv_51684;
  ldv_51692:
  shptr = src + (unsigned long )(offset / 4U);
  seghdr.sync1 = *shptr;
  seghdr.sync2 = *(shptr + 1UL);
  seghdr.addr = *(shptr + 2UL);
  seghdr.size = *(shptr + 3UL);
  offset = offset + 16U;
  if (seghdr.sync1 != 1835492691U || seghdr.sync2 != 1919182152U) {
    offset = seghdr.size + offset;
    goto ldv_51684;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: load segment %x-%x\n", (char *)(& cx->v4l2_dev.name), seghdr.addr,
           (seghdr.addr + seghdr.size) - 1U);
  } else {
  }
  if (*entry_addr == 0U) {
    *entry_addr = seghdr.addr;
  } else {
  }
  if (seghdr.size + offset > (u32 )sz) {
    goto ldv_51685;
  } else {
  }
  i = 0;
  goto ldv_51690;
  ldv_51689:
  cx18_setup_page(cx, seghdr.addr + (u32 )i);
  j = i;
  goto ldv_51687;
  ldv_51686:
  cx18_raw_writel(cx, *(src + (unsigned long )((offset + (u32 )j) / 4U)), (void *)(dst + ((unsigned long )seghdr.addr + (unsigned long )j)));
  tmp___0 = cx18_raw_readl(cx, (void const *)(dst + ((unsigned long )seghdr.addr + (unsigned long )j)));
  if (tmp___0 != (u32 )*(src + (unsigned long )((offset + (u32 )j) / 4U))) {
    printk("\v%s: Mismatch at offset %x\n", (char *)(& cx->v4l2_dev.name), offset + (u32 )j);
    release_firmware(fw);
    cx18_setup_page(cx, 0U);
    return (-5);
  } else {
  }
  j = j + 4;
  ldv_51687: ;
  if ((u32 )j < seghdr.size && i + 4096 > j) {
    goto ldv_51686;
  } else {
  }
  i = i + 4096;
  ldv_51690: ;
  if ((u32 )i < seghdr.size) {
    goto ldv_51689;
  } else {
  }
  offset = seghdr.size + offset;
  ldv_51684: ;
  if ((unsigned long )offset + 16UL < (unsigned long )fw->size) {
    goto ldv_51692;
  } else {
  }
  ldv_51685:
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& cx->i_flags));
  if (tmp___1 == 0) {
    printk("\016%s: loaded %s firmware V%08x (%zd bytes)\n", (char *)(& cx->v4l2_dev.name),
           fn, apu_version, fw->size);
  } else {
  }
  size = (unsigned int )fw->size;
  release_firmware(fw);
  cx18_setup_page(cx, 0U);
  return ((int )size);
}
}
void cx18_halt_firmware(struct cx18 *cx )
{
  {
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Preparing for firmware halt.\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  cx18_write_reg_expect(cx, 983055U, 13041680U, 15U, 983055U);
  cx18_write_reg_expect(cx, 131074U, 13074720U, 2U, 131074U);
  return;
}
}
void cx18_init_power(struct cx18 *cx , int lowpwr )
{
  {
  cx18_write_reg(cx, 8U, 13074568U);
  cx18_write_reg_expect(cx, 131072U, 13074720U, 0U, 131074U);
  cx18_write_reg(cx, lowpwr != 0 ? 13U : 17U, 13074432U);
  cx18_write_reg(cx, lowpwr != 0 ? 32489271U : 3728343U, 13074436U);
  cx18_write_reg(cx, 2U, 13074440U);
  cx18_write_reg(cx, 1U, 13074444U);
  cx18_write_reg(cx, 4U, 13074448U);
  cx18_write_reg(cx, lowpwr != 0 ? 13U : 12U, 13074452U);
  cx18_write_reg(cx, lowpwr != 0 ? 3195716U : 19174015U, 13074456U);
  cx18_write_reg(cx, 3U, 13074460U);
  cx18_write_reg(cx, 15U, 13074496U);
  cx18_write_reg(cx, 2876158U, 13074500U);
  cx18_write_reg(cx, 8U, 13074504U);
  if (lowpwr != 0) {
    cx18_write_reg_expect(cx, 4294901792U, 13045760U, 32U, 4294967295U);
    cx18_write_reg_expect(cx, 4294901764U, 13045764U, 4U, 4294967295U);
  } else {
    cx18_write_reg_expect(cx, 393220U, 13045760U, 4U, 393222U);
    cx18_write_reg_expect(cx, 393222U, 13045764U, 6U, 393222U);
  }
  cx18_write_reg_expect(cx, 4294901762U, 13045768U, 2U, 4294967295U);
  cx18_write_reg_expect(cx, 4294902020U, 13045772U, 260U, 4294967295U);
  cx18_write_reg_expect(cx, 4294938662U, 13045792U, 36902U, 4294967295U);
  cx18_write_reg_expect(cx, 4294914309U, 13045796U, 12549U, 4294967295U);
  return;
}
}
void cx18_init_memory(struct cx18 *cx )
{
  {
  cx18_msleep_timeout(10U, 0);
  cx18_write_reg_expect(cx, 65536U, 13041684U, 0U, 65537U);
  cx18_msleep_timeout(10U, 0);
  cx18_write_reg(cx, (cx->card)->ddr.chip_config, 13107204U);
  cx18_msleep_timeout(10U, 0);
  cx18_write_reg(cx, (cx->card)->ddr.refresh, 13107208U);
  cx18_write_reg(cx, (cx->card)->ddr.timing1, 13107212U);
  cx18_write_reg(cx, (cx->card)->ddr.timing2, 13107216U);
  cx18_msleep_timeout(10U, 0);
  cx18_write_reg(cx, (cx->card)->ddr.tune_lane, 13107272U);
  cx18_write_reg(cx, (cx->card)->ddr.initial_emrs, 13107284U);
  cx18_msleep_timeout(10U, 0);
  cx18_write_reg_expect(cx, 131072U, 13041684U, 0U, 131074U);
  cx18_msleep_timeout(10U, 0);
  cx18_write_reg(cx, 16U, 13107228U);
  cx18_write_reg_expect(cx, 65537U, 13049892U, 1U, 65537U);
  cx18_write_reg(cx, 72U, 13107356U);
  cx18_write_reg(cx, 917504U, 13108476U);
  cx18_write_reg(cx, 257U, 13173000U);
  cx18_write_reg(cx, 257U, 13173028U);
  cx18_write_reg(cx, 257U, 13173012U);
  cx18_write_reg(cx, 257U, 13173016U);
  cx18_write_reg(cx, 257U, 13173020U);
  cx18_write_reg(cx, 257U, 13173032U);
  cx18_write_reg(cx, 257U, 13173040U);
  cx18_write_reg(cx, 257U, 13173044U);
  cx18_write_reg(cx, 257U, 13173036U);
  cx18_write_reg(cx, 257U, 13173048U);
  return;
}
}
int cx18_firmware_init(struct cx18 *cx )
{
  u32 fw_entry_addr ;
  int sz ;
  int retries ;
  u32 api_args[6U] ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  cx18_write_reg(cx, 5U, 13631564U);
  cx18_write_reg_expect(cx, 983055U, 13041680U, 15U, 983055U);
  cx18_msleep_timeout(1U, 0);
  tmp = cx18_read_reg(cx, 13041680U);
  if ((tmp & 8U) == 0U) {
    printk("\v%s: %s: couldn\'t stop CPU to load firmware\n", (char *)(& cx->v4l2_dev.name),
           "cx18_firmware_init");
    return (-5);
  } else {
  }
  cx18_sw1_irq_enable(cx, 196608U);
  cx18_sw2_irq_enable(cx, 136U);
  sz = load_cpu_fw_direct("v4l-cx23418-cpu.fw", (u8 *)cx->enc_mem, cx);
  if (sz <= 0) {
    return (sz);
  } else {
  }
  cx18_init_scb(cx);
  fw_entry_addr = 0U;
  sz = load_apu_fw_direct("v4l-cx23418-apu.fw", (u8 *)cx->enc_mem, cx, & fw_entry_addr);
  if (sz <= 0) {
    return (sz);
  } else {
  }
  cx18_write_reg_expect(cx, 524288U, 13041680U, 0U, 524296U);
  retries = 0;
  goto ldv_51712;
  ldv_51711:
  cx18_msleep_timeout(10U, 0);
  retries = retries + 1;
  ldv_51712: ;
  if (retries <= 49) {
    tmp___0 = cx18_read_reg(cx, 13041680U);
    if ((int )tmp___0 & 1) {
      goto ldv_51711;
    } else {
      goto ldv_51713;
    }
  } else {
  }
  ldv_51713:
  cx18_msleep_timeout(200U, 0);
  if (retries == 50) {
    tmp___1 = cx18_read_reg(cx, 13041680U);
    if ((int )tmp___1 & 1) {
      printk("\v%s: Could not start the CPU\n", (char *)(& cx->v4l2_dev.name));
      return (-5);
    } else {
    }
  } else {
  }
  cx18_sw2_irq_disable_cpu(cx, 136U);
  sz = cx18_vapi_result(cx, (u32 *)(& api_args), 536870915U, 1, 0);
  if (sz < 0) {
    return (sz);
  } else {
  }
  cx18_write_reg_expect(cx, 335549440U, 13074704U, 5120U, 335549440U);
  return (0);
}
}
int ldv_pskb_expand_head_154(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_156(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_158(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_159(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_160(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_161(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_162(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_163(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_164(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern u32 __VERIFIER_nondet_u32(void) ;
extern long schedule_timeout_uninterruptible(long ) ;
__inline static void v4l2_set_subdevdata(struct v4l2_subdev *sd , void *p )
{
  {
  sd->dev_priv = p;
  return;
}
}
__inline static void *v4l2_get_subdevdata(struct v4l2_subdev const *sd )
{
  {
  return ((void *)sd->dev_priv);
}
}
extern void v4l2_subdev_init(struct v4l2_subdev * , struct v4l2_subdev_ops const * ) ;
extern int v4l2_device_register_subdev(struct v4l2_device * , struct v4l2_subdev * ) ;
struct sk_buff *ldv_skb_clone_198(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_206(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_200(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_196(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_204(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_205(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_201(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_202(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_203(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
void cx18_reset_ir_gpio(void *data ) ;
static void gpio_write(struct cx18 *cx )
{
  u32 dir_lo ;
  u32 val_lo ;
  u32 dir_hi ;
  u32 val_hi ;
  {
  dir_lo = cx->gpio_dir & 65535U;
  val_lo = cx->gpio_val & 65535U;
  dir_hi = cx->gpio_dir >> 16;
  val_hi = cx->gpio_val >> 16;
  cx18_write_reg_expect(cx, dir_lo << 16, 13074696U, ~ dir_lo, dir_lo);
  cx18_write_reg_expect(cx, (dir_lo << 16) | val_lo, 13074688U, val_lo, dir_lo);
  cx18_write_reg_expect(cx, dir_hi << 16, 13074700U, ~ dir_hi, dir_hi);
  cx18_write_reg_expect(cx, (dir_hi << 16) | val_hi, 13074692U, val_hi, dir_hi);
  return;
}
}
static void gpio_update(struct cx18 *cx , u32 mask , u32 data )
{
  {
  if (mask == 0U) {
    return;
  } else {
  }
  mutex_lock_nested(& cx->gpio_lock, 0U);
  cx->gpio_val = (cx->gpio_val & ~ mask) | (data & mask);
  gpio_write(cx);
  mutex_unlock(& cx->gpio_lock);
  return;
}
}
static void gpio_reset_seq(struct cx18 *cx , u32 active_lo , u32 active_hi , unsigned int assert_msecs ,
                           unsigned int recovery_msecs )
{
  u32 mask ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  mask = active_lo | active_hi;
  if (mask == 0U) {
    return;
  } else {
  }
  gpio_update(cx, mask, ~ active_lo);
  tmp = msecs_to_jiffies(assert_msecs);
  schedule_timeout_uninterruptible((long )tmp);
  gpio_update(cx, mask, ~ active_hi);
  tmp___0 = msecs_to_jiffies(recovery_msecs);
  schedule_timeout_uninterruptible((long )tmp___0);
  return;
}
}
static int gpiomux_log_status(struct v4l2_subdev *sd )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  mutex_lock_nested(& cx->gpio_lock, 0U);
  printk("\016%s: GPIO:  direction 0x%08x, value 0x%08x\n", (char *)(& sd->name),
         cx->gpio_dir, cx->gpio_val);
  mutex_unlock(& cx->gpio_lock);
  return (0);
}
}
static int gpiomux_s_radio(struct v4l2_subdev *sd )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  gpio_update(cx, (cx->card)->gpio_audio_input.mask, (cx->card)->gpio_audio_input.radio);
  return (0);
}
}
static int gpiomux_s_std(struct v4l2_subdev *sd , v4l2_std_id norm )
{
  struct cx18 *cx ;
  void *tmp ;
  u32 data ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  switch ((int )(cx->card)->audio_inputs[cx->audio_input].muxer_input) {
  case 1:
  data = (cx->card)->gpio_audio_input.linein;
  goto ldv_51545;
  case 0:
  data = (cx->card)->gpio_audio_input.tuner;
  goto ldv_51545;
  default:
  data = (cx->card)->gpio_audio_input.tuner;
  goto ldv_51545;
  }
  ldv_51545:
  gpio_update(cx, (cx->card)->gpio_audio_input.mask, data);
  return (0);
}
}
static int gpiomux_s_audio_routing(struct v4l2_subdev *sd , u32 input , u32 output ,
                                   u32 config )
{
  struct cx18 *cx ;
  void *tmp ;
  u32 data ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  switch (input) {
  case 0U:
  data = (cx->card)->gpio_audio_input.tuner;
  goto ldv_51557;
  case 1U:
  data = (cx->card)->gpio_audio_input.linein;
  goto ldv_51557;
  case 2U:
  data = (cx->card)->gpio_audio_input.radio;
  goto ldv_51557;
  default: ;
  return (-22);
  }
  ldv_51557:
  gpio_update(cx, (cx->card)->gpio_audio_input.mask, data);
  return (0);
}
}
static struct v4l2_subdev_core_ops const gpiomux_core_ops =
     {& gpiomux_log_status, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct v4l2_subdev_tuner_ops const gpiomux_tuner_ops =
     {& gpiomux_s_radio, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_audio_ops const gpiomux_audio_ops = {0, 0, & gpiomux_s_audio_routing, 0};
static struct v4l2_subdev_video_ops const gpiomux_video_ops =
     {0, 0, 0, & gpiomux_s_std, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops const gpiomux_ops =
     {& gpiomux_core_ops, & gpiomux_tuner_ops, & gpiomux_audio_ops, & gpiomux_video_ops,
    0, 0, 0, 0};
static int resetctrl_log_status(struct v4l2_subdev *sd )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  mutex_lock_nested(& cx->gpio_lock, 0U);
  printk("\016%s: GPIO:  direction 0x%08x, value 0x%08x\n", (char *)(& sd->name),
         cx->gpio_dir, cx->gpio_val);
  mutex_unlock(& cx->gpio_lock);
  return (0);
}
}
static int resetctrl_reset(struct v4l2_subdev *sd , u32 val )
{
  struct cx18 *cx ;
  void *tmp ;
  struct cx18_gpio_i2c_slave_reset const *p ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  p = & (cx->card)->gpio_i2c_slave_reset;
  switch (val) {
  case 0U:
  gpio_reset_seq(cx, p->active_lo_mask, p->active_hi_mask, (unsigned int )p->msecs_asserted,
                 (unsigned int )p->msecs_recovery);
  goto ldv_51577;
  case 1U:
  gpio_reset_seq(cx, p->ir_reset_mask, 0U, (unsigned int )p->msecs_asserted, (unsigned int )p->msecs_recovery);
  goto ldv_51577;
  case 2U: ;
  if ((int )(cx->card)->tuners[0].tuner == 71) {
    gpio_reset_seq(cx, (u32 )(1 << (int )(cx->card)->xceive_pin), 0U, 1U, 1U);
  } else {
  }
  goto ldv_51577;
  }
  ldv_51577: ;
  return (0);
}
}
static struct v4l2_subdev_core_ops const resetctrl_core_ops =
     {& resetctrl_log_status, 0, 0, 0, & resetctrl_reset, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops const resetctrl_ops =
     {& resetctrl_core_ops, 0, 0, 0, 0, 0, 0, 0};
void cx18_gpio_init(struct cx18 *cx )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  mutex_lock_nested(& cx->gpio_lock, 0U);
  cx->gpio_dir = (cx->card)->gpio_init.direction;
  cx->gpio_val = (cx->card)->gpio_init.initial_value;
  if ((int )(cx->card)->tuners[0].tuner == 71) {
    cx->gpio_dir = cx->gpio_dir | (u32 )(1 << (int )(cx->card)->xceive_pin);
    cx->gpio_val = cx->gpio_val | (u32 )(1 << (int )(cx->card)->xceive_pin);
  } else {
  }
  if (cx->gpio_dir == 0U) {
    mutex_unlock(& cx->gpio_lock);
    return;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    tmp = cx18_read_reg(cx, 13074692U);
    tmp___0 = cx18_read_reg(cx, 13074688U);
    tmp___1 = cx18_read_reg(cx, 13074700U);
    tmp___2 = cx18_read_reg(cx, 13074696U);
    printk("\016%s:  info: GPIO initial dir: %08x/%08x out: %08x/%08x\n", (char *)(& cx->v4l2_dev.name),
           tmp___2, tmp___1, tmp___0, tmp);
  } else {
  }
  gpio_write(cx);
  mutex_unlock(& cx->gpio_lock);
  return;
}
}
int cx18_gpio_register(struct cx18 *cx , u32 hw )
{
  struct v4l2_subdev *sd ;
  struct v4l2_subdev_ops const *ops ;
  char *str ;
  int tmp ;
  {
  switch (hw) {
  case 32U:
  sd = & cx->sd_gpiomux;
  ops = & gpiomux_ops;
  str = (char *)"gpio-mux";
  goto ldv_51593;
  case 64U:
  sd = & cx->sd_resetctrl;
  ops = & resetctrl_ops;
  str = (char *)"gpio-reset-ctrl";
  goto ldv_51593;
  default: ;
  return (-22);
  }
  ldv_51593:
  v4l2_subdev_init(sd, ops);
  v4l2_set_subdevdata(sd, (void *)cx);
  snprintf((char *)(& sd->name), 32UL, "%s %s", (char *)(& cx->v4l2_dev.name), str);
  sd->grp_id = hw;
  tmp = v4l2_device_register_subdev(& cx->v4l2_dev, sd);
  return (tmp);
}
}
void cx18_reset_ir_gpio(void *data )
{
  struct cx18 *cx ;
  struct cx18 *tmp ;
  {
  tmp = to_cx18((struct v4l2_device *)data);
  cx = tmp;
  if ((unsigned int )(cx->card)->gpio_i2c_slave_reset.ir_reset_mask == 0U) {
    return;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Resetting IR microcontroller\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  if ((unsigned long )(& cx->sd_resetctrl) != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(cx->sd_resetctrl.ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((cx->sd_resetctrl.ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                 u32 ))0)) {
      (*(((cx->sd_resetctrl.ops)->core)->reset))(& cx->sd_resetctrl, 1U);
    } else {
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_cx18_reset_ir_gpio[19U] =
  { 'c', 'x', '1', '8',
        '_', 'r', 'e', 's',
        'e', 't', '_', 'i',
        'r', '_', 'g', 'p',
        'i', 'o', '\000'};
struct kernel_symbol const __ksymtab_cx18_reset_ir_gpio ;
struct kernel_symbol const __ksymtab_cx18_reset_ir_gpio = {(unsigned long )(& cx18_reset_ir_gpio), (char const *)(& __kstrtab_cx18_reset_ir_gpio)};
int cx18_reset_tuner_gpio(void *dev , int component , int cmd , int value )
{
  struct i2c_algo_bit_data *algo ;
  struct cx18_i2c_algo_callback_data *cb_data ;
  struct cx18 *cx ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  algo = (struct i2c_algo_bit_data *)dev;
  cb_data = (struct cx18_i2c_algo_callback_data *)algo->data;
  cx = cb_data->cx;
  if (cmd != 0 || (int )(cx->card)->tuners[0].tuner != 71) {
    return (0);
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Resetting XCeive tuner\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  if ((unsigned long )(& cx->sd_resetctrl) != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(cx->sd_resetctrl.ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((cx->sd_resetctrl.ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                 u32 ))0)) {
      tmp = (*(((cx->sd_resetctrl.ops)->core)->reset))(& cx->sd_resetctrl, 2U);
      tmp___0 = tmp;
    } else {
      tmp___0 = -515;
    }
    tmp___1 = tmp___0;
  } else {
    tmp___1 = -19;
  }
  return (tmp___1);
}
}
void ldv_initialize_v4l2_subdev_core_ops_15(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(304UL);
  resetctrl_core_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_main_exported_18(void)
{
  struct v4l2_subdev *ldvarg13 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(304UL);
  ldvarg13 = (struct v4l2_subdev *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_18 == 1) {
    gpiomux_s_radio(ldvarg13);
    ldv_state_variable_18 = 1;
  } else {
  }
  goto ldv_51624;
  default:
  ldv_stop();
  }
  ldv_51624: ;
  return;
}
}
void ldv_main_exported_19(void)
{
  struct v4l2_subdev *ldvarg112 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(304UL);
  ldvarg112 = (struct v4l2_subdev *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_19 == 1) {
    gpiomux_log_status(ldvarg112);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_51631;
  default:
  ldv_stop();
  }
  ldv_51631: ;
  return;
}
}
void ldv_main_exported_16(void)
{
  v4l2_std_id ldvarg15 ;
  struct v4l2_subdev *ldvarg14 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(304UL);
  ldvarg14 = (struct v4l2_subdev *)tmp;
  memset((void *)(& ldvarg15), 0, 8UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_16 == 1) {
    gpiomux_s_std(ldvarg14, ldvarg15);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_51639;
  default:
  ldv_stop();
  }
  ldv_51639: ;
  return;
}
}
void ldv_main_exported_17(void)
{
  u32 ldvarg9 ;
  u32 tmp ;
  u32 ldvarg12 ;
  u32 tmp___0 ;
  struct v4l2_subdev *ldvarg10 ;
  void *tmp___1 ;
  u32 ldvarg11 ;
  u32 tmp___2 ;
  int tmp___3 ;
  {
  tmp = __VERIFIER_nondet_u32();
  ldvarg9 = tmp;
  tmp___0 = __VERIFIER_nondet_u32();
  ldvarg12 = tmp___0;
  tmp___1 = ldv_zalloc(304UL);
  ldvarg10 = (struct v4l2_subdev *)tmp___1;
  tmp___2 = __VERIFIER_nondet_u32();
  ldvarg11 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    gpiomux_s_audio_routing(ldvarg10, ldvarg12, ldvarg11, ldvarg9);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_51649;
  default:
  ldv_stop();
  }
  ldv_51649: ;
  return;
}
}
void ldv_main_exported_15(void)
{
  u32 ldvarg107 ;
  u32 tmp ;
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_u32();
  ldvarg107 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_15 == 1) {
    resetctrl_log_status(resetctrl_core_ops_group0);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_51656;
  case 1: ;
  if (ldv_state_variable_15 == 1) {
    resetctrl_reset(resetctrl_core_ops_group0, ldvarg107);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_51656;
  default:
  ldv_stop();
  }
  ldv_51656: ;
  return;
}
}
int ldv_pskb_expand_head_196(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_198(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_200(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_201(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_202(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_203(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_204(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_205(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_206(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(*p);
  return (tmp);
}
}
__inline static void __swab32s(__u32 *p )
{
  {
  *p = __swab32p((__u32 const *)p);
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static int list_is_singular(struct list_head const *head )
{
  int tmp ;
  {
  tmp = list_empty(head);
  return (tmp == 0 && (unsigned long )head->next == (unsigned long )head->prev);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *ldv_kmalloc_228(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_29001: ;
    goto ldv_29001;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_29010: ;
    goto ldv_29010;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    ldv_29060: ;
    goto ldv_29060;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (115), "i" (12UL));
    ldv_29068: ;
    goto ldv_29068;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
struct sk_buff *ldv_skb_clone_240(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_248(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_242(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_238(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_246(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_247(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_243(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_244(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_245(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void cx18_buf_sync_for_cpu(struct cx18_stream *s , struct cx18_buffer *buf )
{
  {
  pci_dma_sync_single_for_cpu((s->cx)->pci_dev, buf->dma_handle, (size_t )s->buf_size,
                              s->dma);
  return;
}
}
void _cx18_mdl_sync_for_device(struct cx18_stream *s , struct cx18_mdl *mdl ) ;
void cx18_buf_swap(struct cx18_buffer *buf ) ;
void _cx18_mdl_swap(struct cx18_mdl *mdl ) ;
struct cx18_queue *_cx18_enqueue(struct cx18_stream *s , struct cx18_mdl *mdl , struct cx18_queue *q ,
                                 int to_front ) ;
__inline static struct cx18_queue *cx18_enqueue(struct cx18_stream *s , struct cx18_mdl *mdl ,
                                                struct cx18_queue *q )
{
  struct cx18_queue *tmp ;
  {
  tmp = _cx18_enqueue(s, mdl, q, 0);
  return (tmp);
}
}
__inline static struct cx18_queue *cx18_push(struct cx18_stream *s , struct cx18_mdl *mdl ,
                                             struct cx18_queue *q )
{
  struct cx18_queue *tmp ;
  {
  tmp = _cx18_enqueue(s, mdl, q, 1);
  return (tmp);
}
}
void cx18_queue_init(struct cx18_queue *q ) ;
struct cx18_mdl *cx18_dequeue(struct cx18_stream *s , struct cx18_queue *q ) ;
struct cx18_mdl *cx18_queue_get_mdl(struct cx18_stream *s , u32 id , u32 bytesused ) ;
void cx18_flush_queues(struct cx18_stream *s ) ;
void cx18_unload_queues(struct cx18_stream *s ) ;
void cx18_load_queues(struct cx18_stream *s ) ;
int cx18_stream_alloc(struct cx18_stream *s ) ;
void cx18_stream_free(struct cx18_stream *s ) ;
__inline static void cx18_writel___1(struct cx18 *cx , u32 val , void *addr )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_51521;
  ldv_51520:
  cx18_writel_noretry(cx, val, addr);
  tmp = cx18_readl(cx, (void const *)addr);
  if (tmp == val) {
    goto ldv_51519;
  } else {
  }
  i = i + 1;
  ldv_51521: ;
  if (i <= 9) {
    goto ldv_51520;
  } else {
  }
  ldv_51519: ;
  return;
}
}
void cx18_buf_swap(struct cx18_buffer *buf )
{
  int i ;
  {
  i = 0;
  goto ldv_51635;
  ldv_51634:
  __swab32s((__u32 *)buf->buf + (unsigned long )i);
  i = i + 4;
  ldv_51635: ;
  if ((u32 )i < buf->bytesused) {
    goto ldv_51634;
  } else {
  }
  return;
}
}
void _cx18_mdl_swap(struct cx18_mdl *mdl )
{
  struct cx18_buffer *buf ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr;
  goto ldv_51647;
  ldv_51646: ;
  if (buf->bytesused == 0U) {
    goto ldv_51645;
  } else {
  }
  cx18_buf_swap(buf);
  __mptr___0 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  ldv_51647: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51646;
  } else {
  }
  ldv_51645: ;
  return;
}
}
void cx18_queue_init(struct cx18_queue *q )
{
  {
  INIT_LIST_HEAD(& q->list);
  atomic_set(& q->depth, 0);
  q->bytesused = 0U;
  return;
}
}
struct cx18_queue *_cx18_enqueue(struct cx18_stream *s , struct cx18_mdl *mdl , struct cx18_queue *q ,
                                 int to_front )
{
  int tmp ;
  {
  if ((unsigned long )(& s->q_full) != (unsigned long )q) {
    mdl->bytesused = 0U;
    mdl->readpos = 0U;
    mdl->m_flags = 0UL;
    mdl->skipped = 0U;
    mdl->curr_buf = (struct cx18_buffer *)0;
  } else {
  }
  if ((unsigned long )(& s->q_busy) == (unsigned long )q) {
    tmp = atomic_read((atomic_t const *)(& q->depth));
    if (tmp > 62) {
      q = & s->q_free;
    } else {
    }
  } else {
  }
  spin_lock(& q->lock);
  if (to_front != 0) {
    list_add(& mdl->list, & q->list);
  } else {
    list_add_tail(& mdl->list, & q->list);
  }
  q->bytesused = q->bytesused + (mdl->bytesused - mdl->readpos);
  atomic_inc(& q->depth);
  spin_unlock(& q->lock);
  return (q);
}
}
struct cx18_mdl *cx18_dequeue(struct cx18_stream *s , struct cx18_queue *q )
{
  struct cx18_mdl *mdl ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  mdl = (struct cx18_mdl *)0;
  spin_lock(& q->lock);
  tmp = list_empty((struct list_head const *)(& q->list));
  if (tmp == 0) {
    __mptr = (struct list_head const *)q->list.next;
    mdl = (struct cx18_mdl *)__mptr;
    list_del_init(& mdl->list);
    q->bytesused = q->bytesused + (mdl->readpos - mdl->bytesused);
    mdl->skipped = 0U;
    atomic_dec(& q->depth);
  } else {
  }
  spin_unlock(& q->lock);
  return (mdl);
}
}
static void _cx18_mdl_update_bufs_for_cpu(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct cx18_buffer *buf ;
  u32 buf_size ;
  u32 bytesused ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  buf_size = s->buf_size;
  bytesused = mdl->bytesused;
  __mptr = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr;
  goto ldv_51676;
  ldv_51675:
  buf->readpos = 0U;
  if (bytesused >= buf_size) {
    buf->bytesused = buf_size;
    bytesused = bytesused - buf_size;
  } else {
    buf->bytesused = bytesused;
    bytesused = 0U;
  }
  cx18_buf_sync_for_cpu(s, buf);
  __mptr___0 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  ldv_51676: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51675;
  } else {
  }
  return;
}
}
__inline static void cx18_mdl_update_bufs_for_cpu(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct cx18_buffer *buf ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  tmp = list_is_singular((struct list_head const *)(& mdl->buf_list));
  if (tmp != 0) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    buf = (struct cx18_buffer *)__mptr;
    buf->bytesused = mdl->bytesused;
    buf->readpos = 0U;
    cx18_buf_sync_for_cpu(s, buf);
  } else {
    _cx18_mdl_update_bufs_for_cpu(s, mdl);
  }
  return;
}
}
struct cx18_mdl *cx18_queue_get_mdl(struct cx18_stream *s , u32 id , u32 bytesused )
{
  struct cx18 *cx ;
  struct cx18_mdl *mdl ;
  struct cx18_mdl *tmp ;
  struct cx18_mdl *ret ;
  struct list_head sweep_up ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  cx = s->cx;
  ret = (struct cx18_mdl *)0;
  sweep_up.next = & sweep_up;
  sweep_up.prev = & sweep_up;
  spin_lock(& s->q_busy.lock);
  __mptr = (struct list_head const *)s->q_busy.list.next;
  mdl = (struct cx18_mdl *)__mptr;
  __mptr___0 = (struct list_head const *)mdl->list.next;
  tmp = (struct cx18_mdl *)__mptr___0;
  goto ldv_51704;
  ldv_51703: ;
  if (mdl->id != id) {
    mdl->skipped = mdl->skipped + 1U;
    tmp___0 = atomic_read((atomic_t const *)(& s->q_busy.depth));
    if (mdl->skipped >= (unsigned int )(tmp___0 + -1)) {
      printk("\f%s: Skipped %s, MDL %d, %d times - it must have dropped out of rotation\n",
             (char *)(& cx->v4l2_dev.name), s->name, mdl->id, mdl->skipped);
      list_move_tail(& mdl->list, & sweep_up);
      atomic_dec(& s->q_busy.depth);
    } else {
    }
    goto ldv_51701;
  } else {
  }
  list_del_init(& mdl->list);
  atomic_dec(& s->q_busy.depth);
  ret = mdl;
  goto ldv_51702;
  ldv_51701:
  mdl = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct cx18_mdl *)__mptr___1;
  ldv_51704: ;
  if ((unsigned long )(& mdl->list) != (unsigned long )(& s->q_busy.list)) {
    goto ldv_51703;
  } else {
  }
  ldv_51702:
  spin_unlock(& s->q_busy.lock);
  if ((unsigned long )ret != (unsigned long )((struct cx18_mdl *)0)) {
    ret->bytesused = bytesused;
    ret->skipped = 0U;
    cx18_mdl_update_bufs_for_cpu(s, ret);
    if (s->type != 1) {
      set_bit(0L, (unsigned long volatile *)(& ret->m_flags));
    } else {
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)sweep_up.next;
  mdl = (struct cx18_mdl *)__mptr___2;
  __mptr___3 = (struct list_head const *)mdl->list.next;
  tmp = (struct cx18_mdl *)__mptr___3;
  goto ldv_51712;
  ldv_51711:
  list_del_init(& mdl->list);
  cx18_enqueue(s, mdl, & s->q_free);
  mdl = tmp;
  __mptr___4 = (struct list_head const *)tmp->list.next;
  tmp = (struct cx18_mdl *)__mptr___4;
  ldv_51712: ;
  if ((unsigned long )(& mdl->list) != (unsigned long )(& sweep_up)) {
    goto ldv_51711;
  } else {
  }
  return (ret);
}
}
static void cx18_queue_flush(struct cx18_stream *s , struct cx18_queue *q_src , struct cx18_queue *q_dst )
{
  struct cx18_mdl *mdl ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  if (((unsigned long )q_src == (unsigned long )q_dst || (unsigned long )(& s->q_full) == (unsigned long )q_dst) || (unsigned long )(& s->q_busy) == (unsigned long )q_dst) {
    return;
  } else {
  }
  spin_lock(& q_src->lock);
  spin_lock(& q_dst->lock);
  goto ldv_51723;
  ldv_51722:
  __mptr = (struct list_head const *)q_src->list.next;
  mdl = (struct cx18_mdl *)__mptr;
  list_move_tail(& mdl->list, & q_dst->list);
  mdl->bytesused = 0U;
  mdl->readpos = 0U;
  mdl->m_flags = 0UL;
  mdl->skipped = 0U;
  mdl->curr_buf = (struct cx18_buffer *)0;
  atomic_inc(& q_dst->depth);
  ldv_51723:
  tmp = list_empty((struct list_head const *)(& q_src->list));
  if (tmp == 0) {
    goto ldv_51722;
  } else {
  }
  cx18_queue_init(q_src);
  spin_unlock(& q_src->lock);
  spin_unlock(& q_dst->lock);
  return;
}
}
void cx18_flush_queues(struct cx18_stream *s )
{
  {
  cx18_queue_flush(s, & s->q_busy, & s->q_free);
  cx18_queue_flush(s, & s->q_full, & s->q_free);
  return;
}
}
void cx18_unload_queues(struct cx18_stream *s )
{
  struct cx18_queue *q_idle ;
  struct cx18_mdl *mdl ;
  struct cx18_buffer *buf ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  {
  q_idle = & s->q_idle;
  cx18_queue_flush(s, & s->q_busy, q_idle);
  cx18_queue_flush(s, & s->q_full, q_idle);
  cx18_queue_flush(s, & s->q_free, q_idle);
  spin_lock(& q_idle->lock);
  __mptr = (struct list_head const *)q_idle->list.next;
  mdl = (struct cx18_mdl *)__mptr;
  goto ldv_51744;
  ldv_51743: ;
  goto ldv_51741;
  ldv_51740:
  __mptr___0 = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  list_move_tail(& buf->list, & s->buf_pool);
  buf->bytesused = 0U;
  buf->readpos = 0U;
  ldv_51741:
  tmp = list_empty((struct list_head const *)(& mdl->buf_list));
  if (tmp == 0) {
    goto ldv_51740;
  } else {
  }
  mdl->id = s->mdl_base_idx;
  __mptr___1 = (struct list_head const *)mdl->list.next;
  mdl = (struct cx18_mdl *)__mptr___1;
  ldv_51744: ;
  if ((unsigned long )mdl != (unsigned long )q_idle) {
    goto ldv_51743;
  } else {
  }
  spin_unlock(& q_idle->lock);
  return;
}
}
void cx18_load_queues(struct cx18_stream *s )
{
  struct cx18 *cx ;
  struct cx18_mdl *mdl ;
  struct cx18_buffer *buf ;
  int mdl_id ;
  int i ;
  u32 partial_buf_size ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  cx = s->cx;
  mdl_id = (int )s->mdl_base_idx;
  mdl = cx18_dequeue(s, & s->q_idle);
  i = (int )s->bufs_per_mdl;
  goto ldv_51761;
  ldv_51760:
  mdl->id = (u32 )mdl_id;
  i = 0;
  goto ldv_51759;
  ldv_51758:
  tmp = list_empty((struct list_head const *)(& s->buf_pool));
  if (tmp != 0) {
    goto ldv_51755;
  } else {
  }
  __mptr = (struct list_head const *)s->buf_pool.next;
  buf = (struct cx18_buffer *)__mptr;
  list_move_tail(& buf->list, & mdl->buf_list);
  cx18_writel___1(cx, (u32 )buf->dma_handle, (void *)(& (cx->scb)->cpu_mdl[mdl_id + i].paddr));
  cx18_writel___1(cx, s->buf_size, (void *)(& (cx->scb)->cpu_mdl[mdl_id + i].length));
  i = i + 1;
  ldv_51759: ;
  if ((u32 )i < s->bufs_per_mdl) {
    goto ldv_51758;
  } else {
  }
  ldv_51755: ;
  if ((u32 )i == s->bufs_per_mdl) {
    partial_buf_size = s->mdl_size % s->buf_size;
    if (partial_buf_size != 0U) {
      cx18_writel___1(cx, partial_buf_size, (void *)(& (cx->scb)->cpu_mdl[(mdl_id + i) + -1].length));
    } else {
    }
    cx18_enqueue(s, mdl, & s->q_free);
  } else {
    cx18_push(s, mdl, & s->q_idle);
  }
  mdl_id = mdl_id + i;
  mdl = cx18_dequeue(s, & s->q_idle);
  ldv_51761: ;
  if ((unsigned long )mdl != (unsigned long )((struct cx18_mdl *)0) && (u32 )i == s->bufs_per_mdl) {
    goto ldv_51760;
  } else {
  }
  return;
}
}
void _cx18_mdl_sync_for_device(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  int dma ;
  u32 buf_size ;
  struct pci_dev *pci_dev ;
  struct cx18_buffer *buf ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dma = s->dma;
  buf_size = s->buf_size;
  pci_dev = (s->cx)->pci_dev;
  __mptr = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr;
  goto ldv_51776;
  ldv_51775:
  pci_dma_sync_single_for_device(pci_dev, buf->dma_handle, (size_t )buf_size, dma);
  __mptr___0 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  ldv_51776: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51775;
  } else {
  }
  return;
}
}
int cx18_stream_alloc(struct cx18_stream *s )
{
  struct cx18 *cx ;
  int i ;
  unsigned int bufsz ;
  struct cx18_mdl *mdl ;
  struct cx18_buffer *buf ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  cx = s->cx;
  if (s->buffers == 0U) {
    return (0);
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Allocate %s stream: %d x %d buffers (%d.%02d kB total)\n",
           (char *)(& cx->v4l2_dev.name), s->name, s->buffers, s->buf_size, (s->buffers * s->buf_size) / 1024U,
           (((s->buffers * s->buf_size) * 100U) / 1024U) % 100U);
  } else {
  }
  if ((long )(cx->free_mdl_idx + s->buffers) + 3248L > 65536L) {
    bufsz = 62288U;
    printk("\v%s: Too many buffers, cannot fit in SCB area\n", (char *)(& cx->v4l2_dev.name));
    printk("\v%s: Max buffers = %zd\n", (char *)(& cx->v4l2_dev.name), (unsigned long )(bufsz / 8U));
    return (-12);
  } else {
  }
  s->mdl_base_idx = cx->free_mdl_idx;
  i = 0;
  goto ldv_51788;
  ldv_51787:
  tmp = kzalloc(64UL, 720U);
  mdl = (struct cx18_mdl *)tmp;
  if ((unsigned long )mdl == (unsigned long )((struct cx18_mdl *)0)) {
    goto ldv_51786;
  } else {
  }
  tmp___0 = kzalloc(40UL, 720U);
  buf = (struct cx18_buffer *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((struct cx18_buffer *)0)) {
    kfree((void const *)mdl);
    goto ldv_51786;
  } else {
  }
  tmp___1 = kmalloc((size_t )s->buf_size, 720U);
  buf->buf = (char *)tmp___1;
  if ((unsigned long )buf->buf == (unsigned long )((char *)0)) {
    kfree((void const *)mdl);
    kfree((void const *)buf);
    goto ldv_51786;
  } else {
  }
  INIT_LIST_HEAD(& mdl->list);
  INIT_LIST_HEAD(& mdl->buf_list);
  mdl->id = s->mdl_base_idx;
  cx18_enqueue(s, mdl, & s->q_idle);
  INIT_LIST_HEAD(& buf->list);
  buf->dma_handle = pci_map_single((s->cx)->pci_dev, (void *)buf->buf, (size_t )s->buf_size,
                                   s->dma);
  cx18_buf_sync_for_cpu(s, buf);
  list_add_tail(& buf->list, & s->buf_pool);
  i = i + 1;
  ldv_51788: ;
  if ((u32 )i < s->buffers) {
    goto ldv_51787;
  } else {
  }
  ldv_51786: ;
  if ((u32 )i == s->buffers) {
    cx->free_mdl_idx = cx->free_mdl_idx + s->buffers;
    return (0);
  } else {
  }
  printk("\v%s: Couldn\'t allocate buffers for %s stream\n", (char *)(& cx->v4l2_dev.name),
         s->name);
  cx18_stream_free(s);
  return (-12);
}
}
void cx18_stream_free(struct cx18_stream *s )
{
  struct cx18_mdl *mdl ;
  struct cx18_buffer *buf ;
  struct cx18 *cx ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  cx = s->cx;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Deallocating buffers for %s stream\n", (char *)(& cx->v4l2_dev.name),
           s->name);
  } else {
  }
  cx18_unload_queues(s);
  goto ldv_51796;
  ldv_51795:
  kfree((void const *)mdl);
  ldv_51796:
  mdl = cx18_dequeue(s, & s->q_idle);
  if ((unsigned long )mdl != (unsigned long )((struct cx18_mdl *)0)) {
    goto ldv_51795;
  } else {
  }
  goto ldv_51801;
  ldv_51800:
  __mptr = (struct list_head const *)s->buf_pool.next;
  buf = (struct cx18_buffer *)__mptr;
  list_del_init(& buf->list);
  pci_unmap_single((s->cx)->pci_dev, buf->dma_handle, (size_t )s->buf_size, s->dma);
  kfree((void const *)buf->buf);
  kfree((void const *)buf);
  ldv_51801:
  tmp = list_empty((struct list_head const *)(& s->buf_pool));
  if (tmp == 0) {
    goto ldv_51800;
  } else {
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_228(size, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_238(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_240(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_242(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_243(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_244(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_245(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_246(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_247(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_248(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device_no_warn(struct video_device *vdev , int type ,
                                                  int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 0, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
int cx18_api(struct cx18 *cx , u32 cmd , int args , u32 *data ) ;
extern s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl * ) ;
extern int cx2341x_handler_setup(struct cx2341x_handler * ) ;
extern void cx2341x_handler_set_busy(struct cx2341x_handler * , int ) ;
struct sk_buff *ldv_skb_clone_282(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_290(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_284(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_280(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_288(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_289(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_285(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_286(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_287(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern int videobuf_waiton(struct videobuf_queue * , struct videobuf_buffer * , int ,
                           int ) ;
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern int videobuf_mmap_free(struct videobuf_queue * ) ;
extern void videobuf_queue_vmalloc_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                        struct device * , spinlock_t * , enum v4l2_buf_type ,
                                        enum v4l2_field , unsigned int , void * ,
                                        struct mutex * ) ;
extern void videobuf_vmalloc_free(struct videobuf_buffer * ) ;
static unsigned int const vbi_active_samples___0 = 1444U;
static unsigned int const vbi_hblank_samples_60Hz = 272U;
static unsigned int const vbi_hblank_samples_50Hz = 284U;
__inline static int cx18_raw_vbi(struct cx18 const *cx )
{
  {
  return ((unsigned int )cx->vbi.in.type == 4U);
}
}
int cx18_v4l2_open(struct file *filp ) ;
ssize_t cx18_v4l2_read(struct file *filp , char *buf , size_t count , loff_t *pos ) ;
int cx18_v4l2_close(struct file *filp ) ;
unsigned int cx18_v4l2_enc_poll(struct file *filp , poll_table *wait ) ;
int cx18_v4l2_mmap(struct file *file , struct vm_area_struct *vma ) ;
void cx18_vb_timeout(unsigned long data ) ;
__inline static void cx18_buf_sync_for_device(struct cx18_stream *s , struct cx18_buffer *buf )
{
  {
  pci_dma_sync_single_for_device((s->cx)->pci_dev, buf->dma_handle, (size_t )s->buf_size,
                                 s->dma);
  return;
}
}
__inline static void cx18_mdl_sync_for_device(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct list_head const *__mptr ;
  int tmp ;
  {
  tmp = list_is_singular((struct list_head const *)(& mdl->buf_list));
  if (tmp != 0) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    cx18_buf_sync_for_device(s, (struct cx18_buffer *)__mptr);
  } else {
    _cx18_mdl_sync_for_device(s, mdl);
  }
  return;
}
}
void cx18_set_funcs(struct video_device *vdev ) ;
u32 cx18_find_handle(struct cx18 *cx ) ;
struct cx18_stream *cx18_handle_to_stream(struct cx18 *cx , u32 handle ) ;
void cx18_stream_rotate_idx_mdls(struct cx18 *cx ) ;
__inline static bool cx18_stream_enabled(struct cx18_stream *s )
{
  {
  return ((bool )(((unsigned long )s->video_dev != (unsigned long )((struct video_device *)0) || ((unsigned long )s->dvb != (unsigned long )((struct cx18_dvb *)0) && (s->dvb)->enabled != 0)) || (s->type == 5 && (s->cx)->stream_buffers[5] != 0)));
}
}
void cx18_out_work_handler(struct work_struct *work ) ;
int cx18_start_v4l2_encode_stream(struct cx18_stream *s ) ;
int cx18_stop_v4l2_encode_stream(struct cx18_stream *s , int gop_end ) ;
int cx18_dvb_register(struct cx18_stream *stream ) ;
void cx18_dvb_unregister(struct cx18_stream *stream ) ;
static struct v4l2_file_operations cx18_v4l2_enc_fops =
     {& __this_module, & cx18_v4l2_read, 0, & cx18_v4l2_enc_poll, 0, & video_ioctl2,
    0, 0, & cx18_v4l2_mmap, & cx18_v4l2_open, & cx18_v4l2_close};
static struct __anonstruct_cx18_stream_info_319 cx18_stream_info[7U] = { {"encoder MPEG", 0, 0, 2},
        {"TS", 0, -1, 2},
        {"encoder YUV", 0, 32, 2},
        {"encoder VBI", 1, 0, 2},
        {"encoder PCM audio", 0, 24, 2},
        {"encoder IDX", 0, -1, 2},
        {"encoder radio", 2, 0, 3}};
static void cx18_dma_free(struct videobuf_queue *q , struct cx18_stream *s , struct cx18_videobuf_buffer *buf )
{
  {
  videobuf_waiton(q, & buf->vb, 0, 0);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  return;
}
}
static int cx18_prepare_buffer(struct videobuf_queue *q , struct cx18_stream *s ,
                               struct cx18_videobuf_buffer *buf , u32 pixelformat ,
                               unsigned int width , unsigned int height , enum v4l2_field field )
{
  struct cx18 *cx ;
  int rc ;
  {
  cx = s->cx;
  rc = 0;
  buf->bytes_used = 0U;
  if (width <= 47U || height <= 31U) {
    return (-22);
  } else {
  }
  buf->vb.size = (unsigned long )((width * height) * 2U);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  if ((((buf->vb.width != width || buf->vb.height != height) || (unsigned int )buf->vb.field != (unsigned int )field) || s->pixelformat != pixelformat) || buf->tvnorm != cx->std) {
    buf->vb.width = width;
    buf->vb.height = height;
    buf->vb.field = field;
    buf->tvnorm = cx->std;
    s->pixelformat = pixelformat;
    if (s->pixelformat == 842091848U) {
      s->vb_bytes_per_frame = (height * 2160U) / 2U;
    } else {
      s->vb_bytes_per_frame = height * 1440U;
    }
    cx18_dma_free(q, s, buf);
  } else {
  }
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  if ((unsigned int )buf->vb.field == 0U) {
    buf->vb.field = 4;
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    buf->vb.width = width;
    buf->vb.height = height;
    buf->vb.field = field;
    buf->tvnorm = cx->std;
    s->pixelformat = pixelformat;
    if (s->pixelformat == 842091848U) {
      s->vb_bytes_per_frame = (height * 2160U) / 2U;
    } else {
      s->vb_bytes_per_frame = height * 1440U;
    }
    rc = videobuf_iolock(q, & buf->vb, (struct v4l2_framebuffer *)0);
    if (rc != 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  cx18_dma_free(q, s, buf);
  return (rc);
}
}
static int buffer_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  struct cx18_stream *s ;
  struct cx18 *cx ;
  {
  s = (struct cx18_stream *)q->priv_data;
  cx = s->cx;
  *size = (unsigned int )(((int )cx->cxhdl.width * 2) * (int )cx->cxhdl.height);
  if (*count == 0U) {
    *count = 32U;
  } else {
  }
  goto ldv_51800;
  ldv_51799:
  *count = *count - 1U;
  ldv_51800: ;
  if (*size * *count > 132710400U) {
    goto ldv_51799;
  } else {
  }
  q->field = 4;
  q->last = 4;
  return (0);
}
}
static int buffer_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{
  struct cx18_videobuf_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx18_stream *s ;
  struct cx18 *cx ;
  int tmp ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx18_videobuf_buffer *)__mptr;
  s = (struct cx18_stream *)q->priv_data;
  cx = s->cx;
  tmp = cx18_prepare_buffer(q, s, buf, s->pixelformat, (unsigned int )cx->cxhdl.width,
                            (unsigned int )cx->cxhdl.height, field);
  return (tmp);
}
}
static void buffer_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx18_videobuf_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx18_stream *s ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx18_videobuf_buffer *)__mptr;
  s = (struct cx18_stream *)q->priv_data;
  cx18_dma_free(q, s, buf);
  return;
}
}
static void buffer_queue(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx18_videobuf_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx18_stream *s ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx18_videobuf_buffer *)__mptr;
  s = (struct cx18_stream *)q->priv_data;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & s->vb_capture);
  return;
}
}
static struct videobuf_queue_ops cx18_videobuf_qops = {& buffer_setup, & buffer_prepare, & buffer_queue, & buffer_release};
static void cx18_stream_init(struct cx18 *cx , int type )
{
  struct cx18_stream *s ;
  struct video_device *video_dev ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  {
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )type;
  video_dev = s->video_dev;
  memset((void *)s, 0, 1568UL);
  s->video_dev = video_dev;
  s->dvb = (struct cx18_dvb *)0;
  s->cx = cx;
  s->type = type;
  s->name = cx18_stream_info[type].name;
  s->handle = 4294967295U;
  s->dma = cx18_stream_info[type].dma;
  s->buffers = (u32 )cx->stream_buffers[type];
  s->buf_size = (u32 )cx->stream_buf_size[type];
  INIT_LIST_HEAD(& s->buf_pool);
  s->bufs_per_mdl = 1U;
  s->mdl_size = s->buf_size * s->bufs_per_mdl;
  __init_waitqueue_head(& s->waitq, "&s->waitq", & __key);
  s->id = 4294967295U;
  spinlock_check(& s->q_free.lock);
  __raw_spin_lock_init(& s->q_free.lock.ldv_6347.rlock, "&(&s->q_free.lock)->rlock",
                       & __key___0);
  cx18_queue_init(& s->q_free);
  spinlock_check(& s->q_busy.lock);
  __raw_spin_lock_init(& s->q_busy.lock.ldv_6347.rlock, "&(&s->q_busy.lock)->rlock",
                       & __key___1);
  cx18_queue_init(& s->q_busy);
  spinlock_check(& s->q_full.lock);
  __raw_spin_lock_init(& s->q_full.lock.ldv_6347.rlock, "&(&s->q_full.lock)->rlock",
                       & __key___2);
  cx18_queue_init(& s->q_full);
  spinlock_check(& s->q_idle.lock);
  __raw_spin_lock_init(& s->q_idle.lock.ldv_6347.rlock, "&(&s->q_idle.lock)->rlock",
                       & __key___3);
  cx18_queue_init(& s->q_idle);
  __init_work(& s->out_work_order, 0);
  __constr_expr_0.counter = 137438953408L;
  s->out_work_order.data = __constr_expr_0;
  lockdep_init_map(& s->out_work_order.lockdep_map, "(&s->out_work_order)", & __key___4,
                   0);
  INIT_LIST_HEAD(& s->out_work_order.entry);
  s->out_work_order.func = & cx18_out_work_handler;
  INIT_LIST_HEAD(& s->vb_capture);
  s->vb_timeout.function = & cx18_vb_timeout;
  s->vb_timeout.data = (unsigned long )s;
  reg_timer_2(& s->vb_timeout);
  spinlock_check(& s->vb_lock);
  __raw_spin_lock_init(& s->vb_lock.ldv_6347.rlock, "&(&s->vb_lock)->rlock", & __key___5);
  if (type == 2) {
    spinlock_check(& s->vbuf_q_lock);
    __raw_spin_lock_init(& s->vbuf_q_lock.ldv_6347.rlock, "&(&s->vbuf_q_lock)->rlock",
                         & __key___6);
    s->vb_type = 1;
    videobuf_queue_vmalloc_init(& s->vbuf_q, (struct videobuf_queue_ops const *)(& cx18_videobuf_qops),
                                & (cx->pci_dev)->dev, & s->vbuf_q_lock, 1, 4, 256U,
                                (void *)s, & cx->serialize_lock);
    s->pixelformat = 842091848U;
    s->vb_bytes_per_frame = (u32 )(((int )cx->cxhdl.height * 2160) / 2);
  } else {
  }
  return;
}
}
static int cx18_prep_dev(struct cx18 *cx , int type )
{
  struct cx18_stream *s ;
  u32 cap ;
  int num_offset ;
  int num ;
  void *tmp ;
  {
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )type;
  cap = cx->v4l2_cap;
  num_offset = cx18_stream_info[type].num_offset;
  num = (cx->instance + cx18_first_minor) + num_offset;
  s->video_dev = (struct video_device *)0;
  s->dvb = (struct cx18_dvb *)0;
  s->cx = cx;
  s->type = type;
  s->name = cx18_stream_info[type].name;
  if (type == 6 && (cap & 262144U) == 0U) {
    return (0);
  } else {
  }
  if (type == 3 && (cap & 80U) == 0U) {
    return (0);
  } else {
  }
  if (cx18_stream_info[type].dma != 3 && cx->stream_buffers[type] == 0) {
    printk("\016%s: Disabled %s device\n", (char *)(& cx->v4l2_dev.name), cx18_stream_info[type].name);
    return (0);
  } else {
  }
  cx18_stream_init(cx, type);
  if (type == 1) {
    if (((unsigned int )(cx->card)->hw_all & 8U) != 0U) {
      tmp = kzalloc(2264UL, 208U);
      s->dvb = (struct cx18_dvb *)tmp;
      if ((unsigned long )s->dvb == (unsigned long )((struct cx18_dvb *)0)) {
        printk("\v%s: Couldn\'t allocate cx18_dvb structure for %s\n", (char *)(& cx->v4l2_dev.name),
               s->name);
        return (-12);
      } else {
      }
    } else {
      s->buffers = 0U;
    }
  } else {
  }
  if (num_offset == -1) {
    return (0);
  } else {
  }
  s->video_dev = video_device_alloc();
  if ((unsigned long )s->video_dev == (unsigned long )((struct video_device *)0)) {
    printk("\v%s: Couldn\'t allocate v4l2 video_device for %s\n", (char *)(& cx->v4l2_dev.name),
           s->name);
    return (-12);
  } else {
  }
  snprintf((char *)(& (s->video_dev)->name), 32UL, "%s %s", (char *)(& cx->v4l2_dev.name),
           s->name);
  (s->video_dev)->num = (u16 )num;
  (s->video_dev)->v4l2_dev = & cx->v4l2_dev;
  (s->video_dev)->fops = (struct v4l2_file_operations const *)(& cx18_v4l2_enc_fops);
  (s->video_dev)->release = & video_device_release;
  (s->video_dev)->tvnorms = 16777215ULL;
  (s->video_dev)->lock = & cx->serialize_lock;
  set_bit(2L, (unsigned long volatile *)(& (s->video_dev)->flags));
  cx18_set_funcs(s->video_dev);
  return (0);
}
}
int cx18_streams_setup(struct cx18 *cx )
{
  int type ;
  int ret ;
  {
  type = 0;
  goto ldv_51859;
  ldv_51858:
  ret = cx18_prep_dev(cx, type);
  if (ret < 0) {
    goto ldv_51857;
  } else {
  }
  ret = cx18_stream_alloc((struct cx18_stream *)(& cx->streams) + (unsigned long )type);
  if (ret < 0) {
    goto ldv_51857;
  } else {
  }
  type = type + 1;
  ldv_51859: ;
  if (type <= 6) {
    goto ldv_51858;
  } else {
  }
  ldv_51857: ;
  if (type == 7) {
    return (0);
  } else {
  }
  cx18_streams_cleanup(cx, 0);
  return (ret);
}
}
static int cx18_reg_dev(struct cx18 *cx , int type )
{
  struct cx18_stream *s ;
  int vfl_type ;
  char const *name ;
  int num ;
  int ret ;
  struct cx18_stream *s_mpg ;
  {
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )type;
  vfl_type = cx18_stream_info[type].vfl_type;
  if (type == 1 && (unsigned long )s->dvb != (unsigned long )((struct cx18_dvb *)0)) {
    ret = cx18_dvb_register(s);
    if (ret < 0) {
      printk("\v%s: DVB failed to register\n", (char *)(& cx->v4l2_dev.name));
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned long )s->video_dev == (unsigned long )((struct video_device *)0)) {
    return (0);
  } else {
  }
  num = (int )(s->video_dev)->num;
  if (type != 0) {
    s_mpg = (struct cx18_stream *)(& cx->streams);
    if ((unsigned long )s_mpg->video_dev != (unsigned long )((struct video_device *)0)) {
      num = (int )(s_mpg->video_dev)->num + cx18_stream_info[type].num_offset;
    } else {
    }
  } else {
  }
  video_set_drvdata(s->video_dev, (void *)s);
  ret = video_register_device_no_warn(s->video_dev, vfl_type, num);
  if (ret < 0) {
    printk("\v%s: Couldn\'t register v4l2 device for %s (device node number %d)\n",
           (char *)(& cx->v4l2_dev.name), s->name, num);
    video_device_release(s->video_dev);
    s->video_dev = (struct video_device *)0;
    return (ret);
  } else {
  }
  name = video_device_node_name(s->video_dev);
  switch (vfl_type) {
  case 0:
  printk("\016%s: Registered device %s for %s (%d x %d.%02d kB)\n", (char *)(& cx->v4l2_dev.name),
         name, s->name, cx->stream_buffers[type], cx->stream_buf_size[type] / 1024,
         ((cx->stream_buf_size[type] * 100) / 1024) % 100);
  goto ldv_51871;
  case 2:
  printk("\016%s: Registered device %s for %s\n", (char *)(& cx->v4l2_dev.name), name,
         s->name);
  goto ldv_51871;
  case 1: ;
  if (cx->stream_buffers[type] != 0) {
    printk("\016%s: Registered device %s for %s (%d x %d bytes)\n", (char *)(& cx->v4l2_dev.name),
           name, s->name, cx->stream_buffers[type], cx->stream_buf_size[type]);
  } else {
    printk("\016%s: Registered device %s for %s\n", (char *)(& cx->v4l2_dev.name),
           name, s->name);
  }
  goto ldv_51871;
  }
  ldv_51871: ;
  return (0);
}
}
int cx18_streams_register(struct cx18 *cx )
{
  int type ;
  int err ;
  int ret ;
  {
  ret = 0;
  type = 0;
  goto ldv_51881;
  ldv_51880:
  err = cx18_reg_dev(cx, type);
  if (err != 0 && ret == 0) {
    ret = err;
  } else {
  }
  type = type + 1;
  ldv_51881: ;
  if (type <= 6) {
    goto ldv_51880;
  } else {
  }
  if (ret == 0) {
    return (0);
  } else {
  }
  cx18_streams_cleanup(cx, 1);
  return (ret);
}
}
void cx18_streams_cleanup(struct cx18 *cx , int unregister )
{
  struct video_device *vdev ;
  int type ;
  {
  type = 0;
  goto ldv_51891;
  ldv_51890: ;
  if (type == 1) {
    if ((unsigned long )cx->streams[type].dvb != (unsigned long )((struct cx18_dvb *)0)) {
      if (unregister != 0) {
        cx18_dvb_unregister((struct cx18_stream *)(& cx->streams) + (unsigned long )type);
      } else {
      }
      kfree((void const *)cx->streams[type].dvb);
      cx->streams[type].dvb = (struct cx18_dvb *)0;
      cx18_stream_free((struct cx18_stream *)(& cx->streams) + (unsigned long )type);
    } else {
    }
    goto ldv_51889;
  } else {
  }
  if (type == 5) {
    if (cx->stream_buffers[type] != 0) {
      cx->stream_buffers[type] = 0;
      if (cx->streams[type].buffers != 0U) {
        cx18_stream_free((struct cx18_stream *)(& cx->streams) + (unsigned long )type);
      } else {
      }
    } else {
    }
    goto ldv_51889;
  } else {
  }
  vdev = cx->streams[type].video_dev;
  cx->streams[type].video_dev = (struct video_device *)0;
  if ((unsigned long )vdev == (unsigned long )((struct video_device *)0)) {
    goto ldv_51889;
  } else {
  }
  if (type == 2) {
    videobuf_mmap_free(& cx->streams[type].vbuf_q);
  } else {
  }
  cx18_stream_free((struct cx18_stream *)(& cx->streams) + (unsigned long )type);
  if (unregister != 0) {
    video_unregister_device(vdev);
  } else {
    video_device_release(vdev);
  }
  ldv_51889:
  type = type + 1;
  ldv_51891: ;
  if (type <= 6) {
    goto ldv_51890;
  } else {
  }
  return;
}
}
static void cx18_vbi_setup(struct cx18_stream *s )
{
  struct cx18 *cx ;
  int raw ;
  int tmp ;
  u32 data[16U] ;
  int lines ;
  {
  cx = s->cx;
  tmp = cx18_raw_vbi((struct cx18 const *)cx);
  raw = tmp;
  if ((unsigned int )cx->is_60hz != 0U) {
    cx->vbi.count = 12U;
    cx->vbi.start[0] = 10U;
    cx->vbi.start[1] = 273U;
  } else {
    cx->vbi.count = 18U;
    cx->vbi.start[0] = 6U;
    cx->vbi.start[1] = 318U;
  }
  if (raw != 0) {
    if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((cx->sd_av)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->vbi)->s_raw_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                            struct v4l2_vbi_format * ))0)) {
        (*((((cx->sd_av)->ops)->vbi)->s_raw_fmt))(cx->sd_av, & cx->vbi.in.fmt.vbi);
      } else {
      }
    } else {
    }
  } else
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->vbi)->s_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                             struct v4l2_sliced_vbi_format * ))0)) {
      (*((((cx->sd_av)->ops)->vbi)->s_sliced_fmt))(cx->sd_av, & cx->vbi.in.fmt.sliced);
    } else {
    }
  } else {
  }
  if (raw != 0) {
    lines = (int )(cx->vbi.count * 2U);
  } else {
    lines = (unsigned int )cx->is_60hz != 0U ? 36 : 44;
  }
  data[0] = s->handle;
  data[1] = (u32 )(lines / 2 | (lines / 2 << 16));
  data[2] = raw == 0 ? ((unsigned int )cx->is_60hz != 0U ? vbi_hblank_samples_60Hz : vbi_hblank_samples_50Hz) : vbi_active_samples___0;
  data[3] = 1U;
  if (raw != 0) {
    data[4] = 543170656U;
    data[5] = 812683472U;
  } else {
    data[4] = 2968563952U;
    data[5] = 2699075808U;
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Setup VBI h: %d lines %x bpl %d fr %d %x %x\n", (char *)(& cx->v4l2_dev.name),
           data[0], data[1], data[2], data[3], data[4], data[5]);
  } else {
  }
  cx18_api(cx, 537002006U, 6, (u32 *)(& data));
  return;
}
}
void cx18_stream_rotate_idx_mdls(struct cx18 *cx )
{
  struct cx18_stream *s ;
  struct cx18_mdl *mdl ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  s = (struct cx18_stream *)(& cx->streams) + 5UL;
  tmp = cx18_stream_enabled(s);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& s->q_free.depth));
  tmp___2 = atomic_read((atomic_t const *)(& s->q_busy.depth));
  if (tmp___1 + tmp___2 > 2) {
    return;
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& s->q_full.depth));
  if (tmp___3 <= 1) {
    return;
  } else {
  }
  mdl = cx18_dequeue(s, & s->q_full);
  if ((unsigned long )mdl != (unsigned long )((struct cx18_mdl *)0)) {
    cx18_enqueue(s, mdl, & s->q_free);
  } else {
  }
  return;
}
}
static struct cx18_queue *_cx18_stream_put_mdl_fw(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct cx18 *cx ;
  struct cx18_queue *q ;
  struct cx18_queue *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  cx = s->cx;
  if (s->handle == 4294967295U) {
    tmp = cx18_enqueue(s, mdl, & s->q_free);
    return (tmp);
  } else {
    tmp___0 = constant_test_bit(9L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp___0 != 0) {
      tmp = cx18_enqueue(s, mdl, & s->q_free);
      return (tmp);
    } else {
      tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
      if (tmp___1 == 0) {
        tmp = cx18_enqueue(s, mdl, & s->q_free);
        return (tmp);
      } else {
      }
    }
  }
  q = cx18_enqueue(s, mdl, & s->q_busy);
  if ((unsigned long )(& s->q_busy) != (unsigned long )q) {
    return (q);
  } else {
  }
  cx18_mdl_sync_for_device(s, mdl);
  cx18_vapi(cx, 537133061U, 5, s->handle, (long )((void *)(& (cx->scb)->cpu_mdl) + (unsigned long )mdl->id) - (long )cx->enc_mem,
            s->bufs_per_mdl, mdl->id, s->mdl_size);
  return (q);
}
}
static void _cx18_stream_load_fw_queue(struct cx18_stream *s )
{
  struct cx18_queue *q ;
  struct cx18_mdl *mdl ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& s->q_free.depth));
  if (tmp == 0) {
    return;
  } else {
    tmp___0 = atomic_read((atomic_t const *)(& s->q_busy.depth));
    if (tmp___0 > 62) {
      return;
    } else {
    }
  }
  ldv_51917:
  mdl = cx18_dequeue(s, & s->q_free);
  if ((unsigned long )mdl == (unsigned long )((struct cx18_mdl *)0)) {
    goto ldv_51916;
  } else {
  }
  q = _cx18_stream_put_mdl_fw(s, mdl);
  tmp___1 = atomic_read((atomic_t const *)(& s->q_busy.depth));
  if (tmp___1 <= 62 && (unsigned long )(& s->q_busy) == (unsigned long )q) {
    goto ldv_51917;
  } else {
  }
  ldv_51916: ;
  return;
}
}
void cx18_out_work_handler(struct work_struct *work )
{
  struct cx18_stream *s ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  s = (struct cx18_stream *)__mptr + 0xfffffffffffffdc8UL;
  _cx18_stream_load_fw_queue(s);
  return;
}
}
static void cx18_stream_configure_mdls(struct cx18_stream *s )
{
  int tmp ;
  {
  cx18_unload_queues(s);
  switch (s->type) {
  case 2: ;
  if (s->pixelformat == 842091848U) {
    s->mdl_size = (u32 )(((int )(s->cx)->cxhdl.height * 2160) / 2);
  } else {
    s->mdl_size = (u32 )((int )(s->cx)->cxhdl.height * 1440);
  }
  s->bufs_per_mdl = s->mdl_size / s->buf_size;
  if (s->mdl_size % s->buf_size != 0U) {
    s->bufs_per_mdl = s->bufs_per_mdl + 1U;
  } else {
  }
  goto ldv_51928;
  case 3:
  s->bufs_per_mdl = 1U;
  tmp = cx18_raw_vbi((struct cx18 const *)s->cx);
  if (tmp != 0) {
    s->mdl_size = ((unsigned int )(s->cx)->is_60hz != 0U ? 24U : 36U) * (unsigned int )vbi_active_samples___0;
  } else {
    s->mdl_size = (unsigned int )(s->cx)->is_60hz != 0U ? (unsigned int )vbi_hblank_samples_60Hz * 36U : (unsigned int )vbi_hblank_samples_50Hz * 44U;
  }
  goto ldv_51928;
  default:
  s->bufs_per_mdl = 1U;
  s->mdl_size = s->buf_size * s->bufs_per_mdl;
  goto ldv_51928;
  }
  ldv_51928:
  cx18_load_queues(s);
  return;
}
}
int cx18_start_v4l2_encode_stream(struct cx18_stream *s )
{
  u32 data[6U] ;
  struct cx18 *cx ;
  int captype ;
  struct cx18_stream *s_idx ;
  bool tmp ;
  int tmp___0 ;
  u64 tmp___1 ;
  s32 tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  s32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  cx = s->cx;
  captype = 0;
  tmp = cx18_stream_enabled(s);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-22);
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Start encoder stream %s\n", (char *)(& cx->v4l2_dev.name),
           s->name);
  } else {
  }
  switch (s->type) {
  case 0:
  captype = 1;
  tmp___1 = 0ULL;
  cx->vbi_data_inserted = tmp___1;
  cx->mpg_data_received = tmp___1;
  cx->dualwatch_jiffies = jiffies;
  tmp___2 = v4l2_ctrl_g_ctrl(cx->cxhdl.ldv_36957.audio_mode);
  cx->dualwatch_stereo_mode = (u32 )tmp___2;
  cx->search_pack_header = 0;
  goto ldv_51939;
  case 5:
  captype = 2;
  goto ldv_51939;
  case 1:
  captype = 7;
  goto ldv_51939;
  case 2:
  captype = 3;
  goto ldv_51939;
  case 4:
  captype = 4;
  goto ldv_51939;
  case 3:
  captype = 5;
  cx->vbi.frame = 0U;
  cx->vbi.inserted_frame = 0U;
  memset((void *)(& cx->vbi.sliced_mpeg_size), 0, 128UL);
  goto ldv_51939;
  default: ;
  return (-22);
  }
  ldv_51939:
  clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
  cx18_vapi_result(cx, (u32 *)(& data), 1073741825U, 1, 537001984);
  s->handle = data[0];
  cx18_vapi(cx, 537001985U, 2, s->handle, captype);
  if (captype != 7) {
    cx18_vapi(cx, 537002011U, 2, s->handle, 0);
    cx18_vapi(cx, 537002005U, 3, s->handle, 3, 1);
    cx18_vapi(cx, 537002005U, 3, s->handle, 8, 0);
    cx18_vapi(cx, 537002005U, 3, s->handle, 4, 1);
    tmp___3 = atomic_read((atomic_t const *)(& cx->ana_capturing));
    if (tmp___3 == 0) {
      cx18_vapi(cx, 537002005U, 2, s->handle, 12);
    } else {
    }
    cx18_vapi(cx, 537002007U, 3, s->handle, 312, 313);
    if ((cx->v4l2_cap & 16U) != 0U) {
      cx18_vbi_setup(s);
    } else {
    }
    s_idx = (struct cx18_stream *)(& cx->streams) + 5UL;
    tmp___4 = cx18_stream_enabled(s_idx);
    cx18_vapi_result(cx, (u32 *)(& data), 537002000U, 2, s->handle, (int )tmp___4 ? 7 : 0);
    cx->cxhdl.priv = (void *)s;
    cx2341x_handler_setup(& cx->cxhdl);
    if ((unsigned long )cx->cxhdl.ldv_36972.video_mute == (unsigned long )((struct v4l2_ctrl *)0)) {
      tmp___6 = constant_test_bit(5L, (unsigned long const volatile *)(& cx->i_flags));
      if (tmp___6 != 0) {
        tmp___5 = v4l2_ctrl_g_ctrl(cx->cxhdl.ldv_36972.video_mute_yuv);
        cx18_vapi(cx, 537002003U, 2, s->handle, (tmp___5 << 8) | 1);
      } else {
      }
    } else {
    }
    if (captype == 3) {
      if (s->pixelformat == 1498831189U) {
        cx18_vapi(cx, 537002019U, 2, s->handle, 1);
      } else {
        cx18_vapi(cx, 537002019U, 2, s->handle, 0);
      }
    } else {
    }
  } else {
  }
  tmp___7 = atomic_read((atomic_t const *)(& cx->tot_capturing));
  if (tmp___7 == 0) {
    cx2341x_handler_set_busy(& cx->cxhdl, 1);
    clear_bit(4L, (unsigned long volatile *)(& cx->i_flags));
    cx18_write_reg(cx, 7U, 13631564U);
  } else {
  }
  cx18_vapi(cx, 537133058U, 3, s->handle, (long )((void *)(& (cx->scb)->cpu_mdl_ack) + (unsigned long )s->type) - (long )cx->enc_mem,
            (long )((void *)(& (cx->scb)->cpu_mdl_ack) + ((unsigned long )s->type + 1UL)) - (long )cx->enc_mem);
  cx18_stream_configure_mdls(s);
  _cx18_stream_load_fw_queue(s);
  tmp___9 = cx18_vapi(cx, 537001986U, 1, s->handle);
  if (tmp___9 != 0) {
    if (cx18_debug & 1) {
      printk("\016%s:  warning: Error starting capture!\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    set_bit(9L, (unsigned long volatile *)(& s->s_flags));
    if (s->type == 0) {
      cx18_vapi(cx, 537001987U, 2, s->handle, 1);
    } else {
      cx18_vapi(cx, 537001987U, 1, s->handle);
    }
    clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
    cx18_vapi(cx, 537133062U, 1, s->handle);
    cx18_vapi(cx, 1073741826U, 1, s->handle);
    s->handle = 4294967295U;
    clear_bit(9L, (unsigned long volatile *)(& s->s_flags));
    tmp___8 = atomic_read((atomic_t const *)(& cx->tot_capturing));
    if (tmp___8 == 0) {
      set_bit(4L, (unsigned long volatile *)(& cx->i_flags));
      cx18_write_reg(cx, 5U, 13631564U);
    } else {
    }
    return (-22);
  } else {
  }
  if (captype != 7) {
    atomic_inc(& cx->ana_capturing);
  } else {
  }
  atomic_inc(& cx->tot_capturing);
  return (0);
}
}
static char const __kstrtab_cx18_start_v4l2_encode_stream[30U] =
  { 'c', 'x', '1', '8',
        '_', 's', 't', 'a',
        'r', 't', '_', 'v',
        '4', 'l', '2', '_',
        'e', 'n', 'c', 'o',
        'd', 'e', '_', 's',
        't', 'r', 'e', 'a',
        'm', '\000'};
struct kernel_symbol const __ksymtab_cx18_start_v4l2_encode_stream ;
struct kernel_symbol const __ksymtab_cx18_start_v4l2_encode_stream = {(unsigned long )(& cx18_start_v4l2_encode_stream), (char const *)(& __kstrtab_cx18_start_v4l2_encode_stream)};
void cx18_stop_all_captures(struct cx18 *cx )
{
  int i ;
  struct cx18_stream *s ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  i = 6;
  goto ldv_51960;
  ldv_51959:
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )i;
  tmp = cx18_stream_enabled(s);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_51958;
  } else {
  }
  tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___1 != 0) {
    cx18_stop_v4l2_encode_stream(s, 0);
  } else {
  }
  ldv_51958:
  i = i - 1;
  ldv_51960: ;
  if (i >= 0) {
    goto ldv_51959;
  } else {
  }
  return;
}
}
int cx18_stop_v4l2_encode_stream(struct cx18_stream *s , int gop_end )
{
  struct cx18 *cx ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  cx = s->cx;
  tmp = cx18_stream_enabled(s);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-22);
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Stop Capture\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& cx->tot_capturing));
  if (tmp___1 == 0) {
    return (0);
  } else {
  }
  set_bit(9L, (unsigned long volatile *)(& s->s_flags));
  if (s->type == 0) {
    cx18_vapi(cx, 537001987U, 2, s->handle, gop_end == 0);
  } else {
    cx18_vapi(cx, 537001987U, 1, s->handle);
  }
  if (s->type == 0 && gop_end != 0) {
    printk("\016%s: ignoring gop_end: not (yet?) supported by the firmware\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  if (s->type != 1) {
    atomic_dec(& cx->ana_capturing);
  } else {
  }
  atomic_dec(& cx->tot_capturing);
  clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
  cx18_vapi(cx, 537133062U, 1, s->handle);
  cx18_vapi(cx, 1073741826U, 1, s->handle);
  s->handle = 4294967295U;
  clear_bit(9L, (unsigned long volatile *)(& s->s_flags));
  tmp___2 = atomic_read((atomic_t const *)(& cx->tot_capturing));
  if (tmp___2 > 0) {
    return (0);
  } else {
  }
  cx2341x_handler_set_busy(& cx->cxhdl, 0);
  cx18_write_reg(cx, 5U, 13631564U);
  __wake_up(& s->waitq, 3U, 1, (void *)0);
  return (0);
}
}
static char const __kstrtab_cx18_stop_v4l2_encode_stream[29U] =
  { 'c', 'x', '1', '8',
        '_', 's', 't', 'o',
        'p', '_', 'v', '4',
        'l', '2', '_', 'e',
        'n', 'c', 'o', 'd',
        'e', '_', 's', 't',
        'r', 'e', 'a', 'm',
        '\000'};
struct kernel_symbol const __ksymtab_cx18_stop_v4l2_encode_stream ;
struct kernel_symbol const __ksymtab_cx18_stop_v4l2_encode_stream = {(unsigned long )(& cx18_stop_v4l2_encode_stream), (char const *)(& __kstrtab_cx18_stop_v4l2_encode_stream)};
u32 cx18_find_handle(struct cx18 *cx )
{
  int i ;
  struct cx18_stream *s ;
  {
  i = 0;
  goto ldv_51981;
  ldv_51980:
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )i;
  if ((unsigned long )s->video_dev != (unsigned long )((struct video_device *)0) && s->handle != 4294967295U) {
    return (s->handle);
  } else {
  }
  i = i + 1;
  ldv_51981: ;
  if (i <= 6) {
    goto ldv_51980;
  } else {
  }
  return (4294967295U);
}
}
struct cx18_stream *cx18_handle_to_stream(struct cx18 *cx , u32 handle )
{
  int i ;
  struct cx18_stream *s ;
  bool tmp ;
  {
  if (handle == 4294967295U) {
    return ((struct cx18_stream *)0);
  } else {
  }
  i = 0;
  goto ldv_51991;
  ldv_51990:
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )i;
  if (s->handle != handle) {
    goto ldv_51989;
  } else {
  }
  tmp = cx18_stream_enabled(s);
  if ((int )tmp) {
    return (s);
  } else {
  }
  ldv_51989:
  i = i + 1;
  ldv_51991: ;
  if (i <= 6) {
    goto ldv_51990;
  } else {
  }
  return ((struct cx18_stream *)0);
}
}
int ldv_retval_3 ;
int ldv_retval_2 ;
void ldv_initialize_v4l2_file_operations_14(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(512UL);
  cx18_v4l2_enc_fops_group0 = (struct file *)tmp;
  return;
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
  return;
}
}
void ldv_videobuf_queue_ops_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(616UL);
  cx18_videobuf_qops_group1 = (struct videobuf_queue *)tmp;
  tmp___0 = ldv_zalloc(240UL);
  cx18_videobuf_qops_group2 = (struct videobuf_buffer *)tmp___0;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_main_exported_13(void)
{
  enum v4l2_field ldvarg16 ;
  unsigned int *ldvarg17 ;
  void *tmp ;
  unsigned int *ldvarg18 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_zalloc(4UL);
  ldvarg17 = (unsigned int *)tmp;
  tmp___0 = ldv_zalloc(4UL);
  ldvarg18 = (unsigned int *)tmp___0;
  memset((void *)(& ldvarg16), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    buffer_setup(cx18_videobuf_qops_group1, ldvarg18, ldvarg17);
    ldv_state_variable_13 = 1;
  } else {
  }
  if (ldv_state_variable_13 == 2) {
    buffer_setup(cx18_videobuf_qops_group1, ldvarg18, ldvarg17);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_52022;
  case 1: ;
  if (ldv_state_variable_13 == 2) {
    buffer_release(cx18_videobuf_qops_group1, cx18_videobuf_qops_group2);
    ldv_state_variable_13 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_52022;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    buffer_queue(cx18_videobuf_qops_group1, cx18_videobuf_qops_group2);
    ldv_state_variable_13 = 1;
  } else {
  }
  if (ldv_state_variable_13 == 2) {
    buffer_queue(cx18_videobuf_qops_group1, cx18_videobuf_qops_group2);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_52022;
  case 3: ;
  if (ldv_state_variable_13 == 1) {
    ldv_retval_2 = buffer_prepare(cx18_videobuf_qops_group1, cx18_videobuf_qops_group2,
                                  ldvarg16);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_13 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_52022;
  default:
  ldv_stop();
  }
  ldv_52022: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  loff_t *ldvarg103 ;
  void *tmp ;
  unsigned long ldvarg100 ;
  unsigned long tmp___0 ;
  char *ldvarg105 ;
  void *tmp___1 ;
  unsigned int ldvarg101 ;
  unsigned int tmp___2 ;
  struct vm_area_struct *ldvarg106 ;
  void *tmp___3 ;
  struct poll_table_struct *ldvarg102 ;
  void *tmp___4 ;
  size_t ldvarg104 ;
  size_t tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg103 = (loff_t *)tmp;
  tmp___0 = __VERIFIER_nondet_ulong();
  ldvarg100 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg105 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_uint();
  ldvarg101 = tmp___2;
  tmp___3 = ldv_zalloc(184UL);
  ldvarg106 = (struct vm_area_struct *)tmp___3;
  tmp___4 = ldv_zalloc(16UL);
  ldvarg102 = (struct poll_table_struct *)tmp___4;
  tmp___5 = __VERIFIER_nondet_size_t();
  ldvarg104 = tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    cx18_v4l2_mmap(cx18_v4l2_enc_fops_group0, ldvarg106);
    ldv_state_variable_14 = 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    cx18_v4l2_mmap(cx18_v4l2_enc_fops_group0, ldvarg106);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_52038;
  case 1: ;
  if (ldv_state_variable_14 == 2) {
    cx18_v4l2_close(cx18_v4l2_enc_fops_group0);
    ldv_state_variable_14 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_52038;
  case 2: ;
  if (ldv_state_variable_14 == 2) {
    cx18_v4l2_read(cx18_v4l2_enc_fops_group0, ldvarg105, ldvarg104, ldvarg103);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_52038;
  case 3: ;
  if (ldv_state_variable_14 == 1) {
    cx18_v4l2_enc_poll(cx18_v4l2_enc_fops_group0, ldvarg102);
    ldv_state_variable_14 = 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    cx18_v4l2_enc_poll(cx18_v4l2_enc_fops_group0, ldvarg102);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_52038;
  case 4: ;
  if (ldv_state_variable_14 == 1) {
    ldv_retval_3 = cx18_v4l2_open(cx18_v4l2_enc_fops_group0);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_14 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_52038;
  case 5: ;
  if (ldv_state_variable_14 == 1) {
    video_ioctl2(cx18_v4l2_enc_fops_group0, ldvarg101, ldvarg100);
    ldv_state_variable_14 = 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    video_ioctl2(cx18_v4l2_enc_fops_group0, ldvarg101, ldvarg100);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_52038;
  default:
  ldv_stop();
  }
  ldv_52038: ;
  return;
}
}
int ldv_pskb_expand_head_280(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_282(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_284(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_285(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_286(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_287(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_288(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_289(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_290(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void might_fault(void) ;
extern void list_del(struct list_head * ) ;
extern void *memchr(void const * , int , __kernel_size_t ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_308(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void schedule(void) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_to_user(to, from, (unsigned int )n);
    } else {
      __copy_to_user_overflow();
    }
  }
  return (n);
}
}
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if (((unsigned long )p != (unsigned long )((poll_table *)0) && (unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0)) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0)) {
    (*(p->_qproc))(filp, wait_address, p);
  } else {
  }
  return;
}
}
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
extern struct video_device *video_devdata(struct file * ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
extern int v4l2_fh_is_singular(struct v4l2_fh * ) ;
__inline static int v4l2_fh_is_singular_file(struct file *filp )
{
  int tmp ;
  {
  tmp = v4l2_fh_is_singular((struct v4l2_fh *)filp->private_data);
  return (tmp);
}
}
extern int v4l2_ctrl_s_ctrl(struct v4l2_ctrl * , s32 ) ;
struct sk_buff *ldv_skb_clone_324(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_332(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_326(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_322(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_330(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_331(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_327(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_328(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_329(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern ssize_t videobuf_read_stream(struct videobuf_queue * , char * , size_t , loff_t * ,
                                    int , int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
__inline static struct cx18_open_id *fh2id(struct v4l2_fh *fh )
{
  struct v4l2_fh const *__mptr ;
  {
  __mptr = (struct v4l2_fh const *)fh;
  return ((struct cx18_open_id *)__mptr);
}
}
__inline static struct cx18_open_id *file2id(struct file *file )
{
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)file->private_data);
  return (tmp);
}
}
int cx18_start_capture(struct cx18_open_id *id ) ;
void cx18_stop_capture(struct cx18_open_id *id , int gop_end ) ;
void cx18_mute(struct cx18 *cx ) ;
void cx18_unmute(struct cx18 *cx ) ;
int cx18_claim_stream(struct cx18_open_id *id , int type ) ;
void cx18_release_stream(struct cx18_stream *s ) ;
__inline static void cx18_mdl_swap(struct cx18_mdl *mdl )
{
  struct list_head const *__mptr ;
  int tmp ;
  {
  tmp = list_is_singular((struct list_head const *)(& mdl->buf_list));
  if (tmp != 0) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    cx18_buf_swap((struct cx18_buffer *)__mptr);
  } else {
    _cx18_mdl_swap(mdl);
  }
  return;
}
}
void cx18_process_vbi_data(struct cx18 *cx , struct cx18_mdl *mdl , int streamtype ) ;
int cx18_audio_set_io(struct cx18 *cx ) ;
__inline static void cx18_stream_load_fw_queue(struct cx18_stream *s )
{
  {
  schedule_work(& s->out_work_order);
  return;
}
}
__inline static void cx18_stream_put_mdl_fw(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  {
  cx18_enqueue(s, mdl, & s->q_free);
  cx18_stream_load_fw_queue(s);
  return;
}
}
int cx18_claim_stream(struct cx18_open_id *id , int type )
{
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct cx18_stream *s_assoc ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )type;
  if (type == 5) {
    printk("\f%s: MPEG Index stream cannot be claimed directly, but something tried.\n",
           (char *)(& cx->v4l2_dev.name));
    return (-22);
  } else {
  }
  tmp = test_and_set_bit(3L, (unsigned long volatile *)(& s->s_flags));
  if (tmp != 0) {
    if (s->id == id->open_id) {
      return (0);
    } else {
    }
    if (s->id == 4294967295U && type == 3) {
      s->id = id->open_id;
      if ((cx18_debug & 2) != 0) {
        printk("\016%s:  info: Start Read VBI\n", (char *)(& cx->v4l2_dev.name));
      } else {
      }
      return (0);
    } else {
    }
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Stream %d is busy\n", (char *)(& cx->v4l2_dev.name),
             type);
    } else {
    }
    return (-16);
  } else {
  }
  s->id = id->open_id;
  if (type != 0) {
    return (0);
  } else {
  }
  s_assoc = (struct cx18_stream *)(& cx->streams) + 5UL;
  if (cx->vbi.insert_mpeg != 0) {
    tmp___2 = cx18_raw_vbi((struct cx18 const *)cx);
    if (tmp___2 == 0) {
      s_assoc = (struct cx18_stream *)(& cx->streams) + 3UL;
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp___0 = cx18_stream_enabled(s_assoc);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (0);
    } else {
    }
  }
  set_bit(3L, (unsigned long volatile *)(& s_assoc->s_flags));
  set_bit(5L, (unsigned long volatile *)(& s_assoc->s_flags));
  return (0);
}
}
static char const __kstrtab_cx18_claim_stream[18U] =
  { 'c', 'x', '1', '8',
        '_', 'c', 'l', 'a',
        'i', 'm', '_', 's',
        't', 'r', 'e', 'a',
        'm', '\000'};
struct kernel_symbol const __ksymtab_cx18_claim_stream ;
struct kernel_symbol const __ksymtab_cx18_claim_stream = {(unsigned long )(& cx18_claim_stream), (char const *)(& __kstrtab_cx18_claim_stream)};
void cx18_release_stream(struct cx18_stream *s )
{
  struct cx18 *cx ;
  struct cx18_stream *s_assoc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  cx = s->cx;
  s->id = 4294967295U;
  if (s->type == 5) {
    return;
  } else {
  }
  if (s->type == 3) {
    tmp = constant_test_bit(5L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp != 0) {
      return;
    } else {
    }
  } else {
  }
  tmp___0 = test_and_clear_bit(3L, (unsigned long volatile *)(& s->s_flags));
  if (tmp___0 == 0) {
    if (cx18_debug & 1) {
      printk("\016%s:  warning: Release stream %s not in use!\n", (char *)(& cx->v4l2_dev.name),
             s->name);
    } else {
    }
    return;
  } else {
  }
  cx18_flush_queues(s);
  if (s->type != 0) {
    return;
  } else {
  }
  s_assoc = (struct cx18_stream *)(& cx->streams) + 5UL;
  tmp___1 = test_and_clear_bit(5L, (unsigned long volatile *)(& s_assoc->s_flags));
  if (tmp___1 != 0) {
    clear_bit(3L, (unsigned long volatile *)(& s_assoc->s_flags));
    cx18_flush_queues(s_assoc);
  } else {
  }
  s_assoc = (struct cx18_stream *)(& cx->streams) + 3UL;
  tmp___2 = test_and_clear_bit(5L, (unsigned long volatile *)(& s_assoc->s_flags));
  if (tmp___2 != 0) {
    if (s_assoc->id == 4294967295U) {
      clear_bit(3L, (unsigned long volatile *)(& s_assoc->s_flags));
      cx18_flush_queues(s_assoc);
    } else {
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_cx18_release_stream[20U] =
  { 'c', 'x', '1', '8',
        '_', 'r', 'e', 'l',
        'e', 'a', 's', 'e',
        '_', 's', 't', 'r',
        'e', 'a', 'm', '\000'};
struct kernel_symbol const __ksymtab_cx18_release_stream ;
struct kernel_symbol const __ksymtab_cx18_release_stream = {(unsigned long )(& cx18_release_stream), (char const *)(& __kstrtab_cx18_release_stream)};
static void cx18_dualwatch(struct cx18 *cx )
{
  struct v4l2_tuner vt ;
  u32 new_stereo_mode ;
  u32 dual ;
  s32 tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  dual = 512U;
  tmp = v4l2_ctrl_g_ctrl(cx->cxhdl.ldv_36957.audio_mode);
  new_stereo_mode = (u32 )tmp;
  memset((void *)(& vt), 0, 84UL);
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51670;
  ldv_51669: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, & vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51670: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51669;
  } else {
  }
  if (vt.audmode == 4U && (vt.rxsubchans & 4U) != 0U) {
    new_stereo_mode = dual;
  } else {
  }
  if (cx->dualwatch_stereo_mode == new_stereo_mode) {
    return;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: dualwatch: change stereo flag from 0x%x to 0x%x.\n", (char *)(& cx->v4l2_dev.name),
           cx->dualwatch_stereo_mode, new_stereo_mode);
  } else {
  }
  tmp___0 = v4l2_ctrl_s_ctrl(cx->cxhdl.ldv_36957.audio_mode, (s32 )new_stereo_mode);
  if (tmp___0 != 0) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: dualwatch: changing stereo flag failed\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
  } else {
  }
  return;
}
}
static struct cx18_mdl *cx18_get_mdl(struct cx18_stream *s , int non_block , int *err )
{
  struct cx18 *cx ;
  struct cx18_stream *s_vbi ;
  struct cx18_mdl *mdl ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct task_struct *tmp___6 ;
  int tmp___7 ;
  {
  cx = s->cx;
  s_vbi = (struct cx18_stream *)(& cx->streams) + 3UL;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  *err = 0;
  ldv_51690: ;
  if (s->type == 0) {
    tmp___0 = msecs_to_jiffies(1000U);
    if ((long )((cx->dualwatch_jiffies + tmp___0) - (unsigned long )jiffies) < 0L) {
      cx->dualwatch_jiffies = jiffies;
      cx18_dualwatch(cx);
    } else {
    }
    tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& s_vbi->s_flags));
    if (tmp___1 != 0) {
      tmp___2 = constant_test_bit(8L, (unsigned long const volatile *)(& s_vbi->s_flags));
      if (tmp___2 == 0) {
        goto ldv_51688;
        ldv_51687:
        cx18_process_vbi_data(cx, mdl, s_vbi->type);
        cx18_stream_put_mdl_fw(s_vbi, mdl);
        ldv_51688:
        mdl = cx18_dequeue(s_vbi, & s_vbi->q_full);
        if ((unsigned long )mdl != (unsigned long )((struct cx18_mdl *)0)) {
          goto ldv_51687;
        } else {
        }
      } else {
      }
    } else {
    }
    mdl = & cx->vbi.sliced_mpeg_mdl;
    if (mdl->readpos != mdl->bytesused) {
      return (mdl);
    } else {
    }
  } else {
  }
  mdl = cx18_dequeue(s, & s->q_full);
  if ((unsigned long )mdl != (unsigned long )((struct cx18_mdl *)0)) {
    tmp___3 = test_and_clear_bit(0L, (unsigned long volatile *)(& mdl->m_flags));
    if (tmp___3 == 0) {
      return (mdl);
    } else {
    }
    if (s->type == 0) {
      cx18_mdl_swap(mdl);
    } else {
      cx18_process_vbi_data(cx, mdl, s->type);
    }
    return (mdl);
  } else {
  }
  tmp___4 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___4 == 0) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: EOS %s\n", (char *)(& cx->v4l2_dev.name), s->name);
    } else {
    }
    return ((struct cx18_mdl *)0);
  } else {
  }
  if (non_block != 0) {
    *err = -11;
    return ((struct cx18_mdl *)0);
  } else {
  }
  prepare_to_wait(& s->waitq, & wait, 1);
  tmp___5 = atomic_read((atomic_t const *)(& s->q_full.depth));
  if (tmp___5 == 0) {
    schedule();
  } else {
  }
  finish_wait(& s->waitq, & wait);
  tmp___6 = get_current();
  tmp___7 = signal_pending(tmp___6);
  if (tmp___7 != 0) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: User stopped %s\n", (char *)(& cx->v4l2_dev.name), s->name);
    } else {
    }
    *err = -4;
    return ((struct cx18_mdl *)0);
  } else {
  }
  goto ldv_51690;
}
}
static void cx18_setup_sliced_vbi_mdl(struct cx18 *cx )
{
  struct cx18_mdl *mdl ;
  struct cx18_buffer *buf ;
  int idx ;
  {
  mdl = & cx->vbi.sliced_mpeg_mdl;
  buf = & cx->vbi.sliced_mpeg_buf;
  idx = (int )cx->vbi.inserted_frame & 31;
  buf->buf = (char *)cx->vbi.sliced_mpeg_data[idx];
  buf->bytesused = cx->vbi.sliced_mpeg_size[idx];
  buf->readpos = 0U;
  mdl->curr_buf = (struct cx18_buffer *)0;
  mdl->bytesused = cx->vbi.sliced_mpeg_size[idx];
  mdl->readpos = 0U;
  return;
}
}
static size_t cx18_copy_buf_to_user(struct cx18_stream *s , struct cx18_buffer *buf ,
                                    char *ubuf , size_t ucount , bool *stop )
{
  struct cx18 *cx ;
  size_t len ;
  char const *start ;
  char const *p ;
  u8 const *q ;
  u8 ch ;
  int stuffing ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  cx = s->cx;
  len = (size_t )(buf->bytesused - buf->readpos);
  *stop = 0;
  if (len > ucount) {
    len = ucount;
  } else {
  }
  if (cx->vbi.insert_mpeg != 0 && s->type == 0) {
    tmp___0 = cx18_raw_vbi((struct cx18 const *)cx);
    if (tmp___0 == 0) {
      if ((unsigned long )(& cx->vbi.sliced_mpeg_buf) != (unsigned long )buf) {
        start = (char const *)buf->buf + (unsigned long )buf->readpos;
        p = start + 1UL;
        ch = cx->search_pack_header != 0 ? 186U : 224U;
        goto ldv_51713;
        ldv_51717:
        tmp = memchr((void const *)p, 0, (__kernel_size_t )((long )(start + len) - (long )p));
        q = (u8 const *)tmp;
        if ((unsigned long )q == (unsigned long )((u8 const *)0U)) {
          goto ldv_51712;
        } else {
        }
        p = (char const *)q + 1U;
        if ((((unsigned long )((char *)q + 15UL) >= (unsigned long )(buf->buf + (unsigned long )buf->bytesused) || (unsigned int )((unsigned char )*(q + 1UL)) != 0U) || (unsigned int )((unsigned char )*(q + 2UL)) != 1U) || (int )((unsigned char )*(q + 3UL)) != (int )ch) {
          goto ldv_51713;
        } else {
        }
        if (cx->search_pack_header == 0) {
          if (((int )*(q + 6UL) & 192) != 128) {
            goto ldv_51713;
          } else {
          }
          if ((((int )*(q + 7UL) & 192) == 128 && ((int )*(q + 9UL) & 240) == 32) || (((int )*(q + 7UL) & 192) == 192 && ((int )*(q + 9UL) & 240) == 48)) {
            ch = 186U;
            cx->search_pack_header = 1;
            p = (char const *)q + 9U;
          } else {
          }
          goto ldv_51713;
        } else {
        }
        stuffing = (int )*(q + 13UL) & 7;
        i = 0;
        goto ldv_51716;
        ldv_51715: ;
        if ((unsigned int )((unsigned char )*(q + (unsigned long )(i + 14))) != 255U) {
          goto ldv_51714;
        } else {
        }
        i = i + 1;
        ldv_51716: ;
        if (i < stuffing) {
          goto ldv_51715;
        } else {
        }
        ldv_51714: ;
        if (((((i == stuffing && ((int )*(q + 4UL) & 196) == 68) && ((int )*(q + 12UL) & 3) == 3) && (unsigned int )((unsigned char )*(q + (unsigned long )(stuffing + 14))) == 0U) && (unsigned int )((unsigned char )*(q + (unsigned long )(stuffing + 15))) == 0U) && (unsigned int )((unsigned char )*(q + (unsigned long )(stuffing + 16))) == 1U) {
          cx->search_pack_header = 0;
          len = (size_t )((long )q - (long )start);
          cx18_setup_sliced_vbi_mdl(cx);
          *stop = 1;
          goto ldv_51712;
        } else {
        }
        ldv_51713: ;
        if ((unsigned long )(start + len) > (unsigned long )p) {
          goto ldv_51717;
        } else {
        }
        ldv_51712: ;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___1 = copy_to_user((void *)ubuf, (void const *)buf->buf + (unsigned long )buf->readpos,
                         len);
  if (tmp___1 != 0UL) {
    if (cx18_debug & 1) {
      printk("\016%s:  warning: copy %zd bytes to user failed for %s\n", (char *)(& cx->v4l2_dev.name),
             len, s->name);
    } else {
    }
    return (0xfffffffffffffff2UL);
  } else {
  }
  buf->readpos = buf->readpos + (u32 )len;
  if (s->type == 0 && (unsigned long )(& cx->vbi.sliced_mpeg_buf) != (unsigned long )buf) {
    cx->mpg_data_received = cx->mpg_data_received + (unsigned long long )len;
  } else {
  }
  return (len);
}
}
static size_t cx18_copy_mdl_to_user(struct cx18_stream *s , struct cx18_mdl *mdl ,
                                    char *ubuf , size_t ucount )
{
  size_t tot_written ;
  int rc ;
  bool stop ;
  struct list_head const *__mptr ;
  size_t tmp ;
  struct list_head const *__mptr___0 ;
  {
  tot_written = 0UL;
  stop = 0;
  if ((unsigned long )mdl->curr_buf == (unsigned long )((struct cx18_buffer *)0)) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    mdl->curr_buf = (struct cx18_buffer *)__mptr;
  } else {
  }
  if ((unsigned long )(& (mdl->curr_buf)->list) == (unsigned long )(& mdl->buf_list)) {
    mdl->readpos = mdl->bytesused;
    return (0UL);
  } else {
  }
  goto ldv_51734;
  ldv_51733: ;
  if ((mdl->curr_buf)->readpos >= (mdl->curr_buf)->bytesused) {
    goto ldv_51731;
  } else {
  }
  tmp = cx18_copy_buf_to_user(s, mdl->curr_buf, ubuf + tot_written, ucount - tot_written,
                              & stop);
  rc = (int )tmp;
  if (rc < 0) {
    return ((size_t )rc);
  } else {
  }
  mdl->readpos = mdl->readpos + (u32 )rc;
  tot_written = (size_t )rc + tot_written;
  if ((((int )stop || tot_written >= ucount) || (mdl->curr_buf)->readpos < (mdl->curr_buf)->bytesused) || mdl->readpos >= mdl->bytesused) {
    goto ldv_51732;
  } else {
  }
  ldv_51731:
  __mptr___0 = (struct list_head const *)(mdl->curr_buf)->list.next;
  mdl->curr_buf = (struct cx18_buffer *)__mptr___0;
  ldv_51734: ;
  if ((unsigned long )(& (mdl->curr_buf)->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51733;
  } else {
  }
  ldv_51732: ;
  return (tot_written);
}
}
static ssize_t cx18_read(struct cx18_stream *s , char *ubuf , size_t tot_count , int non_block )
{
  struct cx18 *cx ;
  size_t tot_written ;
  int single_frame ;
  int tmp ;
  int tmp___0 ;
  struct cx18_mdl *mdl ;
  int rc ;
  size_t tmp___1 ;
  int idx ;
  {
  cx = s->cx;
  tot_written = 0UL;
  single_frame = 0;
  tmp = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp == 0 && s->id == 4294967295U) {
    if (cx18_debug & 1) {
      printk("\016%s:  warning: Stream %s not initialized before read\n", (char *)(& cx->v4l2_dev.name),
             s->name);
    } else {
    }
    return (-5L);
  } else {
  }
  if (s->type == 3) {
    tmp___0 = cx18_raw_vbi((struct cx18 const *)cx);
    if (tmp___0 == 0) {
      single_frame = 1;
    } else {
    }
  } else {
  }
  ldv_51748:
  mdl = cx18_get_mdl(s, non_block, & rc);
  if ((unsigned long )mdl == (unsigned long )((struct cx18_mdl *)0)) {
    if (tot_written != 0UL) {
      goto ldv_51746;
    } else {
    }
    if (rc == 0) {
      clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
      clear_bit(8L, (unsigned long volatile *)(& s->s_flags));
      cx18_release_stream(s);
    } else {
    }
    return ((ssize_t )rc);
  } else {
  }
  tmp___1 = cx18_copy_mdl_to_user(s, mdl, ubuf + tot_written, tot_count - tot_written);
  rc = (int )tmp___1;
  if ((unsigned long )(& cx->vbi.sliced_mpeg_mdl) != (unsigned long )mdl) {
    if (mdl->readpos == mdl->bytesused) {
      cx18_stream_put_mdl_fw(s, mdl);
    } else {
      cx18_push(s, mdl, & s->q_full);
    }
  } else
  if (mdl->readpos == mdl->bytesused) {
    idx = (int )cx->vbi.inserted_frame & 31;
    cx->vbi.sliced_mpeg_size[idx] = 0U;
    cx->vbi.inserted_frame = cx->vbi.inserted_frame + 1U;
    cx->vbi_data_inserted = cx->vbi_data_inserted + (u64 )mdl->bytesused;
  } else {
  }
  if (rc < 0) {
    return ((ssize_t )rc);
  } else {
  }
  tot_written = (size_t )rc + tot_written;
  if (tot_written == tot_count || single_frame != 0) {
    goto ldv_51746;
  } else {
  }
  goto ldv_51748;
  ldv_51746: ;
  return ((ssize_t )tot_written);
}
}
static ssize_t cx18_read_pos(struct cx18_stream *s , char *ubuf , size_t count , loff_t *pos ,
                             int non_block )
{
  ssize_t rc ;
  ssize_t tmp ;
  ssize_t tmp___0 ;
  struct cx18 *cx ;
  {
  if (count != 0UL) {
    tmp = cx18_read(s, ubuf, count, non_block);
    tmp___0 = tmp;
  } else {
    tmp___0 = 0L;
  }
  rc = tmp___0;
  cx = s->cx;
  if ((cx18_debug & 32) != 0 && (cx18_debug & 256) != 0) {
    printk("\016%s:  file: read %zd from %s, got %zd\n", (char *)(& cx->v4l2_dev.name),
           count, s->name, rc);
  } else {
  }
  if (rc > 0L) {
    pos = pos + (unsigned long )rc;
  } else {
  }
  return (rc);
}
}
int cx18_start_capture(struct cx18_open_id *id )
{
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct cx18_stream *s_vbi ;
  struct cx18_stream *s_idx ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if (s->type == 6) {
    return (-1);
  } else {
  }
  tmp = cx18_claim_stream(id, s->type);
  if (tmp != 0) {
    return (-16);
  } else {
  }
  tmp___0 = constant_test_bit(7L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___0 != 0) {
    set_bit(8L, (unsigned long volatile *)(& s->s_flags));
    return (0);
  } else {
    tmp___1 = test_and_set_bit(4L, (unsigned long volatile *)(& s->s_flags));
    if (tmp___1 != 0) {
      set_bit(8L, (unsigned long volatile *)(& s->s_flags));
      return (0);
    } else {
    }
  }
  s_vbi = (struct cx18_stream *)(& cx->streams) + 3UL;
  s_idx = (struct cx18_stream *)(& cx->streams) + 5UL;
  if (s->type == 0) {
    tmp___3 = constant_test_bit(5L, (unsigned long const volatile *)(& s_idx->s_flags));
    if (tmp___3 != 0) {
      tmp___4 = test_and_set_bit(4L, (unsigned long volatile *)(& s_idx->s_flags));
      if (tmp___4 == 0) {
        tmp___2 = cx18_start_v4l2_encode_stream(s_idx);
        if (tmp___2 != 0) {
          if (cx18_debug & 1) {
            printk("\016%s:  warning: IDX capture start failed\n", (char *)(& cx->v4l2_dev.name));
          } else {
          }
          clear_bit(4L, (unsigned long volatile *)(& s_idx->s_flags));
          goto start_failed;
        } else {
        }
        if ((cx18_debug & 2) != 0) {
          printk("\016%s:  info: IDX capture started\n", (char *)(& cx->v4l2_dev.name));
        } else {
        }
      } else {
      }
    } else {
    }
    tmp___6 = constant_test_bit(5L, (unsigned long const volatile *)(& s_vbi->s_flags));
    if (tmp___6 != 0) {
      tmp___7 = test_and_set_bit(4L, (unsigned long volatile *)(& s_vbi->s_flags));
      if (tmp___7 == 0) {
        tmp___5 = cx18_start_v4l2_encode_stream(s_vbi);
        if (tmp___5 != 0) {
          if (cx18_debug & 1) {
            printk("\016%s:  warning: VBI capture start failed\n", (char *)(& cx->v4l2_dev.name));
          } else {
          }
          clear_bit(4L, (unsigned long volatile *)(& s_vbi->s_flags));
          goto start_failed;
        } else {
        }
        if ((cx18_debug & 2) != 0) {
          printk("\016%s:  info: VBI insertion started\n", (char *)(& cx->v4l2_dev.name));
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___9 = cx18_start_v4l2_encode_stream(s);
  if (tmp___9 == 0) {
    set_bit(8L, (unsigned long volatile *)(& s->s_flags));
    tmp___8 = test_and_clear_bit(13L, (unsigned long volatile *)(& cx->i_flags));
    if (tmp___8 != 0) {
      cx18_vapi(cx, 537001991U, 1, s->handle);
    } else {
    }
    return (0);
  } else {
  }
  start_failed: ;
  if (cx18_debug & 1) {
    printk("\016%s:  warning: Failed to start capturing for stream %s\n", (char *)(& cx->v4l2_dev.name),
           s->name);
  } else {
  }
  if (s->type == 0) {
    tmp___10 = constant_test_bit(4L, (unsigned long const volatile *)(& s_idx->s_flags));
    if (tmp___10 != 0) {
      cx18_stop_v4l2_encode_stream(s_idx, 0);
      clear_bit(4L, (unsigned long volatile *)(& s_idx->s_flags));
    } else {
    }
    tmp___11 = constant_test_bit(4L, (unsigned long const volatile *)(& s_vbi->s_flags));
    if (tmp___11 != 0) {
      tmp___12 = constant_test_bit(8L, (unsigned long const volatile *)(& s_vbi->s_flags));
      if (tmp___12 == 0) {
        cx18_stop_v4l2_encode_stream(s_vbi, 0);
        clear_bit(4L, (unsigned long volatile *)(& s_vbi->s_flags));
      } else {
      }
    } else {
    }
  } else {
  }
  clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
  cx18_release_stream(s);
  return (-5);
}
}
ssize_t cx18_v4l2_read(struct file *filp , char *buf , size_t count , loff_t *pos )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  int rc ;
  ssize_t tmp___0 ;
  ssize_t tmp___1 ;
  {
  tmp = file2id(filp);
  id = tmp;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((cx18_debug & 32) != 0 && (cx18_debug & 256) != 0) {
    printk("\016%s:  file: read %zd bytes from %s\n", (char *)(& cx->v4l2_dev.name),
           count, s->name);
  } else {
  }
  mutex_lock_nested(& cx->serialize_lock, 0U);
  rc = cx18_start_capture(id);
  mutex_unlock(& cx->serialize_lock);
  if (rc != 0) {
    return ((ssize_t )rc);
  } else {
  }
  if ((unsigned int )s->vb_type == 1U && id->type == 2) {
    tmp___0 = videobuf_read_stream(& s->vbuf_q, buf, count, pos, 0, (int )filp->f_flags & 2048);
    return (tmp___0);
  } else {
  }
  tmp___1 = cx18_read_pos(s, buf, count, pos, (int )filp->f_flags & 2048);
  return (tmp___1);
}
}
unsigned int cx18_v4l2_enc_poll(struct file *filp , poll_table *wait )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  int eof ;
  int tmp___0 ;
  int rc ;
  int tmp___1 ;
  int videobuf_poll ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  tmp = file2id(filp);
  id = tmp;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  tmp___0 = constant_test_bit(7L, (unsigned long const volatile *)(& s->s_flags));
  eof = tmp___0;
  if (eof == 0) {
    tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp___1 == 0) {
      mutex_lock_nested(& cx->serialize_lock, 0U);
      rc = cx18_start_capture(id);
      mutex_unlock(& cx->serialize_lock);
      if (rc != 0) {
        if ((cx18_debug & 2) != 0) {
          printk("\016%s:  info: Could not start capture for %s (%d)\n", (char *)(& cx->v4l2_dev.name),
                 s->name, rc);
        } else {
        }
        return (8U);
      } else {
      }
      if ((cx18_debug & 32) != 0) {
        printk("\016%s:  file: Encoder poll started capture\n", (char *)(& cx->v4l2_dev.name));
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )s->vb_type == 1U && id->type == 2) {
    tmp___2 = videobuf_poll_stream(filp, & s->vbuf_q, wait);
    videobuf_poll = (int )tmp___2;
    if (eof != 0 && videobuf_poll == 8) {
      return (16U);
    } else {
      return ((unsigned int )videobuf_poll);
    }
  } else {
  }
  if ((cx18_debug & 32) != 0 && (cx18_debug & 256) != 0) {
    printk("\016%s:  file: Encoder poll\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  poll_wait(filp, & s->waitq, wait);
  tmp___3 = atomic_read((atomic_t const *)(& s->q_full.depth));
  if (tmp___3 != 0) {
    return (65U);
  } else {
  }
  if (eof != 0) {
    return (16U);
  } else {
  }
  return (0U);
}
}
int cx18_v4l2_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  int eof ;
  int tmp ;
  int rc ;
  int tmp___0 ;
  int tmp___1 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  tmp = constant_test_bit(7L, (unsigned long const volatile *)(& s->s_flags));
  eof = tmp;
  if ((unsigned int )s->vb_type == 1U && id->type == 2) {
    if (eof == 0) {
      tmp___0 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
      if (tmp___0 == 0) {
        mutex_lock_nested(& cx->serialize_lock, 0U);
        rc = cx18_start_capture(id);
        mutex_unlock(& cx->serialize_lock);
        if (rc != 0) {
          if ((cx18_debug & 2) != 0) {
            printk("\016%s:  info: Could not start capture for %s (%d)\n", (char *)(& cx->v4l2_dev.name),
                   s->name, rc);
          } else {
          }
          return (-22);
        } else {
        }
        if ((cx18_debug & 32) != 0) {
          printk("\016%s:  file: Encoder mmap started capture\n", (char *)(& cx->v4l2_dev.name));
        } else {
        }
      } else {
      }
    } else {
    }
    tmp___1 = videobuf_mmap_mapper(& s->vbuf_q, vma);
    return (tmp___1);
  } else {
  }
  return (-22);
}
}
void cx18_vb_timeout(unsigned long data )
{
  struct cx18_stream *s ;
  struct cx18_videobuf_buffer *buf ;
  unsigned long flags ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  s = (struct cx18_stream *)data;
  ldv_spin_lock();
  goto ldv_51804;
  ldv_51803:
  __mptr = (struct list_head const *)s->vb_capture.next;
  buf = (struct cx18_videobuf_buffer *)__mptr + 0xffffffffffffffc8UL;
  list_del(& buf->vb.queue);
  buf->vb.state = 5;
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  ldv_51804:
  tmp = list_empty((struct list_head const *)(& s->vb_capture));
  if (tmp == 0) {
    goto ldv_51803;
  } else {
  }
  spin_unlock_irqrestore(& s->vb_lock, flags);
  return;
}
}
void cx18_stop_capture(struct cx18_open_id *id , int gop_end )
{
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct cx18_stream *s_vbi ;
  struct cx18_stream *s_idx ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  s_vbi = (struct cx18_stream *)(& cx->streams) + 3UL;
  s_idx = (struct cx18_stream *)(& cx->streams) + 5UL;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: close() of %s\n", (char *)(& cx->v4l2_dev.name), s->name);
  } else {
  }
  tmp___3 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___3 != 0) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: close stopping capture\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    if (id->type == 0) {
      tmp = constant_test_bit(4L, (unsigned long const volatile *)(& s_vbi->s_flags));
      if (tmp != 0) {
        tmp___0 = constant_test_bit(8L, (unsigned long const volatile *)(& s_vbi->s_flags));
        if (tmp___0 == 0) {
          if ((cx18_debug & 2) != 0) {
            printk("\016%s:  info: close stopping embedded VBI capture\n", (char *)(& cx->v4l2_dev.name));
          } else {
          }
          cx18_stop_v4l2_encode_stream(s_vbi, 0);
        } else {
        }
      } else {
      }
      tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& s_idx->s_flags));
      if (tmp___1 != 0) {
        if ((cx18_debug & 2) != 0) {
          printk("\016%s:  info: close stopping IDX capture\n", (char *)(& cx->v4l2_dev.name));
        } else {
        }
        cx18_stop_v4l2_encode_stream(s_idx, 0);
      } else {
      }
    } else {
    }
    if (id->type == 3) {
      tmp___2 = constant_test_bit(5L, (unsigned long const volatile *)(& s->s_flags));
      if (tmp___2 != 0) {
        s->id = 4294967295U;
      } else {
        cx18_stop_v4l2_encode_stream(s, gop_end);
      }
    } else {
      cx18_stop_v4l2_encode_stream(s, gop_end);
    }
  } else {
  }
  if (gop_end == 0) {
    clear_bit(8L, (unsigned long volatile *)(& s->s_flags));
    clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
    cx18_release_stream(s);
  } else {
  }
  return;
}
}
int cx18_v4l2_close(struct file *filp )
{
  struct v4l2_fh *fh ;
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  s32 tmp___0 ;
  s32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  fh = (struct v4l2_fh *)filp->private_data;
  tmp = fh2id(fh);
  id = tmp;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: close() of %s\n", (char *)(& cx->v4l2_dev.name), s->name);
  } else {
  }
  mutex_lock_nested(& cx->serialize_lock, 0U);
  if (id->type == 6) {
    tmp___3 = v4l2_fh_is_singular_file(filp);
    if (tmp___3 != 0) {
      cx18_mute(cx);
      clear_bit(5L, (unsigned long volatile *)(& cx->i_flags));
      __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
      goto ldv_51827;
      ldv_51826: ;
      if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                v4l2_std_id ))0)) {
        (*(((__sd->ops)->video)->s_std))(__sd, cx->std);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_51827: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
        goto ldv_51826;
      } else {
      }
      cx18_audio_set_io(cx);
      tmp___2 = atomic_read((atomic_t const *)(& cx->ana_capturing));
      if (tmp___2 > 0) {
        tmp___0 = v4l2_ctrl_g_ctrl(cx->cxhdl.ldv_36972.video_mute);
        tmp___1 = v4l2_ctrl_g_ctrl(cx->cxhdl.ldv_36972.video_mute_yuv);
        cx18_vapi(cx, 537002003U, 2, s->handle, tmp___0 | (tmp___1 << 8));
      } else {
      }
      cx18_unmute(cx);
    } else {
    }
  } else {
  }
  v4l2_fh_del(fh);
  v4l2_fh_exit(fh);
  if (s->id == id->open_id) {
    cx18_stop_capture(id, 0);
  } else {
  }
  kfree((void const *)id);
  mutex_unlock(& cx->serialize_lock);
  return (0);
}
}
static int cx18_serialized_open(struct cx18_stream *s , struct file *filp )
{
  struct cx18 *cx ;
  struct cx18_open_id *item ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___3 ;
  {
  cx = s->cx;
  if ((cx18_debug & 32) != 0) {
    printk("\016%s:  file: open %s\n", (char *)(& cx->v4l2_dev.name), s->name);
  } else {
  }
  tmp = kzalloc(192UL, 208U);
  item = (struct cx18_open_id *)tmp;
  if ((unsigned long )item == (unsigned long )((struct cx18_open_id *)0)) {
    if (cx18_debug & 1) {
      printk("\016%s:  warning: nomem on v4l2 open\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    return (-12);
  } else {
  }
  v4l2_fh_init(& item->fh, s->video_dev);
  item->cx = cx;
  item->type = s->type;
  tmp___0 = cx->open_id;
  cx->open_id = cx->open_id + 1;
  item->open_id = (u32 )tmp___0;
  filp->private_data = (void *)(& item->fh);
  v4l2_fh_add(& item->fh);
  if (item->type == 6) {
    tmp___3 = v4l2_fh_is_singular_file(filp);
    if (tmp___3 != 0) {
      tmp___2 = constant_test_bit(5L, (unsigned long const volatile *)(& cx->i_flags));
      if (tmp___2 == 0) {
        tmp___1 = atomic_read((atomic_t const *)(& cx->ana_capturing));
        if (tmp___1 > 0) {
          v4l2_fh_del(& item->fh);
          v4l2_fh_exit(& item->fh);
          kfree((void const *)item);
          return (-16);
        } else {
        }
      } else {
      }
      set_bit(5L, (unsigned long volatile *)(& cx->i_flags));
      cx18_mute(cx);
      __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
      goto ldv_51841;
      ldv_51840: ;
      if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
        (*(((__sd->ops)->tuner)->s_radio))(__sd);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_51841: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
        goto ldv_51840;
      } else {
      }
      cx18_audio_set_io(cx);
      cx18_unmute(cx);
    } else {
    }
  } else {
  }
  return (0);
}
}
int cx18_v4l2_open(struct file *filp )
{
  int res ;
  struct video_device *video_dev ;
  struct video_device *tmp ;
  struct cx18_stream *s ;
  void *tmp___0 ;
  struct cx18 *cx ;
  char const *tmp___1 ;
  int tmp___2 ;
  {
  tmp = video_devdata(filp);
  video_dev = tmp;
  tmp___0 = video_get_drvdata(video_dev);
  s = (struct cx18_stream *)tmp___0;
  cx = s->cx;
  mutex_lock_nested(& cx->serialize_lock, 0U);
  tmp___2 = cx18_init_on_first_open(cx);
  if (tmp___2 != 0) {
    tmp___1 = video_device_node_name(video_dev);
    printk("\v%s: Failed to initialize on %s\n", (char *)(& cx->v4l2_dev.name), tmp___1);
    mutex_unlock(& cx->serialize_lock);
    return (-6);
  } else {
  }
  res = cx18_serialized_open(s, filp);
  mutex_unlock(& cx->serialize_lock);
  return (res);
}
}
void cx18_mute(struct cx18 *cx )
{
  u32 h ;
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp != 0) {
    h = cx18_find_handle(cx);
    if (h != 4294967295U) {
      cx18_vapi(cx, 537002004U, 2, h, 1);
    } else {
      printk("\v%s: Can\'t find valid task handle for mute\n", (char *)(& cx->v4l2_dev.name));
    }
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Mute\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  return;
}
}
void cx18_unmute(struct cx18 *cx )
{
  u32 h ;
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp != 0) {
    h = cx18_find_handle(cx);
    if (h != 4294967295U) {
      cx18_msleep_timeout(100U, 0);
      cx18_vapi(cx, 537002005U, 2, h, 12);
      cx18_vapi(cx, 537002004U, 2, h, 0);
    } else {
      printk("\v%s: Can\'t find valid task handle for unmute\n", (char *)(& cx->v4l2_dev.name));
    }
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Unmute\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_308(lock, flags);
  return;
}
}
int ldv_pskb_expand_head_322(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_324(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_326(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_327(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_328(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_329(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_330(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_331(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_332(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_375(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern void v4l2_ctrl_handler_log_status(struct v4l2_ctrl_handler * , char const * ) ;
struct sk_buff *ldv_skb_clone_366(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_374(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_368(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_364(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_372(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_373(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_369(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_370(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_371(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
static unsigned int const vbi_active_samples___1 = 1444U;
__inline static void cx18_writel___3(struct cx18 *cx , u32 val , void *addr )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_51300;
  ldv_51299:
  cx18_writel_noretry(cx, val, addr);
  tmp = cx18_readl(cx, (void const *)addr);
  if (tmp == val) {
    goto ldv_51298;
  } else {
  }
  i = i + 1;
  ldv_51300: ;
  if (i <= 9) {
    goto ldv_51299;
  } else {
  }
  ldv_51298: ;
  return;
}
}
__inline static void cx18_write_enc(struct cx18 *cx , u32 val , u32 addr )
{
  {
  cx18_writel___3(cx, val, cx->enc_mem + (unsigned long )addr);
  return;
}
}
__inline static u32 cx18_read_enc(struct cx18 *cx , u32 addr )
{
  u32 tmp ;
  {
  tmp = cx18_readl(cx, (void const *)cx->enc_mem + (unsigned long )addr);
  return (tmp);
}
}
void cx18_video_set_io(struct cx18 *cx ) ;
u16 cx18_service2vbi(int type ) ;
void cx18_expand_service_set(struct v4l2_sliced_vbi_format *fmt , int is_pal ) ;
u16 cx18_get_service_set(struct v4l2_sliced_vbi_format *fmt ) ;
u16 cx18_service2vbi(int type )
{
  {
  switch (type) {
  case 1: ;
  return (1U);
  case 4096: ;
  return (4U);
  case 16384: ;
  return (5U);
  case 1024: ;
  return (7U);
  default: ;
  return (0U);
  }
}
}
static int valid_service_line(int field , int line , int is_pal )
{
  {
  return (((is_pal != 0 && line > 5) && ((field == 0 && line <= 23) || (field == 1 && line <= 22))) || ((is_pal == 0 && line > 9) && line <= 21));
}
}
static u16 select_service_from_set(int field , int line , u16 set , int is_pal )
{
  u16 valid_set ;
  int i ;
  int tmp ;
  {
  valid_set = is_pal != 0 ? 17409U : 4096U;
  set = (u16 )((int )set & (int )valid_set);
  if ((unsigned int )set == 0U) {
    return (0U);
  } else {
    tmp = valid_service_line(field, line, is_pal);
    if (tmp == 0) {
      return (0U);
    } else {
    }
  }
  if (is_pal == 0) {
    if (line == 21 && ((int )set & 4096) != 0) {
      return (4096U);
    } else {
    }
  } else {
    if ((line == 16 && field == 0) && ((int )set & 1024) != 0) {
      return (1024U);
    } else {
    }
    if ((line == 23 && field == 0) && ((int )set & 16384) != 0) {
      return (16384U);
    } else {
    }
    if (line == 23) {
      return (0U);
    } else {
    }
  }
  i = 0;
  goto ldv_51718;
  ldv_51717: ;
  if (((int )set >> i) & 1) {
    return ((u16 )(1 << i));
  } else {
  }
  i = i + 1;
  ldv_51718: ;
  if (i <= 31) {
    goto ldv_51717;
  } else {
  }
  return (0U);
}
}
void cx18_expand_service_set(struct v4l2_sliced_vbi_format *fmt , int is_pal )
{
  u16 set ;
  int f ;
  int l ;
  {
  set = fmt->service_set;
  fmt->service_set = 0U;
  f = 0;
  goto ldv_51731;
  ldv_51730:
  l = 0;
  goto ldv_51728;
  ldv_51727:
  fmt->service_lines[f][l] = select_service_from_set(f, l, (int )set, is_pal);
  l = l + 1;
  ldv_51728: ;
  if (l <= 23) {
    goto ldv_51727;
  } else {
  }
  f = f + 1;
  ldv_51731: ;
  if (f <= 1) {
    goto ldv_51730;
  } else {
  }
  return;
}
}
static int check_service_set(struct v4l2_sliced_vbi_format *fmt , int is_pal )
{
  int f ;
  int l ;
  u16 set ;
  {
  set = 0U;
  f = 0;
  goto ldv_51744;
  ldv_51743:
  l = 0;
  goto ldv_51741;
  ldv_51740:
  fmt->service_lines[f][l] = select_service_from_set(f, l, (int )fmt->service_lines[f][l],
                                                     is_pal);
  set = (u16 )((int )fmt->service_lines[f][l] | (int )set);
  l = l + 1;
  ldv_51741: ;
  if (l <= 23) {
    goto ldv_51740;
  } else {
  }
  f = f + 1;
  ldv_51744: ;
  if (f <= 1) {
    goto ldv_51743;
  } else {
  }
  return ((unsigned int )set != 0U);
}
}
u16 cx18_get_service_set(struct v4l2_sliced_vbi_format *fmt )
{
  int f ;
  int l ;
  u16 set ;
  {
  set = 0U;
  f = 0;
  goto ldv_51756;
  ldv_51755:
  l = 0;
  goto ldv_51753;
  ldv_51752:
  set = (u16 )((int )fmt->service_lines[f][l] | (int )set);
  l = l + 1;
  ldv_51753: ;
  if (l <= 23) {
    goto ldv_51752;
  } else {
  }
  f = f + 1;
  ldv_51756: ;
  if (f <= 1) {
    goto ldv_51755;
  } else {
  }
  return (set);
}
}
static int cx18_g_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct v4l2_pix_format *pixfmt ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  pixfmt = & fmt->fmt.pix;
  pixfmt->width = (__u32 )cx->cxhdl.width;
  pixfmt->height = (__u32 )cx->cxhdl.height;
  pixfmt->colorspace = 1U;
  pixfmt->field = 4U;
  pixfmt->priv = 0U;
  if (id->type == 2) {
    pixfmt->pixelformat = s->pixelformat;
    pixfmt->sizeimage = s->vb_bytes_per_frame;
    pixfmt->bytesperline = 720U;
  } else {
    pixfmt->pixelformat = 1195724877U;
    pixfmt->sizeimage = 131072U;
    pixfmt->bytesperline = 0U;
  }
  return (0);
}
}
static int cx18_g_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct v4l2_vbi_format *vbifmt ;
  __u32 tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  vbifmt = & fmt->fmt.vbi;
  vbifmt->sampling_rate = 27000000U;
  vbifmt->offset = 248U;
  vbifmt->samples_per_line = (unsigned int )vbi_active_samples___1 - 4U;
  vbifmt->sample_format = 1497715271U;
  vbifmt->start[0] = (__s32 )cx->vbi.start[0];
  vbifmt->start[1] = (__s32 )cx->vbi.start[1];
  tmp___0 = cx->vbi.count;
  vbifmt->count[1] = tmp___0;
  vbifmt->count[0] = tmp___0;
  vbifmt->flags = 0U;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  return (0);
}
}
static int cx18_g_fmt_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct v4l2_sliced_vbi_format *vbifmt ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  vbifmt = & fmt->fmt.sliced;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  vbifmt->io_size = 2304U;
  memset((void *)(& vbifmt->service_lines), 0, 96UL);
  vbifmt->service_set = 0U;
  if ((unsigned long )cx->sd_av == (unsigned long )((struct v4l2_subdev *)0)) {
    return (-22);
  } else
  if ((unsigned long )((cx->sd_av)->ops)->vbi == (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) || (unsigned long )(((cx->sd_av)->ops)->vbi)->g_sliced_fmt == (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                           struct v4l2_sliced_vbi_format * ))0)) {
    return (-22);
  } else {
    tmp___0 = (*((((cx->sd_av)->ops)->vbi)->g_sliced_fmt))(cx->sd_av, & fmt->fmt.sliced);
    if (tmp___0 != 0) {
      return (-22);
    } else {
    }
  }
  vbifmt->service_set = cx18_get_service_set(vbifmt);
  return (0);
}
}
static int cx18_try_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  int w ;
  int h ;
  int min_h ;
  int _min1 ;
  int _min2 ;
  int _max1 ;
  int _max2 ;
  int _min1___0 ;
  int _min2___0 ;
  int _max1___0 ;
  int _max2___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  w = (int )fmt->fmt.pix.width;
  h = (int )fmt->fmt.pix.height;
  min_h = 2;
  _min1 = w;
  _min2 = 720;
  w = _min1 < _min2 ? _min1 : _min2;
  _max1 = w;
  _max2 = 2;
  w = _max1 > _max2 ? _max1 : _max2;
  if (id->type == 2) {
    h = h & -32;
    min_h = 32;
  } else {
  }
  _min1___0 = h;
  _min2___0 = (unsigned int )cx->is_50hz != 0U ? 576 : 480;
  h = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _max1___0 = h;
  _max2___0 = min_h;
  h = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  fmt->fmt.pix.width = (__u32 )w;
  fmt->fmt.pix.height = (__u32 )h;
  return (0);
}
}
static int cx18_try_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  int tmp ;
  {
  tmp = cx18_g_fmt_vbi_cap(file, fh, fmt);
  return (tmp);
}
}
static int cx18_try_fmt_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct v4l2_sliced_vbi_format *vbifmt ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  vbifmt = & fmt->fmt.sliced;
  vbifmt->io_size = 2304U;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  if ((unsigned int )vbifmt->service_set != 0U) {
    cx18_expand_service_set(vbifmt, (int )cx->is_50hz);
  } else {
  }
  tmp___0 = check_service_set(vbifmt, (int )cx->is_50hz);
  if (tmp___0 != 0) {
    vbifmt->service_set = cx18_get_service_set(vbifmt);
  } else {
  }
  return (0);
}
}
static int cx18_s_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct v4l2_mbus_framefmt mbus_fmt ;
  struct cx18_stream *s ;
  int ret ;
  int w ;
  int h ;
  int tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  int tmp___3 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  ret = cx18_try_fmt_vid_cap(file, fh, fmt);
  if (ret != 0) {
    return (ret);
  } else {
  }
  w = (int )fmt->fmt.pix.width;
  h = (int )fmt->fmt.pix.height;
  if (((int )cx->cxhdl.width == w && (int )cx->cxhdl.height == h) && s->pixelformat == fmt->fmt.pix.pixelformat) {
    return (0);
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp___0 > 0) {
    return (-16);
  } else {
  }
  s->pixelformat = fmt->fmt.pix.pixelformat;
  if (s->pixelformat == 842091848U) {
    s->vb_bytes_per_frame = (u32 )((h * 2160) / 2);
  } else {
    s->vb_bytes_per_frame = (u32 )(h * 1440);
  }
  tmp___1 = (u16 )w;
  cx->cxhdl.width = tmp___1;
  mbus_fmt.width = (__u32 )tmp___1;
  tmp___2 = (u16 )h;
  cx->cxhdl.height = tmp___2;
  mbus_fmt.height = (__u32 )tmp___2;
  mbus_fmt.code = 1U;
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->video)->s_mbus_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                 struct v4l2_mbus_framefmt * ))0)) {
      (*((((cx->sd_av)->ops)->video)->s_mbus_fmt))(cx->sd_av, & mbus_fmt);
    } else {
    }
  } else {
  }
  tmp___3 = cx18_g_fmt_vid_cap(file, fh, fmt);
  return (tmp___3);
}
}
static int cx18_s_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  tmp___0 = cx18_raw_vbi((struct cx18 const *)cx);
  if (tmp___0 == 0) {
    tmp___1 = atomic_read((atomic_t const *)(& cx->ana_capturing));
    if (tmp___1 > 0) {
      return (-16);
    } else {
    }
  } else {
  }
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->vbi)->s_raw_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          struct v4l2_vbi_format * ))0)) {
      tmp___2 = (*((((cx->sd_av)->ops)->vbi)->s_raw_fmt))(cx->sd_av, & fmt->fmt.vbi);
      tmp___3 = tmp___2;
    } else {
      tmp___3 = -515;
    }
    ret = tmp___3;
  } else {
    ret = -19;
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  (cx->vbi.sliced_in)->service_set = 0U;
  cx->vbi.in.type = 4U;
  tmp___4 = cx18_g_fmt_vbi_cap(file, fh, fmt);
  return (tmp___4);
}
}
static int cx18_s_fmt_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  int ret ;
  struct v4l2_sliced_vbi_format *vbifmt ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  vbifmt = & fmt->fmt.sliced;
  cx18_try_fmt_sliced_vbi_cap(file, fh, fmt);
  tmp___0 = cx18_raw_vbi((struct cx18 const *)cx);
  if (tmp___0 != 0) {
    tmp___1 = atomic_read((atomic_t const *)(& cx->ana_capturing));
    if (tmp___1 > 0) {
      return (-16);
    } else {
    }
  } else {
  }
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->vbi)->s_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                             struct v4l2_sliced_vbi_format * ))0)) {
      tmp___2 = (*((((cx->sd_av)->ops)->vbi)->s_sliced_fmt))(cx->sd_av, & fmt->fmt.sliced);
      tmp___3 = tmp___2;
    } else {
      tmp___3 = -515;
    }
    ret = tmp___3;
  } else {
    ret = -19;
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  cx->vbi.in.type = 6U;
  __len = 112UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)cx->vbi.sliced_in, (void const *)vbifmt, __len);
  } else {
    __ret = memcpy((void *)cx->vbi.sliced_in, (void const *)vbifmt, __len);
  }
  return (0);
}
}
static int cx18_g_register(struct file *file , void *fh , struct v4l2_dbg_register *reg )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  u32 tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if ((reg->reg & 3ULL) != 0ULL) {
    return (-22);
  } else {
  }
  if (reg->reg > 67108863ULL) {
    return (-22);
  } else {
  }
  reg->size = 4U;
  tmp___0 = cx18_read_enc(cx, (u32 )reg->reg);
  reg->val = (__u64 )tmp___0;
  return (0);
}
}
static int cx18_s_register(struct file *file , void *fh , struct v4l2_dbg_register const *reg )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if (((unsigned long long )reg->reg & 3ULL) != 0ULL) {
    return (-22);
  } else {
  }
  if ((unsigned long long )reg->reg > 67108863ULL) {
    return (-22);
  } else {
  }
  cx18_write_enc(cx, (u32 )reg->val, (u32 )reg->reg);
  return (0);
}
}
static int cx18_querycap(struct file *file , void *fh , struct v4l2_capability *vcap )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  char const *tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  strlcpy((char *)(& vcap->driver), "cx18", 16UL);
  strlcpy((char *)(& vcap->card), cx->card_name, 32UL);
  tmp___0 = pci_name((struct pci_dev const *)cx->pci_dev);
  snprintf((char *)(& vcap->bus_info), 32UL, "PCI:%s", tmp___0);
  vcap->capabilities = cx->v4l2_cap;
  if (id->type == 2) {
    vcap->capabilities = vcap->capabilities | 67108864U;
  } else {
  }
  return (0);
}
}
static int cx18_enumaudio(struct file *file , void *fh , struct v4l2_audio *vin )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  tmp___0 = cx18_get_audio_input(cx, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int cx18_g_audio(struct file *file , void *fh , struct v4l2_audio *vin )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  vin->index = cx->audio_input;
  tmp___0 = cx18_get_audio_input(cx, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int cx18_s_audio(struct file *file , void *fh , struct v4l2_audio const *vout )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if ((unsigned int )vout->index >= (unsigned int )cx->nof_audio_inputs) {
    return (-22);
  } else {
  }
  cx->audio_input = vout->index;
  cx18_audio_set_io(cx);
  return (0);
}
}
static int cx18_enum_input(struct file *file , void *fh , struct v4l2_input *vin )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  tmp___0 = cx18_get_input(cx, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int cx18_cropcap(struct file *file , void *fh , struct v4l2_cropcap *cropcap )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  __s32 tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if (cropcap->type != 1U) {
    return (-22);
  } else {
  }
  tmp___0 = 0;
  cropcap->bounds.left = tmp___0;
  cropcap->bounds.top = tmp___0;
  cropcap->bounds.width = 720U;
  cropcap->bounds.height = (unsigned int )cx->is_50hz != 0U ? 576U : 480U;
  cropcap->pixelaspect.numerator = (unsigned int )cx->is_50hz != 0U ? 59U : 10U;
  cropcap->pixelaspect.denominator = (unsigned int )cx->is_50hz != 0U ? 54U : 11U;
  cropcap->defrect = cropcap->bounds;
  return (0);
}
}
static int cx18_s_crop(struct file *file , void *fh , struct v4l2_crop const *crop )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  if ((unsigned int )crop->type != 1U) {
    return (-22);
  } else {
  }
  if (cx18_debug & 1) {
    printk("\016%s:  warning: VIDIOC_S_CROP not implemented\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  return (-22);
}
}
static int cx18_g_crop(struct file *file , void *fh , struct v4l2_crop *crop )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if (crop->type != 1U) {
    return (-22);
  } else {
  }
  if (cx18_debug & 1) {
    printk("\016%s:  warning: VIDIOC_G_CROP not implemented\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  return (-22);
}
}
static int cx18_enum_fmt_vid_cap(struct file *file , void *fh , struct v4l2_fmtdesc *fmt )
{
  struct v4l2_fmtdesc formats[3U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  formats[0].index = 0U;
  formats[0].type = 1U;
  formats[0].flags = 0U;
  formats[0].description[0] = 'H';
  formats[0].description[1] = 'M';
  formats[0].description[2] = '1';
  formats[0].description[3] = '2';
  formats[0].description[4] = ' ';
  formats[0].description[5] = '(';
  formats[0].description[6] = 'Y';
  formats[0].description[7] = 'U';
  formats[0].description[8] = 'V';
  formats[0].description[9] = ' ';
  formats[0].description[10] = '4';
  formats[0].description[11] = ':';
  formats[0].description[12] = '1';
  formats[0].description[13] = ':';
  formats[0].description[14] = '1';
  formats[0].description[15] = ')';
  formats[0].description[16] = '\000';
  tmp = 17U;
  while (1) {
    if (tmp >= 32U) {
      break;
    } else {
    }
    formats[0].description[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  formats[0].pixelformat = 842091848U;
  formats[0].reserved[0] = 0U;
  formats[0].reserved[1] = 0U;
  formats[0].reserved[2] = 0U;
  formats[0].reserved[3] = 0U;
  formats[1].index = 1U;
  formats[1].type = 1U;
  formats[1].flags = 1U;
  formats[1].description[0] = 'M';
  formats[1].description[1] = 'P';
  formats[1].description[2] = 'E';
  formats[1].description[3] = 'G';
  formats[1].description[4] = '\000';
  tmp___0 = 5U;
  while (1) {
    if (tmp___0 >= 32U) {
      break;
    } else {
    }
    formats[1].description[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  formats[1].pixelformat = 1195724877U;
  formats[1].reserved[0] = 0U;
  formats[1].reserved[1] = 0U;
  formats[1].reserved[2] = 0U;
  formats[1].reserved[3] = 0U;
  formats[2].index = 2U;
  formats[2].type = 1U;
  formats[2].flags = 0U;
  formats[2].description[0] = 'U';
  formats[2].description[1] = 'Y';
  formats[2].description[2] = 'V';
  formats[2].description[3] = 'Y';
  formats[2].description[4] = ' ';
  formats[2].description[5] = '4';
  formats[2].description[6] = ':';
  formats[2].description[7] = '2';
  formats[2].description[8] = ':';
  formats[2].description[9] = '2';
  formats[2].description[10] = '\000';
  tmp___1 = 11U;
  while (1) {
    if (tmp___1 >= 32U) {
      break;
    } else {
    }
    formats[2].description[tmp___1] = (unsigned char)0;
    tmp___1 = tmp___1 + 1U;
  }
  formats[2].pixelformat = 1498831189U;
  formats[2].reserved[0] = 0U;
  formats[2].reserved[1] = 0U;
  formats[2].reserved[2] = 0U;
  formats[2].reserved[3] = 0U;
  if (fmt->index > 2U) {
    return (-22);
  } else {
  }
  *fmt = formats[fmt->index];
  return (0);
}
}
static int cx18_g_input(struct file *file , void *fh , unsigned int *i )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  *i = cx->active_input;
  return (0);
}
}
int cx18_s_input(struct file *file , void *fh , unsigned int inp )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  if ((unsigned int )cx->nof_inputs <= inp) {
    return (-22);
  } else {
  }
  if (cx->active_input == inp) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Input unchanged\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    return (0);
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Changing input from %d to %d\n", (char *)(& cx->v4l2_dev.name),
           cx->active_input, inp);
  } else {
  }
  cx->active_input = inp;
  cx->audio_input = (u32 )(cx->card)->video_inputs[inp].audio_index;
  cx18_mute(cx);
  cx18_video_set_io(cx);
  cx18_audio_set_io(cx);
  cx18_unmute(cx);
  return (0);
}
}
static int cx18_g_frequency(struct file *file , void *fh , struct v4l2_frequency *vf )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if (vf->tuner != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51942;
  ldv_51941: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency * ))0)) {
    (*(((__sd->ops)->tuner)->g_frequency))(__sd, vf);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51942: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51941;
  } else {
  }
  return (0);
}
}
int cx18_s_frequency(struct file *file , void *fh , struct v4l2_frequency const *vf )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  if ((unsigned int )vf->tuner != 0U) {
    return (-22);
  } else {
  }
  cx18_mute(cx);
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: v4l2 ioctl: set frequency %d\n", (char *)(& cx->v4l2_dev.name),
           vf->frequency);
  } else {
  }
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51957;
  ldv_51956: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, vf);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51957: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51956;
  } else {
  }
  cx18_unmute(cx);
  return (0);
}
}
static int cx18_g_std(struct file *file , void *fh , v4l2_std_id *std )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  *std = cx->std;
  return (0);
}
}
int cx18_s_std(struct file *file , void *fh , v4l2_std_id std )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  int tmp___0 ;
  int tmp___1 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  if ((std & 16777215ULL) == 0ULL) {
    return (-22);
  } else {
  }
  if (cx->std == std) {
    return (0);
  } else {
  }
  tmp___0 = constant_test_bit(5L, (unsigned long const volatile *)(& cx->i_flags));
  if (tmp___0 != 0) {
    return (-16);
  } else {
    tmp___1 = atomic_read((atomic_t const *)(& cx->ana_capturing));
    if (tmp___1 > 0) {
      return (-16);
    } else {
    }
  }
  cx->std = std;
  cx->is_60hz = (std & 63744ULL) != 0ULL;
  cx->is_50hz = (unsigned int )cx->is_60hz == 0U;
  cx2341x_handler_set_50hz(& cx->cxhdl, (int )cx->is_50hz);
  cx->cxhdl.width = 720U;
  cx->cxhdl.height = (unsigned int )cx->is_50hz != 0U ? 576U : 480U;
  cx->vbi.count = (unsigned int )cx->is_50hz != 0U ? 18U : 12U;
  cx->vbi.start[0] = (unsigned int )cx->is_50hz != 0U ? 6U : 10U;
  cx->vbi.start[1] = (unsigned int )cx->is_50hz != 0U ? 318U : 273U;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Switching standard to %llx.\n", (char *)(& cx->v4l2_dev.name),
           cx->std);
  } else {
  }
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51978;
  ldv_51977: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            v4l2_std_id ))0)) {
    (*(((__sd->ops)->video)->s_std))(__sd, cx->std);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51978: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51977;
  } else {
  }
  return (0);
}
}
static int cx18_s_tuner(struct file *file , void *fh , struct v4l2_tuner const *vt )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  if ((unsigned int )vt->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51993;
  ldv_51992: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51993: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51992;
  } else {
  }
  return (0);
}
}
static int cx18_g_tuner(struct file *file , void *fh , struct v4l2_tuner *vt )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  if (vt->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_52007;
  ldv_52006: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_52007: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_52006;
  } else {
  }
  if (vt->type == 1U) {
    strlcpy((char *)(& vt->name), "cx18 Radio Tuner", 32UL);
  } else {
    strlcpy((char *)(& vt->name), "cx18 TV Tuner", 32UL);
  }
  return (0);
}
}
static int cx18_g_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_sliced_vbi_cap *cap )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  int set ;
  int f ;
  int l ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  set = (unsigned int )cx->is_50hz != 0U ? 17409 : 4096;
  if (cap->type != 6U) {
    return (-22);
  } else {
  }
  cap->service_set = 0U;
  f = 0;
  goto ldv_52022;
  ldv_52021:
  l = 0;
  goto ldv_52019;
  ldv_52018:
  tmp___0 = valid_service_line(f, l, (int )cx->is_50hz);
  if (tmp___0 != 0) {
    cap->service_lines[f][l] = (__u16 )set;
    cap->service_set = (__u16 )((int )((short )cap->service_set) | (int )((short )set));
  } else {
    cap->service_lines[f][l] = 0U;
  }
  l = l + 1;
  ldv_52019: ;
  if (l <= 23) {
    goto ldv_52018;
  } else {
  }
  f = f + 1;
  ldv_52022: ;
  if (f <= 1) {
    goto ldv_52021;
  } else {
  }
  f = 0;
  goto ldv_52025;
  ldv_52024:
  cap->reserved[f] = 0U;
  f = f + 1;
  ldv_52025: ;
  if (f <= 2) {
    goto ldv_52024;
  } else {
  }
  return (0);
}
}
static int _cx18_process_idx_data(struct cx18_buffer *buf , struct v4l2_enc_idx *idx )
{
  int consumed ;
  int remaining ;
  struct v4l2_enc_idx_entry *e_idx ;
  struct cx18_enc_idx_entry *e_buf ;
  int mapping[8U] ;
  {
  mapping[0] = -1;
  mapping[1] = 0;
  mapping[2] = 1;
  mapping[3] = -1;
  mapping[4] = 2;
  mapping[5] = -1;
  mapping[6] = -1;
  mapping[7] = -1;
  remaining = (int )(buf->bytesused - buf->readpos);
  consumed = 0;
  e_idx = (struct v4l2_enc_idx_entry *)(& idx->entry) + (unsigned long )idx->entries;
  e_buf = (struct cx18_enc_idx_entry *)buf->buf + (unsigned long )buf->readpos;
  goto ldv_52037;
  ldv_52036:
  e_idx->offset = ((unsigned long long )e_buf->offset_high << 32) | (unsigned long long )e_buf->offset_low;
  e_idx->pts = (((unsigned long long )e_buf->pts_high & 1ULL) << 32) | (unsigned long long )e_buf->pts_low;
  e_idx->length = e_buf->length;
  e_idx->flags = (__u32 )mapping[e_buf->flags & 7U];
  e_idx->reserved[0] = 0U;
  e_idx->reserved[1] = 0U;
  idx->entries = idx->entries + 1U;
  e_idx = (struct v4l2_enc_idx_entry *)(& idx->entry) + (unsigned long )idx->entries;
  e_buf = e_buf + 1;
  remaining = (int )((unsigned int )remaining - 24U);
  consumed = (int )((unsigned int )consumed + 24U);
  ldv_52037: ;
  if ((unsigned int )remaining > 23U && idx->entries <= 63U) {
    goto ldv_52036;
  } else {
  }
  if (remaining > 0 && (unsigned int )remaining <= 23U) {
    consumed = consumed + remaining;
  } else {
  }
  buf->readpos = buf->readpos + (u32 )consumed;
  return (consumed);
}
}
static int cx18_process_idx_data(struct cx18_stream *s , struct cx18_mdl *mdl , struct v4l2_enc_idx *idx )
{
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  if (s->type != 5) {
    return (-22);
  } else {
  }
  if ((unsigned long )mdl->curr_buf == (unsigned long )((struct cx18_buffer *)0)) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    mdl->curr_buf = (struct cx18_buffer *)__mptr;
  } else {
  }
  if ((unsigned long )(& (mdl->curr_buf)->list) == (unsigned long )(& mdl->buf_list)) {
    mdl->readpos = mdl->bytesused;
    return (0);
  } else {
  }
  goto ldv_52051;
  ldv_52050: ;
  if ((mdl->curr_buf)->readpos >= (mdl->curr_buf)->bytesused) {
    goto ldv_52048;
  } else {
  }
  tmp = _cx18_process_idx_data(mdl->curr_buf, idx);
  mdl->readpos = mdl->readpos + (u32 )tmp;
  if ((idx->entries > 63U || (mdl->curr_buf)->readpos < (mdl->curr_buf)->bytesused) || mdl->readpos >= mdl->bytesused) {
    goto ldv_52049;
  } else {
  }
  ldv_52048:
  __mptr___0 = (struct list_head const *)(mdl->curr_buf)->list.next;
  mdl->curr_buf = (struct cx18_buffer *)__mptr___0;
  ldv_52051: ;
  if ((unsigned long )(& (mdl->curr_buf)->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_52050;
  } else {
  }
  ldv_52049: ;
  return (0);
}
}
static int cx18_g_enc_index(struct file *file , void *fh , struct v4l2_enc_idx *idx )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct cx18_stream *s ;
  s32 tmp___0 ;
  struct cx18_mdl *mdl ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  s = (struct cx18_stream *)(& cx->streams) + 5UL;
  tmp___1 = cx18_stream_enabled(s);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-22);
  } else {
  }
  tmp___0 = (s32 )(s->buffers - s->bufs_per_mdl * 3U);
  if (tmp___0 <= 0) {
    tmp___0 = 1;
  } else {
  }
  tmp___0 = (s32 )((s->buf_size * (u32 )tmp___0) / 24U);
  idx->entries = 0U;
  idx->entries_cap = (__u32 )tmp___0;
  memset((void *)(& idx->reserved), 0, 16UL);
  ldv_52062:
  mdl = cx18_dequeue(s, & s->q_full);
  if ((unsigned long )mdl == (unsigned long )((struct cx18_mdl *)0)) {
    goto ldv_52061;
  } else {
  }
  cx18_process_idx_data(s, mdl, idx);
  if (mdl->readpos < mdl->bytesused) {
    cx18_push(s, mdl, & s->q_full);
    goto ldv_52061;
  } else {
  }
  cx18_enqueue(s, mdl, & s->q_free);
  if (idx->entries <= 63U) {
    goto ldv_52062;
  } else {
  }
  ldv_52061:
  cx18_stream_load_fw_queue(s);
  return (0);
}
}
static struct videobuf_queue *cx18_vb_queue(struct cx18_open_id *id )
{
  struct videobuf_queue *q ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  {
  q = (struct videobuf_queue *)0;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  switch ((unsigned int )s->vb_type) {
  case 1U:
  q = & s->vbuf_q;
  goto ldv_52070;
  case 4U: ;
  goto ldv_52070;
  default: ;
  goto ldv_52070;
  }
  ldv_52070: ;
  return (q);
}
}
static int cx18_streamon(struct file *file , void *priv , enum v4l2_buf_type type )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  unsigned long tmp ;
  struct videobuf_queue *tmp___0 ;
  int tmp___1 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((unsigned int )s->vb_type != 1U && (unsigned int )s->vb_type != 4U) {
    return (-22);
  } else {
  }
  if (id->type != 2) {
    return (-22);
  } else {
  }
  tmp = msecs_to_jiffies(2000U);
  ldv_mod_timer_375(& s->vb_timeout, tmp + (unsigned long )jiffies);
  tmp___0 = cx18_vb_queue(id);
  tmp___1 = videobuf_streamon(tmp___0);
  return (tmp___1);
}
}
static int cx18_streamoff(struct file *file , void *priv , enum v4l2_buf_type type )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((unsigned int )s->vb_type != 1U && (unsigned int )s->vb_type != 4U) {
    return (-22);
  } else {
  }
  if (id->type != 2) {
    return (-22);
  } else {
  }
  tmp = cx18_vb_queue(id);
  tmp___0 = videobuf_streamoff(tmp);
  return (tmp___0);
}
}
static int cx18_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *rb )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((unsigned int )s->vb_type != 1U && (unsigned int )s->vb_type != 4U) {
    return (-22);
  } else {
  }
  tmp = cx18_vb_queue(id);
  tmp___0 = videobuf_reqbufs(tmp, rb);
  return (tmp___0);
}
}
static int cx18_querybuf(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((unsigned int )s->vb_type != 1U && (unsigned int )s->vb_type != 4U) {
    return (-22);
  } else {
  }
  tmp = cx18_vb_queue(id);
  tmp___0 = videobuf_querybuf(tmp, b);
  return (tmp___0);
}
}
static int cx18_qbuf(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((unsigned int )s->vb_type != 1U && (unsigned int )s->vb_type != 4U) {
    return (-22);
  } else {
  }
  tmp = cx18_vb_queue(id);
  tmp___0 = videobuf_qbuf(tmp, b);
  return (tmp___0);
}
}
static int cx18_dqbuf(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx18_open_id *id ;
  struct cx18 *cx ;
  struct cx18_stream *s ;
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  id = (struct cx18_open_id *)file->private_data;
  cx = id->cx;
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )id->type;
  if ((unsigned int )s->vb_type != 1U && (unsigned int )s->vb_type != 4U) {
    return (-22);
  } else {
  }
  tmp = cx18_vb_queue(id);
  tmp___0 = videobuf_dqbuf(tmp, b, (int )file->f_flags & 2048);
  return (tmp___0);
}
}
static int cx18_encoder_cmd(struct file *file , void *fh , struct v4l2_encoder_cmd *enc )
{
  struct cx18_open_id *id ;
  struct cx18_open_id *tmp ;
  struct cx18 *cx ;
  u32 h ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  cx = id->cx;
  switch (enc->cmd) {
  case 0U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_START\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  tmp___0 = cx18_start_capture(id);
  return (tmp___0);
  case 1U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_STOP\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = enc->flags & 1U;
  cx18_stop_capture(id, (int )enc->flags & 1);
  goto ldv_52131;
  case 2U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_PAUSE\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  tmp___1 = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp___1 == 0) {
    return (-1);
  } else {
  }
  tmp___2 = test_and_set_bit(13L, (unsigned long volatile *)(& cx->i_flags));
  if (tmp___2 != 0) {
    return (0);
  } else {
  }
  h = cx18_find_handle(cx);
  if (h == 4294967295U) {
    printk("\v%s: Can\'t find valid task handle for V4L2_ENC_CMD_PAUSE\n", (char *)(& cx->v4l2_dev.name));
    return (-77);
  } else {
  }
  cx18_mute(cx);
  cx18_vapi(cx, 537001991U, 1, h);
  goto ldv_52131;
  case 3U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_RESUME\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  tmp___3 = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp___3 == 0) {
    return (-1);
  } else {
  }
  tmp___4 = test_and_clear_bit(13L, (unsigned long volatile *)(& cx->i_flags));
  if (tmp___4 == 0) {
    return (0);
  } else {
  }
  h = cx18_find_handle(cx);
  if (h == 4294967295U) {
    printk("\v%s: Can\'t find valid task handle for V4L2_ENC_CMD_RESUME\n", (char *)(& cx->v4l2_dev.name));
    return (-77);
  } else {
  }
  cx18_vapi(cx, 537001992U, 1, h);
  cx18_unmute(cx);
  goto ldv_52131;
  default: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: Unknown cmd %d\n", (char *)(& cx->v4l2_dev.name), enc->cmd);
  } else {
  }
  return (-22);
  }
  ldv_52131: ;
  return (0);
}
}
static int cx18_try_encoder_cmd(struct file *file , void *fh , struct v4l2_encoder_cmd *enc )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  switch (enc->cmd) {
  case 0U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_START\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  goto ldv_52142;
  case 1U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_STOP\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = enc->flags & 1U;
  goto ldv_52142;
  case 2U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_PAUSE\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  goto ldv_52142;
  case 3U: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_RESUME\n", (char *)(& cx->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  goto ldv_52142;
  default: ;
  if ((cx18_debug & 16) != 0) {
    printk("\016%s:  ioctl: Unknown cmd %d\n", (char *)(& cx->v4l2_dev.name), enc->cmd);
  } else {
  }
  return (-22);
  }
  ldv_52142: ;
  return (0);
}
}
static int cx18_log_status(struct file *file , void *fh )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  struct v4l2_input vidin ;
  struct v4l2_audio audin ;
  int i ;
  struct tveeprom tv ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  struct cx18_stream *s ;
  int tmp___1 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  printk("\016%s: Version: %s  Card: %s\n", (char *)(& cx->v4l2_dev.name), (char *)"1.5.1",
         cx->card_name);
  if ((cx->hw_flags & 2U) != 0U) {
    cx18_read_eeprom(cx, & tv);
  } else {
  }
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_52162;
  ldv_52161: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->log_status != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
    (*(((__sd->ops)->core)->log_status))(__sd);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_52162: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_52161;
  } else {
  }
  cx18_get_input(cx, (int )((u16 )cx->active_input), & vidin);
  cx18_get_audio_input(cx, (int )((u16 )cx->audio_input), & audin);
  printk("\016%s: Video Input: %s\n", (char *)(& cx->v4l2_dev.name), (__u8 *)(& vidin.name));
  printk("\016%s: Audio Input: %s\n", (char *)(& cx->v4l2_dev.name), (__u8 *)(& audin.name));
  mutex_lock_nested(& cx->gpio_lock, 0U);
  printk("\016%s: GPIO:  direction 0x%08x, value 0x%08x\n", (char *)(& cx->v4l2_dev.name),
         cx->gpio_dir, cx->gpio_val);
  mutex_unlock(& cx->gpio_lock);
  tmp___0 = constant_test_bit(5L, (unsigned long const volatile *)(& cx->i_flags));
  printk("\016%s: Tuner: %s\n", (char *)(& cx->v4l2_dev.name), tmp___0 != 0 ? (char *)"Radio" : (char *)"TV");
  v4l2_ctrl_handler_log_status(& cx->cxhdl.hdl, (char const *)(& cx->v4l2_dev.name));
  printk("\016%s: Status flags: 0x%08lx\n", (char *)(& cx->v4l2_dev.name), cx->i_flags);
  i = 0;
  goto ldv_52167;
  ldv_52166:
  s = (struct cx18_stream *)(& cx->streams) + (unsigned long )i;
  if ((unsigned long )s->video_dev == (unsigned long )((struct video_device *)0) || s->buffers == 0U) {
    goto ldv_52165;
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& s->q_full.depth));
  printk("\016%s: Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\n",
         (char *)(& cx->v4l2_dev.name), s->name, s->s_flags, (((u32 )tmp___1 * s->bufs_per_mdl) * 100U) / s->buffers,
         (s->buffers * s->buf_size) / 1024U, s->buffers);
  ldv_52165:
  i = i + 1;
  ldv_52167: ;
  if (i <= 6) {
    goto ldv_52166;
  } else {
  }
  printk("\016%s: Read MPEG/VBI: %lld/%lld bytes\n", (char *)(& cx->v4l2_dev.name),
         (long long )cx->mpg_data_received, (long long )cx->vbi_data_inserted);
  return (0);
}
}
static long cx18_default(struct file *file , void *fh , bool valid_prio , unsigned int cmd ,
                         void *arg )
{
  struct cx18 *cx ;
  struct cx18_open_id *tmp ;
  u32 val ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  cx = tmp->cx;
  switch (cmd) {
  case 1074029670U:
  val = *((u32 *)arg);
  if (val == 0U || (int )val & 1) {
    __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_52185;
    ldv_52184: ;
    if (((__sd->grp_id & 64U) != 0U && (unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0)) && (unsigned long )((__sd->ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                           u32 ))0)) {
      (*(((__sd->ops)->core)->reset))(__sd, 1U);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_52185: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
      goto ldv_52184;
    } else {
    }
  } else {
  }
  goto ldv_52187;
  default: ;
  return (-25L);
  }
  ldv_52187: ;
  return (0L);
}
}
static struct v4l2_ioctl_ops const cx18_ioctl_ops =
     {& cx18_querycap, 0, 0, & cx18_enum_fmt_vid_cap, 0, 0, 0, 0, 0, & cx18_g_fmt_vid_cap,
    0, 0, 0, & cx18_g_fmt_vbi_cap, 0, & cx18_g_fmt_sliced_vbi_cap, 0, 0, 0, 0, & cx18_s_fmt_vid_cap,
    0, 0, 0, & cx18_s_fmt_vbi_cap, 0, & cx18_s_fmt_sliced_vbi_cap, 0, 0, 0, 0, & cx18_try_fmt_vid_cap,
    0, 0, 0, & cx18_try_fmt_vbi_cap, 0, & cx18_try_fmt_sliced_vbi_cap, 0, 0, 0, 0,
    & cx18_reqbufs, & cx18_querybuf, & cx18_qbuf, 0, & cx18_dqbuf, 0, 0, 0, 0, 0,
    & cx18_streamon, & cx18_streamoff, & cx18_g_std, & cx18_s_std, 0, & cx18_enum_input,
    & cx18_g_input, & cx18_s_input, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx18_enumaudio,
    & cx18_g_audio, & cx18_s_audio, 0, 0, 0, 0, 0, & cx18_cropcap, & cx18_g_crop,
    & cx18_s_crop, 0, 0, 0, 0, & cx18_g_enc_index, & cx18_encoder_cmd, & cx18_try_encoder_cmd,
    0, 0, 0, 0, & cx18_g_tuner, & cx18_s_tuner, & cx18_g_frequency, & cx18_s_frequency,
    0, & cx18_g_sliced_vbi_cap, & cx18_log_status, 0, & cx18_g_register, & cx18_s_register,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx18_default};
void cx18_set_funcs(struct video_device *vdev )
{
  {
  vdev->ioctl_ops = & cx18_ioctl_ops;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_zalloc(52UL);
  cx18_ioctl_ops_group3 = (struct v4l2_audio *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  cx18_ioctl_ops_group1 = (struct file *)tmp___0;
  tmp___1 = ldv_zalloc(208UL);
  cx18_ioctl_ops_group0 = (struct v4l2_format *)tmp___1;
  tmp___2 = ldv_zalloc(40UL);
  cx18_ioctl_ops_group4 = (struct v4l2_encoder_cmd *)tmp___2;
  tmp___3 = ldv_zalloc(88UL);
  cx18_ioctl_ops_group2 = (struct v4l2_buffer *)tmp___3;
  return;
}
}
void ldv_main_exported_12(void)
{
  void *ldvarg52 ;
  void *tmp ;
  void *ldvarg74 ;
  void *tmp___0 ;
  void *ldvarg61 ;
  void *tmp___1 ;
  struct v4l2_frequency *ldvarg78 ;
  void *tmp___2 ;
  struct v4l2_tuner *ldvarg88 ;
  void *tmp___3 ;
  struct v4l2_dbg_register *ldvarg73 ;
  void *tmp___4 ;
  void *ldvarg66 ;
  void *tmp___5 ;
  struct v4l2_enc_idx *ldvarg65 ;
  void *tmp___6 ;
  struct v4l2_tuner *ldvarg57 ;
  void *tmp___7 ;
  struct v4l2_dbg_register *ldvarg62 ;
  void *tmp___8 ;
  void *ldvarg87 ;
  void *tmp___9 ;
  void *ldvarg80 ;
  void *tmp___10 ;
  void *ldvarg39 ;
  void *tmp___11 ;
  unsigned int ldvarg34 ;
  unsigned int tmp___12 ;
  void *ldvarg89 ;
  void *tmp___13 ;
  void *ldvarg93 ;
  void *tmp___14 ;
  void *ldvarg48 ;
  void *tmp___15 ;
  struct v4l2_input *ldvarg38 ;
  void *tmp___16 ;
  void *ldvarg85 ;
  void *tmp___17 ;
  bool ldvarg35 ;
  enum v4l2_buf_type ldvarg29 ;
  void *ldvarg37 ;
  void *tmp___18 ;
  void *ldvarg72 ;
  void *tmp___19 ;
  void *ldvarg56 ;
  void *tmp___20 ;
  struct v4l2_crop *ldvarg71 ;
  void *tmp___21 ;
  void *ldvarg43 ;
  void *tmp___22 ;
  void *ldvarg91 ;
  void *tmp___23 ;
  struct v4l2_sliced_vbi_cap *ldvarg67 ;
  void *tmp___24 ;
  void *ldvarg77 ;
  void *tmp___25 ;
  void *ldvarg75 ;
  void *tmp___26 ;
  unsigned int *ldvarg76 ;
  void *tmp___27 ;
  struct v4l2_fmtdesc *ldvarg82 ;
  void *tmp___28 ;
  void *ldvarg92 ;
  void *tmp___29 ;
  void *ldvarg54 ;
  void *tmp___30 ;
  void *ldvarg30 ;
  void *tmp___31 ;
  void *ldvarg68 ;
  void *tmp___32 ;
  void *ldvarg90 ;
  void *tmp___33 ;
  void *ldvarg70 ;
  void *tmp___34 ;
  void *ldvarg63 ;
  void *tmp___35 ;
  void *ldvarg45 ;
  void *tmp___36 ;
  void *ldvarg81 ;
  void *tmp___37 ;
  v4l2_std_id *ldvarg40 ;
  void *tmp___38 ;
  v4l2_std_id ldvarg55 ;
  void *ldvarg36 ;
  void *tmp___39 ;
  void *ldvarg79 ;
  void *tmp___40 ;
  struct v4l2_cropcap *ldvarg49 ;
  void *tmp___41 ;
  enum v4l2_buf_type ldvarg86 ;
  struct v4l2_requestbuffers *ldvarg59 ;
  void *tmp___42 ;
  void *ldvarg60 ;
  void *tmp___43 ;
  void *ldvarg41 ;
  void *tmp___44 ;
  struct v4l2_audio *ldvarg31 ;
  void *tmp___45 ;
  void *ldvarg47 ;
  void *tmp___46 ;
  void *ldvarg33 ;
  void *tmp___47 ;
  unsigned int ldvarg69 ;
  unsigned int tmp___48 ;
  void *ldvarg83 ;
  void *tmp___49 ;
  struct v4l2_capability *ldvarg44 ;
  void *tmp___50 ;
  void *ldvarg64 ;
  void *tmp___51 ;
  void *ldvarg53 ;
  void *tmp___52 ;
  void *ldvarg58 ;
  void *tmp___53 ;
  void *ldvarg46 ;
  void *tmp___54 ;
  void *ldvarg50 ;
  void *tmp___55 ;
  struct v4l2_frequency *ldvarg42 ;
  void *tmp___56 ;
  void *ldvarg32 ;
  void *tmp___57 ;
  void *ldvarg51 ;
  void *tmp___58 ;
  struct v4l2_crop *ldvarg84 ;
  void *tmp___59 ;
  int tmp___60 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg52 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg74 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg61 = tmp___1;
  tmp___2 = ldv_zalloc(44UL);
  ldvarg78 = (struct v4l2_frequency *)tmp___2;
  tmp___3 = ldv_zalloc(84UL);
  ldvarg88 = (struct v4l2_tuner *)tmp___3;
  tmp___4 = ldv_zalloc(56UL);
  ldvarg73 = (struct v4l2_dbg_register *)tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg66 = tmp___5;
  tmp___6 = ldv_zalloc(2072UL);
  ldvarg65 = (struct v4l2_enc_idx *)tmp___6;
  tmp___7 = ldv_zalloc(84UL);
  ldvarg57 = (struct v4l2_tuner *)tmp___7;
  tmp___8 = ldv_zalloc(56UL);
  ldvarg62 = (struct v4l2_dbg_register *)tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg87 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg80 = tmp___10;
  tmp___11 = ldv_zalloc(1UL);
  ldvarg39 = tmp___11;
  tmp___12 = __VERIFIER_nondet_uint();
  ldvarg34 = tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg89 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg93 = tmp___14;
  tmp___15 = ldv_zalloc(1UL);
  ldvarg48 = tmp___15;
  tmp___16 = ldv_zalloc(80UL);
  ldvarg38 = (struct v4l2_input *)tmp___16;
  tmp___17 = ldv_zalloc(1UL);
  ldvarg85 = tmp___17;
  tmp___18 = ldv_zalloc(1UL);
  ldvarg37 = tmp___18;
  tmp___19 = ldv_zalloc(1UL);
  ldvarg72 = tmp___19;
  tmp___20 = ldv_zalloc(1UL);
  ldvarg56 = tmp___20;
  tmp___21 = ldv_zalloc(20UL);
  ldvarg71 = (struct v4l2_crop *)tmp___21;
  tmp___22 = ldv_zalloc(1UL);
  ldvarg43 = tmp___22;
  tmp___23 = ldv_zalloc(1UL);
  ldvarg91 = tmp___23;
  tmp___24 = ldv_zalloc(116UL);
  ldvarg67 = (struct v4l2_sliced_vbi_cap *)tmp___24;
  tmp___25 = ldv_zalloc(1UL);
  ldvarg77 = tmp___25;
  tmp___26 = ldv_zalloc(1UL);
  ldvarg75 = tmp___26;
  tmp___27 = ldv_zalloc(4UL);
  ldvarg76 = (unsigned int *)tmp___27;
  tmp___28 = ldv_zalloc(64UL);
  ldvarg82 = (struct v4l2_fmtdesc *)tmp___28;
  tmp___29 = ldv_zalloc(1UL);
  ldvarg92 = tmp___29;
  tmp___30 = ldv_zalloc(1UL);
  ldvarg54 = tmp___30;
  tmp___31 = ldv_zalloc(1UL);
  ldvarg30 = tmp___31;
  tmp___32 = ldv_zalloc(1UL);
  ldvarg68 = tmp___32;
  tmp___33 = ldv_zalloc(1UL);
  ldvarg90 = tmp___33;
  tmp___34 = ldv_zalloc(1UL);
  ldvarg70 = tmp___34;
  tmp___35 = ldv_zalloc(1UL);
  ldvarg63 = tmp___35;
  tmp___36 = ldv_zalloc(1UL);
  ldvarg45 = tmp___36;
  tmp___37 = ldv_zalloc(1UL);
  ldvarg81 = tmp___37;
  tmp___38 = ldv_zalloc(8UL);
  ldvarg40 = (v4l2_std_id *)tmp___38;
  tmp___39 = ldv_zalloc(1UL);
  ldvarg36 = tmp___39;
  tmp___40 = ldv_zalloc(1UL);
  ldvarg79 = tmp___40;
  tmp___41 = ldv_zalloc(44UL);
  ldvarg49 = (struct v4l2_cropcap *)tmp___41;
  tmp___42 = ldv_zalloc(20UL);
  ldvarg59 = (struct v4l2_requestbuffers *)tmp___42;
  tmp___43 = ldv_zalloc(1UL);
  ldvarg60 = tmp___43;
  tmp___44 = ldv_zalloc(1UL);
  ldvarg41 = tmp___44;
  tmp___45 = ldv_zalloc(52UL);
  ldvarg31 = (struct v4l2_audio *)tmp___45;
  tmp___46 = ldv_zalloc(1UL);
  ldvarg47 = tmp___46;
  tmp___47 = ldv_zalloc(1UL);
  ldvarg33 = tmp___47;
  tmp___48 = __VERIFIER_nondet_uint();
  ldvarg69 = tmp___48;
  tmp___49 = ldv_zalloc(1UL);
  ldvarg83 = tmp___49;
  tmp___50 = ldv_zalloc(104UL);
  ldvarg44 = (struct v4l2_capability *)tmp___50;
  tmp___51 = ldv_zalloc(1UL);
  ldvarg64 = tmp___51;
  tmp___52 = ldv_zalloc(1UL);
  ldvarg53 = tmp___52;
  tmp___53 = ldv_zalloc(1UL);
  ldvarg58 = tmp___53;
  tmp___54 = ldv_zalloc(1UL);
  ldvarg46 = tmp___54;
  tmp___55 = ldv_zalloc(1UL);
  ldvarg50 = tmp___55;
  tmp___56 = ldv_zalloc(44UL);
  ldvarg42 = (struct v4l2_frequency *)tmp___56;
  tmp___57 = ldv_zalloc(1UL);
  ldvarg32 = tmp___57;
  tmp___58 = ldv_zalloc(1UL);
  ldvarg51 = tmp___58;
  tmp___59 = ldv_zalloc(20UL);
  ldvarg84 = (struct v4l2_crop *)tmp___59;
  memset((void *)(& ldvarg35), 0, 1UL);
  memset((void *)(& ldvarg29), 0, 4UL);
  memset((void *)(& ldvarg55), 0, 8UL);
  memset((void *)(& ldvarg86), 0, 4UL);
  tmp___60 = __VERIFIER_nondet_int();
  switch (tmp___60) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    cx18_try_fmt_sliced_vbi_cap(cx18_ioctl_ops_group1, ldvarg93, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_fmt_vbi_cap(cx18_ioctl_ops_group1, ldvarg92, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    cx18_try_fmt_vid_cap(cx18_ioctl_ops_group1, ldvarg91, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 3: ;
  if (ldv_state_variable_12 == 1) {
    cx18_try_encoder_cmd(cx18_ioctl_ops_group1, ldvarg90, cx18_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 4: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_tuner(cx18_ioctl_ops_group1, ldvarg89, (struct v4l2_tuner const *)ldvarg88);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 5: ;
  if (ldv_state_variable_12 == 1) {
    cx18_streamoff(cx18_ioctl_ops_group1, ldvarg87, ldvarg86);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 6: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_crop(cx18_ioctl_ops_group1, ldvarg85, ldvarg84);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 7: ;
  if (ldv_state_variable_12 == 1) {
    cx18_enum_fmt_vid_cap(cx18_ioctl_ops_group1, ldvarg83, ldvarg82);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 8: ;
  if (ldv_state_variable_12 == 1) {
    cx18_encoder_cmd(cx18_ioctl_ops_group1, ldvarg81, cx18_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 9: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_fmt_vid_cap(cx18_ioctl_ops_group1, ldvarg80, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 10: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_frequency(cx18_ioctl_ops_group1, ldvarg79, ldvarg78);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 11: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_input(cx18_ioctl_ops_group1, ldvarg77, ldvarg76);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 12: ;
  if (ldv_state_variable_12 == 1) {
    cx18_qbuf(cx18_ioctl_ops_group1, ldvarg75, cx18_ioctl_ops_group2);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 13: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_register(cx18_ioctl_ops_group1, ldvarg74, ldvarg73);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 14: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_crop(cx18_ioctl_ops_group1, ldvarg72, (struct v4l2_crop const *)ldvarg71);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 15: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_input(cx18_ioctl_ops_group1, ldvarg70, ldvarg69);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 16: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_sliced_vbi_cap(cx18_ioctl_ops_group1, ldvarg68, ldvarg67);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 17: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_enc_index(cx18_ioctl_ops_group1, ldvarg66, ldvarg65);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 18: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_fmt_sliced_vbi_cap(cx18_ioctl_ops_group1, ldvarg64, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 19: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_register(cx18_ioctl_ops_group1, ldvarg63, (struct v4l2_dbg_register const *)ldvarg62);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 20: ;
  if (ldv_state_variable_12 == 1) {
    cx18_enumaudio(cx18_ioctl_ops_group1, ldvarg61, cx18_ioctl_ops_group3);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 21: ;
  if (ldv_state_variable_12 == 1) {
    cx18_reqbufs(cx18_ioctl_ops_group1, ldvarg60, ldvarg59);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 22: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_tuner(cx18_ioctl_ops_group1, ldvarg58, ldvarg57);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 23: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_std(cx18_ioctl_ops_group1, ldvarg56, ldvarg55);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 24: ;
  if (ldv_state_variable_12 == 1) {
    cx18_try_fmt_vbi_cap(cx18_ioctl_ops_group1, ldvarg54, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 25: ;
  if (ldv_state_variable_12 == 1) {
    cx18_log_status(cx18_ioctl_ops_group1, ldvarg53);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 26: ;
  if (ldv_state_variable_12 == 1) {
    cx18_dqbuf(cx18_ioctl_ops_group1, ldvarg52, cx18_ioctl_ops_group2);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 27: ;
  if (ldv_state_variable_12 == 1) {
    cx18_querybuf(cx18_ioctl_ops_group1, ldvarg51, cx18_ioctl_ops_group2);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 28: ;
  if (ldv_state_variable_12 == 1) {
    cx18_cropcap(cx18_ioctl_ops_group1, ldvarg50, ldvarg49);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 29: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_fmt_vid_cap(cx18_ioctl_ops_group1, ldvarg48, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 30: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_fmt_sliced_vbi_cap(cx18_ioctl_ops_group1, ldvarg47, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 31: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_audio(cx18_ioctl_ops_group1, ldvarg46, cx18_ioctl_ops_group3);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 32: ;
  if (ldv_state_variable_12 == 1) {
    cx18_querycap(cx18_ioctl_ops_group1, ldvarg45, ldvarg44);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 33: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_frequency(cx18_ioctl_ops_group1, ldvarg43, (struct v4l2_frequency const *)ldvarg42);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 34: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_std(cx18_ioctl_ops_group1, ldvarg41, ldvarg40);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 35: ;
  if (ldv_state_variable_12 == 1) {
    cx18_enum_input(cx18_ioctl_ops_group1, ldvarg39, ldvarg38);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 36: ;
  if (ldv_state_variable_12 == 1) {
    cx18_default(cx18_ioctl_ops_group1, ldvarg36, (int )ldvarg35, ldvarg34, ldvarg37);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 37: ;
  if (ldv_state_variable_12 == 1) {
    cx18_g_fmt_vbi_cap(cx18_ioctl_ops_group1, ldvarg33, cx18_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 38: ;
  if (ldv_state_variable_12 == 1) {
    cx18_s_audio(cx18_ioctl_ops_group1, ldvarg32, (struct v4l2_audio const *)ldvarg31);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  case 39: ;
  if (ldv_state_variable_12 == 1) {
    cx18_streamon(cx18_ioctl_ops_group1, ldvarg30, ldvarg29);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_52265;
  default:
  ldv_stop();
  }
  ldv_52265: ;
  return;
}
}
int ldv_pskb_expand_head_364(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_366(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_368(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_369(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_370(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_371(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_372(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_373(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_374(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_375(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_410(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_418(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_412(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_408(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_416(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_417(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_413(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_414(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_415(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static int cx18_s_stream_vbi_fmt(struct cx2341x_handler *cxhdl , u32 fmt )
{
  struct cx18 *cx ;
  struct cx2341x_handler const *__mptr ;
  int type ;
  int tmp ;
  int i ;
  void *tmp___0 ;
  u16 tmp___1 ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  cx = (struct cx18 *)__mptr + 0xfffffffffffffa98UL;
  type = (cxhdl->ldv_36968.stream_type)->ldv_36505.val;
  tmp = atomic_read((atomic_t const *)(& cx->ana_capturing));
  if (tmp > 0) {
    return (-16);
  } else {
  }
  if (fmt != 1U || ((type != 0 && type != 3) && type != 5)) {
    cx->vbi.insert_mpeg = 0;
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: disabled insertion of sliced VBI data into the MPEG stream\n",
             (char *)(& cx->v4l2_dev.name));
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned long )cx->vbi.sliced_mpeg_data[0] == (unsigned long )((u8 *)0U)) {
    i = 0;
    goto ldv_51363;
    ldv_51362:
    tmp___0 = kmalloc(1592UL, 208U);
    cx->vbi.sliced_mpeg_data[i] = (u8 *)tmp___0;
    if ((unsigned long )cx->vbi.sliced_mpeg_data[i] == (unsigned long )((u8 *)0U)) {
      goto ldv_51360;
      ldv_51359:
      kfree((void const *)cx->vbi.sliced_mpeg_data[i]);
      cx->vbi.sliced_mpeg_data[i] = (u8 *)0U;
      ldv_51360:
      i = i - 1;
      if (i >= 0) {
        goto ldv_51359;
      } else {
      }
      cx->vbi.insert_mpeg = 0;
      printk("\f%s: Unable to allocate buffers for sliced VBI data insertion\n", (char *)(& cx->v4l2_dev.name));
      return (-12);
    } else {
    }
    i = i + 1;
    ldv_51363: ;
    if (i <= 31) {
      goto ldv_51362;
    } else {
    }
  } else {
  }
  cx->vbi.insert_mpeg = (int )fmt;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: enabled insertion of sliced VBI data into the MPEG PS,when sliced VBI is enabled\n",
           (char *)(& cx->v4l2_dev.name));
  } else {
  }
  tmp___1 = cx18_get_service_set(cx->vbi.sliced_in);
  if ((unsigned int )tmp___1 == 0U) {
    if ((unsigned int )cx->is_60hz != 0U) {
      (cx->vbi.sliced_in)->service_set = 4096U;
    } else {
      (cx->vbi.sliced_in)->service_set = 16384U;
    }
    cx18_expand_service_set(cx->vbi.sliced_in, (int )cx->is_50hz);
  } else {
  }
  return (0);
}
}
static int cx18_s_video_encoding(struct cx2341x_handler *cxhdl , u32 val )
{
  struct cx18 *cx ;
  struct cx2341x_handler const *__mptr ;
  int is_mpeg1 ;
  struct v4l2_mbus_framefmt fmt ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  cx = (struct cx18 *)__mptr + 0xfffffffffffffa98UL;
  is_mpeg1 = val == 0U;
  fmt.width = (__u32 )((int )cxhdl->width / (is_mpeg1 != 0 ? 2 : 1));
  fmt.height = (__u32 )cxhdl->height;
  fmt.code = 1U;
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->video)->s_mbus_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                 struct v4l2_mbus_framefmt * ))0)) {
      (*((((cx->sd_av)->ops)->video)->s_mbus_fmt))(cx->sd_av, & fmt);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int cx18_s_audio_sampling_freq(struct cx2341x_handler *cxhdl , u32 idx )
{
  u32 freqs[3U] ;
  struct cx18 *cx ;
  struct cx2341x_handler const *__mptr ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  freqs[0] = 44100U;
  freqs[1] = 48000U;
  freqs[2] = 32000U;
  __mptr = (struct cx2341x_handler const *)cxhdl;
  cx = (struct cx18 *)__mptr + 0xfffffffffffffa98UL;
  if (idx <= 2U) {
    __mptr___0 = (struct list_head const *)cx->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    goto ldv_51390;
    ldv_51389: ;
    if ((unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd->ops)->audio)->s_clock_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                     u32 ))0)) {
      (*(((__sd->ops)->audio)->s_clock_freq))(__sd, freqs[idx]);
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    ldv_51390: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
      goto ldv_51389;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int cx18_s_audio_mode(struct cx2341x_handler *cxhdl , u32 val )
{
  struct cx18 *cx ;
  struct cx2341x_handler const *__mptr ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  cx = (struct cx18 *)__mptr + 0xfffffffffffffa98UL;
  cx->dualwatch_stereo_mode = val;
  return (0);
}
}
struct cx2341x_handler_ops cx18_cxhdl_ops = {& cx18_s_audio_sampling_freq, & cx18_s_audio_mode, & cx18_s_video_encoding, & cx18_s_stream_vbi_fmt};
void ldv_initialize_cx2341x_handler_ops_11(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(528UL);
  cx18_cxhdl_ops_group0 = (struct cx2341x_handler *)tmp;
  return;
}
}
void ldv_main_exported_11(void)
{
  u32 ldvarg2 ;
  u32 tmp ;
  u32 ldvarg0 ;
  u32 tmp___0 ;
  u32 ldvarg3 ;
  u32 tmp___1 ;
  u32 ldvarg1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  {
  tmp = __VERIFIER_nondet_u32();
  ldvarg2 = tmp;
  tmp___0 = __VERIFIER_nondet_u32();
  ldvarg0 = tmp___0;
  tmp___1 = __VERIFIER_nondet_u32();
  ldvarg3 = tmp___1;
  tmp___2 = __VERIFIER_nondet_u32();
  ldvarg1 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    cx18_s_stream_vbi_fmt(cx18_cxhdl_ops_group0, ldvarg3);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_51411;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    cx18_s_video_encoding(cx18_cxhdl_ops_group0, ldvarg2);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_51411;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    cx18_s_audio_sampling_freq(cx18_cxhdl_ops_group0, ldvarg1);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_51411;
  case 3: ;
  if (ldv_state_variable_11 == 1) {
    cx18_s_audio_mode(cx18_cxhdl_ops_group0, ldvarg0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_51411;
  default:
  ldv_stop();
  }
  ldv_51411: ;
  return;
}
}
int ldv_pskb_expand_head_408(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_410(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_412(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_413(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_414(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_415(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_416(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_417(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_418(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void ldv__builtin_va_end(__builtin_va_list ) ;
void ldv__builtin_va_arg(__builtin_va_list , unsigned long , void * ) ;
void ldv__builtin_va_start(__builtin_va_list ) ;
extern char *strchr(char const * , int ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern struct timeval ns_to_timeval(s64 const ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
int ldv_mod_timer_461(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  size_t __len ;
  void *__ret ;
  {
  __len = count;
  __ret = memcpy(dst, (void const *)src, __len);
  return;
}
}
extern ktime_t ktime_get(void) ;
void cx18_api_epu_cmd_irq(struct cx18 *cx , int rpu ) ;
extern void dvb_dmx_swfilter(struct dvb_demux * , u8 const * , size_t ) ;
struct sk_buff *ldv_skb_clone_452(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_460(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_454(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_450(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_458(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_459(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_455(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_456(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_457(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void *videobuf_to_vmalloc(struct videobuf_buffer * ) ;
__inline static void cx18_writel_expect___2(struct cx18 *cx , u32 val , void *addr ,
                                            u32 eval , u32 mask )
{
  int i ;
  u32 r ;
  {
  eval = eval & mask;
  i = 0;
  goto ldv_51313;
  ldv_51312:
  cx18_writel_noretry(cx, val, addr);
  r = cx18_readl(cx, (void const *)addr);
  if (r == 4294967295U && eval != 4294967295U) {
    goto ldv_51310;
  } else {
  }
  if ((r & mask) == eval) {
    goto ldv_51311;
  } else {
  }
  ldv_51310:
  i = i + 1;
  ldv_51313: ;
  if (i <= 9) {
    goto ldv_51312;
  } else {
  }
  ldv_51311: ;
  return;
}
}
__inline static void cx18_memcpy_fromio(struct cx18 *cx , void *to , void const *from ,
                                        unsigned int len )
{
  {
  memcpy_fromio(to, (void const volatile *)from, (size_t )len);
  return;
}
}
__inline static void cx18_write_reg_expect___2(struct cx18 *cx , u32 val , u32 reg ,
                                               u32 eval , u32 mask )
{
  {
  cx18_writel_expect___2(cx, val, cx->reg_mem + (unsigned long )reg, eval, mask);
  return;
}
}
static char const *rpu_str[4U] = { "APU", "CPU", "EPU", "HPU"};
static struct cx18_api_info const api_info[43U] =
  { {537001985U, 0U, 1U, "CX18_CPU_SET_CHANNEL_TYPE"},
        {33554435U, 0U, 1U, "CX18_EPU_DEBUG"},
        {1073741825U, 0U, 1U, "CX18_CREATE_TASK"},
        {1073741826U, 0U, 1U, "CX18_DESTROY_TASK"},
        {537001986U, 8U, 1U, "CX18_CPU_CAPTURE_START"},
        {537001987U, 8U, 1U, "CX18_CPU_CAPTURE_STOP"},
        {537001991U, 0U, 1U, "CX18_CPU_CAPTURE_PAUSE"},
        {537001992U, 0U, 1U, "CX18_CPU_CAPTURE_RESUME"},
        {537001985U, 0U, 1U, "CX18_CPU_SET_CHANNEL_TYPE"},
        {537002002U, 0U, 1U, "CX18_CPU_SET_STREAM_OUTPUT_TYPE"},
        {537001988U, 0U, 1U, "CX18_CPU_SET_VIDEO_IN"},
        {537001989U, 0U, 1U, "CX18_CPU_SET_VIDEO_RATE"},
        {537001990U, 0U, 1U, "CX18_CPU_SET_VIDEO_RESOLUTION"},
        {537001993U, 0U, 1U, "CX18_CPU_SET_FILTER_PARAM"},
        {537001996U, 0U, 1U, "CX18_CPU_SET_SPATIAL_FILTER_TYPE"},
        {537001998U, 0U, 1U, "CX18_CPU_SET_MEDIAN_CORING"},
        {537002000U, 0U, 1U, "CX18_CPU_SET_INDEXTABLE"},
        {537002001U, 0U, 1U, "CX18_CPU_SET_AUDIO_PARAMETERS"},
        {537002003U, 0U, 1U, "CX18_CPU_SET_VIDEO_MUTE"},
        {537002004U, 0U, 1U, "CX18_CPU_SET_AUDIO_MUTE"},
        {537002005U, 0U, 1U, "CX18_CPU_SET_MISC_PARAMETERS"},
        {537002006U, 8U, 1U, "CX18_CPU_SET_RAW_VBI_PARAM"},
        {537002007U, 0U, 1U, "CX18_CPU_SET_CAPTURE_LINE_NO"},
        {537002008U, 0U, 1U, "CX18_CPU_SET_COPYRIGHT"},
        {537002009U, 0U, 1U, "CX18_CPU_SET_AUDIO_PID"},
        {537002010U, 0U, 1U, "CX18_CPU_SET_VIDEO_PID"},
        {537002011U, 0U, 1U, "CX18_CPU_SET_VER_CROP_LINE"},
        {537002012U, 0U, 1U, "CX18_CPU_SET_GOP_STRUCTURE"},
        {537002013U, 0U, 1U, "CX18_CPU_SET_SCENE_CHANGE_DETECTION"},
        {537002014U, 0U, 1U, "CX18_CPU_SET_ASPECT_RATIO"},
        {537002015U, 0U, 1U, "CX18_CPU_SET_SKIP_INPUT_FRAME"},
        {537002016U, 0U, 1U, "CX18_CPU_SET_SLICED_VBI_PARAM"},
        {537002017U, 0U, 1U, "CX18_CPU_SET_USERDATA_PLACE_HOLDER"},
        {537002018U, 0U, 1U, "CX18_CPU_GET_ENC_PTS"},
        {537002019U, 0U, 1U, "CX18_CPU_SET_VFC_PARAM"},
        {537133058U, 0U, 1U, "CX18_CPU_DE_SET_MDL_ACK"},
        {537133061U, 4U, 1U, "CX18_CPU_DE_SET_MDL"},
        {537133062U, 8U, 1U, "CX18_CPU_DE_RELEASE_MDL"},
        {268435457U, 0U, 0U, "CX18_APU_START"},
        {268435458U, 0U, 0U, "CX18_APU_STOP"},
        {268435461U, 0U, 0U, "CX18_APU_RESETAI"},
        {536870915U, 0U, 1U, "CX18_CPU_DEBUG_PEEK32"},
        {0U, 0U, 0U, "0"}};
static struct cx18_api_info const *find_api_info(u32 cmd )
{
  int i ;
  {
  i = 0;
  goto ldv_51657;
  ldv_51656: ;
  if ((unsigned int )api_info[i].cmd == cmd) {
    return ((struct cx18_api_info const *)(& api_info) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_51657: ;
  if ((unsigned int )api_info[i].cmd != 0U) {
    goto ldv_51656;
  } else {
  }
  return ((struct cx18_api_info const *)0);
}
}
static char *u32arr2hex(u32 *data , int n , char *buf )
{
  char *p ;
  int i ;
  {
  i = 0;
  p = buf;
  goto ldv_51667;
  ldv_51666:
  snprintf(p, 12UL, " %#010x", *(data + (unsigned long )i));
  i = i + 1;
  p = p + 11UL;
  ldv_51667: ;
  if (i < n) {
    goto ldv_51666;
  } else {
  }
  *p = 0;
  return (buf);
}
}
static void dump_mb(struct cx18 *cx , struct cx18_mailbox *mb , char *name )
{
  char argstr[67U] ;
  char *tmp ;
  {
  if ((cx18_debug & 4) == 0) {
    return;
  } else {
  }
  if ((cx18_debug & 4) != 0) {
    tmp = u32arr2hex((u32 *)(& mb->args), 6, (char *)(& argstr));
    printk("\016%s:  api: %s: req %#010x ack %#010x cmd %#010x err %#010x args%s\n",
           (char *)(& cx->v4l2_dev.name), name, mb->request, mb->ack, mb->cmd, mb->error,
           tmp);
  } else {
  }
  return;
}
}
static void cx18_mdl_send_to_dvb(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct cx18_buffer *buf ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if (((unsigned long )s->dvb == (unsigned long )((struct cx18_dvb *)0) || (s->dvb)->enabled == 0) || mdl->bytesused == 0U) {
    return;
  } else {
  }
  tmp = list_is_singular((struct list_head const *)(& mdl->buf_list));
  if (tmp != 0) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    buf = (struct cx18_buffer *)__mptr;
    if (buf->bytesused != 0U) {
      dvb_dmx_swfilter(& (s->dvb)->demux, (u8 const *)buf->buf, (size_t )buf->bytesused);
    } else {
    }
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  goto ldv_51688;
  ldv_51687: ;
  if (buf->bytesused == 0U) {
    goto ldv_51686;
  } else {
  }
  dvb_dmx_swfilter(& (s->dvb)->demux, (u8 const *)buf->buf, (size_t )buf->bytesused);
  __mptr___1 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___1;
  ldv_51688: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51687;
  } else {
  }
  ldv_51686: ;
  return;
}
}
static void cx18_mdl_send_to_videobuf(struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct cx18_videobuf_buffer *vb_buf ;
  struct cx18_buffer *buf ;
  u8 *p ;
  u32 offset ;
  int dispatch ;
  int tmp ;
  struct list_head const *__mptr ;
  void *tmp___0 ;
  struct list_head const *__mptr___0 ;
  size_t __len ;
  void *__ret ;
  struct list_head const *__mptr___1 ;
  ktime_t tmp___1 ;
  unsigned long tmp___2 ;
  {
  offset = 0U;
  dispatch = 0;
  if (mdl->bytesused == 0U) {
    return;
  } else {
  }
  spin_lock(& s->vb_lock);
  tmp = list_empty((struct list_head const *)(& s->vb_capture));
  if (tmp != 0) {
    goto out;
  } else {
  }
  __mptr = (struct list_head const *)s->vb_capture.next;
  vb_buf = (struct cx18_videobuf_buffer *)__mptr + 0xffffffffffffffc8UL;
  tmp___0 = videobuf_to_vmalloc(& vb_buf->vb);
  p = (u8 *)tmp___0;
  if ((unsigned long )p == (unsigned long )((u8 *)0U)) {
    goto out;
  } else {
  }
  offset = vb_buf->bytes_used;
  __mptr___0 = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  goto ldv_51710;
  ldv_51709: ;
  if (buf->bytesused == 0U) {
    goto ldv_51705;
  } else {
  }
  if ((size_t )(buf->bytesused + offset) <= vb_buf->vb.bsize) {
    __len = (size_t )buf->bytesused;
    __ret = memcpy((void *)p + (unsigned long )offset, (void const *)buf->buf,
                             __len);
    offset = buf->bytesused + offset;
    vb_buf->bytes_used = vb_buf->bytes_used + buf->bytesused;
  } else {
  }
  __mptr___1 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___1;
  ldv_51710: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51709;
  } else {
  }
  ldv_51705: ;
  if (vb_buf->bytes_used >= s->vb_bytes_per_frame) {
    dispatch = 1;
    vb_buf->bytes_used = 0U;
  } else {
  }
  if (dispatch != 0) {
    tmp___1 = ktime_get();
    vb_buf->vb.ts = ns_to_timeval(tmp___1.tv64);
    list_del(& vb_buf->vb.queue);
    vb_buf->vb.state = 4;
    __wake_up(& vb_buf->vb.done, 3U, 1, (void *)0);
  } else {
  }
  tmp___2 = msecs_to_jiffies(2000U);
  ldv_mod_timer_461(& s->vb_timeout, tmp___2 + (unsigned long )jiffies);
  out:
  spin_unlock(& s->vb_lock);
  return;
}
}
static void cx18_mdl_send_to_alsa(struct cx18 *cx , struct cx18_stream *s , struct cx18_mdl *mdl )
{
  struct cx18_buffer *buf ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if (mdl->bytesused == 0U) {
    return;
  } else {
  }
  tmp = list_is_singular((struct list_head const *)(& mdl->buf_list));
  if (tmp != 0) {
    __mptr = (struct list_head const *)mdl->buf_list.next;
    buf = (struct cx18_buffer *)__mptr;
    if (buf->bytesused != 0U) {
      (*(cx->pcm_announce_callback))(cx->alsa, (u8 *)buf->buf, (size_t )buf->bytesused);
    } else {
    }
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  goto ldv_51725;
  ldv_51724: ;
  if (buf->bytesused == 0U) {
    goto ldv_51723;
  } else {
  }
  (*(cx->pcm_announce_callback))(cx->alsa, (u8 *)buf->buf, (size_t )buf->bytesused);
  __mptr___1 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___1;
  ldv_51725: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51724;
  } else {
  }
  ldv_51723: ;
  return;
}
}
static void epu_dma_done(struct cx18 *cx , struct cx18_in_work_order *order )
{
  u32 handle ;
  u32 mdl_ack_count ;
  u32 id ;
  struct cx18_mailbox *mb ;
  struct cx18_mdl_ack *mdl_ack ;
  struct cx18_stream *s ;
  struct cx18_mdl *mdl ;
  int i ;
  {
  mb = & order->mb;
  handle = mb->args[0];
  s = cx18_handle_to_stream(cx, handle);
  if ((unsigned long )s == (unsigned long )((struct cx18_stream *)0)) {
    printk("\f%s: Got DMA done notification for unknown/inactive handle %d, %s mailbox seq no %d\n",
           (char *)(& cx->v4l2_dev.name), handle, (int )order->flags & 1 ? (char *)"stale" : (char *)"good",
           mb->request);
    return;
  } else {
  }
  mdl_ack_count = mb->args[2];
  mdl_ack = (struct cx18_mdl_ack *)(& order->mdl_ack);
  i = 0;
  goto ldv_51741;
  ldv_51740:
  id = mdl_ack->id;
  if ((int )order->flags & 1 && (s->mdl_base_idx > id || s->mdl_base_idx + s->buffers <= id)) {
    printk("\f%s: Fell behind! Ignoring stale mailbox with  inconsistent data. Lost MDL for mailbox seq no %d\n",
           (char *)(& cx->v4l2_dev.name), mb->request);
    goto ldv_51738;
  } else {
  }
  mdl = cx18_queue_get_mdl(s, id, mdl_ack->data_used);
  if ((cx18_debug & 8) != 0 && (cx18_debug & 256) != 0) {
    printk("\016%s:  dma: DMA DONE for %s (MDL %d)\n", (char *)(& cx->v4l2_dev.name),
           s->name, id);
  } else {
  }
  if ((unsigned long )mdl == (unsigned long )((struct cx18_mdl *)0)) {
    printk("\f%s: Could not find MDL %d for stream %s\n", (char *)(& cx->v4l2_dev.name),
           id, s->name);
    goto ldv_51739;
  } else {
  }
  if ((cx18_debug & 8) != 0 && (cx18_debug & 256) != 0) {
    printk("\016%s:  dma: %s recv bytesused = %d\n", (char *)(& cx->v4l2_dev.name),
           s->name, mdl->bytesused);
  } else {
  }
  if (s->type == 1) {
    cx18_mdl_send_to_dvb(s, mdl);
    cx18_enqueue(s, mdl, & s->q_free);
  } else
  if (s->type == 4) {
    if ((unsigned long )cx->pcm_announce_callback != (unsigned long )((void (*)(struct snd_cx18_card * ,
                                                                                u8 * ,
                                                                                size_t ))0)) {
      cx18_mdl_send_to_alsa(cx, s, mdl);
      cx18_enqueue(s, mdl, & s->q_free);
    } else {
      cx18_enqueue(s, mdl, & s->q_full);
    }
  } else
  if (s->type == 2) {
    cx18_mdl_send_to_videobuf(s, mdl);
    cx18_enqueue(s, mdl, & s->q_free);
  } else {
    cx18_enqueue(s, mdl, & s->q_full);
    if (s->type == 5) {
      cx18_stream_rotate_idx_mdls(cx);
    } else {
    }
  }
  ldv_51739:
  i = i + 1;
  mdl_ack = mdl_ack + 1;
  ldv_51741: ;
  if ((u32 )i < mdl_ack_count) {
    goto ldv_51740;
  } else {
  }
  ldv_51738:
  cx18_stream_load_fw_queue(s);
  __wake_up(& cx->dma_waitq, 3U, 1, (void *)0);
  if (s->id != 4294967295U) {
    __wake_up(& s->waitq, 3U, 1, (void *)0);
  } else {
  }
  return;
}
}
static void epu_debug(struct cx18 *cx , struct cx18_in_work_order *order )
{
  char *p ;
  char *str ;
  int tmp ;
  {
  str = order->str;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: %x %s\n", (char *)(& cx->v4l2_dev.name), order->mb.args[0],
           str);
  } else {
  }
  p = strchr((char const *)str, 46);
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& cx->i_flags));
  if ((tmp == 0 && (unsigned long )p != (unsigned long )((char *)0)) && (unsigned long )p > (unsigned long )str) {
    printk("\016%s: FW version: %s\n", (char *)(& cx->v4l2_dev.name), p + 0xffffffffffffffffUL);
  } else {
  }
  return;
}
}
static void epu_cmd(struct cx18 *cx , struct cx18_in_work_order *order )
{
  {
  switch (order->rpu) {
  case 1: ;
  switch (order->mb.cmd) {
  case 33816577U:
  epu_dma_done(cx, order);
  goto ldv_51754;
  case 33554435U:
  epu_debug(cx, order);
  goto ldv_51754;
  default:
  printk("\f%s: Unknown CPU to EPU mailbox command %#0x\n", (char *)(& cx->v4l2_dev.name),
         order->mb.cmd);
  goto ldv_51754;
  }
  ldv_51754: ;
  goto ldv_51757;
  case 0:
  printk("\f%s: Unknown APU to EPU mailbox command %#0x\n", (char *)(& cx->v4l2_dev.name),
         order->mb.cmd);
  goto ldv_51757;
  default: ;
  goto ldv_51757;
  }
  ldv_51757: ;
  return;
}
}
static void free_in_work_order(struct cx18 *cx , struct cx18_in_work_order *order )
{
  {
  atomic_set(& order->pending, 0);
  return;
}
}
void cx18_in_work_handler(struct work_struct *work )
{
  struct cx18_in_work_order *order ;
  struct work_struct const *__mptr ;
  struct cx18 *cx ;
  {
  __mptr = (struct work_struct const *)work;
  order = (struct cx18_in_work_order *)__mptr;
  cx = order->cx;
  epu_cmd(cx, order);
  free_in_work_order(cx, order);
  return;
}
}
static void mb_ack_irq(struct cx18 *cx , struct cx18_in_work_order *order )
{
  struct cx18_mailbox *ack_mb ;
  u32 ack_irq ;
  u32 req ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  switch (order->rpu) {
  case 0:
  ack_irq = 131072U;
  ack_mb = & (cx->scb)->apu2epu_mb;
  goto ldv_51779;
  case 1:
  ack_irq = 65536U;
  ack_mb = & (cx->scb)->cpu2epu_mb;
  goto ldv_51779;
  default:
  printk("\f%s: Unhandled RPU (%d) for command %x ack\n", (char *)(& cx->v4l2_dev.name),
         order->rpu, order->mb.cmd);
  return;
  }
  ldv_51779:
  req = order->mb.request;
  tmp = cx18_readl(cx, (void const *)(& ack_mb->request));
  if (tmp != req) {
    goto _L;
  } else {
    tmp___0 = cx18_readl(cx, (void const *)(& ack_mb->ack));
    if (tmp___0 == req) {
      _L:
      if (cx18_debug & 1) {
        printk("\016%s:  warning: Possibly falling behind: %s self-ack\'ed our incoming %s to EPU mailbox (sequence no. %u) while processing\n",
               (char *)(& cx->v4l2_dev.name), rpu_str[order->rpu], rpu_str[order->rpu],
               req);
      } else {
      }
      order->flags = order->flags | 2UL;
      return;
    } else {
    }
  }
  cx18_writel___3(cx, req, (void *)(& ack_mb->ack));
  cx18_write_reg_expect___2(cx, ack_irq, 13054272U, ack_irq, ack_irq);
  return;
}
}
static int epu_dma_done_irq(struct cx18 *cx , struct cx18_in_work_order *order )
{
  u32 handle ;
  u32 mdl_ack_offset ;
  u32 mdl_ack_count ;
  struct cx18_mailbox *mb ;
  int i ;
  {
  mb = & order->mb;
  handle = mb->args[0];
  mdl_ack_offset = mb->args[1];
  mdl_ack_count = mb->args[2];
  if ((handle == 4294967295U || mdl_ack_count == 0U) || mdl_ack_count > 2U) {
    if ((order->flags & 3UL) == 0UL) {
      mb_ack_irq(cx, order);
    } else {
    }
    return (-1);
  } else {
  }
  i = 0;
  goto ldv_51792;
  ldv_51791:
  *((u32 *)(& order->mdl_ack) + (unsigned long )i / 4UL) = cx18_readl(cx, (void const *)(cx->enc_mem + ((unsigned long )mdl_ack_offset + (unsigned long )i)));
  i = (int )((unsigned int )i + 4U);
  ldv_51792: ;
  if ((unsigned long )i < (unsigned long )mdl_ack_count * 8UL) {
    goto ldv_51791;
  } else {
  }
  if ((order->flags & 3UL) == 0UL) {
    mb_ack_irq(cx, order);
  } else {
  }
  return (1);
}
}
static int epu_debug_irq(struct cx18 *cx , struct cx18_in_work_order *order )
{
  u32 str_offset ;
  char *str ;
  {
  str = order->str;
  *str = 0;
  str_offset = order->mb.args[1];
  if (str_offset != 0U) {
    cx18_setup_page(cx, str_offset);
    cx18_memcpy_fromio(cx, (void *)str, (void const *)cx->enc_mem + (unsigned long )str_offset,
                       252U);
    *(str + 252UL) = 0;
    cx18_setup_page(cx, 14417920U);
  } else {
  }
  if ((order->flags & 3UL) == 0UL) {
    mb_ack_irq(cx, order);
  } else {
  }
  return (str_offset != 0U);
}
}
__inline static int epu_cmd_irq(struct cx18 *cx , struct cx18_in_work_order *order )
{
  int ret ;
  {
  ret = -1;
  switch (order->rpu) {
  case 1: ;
  switch (order->mb.cmd) {
  case 33816577U:
  ret = epu_dma_done_irq(cx, order);
  goto ldv_51807;
  case 33554435U:
  ret = epu_debug_irq(cx, order);
  goto ldv_51807;
  default:
  printk("\f%s: Unknown CPU to EPU mailbox command %#0x\n", (char *)(& cx->v4l2_dev.name),
         order->mb.cmd);
  goto ldv_51807;
  }
  ldv_51807: ;
  goto ldv_51810;
  case 0:
  printk("\f%s: Unknown APU to EPU mailbox command %#0x\n", (char *)(& cx->v4l2_dev.name),
         order->mb.cmd);
  goto ldv_51810;
  default: ;
  goto ldv_51810;
  }
  ldv_51810: ;
  return (ret);
}
}
__inline static struct cx18_in_work_order *alloc_in_work_order_irq(struct cx18 *cx )
{
  int i ;
  struct cx18_in_work_order *order ;
  int tmp ;
  {
  order = (struct cx18_in_work_order *)0;
  i = 0;
  goto ldv_51820;
  ldv_51819:
  tmp = atomic_read((atomic_t const *)(& cx->in_work_order[i].pending));
  if (tmp == 0) {
    order = (struct cx18_in_work_order *)(& cx->in_work_order) + (unsigned long )i;
    atomic_set(& order->pending, 1);
    goto ldv_51818;
  } else {
  }
  i = i + 1;
  ldv_51820: ;
  if (i <= 69) {
    goto ldv_51819;
  } else {
  }
  ldv_51818: ;
  return (order);
}
}
void cx18_api_epu_cmd_irq(struct cx18 *cx , int rpu )
{
  struct cx18_mailbox *mb ;
  struct cx18_mailbox *order_mb ;
  struct cx18_in_work_order *order ;
  int submit ;
  int i ;
  {
  switch (rpu) {
  case 1:
  mb = & (cx->scb)->cpu2epu_mb;
  goto ldv_51831;
  case 0:
  mb = & (cx->scb)->apu2epu_mb;
  goto ldv_51831;
  default: ;
  return;
  }
  ldv_51831:
  order = alloc_in_work_order_irq(cx);
  if ((unsigned long )order == (unsigned long )((struct cx18_in_work_order *)0)) {
    printk("\f%s: Unable to find blank work order form to schedule incoming mailbox command processing\n",
           (char *)(& cx->v4l2_dev.name));
    return;
  } else {
  }
  order->flags = 0UL;
  order->rpu = rpu;
  order_mb = & order->mb;
  i = 0;
  goto ldv_51835;
  ldv_51834:
  *(& order_mb->cmd + (unsigned long )i) = cx18_readl(cx, (void const *)(& mb->cmd) + (unsigned long )i);
  i = i + 1;
  ldv_51835: ;
  if (i <= 3) {
    goto ldv_51834;
  } else {
  }
  i = 0;
  goto ldv_51838;
  ldv_51837:
  *(& order_mb->request + (unsigned long )i) = cx18_readl(cx, (void const *)(& mb->request) + (unsigned long )i);
  i = i + 1;
  ldv_51838: ;
  if (i <= 1) {
    goto ldv_51837;
  } else {
  }
  if (order_mb->request == order_mb->ack) {
    if (cx18_debug & 1) {
      printk("\016%s:  warning: Possibly falling behind: %s self-ack\'ed our incoming %s to EPU mailbox (sequence no. %u)\n",
             (char *)(& cx->v4l2_dev.name), rpu_str[rpu], rpu_str[rpu], order_mb->request);
    } else {
    }
    if (cx18_debug & 1) {
      dump_mb(cx, order_mb, (char *)"incoming");
    } else {
    }
    order->flags = 1UL;
  } else {
  }
  submit = epu_cmd_irq(cx, order);
  if (submit > 0) {
    queue_work(cx->in_work_queue, & order->work);
  } else {
  }
  return;
}
}
static int cx18_api_call(struct cx18 *cx , u32 cmd , int args , u32 *data )
{
  struct cx18_api_info const *info ;
  struct cx18_api_info const *tmp ;
  u32 irq ;
  u32 req ;
  u32 ack ;
  u32 err ;
  struct cx18_mailbox *mb ;
  wait_queue_head_t *waitq ;
  struct mutex *mb_lock ;
  unsigned long t0 ;
  unsigned long timeout ;
  unsigned long ret ;
  int i ;
  char argstr[67U] ;
  wait_queue_t w ;
  struct task_struct *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___3 ;
  bool __cond ;
  bool __cond___0 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  {
  tmp = find_api_info(cmd);
  info = tmp;
  tmp___0 = get_current();
  w.flags = 0U;
  w.private = (void *)tmp___0;
  w.func = & autoremove_wake_function;
  w.task_list.next = & w.task_list;
  w.task_list.prev = & w.task_list;
  if ((unsigned long )info == (unsigned long )((struct cx18_api_info const *)0)) {
    printk("\f%s: unknown cmd %x\n", (char *)(& cx->v4l2_dev.name), cmd);
    return (-22);
  } else {
  }
  if ((cx18_debug & 4) != 0) {
    if (cmd == 537133061U) {
      if ((cx18_debug & 256) != 0) {
        if ((cx18_debug & 4) != 0 && (cx18_debug & 256) != 0) {
          tmp___1 = u32arr2hex(data, args, (char *)(& argstr));
          printk("\016%s:  api: %s\tcmd %#010x args%s\n", (char *)(& cx->v4l2_dev.name),
                 info->name, cmd, tmp___1);
        } else {
        }
      } else {
      }
    } else
    if ((cx18_debug & 4) != 0) {
      tmp___2 = u32arr2hex(data, args, (char *)(& argstr));
      printk("\016%s:  api: %s\tcmd %#010x args%s\n", (char *)(& cx->v4l2_dev.name),
             info->name, cmd, tmp___2);
    } else {
    }
  } else {
  }
  switch ((int )info->rpu) {
  case 0:
  waitq = & cx->mb_apu_waitq;
  mb_lock = & cx->epu2apu_mb_lock;
  irq = 128U;
  mb = & (cx->scb)->epu2apu_mb;
  goto ldv_51861;
  case 1:
  waitq = & cx->mb_cpu_waitq;
  mb_lock = & cx->epu2cpu_mb_lock;
  irq = 8U;
  mb = & (cx->scb)->epu2cpu_mb;
  goto ldv_51861;
  default:
  printk("\f%s: Unknown RPU (%d) for API call\n", (char *)(& cx->v4l2_dev.name), (int )info->rpu);
  return (-22);
  }
  ldv_51861:
  mutex_lock_nested(mb_lock, 0U);
  req = cx18_readl(cx, (void const *)(& mb->request));
  timeout = msecs_to_jiffies(10U);
  __ret = (long )timeout;
  ack = cx18_readl(cx, (void const *)(& mb->ack));
  __cond___0 = ack == req;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = (long )timeout;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_51874:
    tmp___3 = prepare_to_wait_event(waitq, & __wait, 2);
    __int = tmp___3;
    ack = cx18_readl(cx, (void const *)(& mb->ack));
    __cond = ack == req;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_51873;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_51874;
    ldv_51873:
    finish_wait(waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  ret = (unsigned long )__ret;
  if (req != ack) {
    cx18_writel___3(cx, req, (void *)(& mb->ack));
    printk("\v%s: mbox was found stuck busy when setting up for %s; clearing busy and trying to proceed\n",
           (char *)(& cx->v4l2_dev.name), info->name);
  } else
  if (ret != timeout) {
    if ((cx18_debug & 4) != 0) {
      tmp___4 = jiffies_to_msecs(timeout - ret);
      printk("\016%s:  api: waited %u msecs for busy mbox to be acked\n", (char *)(& cx->v4l2_dev.name),
             tmp___4);
    } else {
    }
  } else {
  }
  req = (req & 4294967294U) != 4294967294U ? req + 1U : 1U;
  cx18_writel___3(cx, cmd, (void *)(& mb->cmd));
  i = 0;
  goto ldv_51878;
  ldv_51877:
  cx18_writel___3(cx, *(data + (unsigned long )i), (void *)(& mb->args) + (unsigned long )i);
  i = i + 1;
  ldv_51878: ;
  if (i < args) {
    goto ldv_51877;
  } else {
  }
  cx18_writel___3(cx, 0U, (void *)(& mb->error));
  cx18_writel___3(cx, req, (void *)(& mb->request));
  cx18_writel___3(cx, req - 1U, (void *)(& mb->ack));
  timeout = msecs_to_jiffies(((int )info->flags & 4) != 0 ? 10U : 20U);
  if ((cx18_debug & 128) != 0 && (cx18_debug & 256) != 0) {
    printk("\016%s:  irq: sending interrupt SW1: %x to send %s\n", (char *)(& cx->v4l2_dev.name),
           irq, info->name);
  } else {
  }
  prepare_to_wait(waitq, & w, 2);
  cx18_write_reg_expect___2(cx, irq, 13054208U, irq, irq);
  t0 = jiffies;
  ack = cx18_readl(cx, (void const *)(& mb->ack));
  if (ack != req) {
    schedule_timeout((long )timeout);
    ret = (unsigned long )jiffies - t0;
    ack = cx18_readl(cx, (void const *)(& mb->ack));
  } else {
    ret = (unsigned long )jiffies - t0;
  }
  finish_wait(waitq, & w);
  if (req != ack) {
    mutex_unlock(mb_lock);
    if (ret >= timeout) {
      if (cx18_debug & 1) {
        tmp___5 = jiffies_to_msecs(ret);
        printk("\016%s:  warning: sending %s timed out waiting %d msecs for RPU acknowledgement\n",
               (char *)(& cx->v4l2_dev.name), info->name, tmp___5);
      } else {
      }
    } else
    if (cx18_debug & 1) {
      tmp___6 = jiffies_to_msecs(ret);
      printk("\016%s:  warning: woken up before mailbox ack was ready after submitting %s to RPU.  only waited %d msecs on req %u but awakened with unmatched ack %u\n",
             (char *)(& cx->v4l2_dev.name), info->name, tmp___6, req, ack);
    } else {
    }
    return (-22);
  } else {
  }
  if (ret >= timeout) {
    if (cx18_debug & 1) {
      tmp___7 = jiffies_to_msecs(ret);
      printk("\016%s:  warning: failed to be awakened upon RPU acknowledgment sending %s; timed out waiting %d msecs\n",
             (char *)(& cx->v4l2_dev.name), info->name, tmp___7);
    } else {
    }
  } else
  if ((cx18_debug & 4) != 0 && (cx18_debug & 256) != 0) {
    tmp___8 = jiffies_to_msecs(ret);
    printk("\016%s:  api: waited %u msecs for %s to be acked\n", (char *)(& cx->v4l2_dev.name),
           tmp___8, info->name);
  } else {
  }
  i = 0;
  goto ldv_51881;
  ldv_51880:
  *(data + (unsigned long )i) = cx18_readl(cx, (void const *)(& mb->args) + (unsigned long )i);
  i = i + 1;
  ldv_51881: ;
  if (i <= 5) {
    goto ldv_51880;
  } else {
  }
  err = cx18_readl(cx, (void const *)(& mb->error));
  mutex_unlock(mb_lock);
  if (((int )info->flags & 8) != 0) {
    cx18_msleep_timeout(300U, 0);
  } else {
  }
  if (err != 0U) {
    if ((cx18_debug & 4) != 0) {
      printk("\016%s:  api: mailbox error %08x for command %s\n", (char *)(& cx->v4l2_dev.name),
             err, info->name);
    } else {
    }
  } else {
  }
  return (err != 0U ? -5 : 0);
}
}
int cx18_api(struct cx18 *cx , u32 cmd , int args , u32 *data )
{
  int tmp ;
  {
  tmp = cx18_api_call(cx, cmd, args, data);
  return (tmp);
}
}
static int cx18_set_filter_param(struct cx18_stream *s )
{
  struct cx18 *cx ;
  u32 mode ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  cx = s->cx;
  mode = (int )cx->filter_mode & 1 ? 2U : cx->spatial_strength != 0U;
  ret = cx18_vapi(cx, 537001993U, 4, s->handle, 1, mode, cx->spatial_strength);
  mode = (cx->filter_mode & 2U) == 0U ? cx->temporal_strength != 0U : 2U;
  if (ret == 0) {
    tmp = cx18_vapi(cx, 537001993U, 4, s->handle, 0, mode, cx->temporal_strength);
    ret = tmp;
  } else {
    ret = ret;
  }
  if (ret == 0) {
    tmp___0 = cx18_vapi(cx, 537001993U, 4, s->handle, 2, cx->filter_mode >> 2, 0);
    ret = tmp___0;
  } else {
    ret = ret;
  }
  return (ret);
}
}
int cx18_api_func(void *priv , u32 cmd , int in , int out , u32 *data )
{
  struct cx18_stream *s ;
  struct cx18 *cx ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  s = (struct cx18_stream *)priv;
  cx = s->cx;
  switch (cmd) {
  case 187U: ;
  return (0);
  case 143U:
  tmp = cx18_vapi(cx, 537001988U, 6, s->handle, 0, 0, 0, 0, *data);
  return (tmp);
  case 145U:
  tmp___0 = cx18_vapi(cx, 537001990U, 3, s->handle, *(data + 1UL), *data);
  return (tmp___0);
  case 185U:
  tmp___1 = cx18_vapi(cx, 537002002U, 2, s->handle, *data);
  return (tmp___1);
  case 153U:
  tmp___2 = cx18_vapi(cx, 537002014U, 2, s->handle, *data);
  return (tmp___2);
  case 151U:
  tmp___3 = cx18_vapi(cx, 537002012U, 3, s->handle, *data, *(data + 1UL));
  return (tmp___3);
  case 197U: ;
  return (0);
  case 189U:
  tmp___4 = cx18_vapi(cx, 537002001U, 2, s->handle, *data);
  return (tmp___4);
  case 218U:
  tmp___5 = cx18_vapi(cx, 537002004U, 2, s->handle, *data);
  return (tmp___5);
  case 149U:
  tmp___6 = cx18_vapi(cx, 537001989U, 5, s->handle, *data, *(data + 1UL), *(data + 2UL),
                      *(data + 3UL));
  return (tmp___6);
  case 217U:
  tmp___7 = cx18_vapi(cx, 537002003U, 2, s->handle, *data);
  return (tmp___7);
  case 208U:
  tmp___8 = cx18_vapi(cx, 537002015U, 2, s->handle, *data);
  return (tmp___8);
  case 220U:
  tmp___9 = cx18_vapi(cx, 537002005U, 4, s->handle, *data, *(data + 1UL), *(data + 2UL));
  return (tmp___9);
  case 155U:
  cx->filter_mode = (*data & 3U) | (*(data + 1UL) << 2);
  tmp___10 = cx18_set_filter_param(s);
  return (tmp___10);
  case 157U:
  cx->spatial_strength = *data;
  cx->temporal_strength = *(data + 1UL);
  tmp___11 = cx18_set_filter_param(s);
  return (tmp___11);
  case 161U:
  tmp___12 = cx18_vapi(cx, 537001996U, 3, s->handle, *data, *(data + 1UL));
  return (tmp___12);
  case 159U:
  tmp___13 = cx18_vapi(cx, 537001998U, 5, s->handle, *data, *(data + 1UL), *(data + 2UL),
                       *(data + 3UL));
  return (tmp___13);
  }
  printk("\f%s: Unknown cmd %x\n", (char *)(& cx->v4l2_dev.name), cmd);
  return (0);
}
}
int cx18_vapi_result(struct cx18 *cx , u32 *data , u32 cmd , int args , ...)
{
  va_list ap ;
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  ldv__builtin_va_start((__va_list_tag *)(& ap));
  i = 0;
  goto ldv_51930;
  ldv_51929:
  ldv__builtin_va_arg(ap, sizeof(u32 ), (void *)(& tmp));
  *(data + (unsigned long )i) = tmp;
  i = i + 1;
  ldv_51930: ;
  if (i < args) {
    goto ldv_51929;
  } else {
  }
  ldv__builtin_va_end((__va_list_tag *)(& ap));
  tmp___0 = cx18_api(cx, cmd, args, data);
  return (tmp___0);
}
}
int cx18_vapi(struct cx18 *cx , u32 cmd , int args , ...)
{
  u32 data[6U] ;
  va_list ap ;
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )cx == (unsigned long )((struct cx18 *)0)) {
    printk("\v%s: cx == NULL (cmd=%x)\n", (char *)(& cx->v4l2_dev.name), cmd);
    return (0);
  } else {
  }
  if (args > 6) {
    printk("\v%s: args too big (cmd=%x)\n", (char *)(& cx->v4l2_dev.name), cmd);
    args = 6;
  } else {
  }
  ldv__builtin_va_start((__va_list_tag *)(& ap));
  i = 0;
  goto ldv_51941;
  ldv_51940:
  ldv__builtin_va_arg(ap, sizeof(u32 ), (void *)(& tmp));
  data[i] = tmp;
  i = i + 1;
  ldv_51941: ;
  if (i < args) {
    goto ldv_51940;
  } else {
  }
  ldv__builtin_va_end((__va_list_tag *)(& ap));
  tmp___0 = cx18_api(cx, cmd, args, (u32 *)(& data));
  return (tmp___0);
}
}
int ldv_pskb_expand_head_450(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_452(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_454(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_455(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_456(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_457(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_458(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_459(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_460(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_461(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
extern void *memmove(void * , void const * , size_t ) ;
struct sk_buff *ldv_skb_clone_496(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_504(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_498(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_494(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_502(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_503(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_499(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_500(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_501(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static unsigned int const vbi_active_samples___2 = 1444U;
static unsigned int const vbi_hblank_samples_60Hz___0 = 272U;
static unsigned int const vbi_hblank_samples_50Hz___0 = 284U;
static u8 const raw_vbi_sav_rp[2U] = { 32U, 96U};
static u8 const sliced_vbi_eav_rp[2U] = { 176U, 240U};
static void copy_vbi_data(struct cx18 *cx , int lines , u32 pts_stamp )
{
  int line ;
  int i ;
  u32 linemask[2U] ;
  unsigned short size ;
  u8 mpeg_hdr_data[32U] ;
  int sd ;
  int idx ;
  u8 *dst ;
  struct v4l2_sliced_vbi_data *sdata ;
  int f ;
  int l ;
  u16 tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  size_t __len___3 ;
  void *__ret___3 ;
  {
  line = 0;
  linemask[0] = 0U;
  linemask[1] = 0U;
  mpeg_hdr_data[0] = 0U;
  mpeg_hdr_data[1] = 0U;
  mpeg_hdr_data[2] = 1U;
  mpeg_hdr_data[3] = 186U;
  mpeg_hdr_data[4] = 68U;
  mpeg_hdr_data[5] = 0U;
  mpeg_hdr_data[6] = 12U;
  mpeg_hdr_data[7] = 102U;
  mpeg_hdr_data[8] = 36U;
  mpeg_hdr_data[9] = 1U;
  mpeg_hdr_data[10] = 1U;
  mpeg_hdr_data[11] = 209U;
  mpeg_hdr_data[12] = 211U;
  mpeg_hdr_data[13] = 250U;
  mpeg_hdr_data[14] = 255U;
  mpeg_hdr_data[15] = 255U;
  mpeg_hdr_data[16] = 0U;
  mpeg_hdr_data[17] = 0U;
  mpeg_hdr_data[18] = 1U;
  mpeg_hdr_data[19] = 189U;
  mpeg_hdr_data[20] = 0U;
  mpeg_hdr_data[21] = 26U;
  mpeg_hdr_data[22] = 132U;
  mpeg_hdr_data[23] = 128U;
  mpeg_hdr_data[24] = 7U;
  mpeg_hdr_data[25] = 33U;
  mpeg_hdr_data[26] = 0U;
  mpeg_hdr_data[27] = 93U;
  mpeg_hdr_data[28] = 99U;
  mpeg_hdr_data[29] = 167U;
  mpeg_hdr_data[30] = 255U;
  mpeg_hdr_data[31] = 255U;
  sd = 32;
  idx = (int )cx->vbi.frame & 31;
  dst = cx->vbi.sliced_mpeg_data[idx];
  i = 0;
  goto ldv_51371;
  ldv_51370:
  sdata = (struct v4l2_sliced_vbi_data *)(& cx->vbi.sliced_data) + (unsigned long )i;
  if (sdata->id == 0U) {
    goto ldv_51366;
  } else {
  }
  l = (int )(sdata->line - 6U);
  f = (int )sdata->field;
  if (f != 0) {
    l = l + 18;
  } else {
  }
  if (l <= 31) {
    linemask[0] = linemask[0] | (u32 )(1 << l);
  } else {
    linemask[1] = linemask[1] | (u32 )(1 << (l + -32));
  }
  tmp = cx18_service2vbi((int )sdata->id);
  *(dst + (unsigned long )((sd + 12) + line * 43)) = (u8 )tmp;
  __len = 42UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(dst + (((unsigned long )sd + (unsigned long )(line * 43)) + 13UL)),
                     (void const *)(& sdata->data), __len);
  } else {
    __ret = memcpy((void *)(dst + (((unsigned long )sd + (unsigned long )(line * 43)) + 13UL)),
                             (void const *)(& sdata->data), __len);
  }
  line = line + 1;
  ldv_51366:
  i = i + 1;
  ldv_51371: ;
  if (i < lines) {
    goto ldv_51370;
  } else {
  }
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)dst, (void const *)(& mpeg_hdr_data), __len___0);
  } else {
    __ret___0 = memcpy((void *)dst, (void const *)(& mpeg_hdr_data), __len___0);
  }
  if (line == 36) {
    __len___1 = 4UL;
    if (__len___1 > 63UL) {
      __ret___1 = memcpy((void *)dst + (unsigned long )sd, (void const *)"ITV0",
                           __len___1);
    } else {
      __ret___1 = memcpy((void *)dst + (unsigned long )sd, (void const *)"ITV0",
                                   __len___1);
    }
    memmove((void *)(dst + ((unsigned long )sd + 4UL)), (void const *)(dst + ((unsigned long )sd + 12UL)),
            (size_t )(line * 43));
    size = (((unsigned int )((unsigned short )line) * 43U + 3U) & 65532U) + 4U;
  } else {
    __len___2 = 4UL;
    if (__len___2 > 63UL) {
      __ret___2 = memcpy((void *)dst + (unsigned long )sd, (void const *)"itv0",
                           __len___2);
    } else {
      __ret___2 = memcpy((void *)dst + (unsigned long )sd, (void const *)"itv0",
                                   __len___2);
    }
    __len___3 = 8UL;
    if (__len___3 > 63UL) {
      __ret___3 = memcpy((void *)(dst + ((unsigned long )sd + 4UL)), (void const *)(& linemask),
                           __len___3);
    } else {
      __ret___3 = memcpy((void *)(dst + ((unsigned long )sd + 4UL)), (void const *)(& linemask),
                                   __len___3);
    }
    size = (((unsigned int )((unsigned short )line) * 43U + 3U) & 65532U) + 12U;
  }
  *(dst + 20UL) = (u8 )(((int )size + 10) >> 8);
  *(dst + 21UL) = (u8 )((unsigned int )((unsigned char )size) + 10U);
  *(dst + 25UL) = ((unsigned int )((u8 )(pts_stamp >> 29)) & 6U) | 33U;
  *(dst + 26UL) = (u8 )(pts_stamp >> 22);
  *(dst + 27UL) = (unsigned int )((u8 )(pts_stamp >> 14)) | 1U;
  *(dst + 28UL) = (u8 )(pts_stamp >> 7);
  *(dst + 29UL) = (unsigned int )((int )((u8 )pts_stamp) << 1U) | 1U;
  cx->vbi.sliced_mpeg_size[idx] = (u32 )((int )size + sd);
  return;
}
}
static u32 compress_raw_buf(struct cx18 *cx , u8 *buf , u32 size , u32 hdr_size )
{
  u32 line_size ;
  u32 lines ;
  u8 *q ;
  u8 *p ;
  int i ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  line_size = vbi_active_samples___2;
  lines = cx->vbi.count * 2U;
  q = buf;
  buf = buf + (unsigned long )hdr_size;
  i = 0;
  goto ldv_51404;
  ldv_51403:
  p = buf + (unsigned long )((u32 )i * line_size);
  if ((((unsigned int )*p != 255U || (unsigned int )*(p + 1UL) != 0U) || (unsigned int )*(p + 2UL) != 0U) || ((int )*(p + 3UL) != (int )((unsigned char )raw_vbi_sav_rp[0]) && (int )*(p + 3UL) != (int )((unsigned char )raw_vbi_sav_rp[1]))) {
    goto ldv_51396;
  } else {
  }
  if ((u32 )i == lines - 1U) {
    __len = (size_t )((line_size - hdr_size) - 4U);
    __ret = memcpy((void *)q, (void const *)p + 4U, __len);
    q = q + (unsigned long )((line_size - hdr_size) - 4U);
    p = p + (unsigned long )((line_size - hdr_size) - 1U);
    memset((void *)q, (int )*p, (size_t )hdr_size);
  } else {
    __len___0 = (size_t )(line_size - 4U);
    __ret___0 = memcpy((void *)q, (void const *)p + 4U, __len___0);
    q = q + (unsigned long )(line_size - 4U);
  }
  i = i + 1;
  ldv_51404: ;
  if ((u32 )i < lines) {
    goto ldv_51403;
  } else {
  }
  ldv_51396: ;
  return ((line_size - 4U) * lines);
}
}
static u32 compress_sliced_buf(struct cx18 *cx , u8 *buf , u32 size , u32 const hdr_size )
{
  struct v4l2_decode_vbi_line vbi ;
  int i ;
  u32 line ;
  u32 line_size ;
  u8 *p ;
  size_t __len ;
  void *__ret ;
  {
  line = 0U;
  line_size = (unsigned int )cx->is_60hz != 0U ? vbi_hblank_samples_60Hz___0 : vbi_hblank_samples_50Hz___0;
  i = (int )hdr_size;
  buf = buf + (unsigned long )hdr_size;
  goto ldv_51417;
  ldv_51416: ;
  if ((((unsigned int )*buf == 255U && (unsigned int )*(buf + 1UL) == 0U) && (unsigned int )*(buf + 2UL) == 0U) && ((int )*(buf + 3UL) == (int )((unsigned char )sliced_vbi_eav_rp[0]) || (int )*(buf + 3UL) == (int )((unsigned char )sliced_vbi_eav_rp[1]))) {
    goto ldv_51415;
  } else {
  }
  i = i + 1;
  buf = buf + 1;
  ldv_51417: ;
  if ((u32 )i < size) {
    goto ldv_51416;
  } else {
  }
  ldv_51415:
  size = ((unsigned int )hdr_size - (unsigned int )i) + size;
  if (size < line_size) {
    return (line);
  } else {
  }
  i = 0;
  goto ldv_51424;
  ldv_51423:
  p = buf + (unsigned long )((u32 )i * line_size);
  if ((((unsigned int )*p != 255U || (unsigned int )*(p + 1UL) != 0U) || (unsigned int )*(p + 2UL) != 0U) || ((int )*(p + 3UL) != (int )((unsigned char )sliced_vbi_eav_rp[0]) && (int )*(p + 3UL) != (int )((unsigned char )sliced_vbi_eav_rp[1]))) {
    goto ldv_51419;
  } else {
  }
  vbi.p = p + 4UL;
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->vbi)->decode_vbi_line != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                struct v4l2_decode_vbi_line * ))0)) {
      (*((((cx->sd_av)->ops)->vbi)->decode_vbi_line))(cx->sd_av, & vbi);
    } else {
    }
  } else {
  }
  if (vbi.type != 0U) {
    cx->vbi.sliced_data[line].id = vbi.type;
    cx->vbi.sliced_data[line].field = vbi.is_second_field;
    cx->vbi.sliced_data[line].line = vbi.line;
    __len = 42UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& cx->vbi.sliced_data[line].data), (void const *)vbi.p,
                       __len);
    } else {
      __ret = memcpy((void *)(& cx->vbi.sliced_data[line].data), (void const *)vbi.p,
                               __len);
    }
    line = line + 1U;
  } else {
  }
  ldv_51419:
  i = i + 1;
  ldv_51424: ;
  if ((u32 )i < size / line_size) {
    goto ldv_51423;
  } else {
  }
  return (line);
}
}
static void _cx18_process_vbi_data(struct cx18 *cx , struct cx18_buffer *buf )
{
  struct vbi_data_hdr *hdr ;
  u8 *p ;
  u32 size ;
  u32 pts ;
  int lines ;
  u32 tmp ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  u32 tmp___4 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  hdr = (struct vbi_data_hdr *)buf->buf;
  p = (u8 *)buf->buf;
  size = buf->bytesused;
  cx18_buf_swap(buf);
  tmp___0 = cx18_raw_vbi((struct cx18 const *)cx);
  if (tmp___0 != 0) {
    tmp = compress_raw_buf(cx, p, size, 12U);
    buf->bytesused = tmp;
    size = tmp;
    p = p + (unsigned long )(size - 4U);
    __len = 4UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)p, (void const *)(& cx->vbi.frame), __len);
    } else {
      __ret = memcpy((void *)p, (void const *)(& cx->vbi.frame), __len);
    }
    cx->vbi.frame = cx->vbi.frame + 1U;
    return;
  } else {
  }
  tmp___3 = __fswab32(hdr->magic);
  if (tmp___3 == 1073741823U) {
    tmp___2 = __fswab32(hdr->pts);
    pts = tmp___2;
  } else {
    pts = 0U;
  }
  tmp___4 = compress_sliced_buf(cx, p, size, 12U);
  lines = (int )tmp___4;
  if (lines == 0) {
    cx->vbi.sliced_data[0].id = 0U;
    cx->vbi.sliced_data[0].line = 0U;
    cx->vbi.sliced_data[0].field = 0U;
    lines = 1;
  } else {
  }
  size = (u32 )((unsigned long )lines) * 64U;
  buf->bytesused = size;
  __len___0 = (size_t )size;
  __ret___0 = memcpy((void *)p, (void const *)(& cx->vbi.sliced_data),
                               __len___0);
  if (cx->vbi.insert_mpeg != 0) {
    copy_vbi_data(cx, lines, pts);
  } else {
  }
  cx->vbi.frame = cx->vbi.frame + 1U;
  return;
}
}
void cx18_process_vbi_data(struct cx18 *cx , struct cx18_mdl *mdl , int streamtype )
{
  struct cx18_buffer *buf ;
  u32 orig_used ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if (streamtype != 3) {
    return;
  } else {
  }
  __mptr = (struct list_head const *)mdl->buf_list.next;
  buf = (struct cx18_buffer *)__mptr;
  goto ldv_51458;
  ldv_51457:
  orig_used = buf->bytesused;
  if (orig_used == 0U) {
    goto ldv_51456;
  } else {
  }
  _cx18_process_vbi_data(cx, buf);
  mdl->bytesused = mdl->bytesused + (buf->bytesused - orig_used);
  __mptr___0 = (struct list_head const *)buf->list.next;
  buf = (struct cx18_buffer *)__mptr___0;
  ldv_51458: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& mdl->buf_list)) {
    goto ldv_51457;
  } else {
  }
  ldv_51456: ;
  return;
}
}
int ldv_pskb_expand_head_494(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_496(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_498(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_499(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_500(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_501(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_502(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_503(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_504(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_538(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_546(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_540(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_536(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_544(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_545(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_541(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_542(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_543(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int cx18_audio_set_io(struct cx18 *cx )
{
  struct cx18_card_audio_input const *in ;
  u32 u ;
  u32 v ;
  int err ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = constant_test_bit(5L, (unsigned long const volatile *)(& cx->i_flags));
  if (tmp != 0) {
    in = & (cx->card)->radio_input;
  } else {
    in = (struct cx18_card_audio_input const *)(& (cx->card)->audio_inputs) + (unsigned long )cx->audio_input;
  }
  if ((unsigned long )cx->sd_extmux != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_extmux)->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )(((cx->sd_extmux)->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                        u32 ))0)) {
      (*((((cx->sd_extmux)->ops)->audio)->s_routing))(cx->sd_extmux, (unsigned int )in->muxer_input,
                                                      0U, 0U);
    } else {
    }
  } else {
  }
  __err = 0L;
  __mptr = (struct list_head const *)cx->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_51487;
  ldv_51486: ;
  if ((((unsigned int )(cx->card)->hw_audio_ctrl == 0U || (__sd->grp_id & (u32 )(cx->card)->hw_audio_ctrl) != 0U) && (unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0)) && (unsigned long )((__sd->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                                                                                                                                u32 ))0)) {
    tmp___0 = (*(((__sd->ops)->audio)->s_routing))(__sd, in->audio_input, 0U, 0U);
    __err = (long )tmp___0;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_51485;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_51487: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& cx->v4l2_dev.subdevs)) {
    goto ldv_51486;
  } else {
  }
  ldv_51485:
  err = (int )(__err != -515L ? __err : 0L);
  if (err != 0) {
    return (err);
  } else {
  }
  u = cx18_read_reg(cx, 13049876U);
  v = u & 4294967247U;
  switch (in->audio_input) {
  case 0U:
  v = v;
  goto ldv_51491;
  case 1U:
  v = v | 16U;
  goto ldv_51491;
  default:
  v = v | 32U;
  goto ldv_51491;
  }
  ldv_51491: ;
  if (v == u) {
    u = u & 4294967247U;
    switch (in->audio_input) {
    case 0U:
    u = u | 32U;
    goto ldv_51495;
    case 1U:
    u = u | 32U;
    goto ldv_51495;
    default:
    u = u;
    goto ldv_51495;
    }
    ldv_51495:
    cx18_write_reg_expect(cx, u | 2816U, 13049876U, u, 48U);
  } else {
  }
  cx18_write_reg_expect(cx, v | 2816U, 13049876U, v, 48U);
  return (0);
}
}
int ldv_pskb_expand_head_536(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_538(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_540(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_541(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_542(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_543(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_544(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_545(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_546(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_580(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_588(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_582(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_578(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_586(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_587(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_583(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_584(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_585(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
void cx18_video_set_io(struct cx18 *cx )
{
  int inp ;
  {
  inp = (int )cx->active_input;
  if ((unsigned long )cx->sd_av != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((cx->sd_av)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((cx->sd_av)->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                                u32 ))0)) {
      (*((((cx->sd_av)->ops)->video)->s_routing))(cx->sd_av, (cx->card)->video_inputs[inp].video_input,
                                                  0U, 0U);
    } else {
    }
  } else {
  }
  return;
}
}
int ldv_pskb_expand_head_578(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_580(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_582(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_583(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_584(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_585(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_586(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_587(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_588(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_622(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_630(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_624(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_620(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_628(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_629(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_625(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_626(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_627(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static void xpu_ack(struct cx18 *cx , u32 sw2 )
{
  {
  if ((sw2 & 8U) != 0U) {
    __wake_up(& cx->mb_cpu_waitq, 3U, 1, (void *)0);
  } else {
  }
  if ((sw2 & 128U) != 0U) {
    __wake_up(& cx->mb_apu_waitq, 3U, 1, (void *)0);
  } else {
  }
  return;
}
}
static void epu_cmd___0(struct cx18 *cx , u32 sw1 )
{
  {
  if ((sw1 & 65536U) != 0U) {
    cx18_api_epu_cmd_irq(cx, 1);
  } else {
  }
  if ((sw1 & 131072U) != 0U) {
    cx18_api_epu_cmd_irq(cx, 0);
  } else {
  }
  return;
}
}
irqreturn_t cx18_irq_handler(int irq , void *dev_id )
{
  struct cx18 *cx ;
  u32 sw1 ;
  u32 sw2 ;
  u32 hw2 ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  cx = (struct cx18 *)dev_id;
  tmp = cx18_read_reg(cx, 13054212U);
  sw1 = tmp & cx->sw1_irq_mask;
  tmp___0 = cx18_read_reg(cx, 13054276U);
  sw2 = tmp___0 & cx->sw2_irq_mask;
  tmp___1 = cx18_read_reg(cx, 13054148U);
  hw2 = tmp___1 & cx->hw2_irq_mask;
  if (sw1 != 0U) {
    cx18_write_reg_expect(cx, sw1, 13054212U, ~ sw1, sw1);
  } else {
  }
  if (sw2 != 0U) {
    cx18_write_reg_expect(cx, sw2, 13054276U, ~ sw2, sw2);
  } else {
  }
  if (hw2 != 0U) {
    cx18_write_reg_expect(cx, hw2, 13054148U, ~ hw2, hw2);
  } else {
  }
  if ((sw1 != 0U || sw2 != 0U) || hw2 != 0U) {
    if ((cx18_debug & 128) != 0 && (cx18_debug & 256) != 0) {
      printk("\016%s:  irq: received interrupts SW1: %x  SW2: %x  HW2: %x\n", (char *)(& cx->v4l2_dev.name),
             sw1, sw2, hw2);
    } else {
    }
  } else {
  }
  if (sw1 != 0U) {
    epu_cmd___0(cx, sw1);
  } else {
  }
  if (sw2 != 0U) {
    xpu_ack(cx, sw2);
  } else {
  }
  return ((irqreturn_t )((sw1 != 0U || sw2 != 0U) || hw2 != 0U));
}
}
int ldv_pskb_expand_head_620(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_622(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_624(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_625(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_626(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_627(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_628(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_629(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_630(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
__inline static struct cx18_av_state *to_cx18_av_state(struct v4l2_subdev *sd )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)sd;
  return ((struct cx18_av_state *)__mptr);
}
}
__inline static struct v4l2_subdev *to_sd(struct v4l2_ctrl *ctrl )
{
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  return (& ((struct cx18_av_state *)__mptr + 0xfffffffffffffed0UL)->sd);
}
}
int cx18_av_write(struct cx18 *cx , u16 addr , u8 value ) ;
int cx18_av_write4(struct cx18 *cx , u16 addr , u32 value ) ;
int cx18_av_write4_noretry(struct cx18 *cx , u16 addr , u32 value ) ;
int cx18_av_write_expect(struct cx18 *cx , u16 addr , u8 value , u8 eval , u8 mask ) ;
int cx18_av_write4_expect(struct cx18 *cx , u16 addr , u32 value , u32 eval , u32 mask ) ;
u8 cx18_av_read(struct cx18 *cx , u16 addr ) ;
u32 cx18_av_read4(struct cx18 *cx , u16 addr ) ;
int cx18_av_and_or(struct cx18 *cx , u16 addr , unsigned int and_mask , u8 or_value ) ;
int cx18_av_and_or4(struct cx18 *cx , u16 addr , u32 and_mask , u32 or_value ) ;
void cx18_av_std_setup(struct cx18 *cx ) ;
int cx18_av_loadfw(struct cx18 *cx ) ;
int cx18_av_s_clock_freq(struct v4l2_subdev *sd , u32 freq ) ;
void cx18_av_audio_set_path(struct cx18 *cx ) ;
struct v4l2_ctrl_ops const cx18_av_audio_ctrl_ops ;
int cx18_av_decode_vbi_line(struct v4l2_subdev *sd , struct v4l2_decode_vbi_line *vbi ) ;
int cx18_av_s_raw_fmt(struct v4l2_subdev *sd , struct v4l2_vbi_format *fmt ) ;
int cx18_av_g_sliced_fmt(struct v4l2_subdev *sd , struct v4l2_sliced_vbi_format *svbi ) ;
int cx18_av_s_sliced_fmt(struct v4l2_subdev *sd , struct v4l2_sliced_vbi_format *svbi ) ;
struct sk_buff *ldv_skb_clone_664(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_672(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_666(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_662(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_670(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_671(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_667(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_668(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_669(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void cx18_write_reg_noretry(struct cx18 *cx , u32 val , u32 reg )
{
  {
  cx18_writel_noretry(cx, val, cx->reg_mem + (unsigned long )reg);
  return;
}
}
int cx18_av_write(struct cx18 *cx , u16 addr , u8 value )
{
  u32 reg ;
  u32 mask ;
  int shift ;
  u32 x ;
  u32 tmp ;
  {
  reg = (u32 )(((int )addr & -4) + 12845056);
  mask = 255U;
  shift = ((int )addr & 3) * 8;
  tmp = cx18_read_reg(cx, reg);
  x = tmp;
  x = (~ (mask << shift) & x) | ((unsigned int )value << shift);
  cx18_write_reg(cx, x, reg);
  return (0);
}
}
int cx18_av_write_expect(struct cx18 *cx , u16 addr , u8 value , u8 eval , u8 mask )
{
  u32 reg ;
  int shift ;
  u32 x ;
  u32 tmp ;
  {
  reg = (u32 )(((int )addr & -4) + 12845056);
  shift = ((int )addr & 3) * 8;
  tmp = cx18_read_reg(cx, reg);
  x = tmp;
  x = (~ (255U << shift) & x) | ((unsigned int )value << shift);
  cx18_write_reg_expect(cx, x, reg, (unsigned int )eval << shift, (unsigned int )mask << shift);
  return (0);
}
}
int cx18_av_write4(struct cx18 *cx , u16 addr , u32 value )
{
  {
  cx18_write_reg(cx, value, (u32 )((int )addr + 12845056));
  return (0);
}
}
int cx18_av_write4_expect(struct cx18 *cx , u16 addr , u32 value , u32 eval , u32 mask )
{
  {
  cx18_write_reg_expect(cx, value, (u32 )((int )addr + 12845056), eval, mask);
  return (0);
}
}
int cx18_av_write4_noretry(struct cx18 *cx , u16 addr , u32 value )
{
  {
  cx18_write_reg_noretry(cx, value, (u32 )((int )addr + 12845056));
  return (0);
}
}
u8 cx18_av_read(struct cx18 *cx , u16 addr )
{
  u32 x ;
  u32 tmp ;
  int shift ;
  {
  tmp = cx18_read_reg(cx, (u32 )(((int )addr & -4) + 12845056));
  x = tmp;
  shift = ((int )addr & 3) * 8;
  return ((u8 )(x >> shift));
}
}
u32 cx18_av_read4(struct cx18 *cx , u16 addr )
{
  u32 tmp ;
  {
  tmp = cx18_read_reg(cx, (u32 )((int )addr + 12845056));
  return (tmp);
}
}
int cx18_av_and_or(struct cx18 *cx , u16 addr , unsigned int and_mask , u8 or_value )
{
  u8 tmp ;
  int tmp___0 ;
  {
  tmp = cx18_av_read(cx, (int )addr);
  tmp___0 = cx18_av_write(cx, (int )addr, ((int )tmp & (int )((u8 )and_mask)) | (int )or_value);
  return (tmp___0);
}
}
int cx18_av_and_or4(struct cx18 *cx , u16 addr , u32 and_mask , u32 or_value )
{
  u32 tmp ;
  int tmp___0 ;
  {
  tmp = cx18_av_read4(cx, (int )addr);
  tmp___0 = cx18_av_write4(cx, (int )addr, (tmp & and_mask) | or_value);
  return (tmp___0);
}
}
static void cx18_av_init(struct cx18 *cx )
{
  {
  cx18_av_write4(cx, 264, 370017295U);
  cx18_av_write4(cx, 268, 2876158U);
  cx18_av_write4(cx, 272, 5384109U);
  cx18_av_write(cx, 295, 86);
  return;
}
}
static void cx18_av_initialize(struct v4l2_subdev *sd )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  int default_volume ;
  u32 v ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u8 tmp___4 ;
  s32 tmp___5 ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  cx18_av_loadfw(cx);
  cx18_av_write4_expect(cx, 2048, 50331648U, 50331648U, 318767104U);
  v = cx18_av_read4(cx, 0);
  cx18_av_write4_expect(cx, 0, v | 1U, v, 65534U);
  cx18_av_write4_expect(cx, 0, v & 65534U, v & 65534U, 65535U);
  tmp___1 = cx18_av_read4(cx, 344);
  v = tmp___1 & 3791650559U;
  cx18_av_write4(cx, 344, v);
  cx18_av_write4(cx, 344, v | 268435712U);
  tmp___2 = cx18_av_read4(cx, 348);
  v = tmp___2 & 3791650559U;
  cx18_av_write4(cx, 348, v);
  cx18_av_write4(cx, 348, v | 100663552U);
  cx18_av_write4(cx, 308, 661506U);
  tmp___3 = cx18_av_read4(cx, 316);
  v = tmp___3 | 1U;
  cx18_av_write4_expect(cx, 316, v, v, 50372367U);
  cx18_av_write4_expect(cx, 316, v & 4294967294U, v & 4294967294U, 50372367U);
  cx18_av_and_or4(cx, 276, 4294967295U, 265216U);
  cx18_av_and_or4(cx, 280, 4294967295U, 2U);
  cx18_av_write4(cx, 1188, 32768U);
  cx18_av_write4(cx, 1188, 0U);
  cx18_av_and_or4(cx, 256, 4294705151U, 1179648U);
  cx18_av_init(cx);
  cx18_av_and_or4(cx, 1024, 4294436848U, 33818624U);
  cx18_av_and_or4(cx, 1184, 4294967295U, 5242880U);
  cx18_av_and_or4(cx, 1164, 4294902015U, 8192U);
  cx18_av_write4(cx, 1028, 1074996526U);
  cx18_av_and_or4(cx, 260, 4278190080U, 23808U);
  cx18_av_write4(cx, 1144, 1713898015U);
  tmp___4 = cx18_av_read(cx, 2260);
  default_volume = (int )tmp___4;
  if (default_volume > 228) {
    default_volume = 228;
    cx18_av_write(cx, 2260, 228);
  } else
  if (default_volume <= 19) {
    default_volume = 20;
    cx18_av_write(cx, 2260, 20);
  } else {
  }
  default_volume = (((228 - default_volume) >> 1) + 23) << 9;
  tmp___5 = default_volume;
  (state->volume)->default_value = tmp___5;
  (state->volume)->cur.val = tmp___5;
  v4l2_ctrl_handler_setup(& state->hdl);
  return;
}
}
static int cx18_av_reset(struct v4l2_subdev *sd , u32 val )
{
  {
  cx18_av_initialize(sd);
  return (0);
}
}
static int cx18_av_load_fw(struct v4l2_subdev *sd )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  if (state->is_initialized == 0) {
    state->is_initialized = 1;
    cx18_av_initialize(sd);
  } else {
  }
  return (0);
}
}
void cx18_av_std_setup(struct cx18 *cx )
{
  struct cx18_av_state *state ;
  struct v4l2_subdev *sd ;
  v4l2_std_id std ;
  int src_decimation ;
  int hblank ;
  int hactive ;
  int burst ;
  int vblank ;
  int vactive ;
  int sc ;
  int vblank656 ;
  int luma_lpf ;
  int uv_lpf ;
  int comb ;
  u32 pll_int ;
  u32 pll_frac ;
  u32 pll_post ;
  u8 tmp ;
  u32 tmp___0 ;
  u8 tmp___1 ;
  int fsc ;
  int pll ;
  u64 tmp___2 ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  state = & cx->av_state;
  sd = & state->sd;
  std = state->std;
  src_decimation = 543;
  if ((std & 0xffffffffffff4fffULL) != 0ULL) {
    cx18_av_write(cx, 1183, 17);
  } else {
    cx18_av_write(cx, 1183, 20);
  }
  if ((std & 16713471ULL) != 0ULL) {
    vblank656 = 48;
    vblank = 38;
    vactive = 579;
    hblank = 132;
    hactive = 720;
    burst = 93;
    luma_lpf = 2;
    if ((std & 255ULL) != 0ULL) {
      uv_lpf = 1;
      comb = 32;
      sc = 688700;
    } else
    if (std == 1024ULL) {
      uv_lpf = 1;
      comb = 32;
      sc = 556422;
    } else {
      uv_lpf = 0;
      comb = 0;
      sc = 672314;
    }
  } else {
    vblank656 = 38;
    vblank = 26;
    vactive = 481;
    hactive = 720;
    hblank = 122;
    luma_lpf = 1;
    uv_lpf = 1;
    if (std == 2048ULL) {
      burst = 90;
      luma_lpf = 2;
      comb = 32;
      sc = 688700;
    } else
    if (std == 256ULL) {
      burst = 97;
      comb = 32;
      sc = 555421;
    } else {
      burst = 90;
      comb = 102;
      sc = 556032;
    }
  }
  tmp = cx18_av_read(cx, 264);
  pll_int = (u32 )tmp;
  tmp___0 = cx18_av_read4(cx, 268);
  pll_frac = tmp___0 & 33554431U;
  tmp___1 = cx18_av_read(cx, 265);
  pll_post = (u32 )tmp___1;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: PLL regs = int: %u, frac: %u, post: %u\n", (char *)(& sd->name),
           pll_int, pll_frac, pll_post);
  } else {
  }
  if (pll_post != 0U) {
    pll = (int )((((unsigned long long )pll_int << 25) + (unsigned long long )pll_frac) * 28636360ULL >> 25);
    pll = (int )((u32 )pll / pll_post);
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Video PLL = %d.%06d MHz\n", (char *)(& sd->name), pll / 1000000,
             pll % 1000000);
    } else {
    }
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Pixel rate = %d.%06d Mpixel/sec\n", (char *)(& sd->name),
             pll / 8000000, (pll / 8) % 1000000);
    } else {
    }
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: ADC XTAL/pixel clock decimation ratio = %d.%03d\n", (char *)(& sd->name),
             src_decimation / 256, ((src_decimation % 256) * 1000) / 256);
    } else {
    }
    tmp___2 = (unsigned long long )sc * 28636360ULL;
    __base = (uint32_t )src_decimation;
    __rem = (uint32_t )(tmp___2 % (u64 )__base);
    tmp___2 = tmp___2 / (u64 )__base;
    fsc = (int )(tmp___2 >> 13);
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Chroma sub-carrier initial freq = %d.%06d MHz\n", (char *)(& sd->name),
             fsc / 1000000, fsc % 1000000);
    } else {
    }
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: hblank %i, hactive %i, vblank %i, vactive %i, vblank656 %i, src_dec %i, burst 0x%02x, luma_lpf %i, uv_lpf %i, comb 0x%02x, sc 0x%06x\n",
             (char *)(& sd->name), hblank, hactive, vblank, vactive, vblank656, src_decimation,
             burst, luma_lpf, uv_lpf, comb, sc);
    } else {
    }
  } else {
  }
  cx18_av_write(cx, 1136, (int )((u8 )hblank));
  cx18_av_write(cx, 1137, (int )((u8 )(((int )((signed char )(hblank >> 8)) & 3) | (int )((signed char )(hactive << 4)))));
  cx18_av_write(cx, 1138, (int )((u8 )(hactive >> 4)));
  cx18_av_write(cx, 1139, (int )((u8 )burst));
  cx18_av_write(cx, 1140, (int )((u8 )vblank));
  cx18_av_write(cx, 1141, (int )((u8 )(((int )((signed char )(vblank >> 8)) & 3) | (int )((signed char )(vactive << 4)))));
  cx18_av_write(cx, 1142, (int )((u8 )(vactive >> 4)));
  cx18_av_write(cx, 1143, (int )((u8 )vblank656));
  cx18_av_write(cx, 1144, (int )((u8 )src_decimation));
  cx18_av_write(cx, 1145, (int )((u8 )(src_decimation >> 8)));
  cx18_av_write(cx, 1146, (int )((u8 )((int )((signed char )(luma_lpf << 6)) | ((int )((signed char )(uv_lpf << 4)) & 48))));
  cx18_av_write(cx, 1147, (int )((u8 )comb));
  cx18_av_write(cx, 1148, (int )((u8 )sc));
  cx18_av_write(cx, 1149, (int )((u8 )(sc >> 8)));
  cx18_av_write(cx, 1150, (int )((u8 )(sc >> 16)));
  if ((std & 16713471ULL) != 0ULL) {
    state->slicer_line_delay = 1;
    state->slicer_line_offset = state->slicer_line_delay + 4;
  } else {
    state->slicer_line_delay = 0;
    state->slicer_line_offset = state->slicer_line_delay + 8;
  }
  cx18_av_write(cx, 1151, (int )((u8 )state->slicer_line_delay));
  return;
}
}
static void input_change(struct cx18 *cx )
{
  struct cx18_av_state *state ;
  v4l2_std_id std ;
  u8 v ;
  {
  state = & cx->av_state;
  std = state->std;
  cx18_av_write(cx, 1183, (std & 45056ULL) != 0ULL ? 20 : 17);
  cx18_av_and_or(cx, 1025, 4294967199U, 0);
  cx18_av_and_or(cx, 1025, 4294967199U, 96);
  if ((std & 63744ULL) != 0ULL) {
    if (std == 8192ULL) {
      cx18_av_write_expect(cx, 2056, 247, 247, 255);
      cx18_av_write_expect(cx, 2059, 2, 2, 63);
    } else
    if (std == 32768ULL) {
      cx18_av_write_expect(cx, 2056, 248, 248, 255);
      cx18_av_write_expect(cx, 2059, 3, 3, 63);
    } else {
      cx18_av_write_expect(cx, 2056, 246, 246, 255);
      cx18_av_write_expect(cx, 2059, 1, 1, 63);
    }
  } else
  if ((std & 255ULL) != 0ULL) {
    cx18_av_write_expect(cx, 2056, 255, 255, 255);
    cx18_av_write_expect(cx, 2059, 3, 3, 63);
  } else
  if ((std & 16711680ULL) != 0ULL) {
    cx18_av_write_expect(cx, 2056, 255, 255, 255);
    cx18_av_write_expect(cx, 2059, 3, 3, 63);
  } else {
  }
  v = cx18_av_read(cx, 2051);
  if (((int )v & 16) != 0) {
    v = (unsigned int )v & 239U;
    cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
    v = (u8 )((unsigned int )v | 16U);
    cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
  } else {
  }
  return;
}
}
static int cx18_av_s_frequency(struct v4l2_subdev *sd , struct v4l2_frequency const *freq )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  input_change(cx);
  return (0);
}
}
static int set_input(struct cx18 *cx , enum cx18_av_video_input vid_input , enum cx18_av_audio_input aud_input )
{
  struct cx18_av_state *state ;
  struct v4l2_subdev *sd ;
  enum analog_signal_type ch[3U] ;
  u8 afe_mux_cfg ;
  u8 adc2_cfg ;
  u8 input_mode ;
  u32 afe_cfg ;
  int i ;
  int luma ;
  int r_chroma ;
  int b_chroma ;
  int luma___0 ;
  int chroma ;
  {
  state = & cx->av_state;
  sd = & state->sd;
  ch[0] = 0;
  ch[1] = 0;
  ch[2] = 0;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: decoder set video input %d, audio input %d\n", (char *)(& sd->name),
           (unsigned int )vid_input, (unsigned int )aud_input);
  } else {
  }
  if ((unsigned int )vid_input != 0U && (unsigned int )vid_input <= 8U) {
    afe_mux_cfg = (unsigned int )((u8 )vid_input) + 239U;
    ch[0] = 1;
    input_mode = 0U;
  } else
  if ((unsigned int )vid_input > 4095U) {
    luma = (int )vid_input & 61440;
    r_chroma = (int )vid_input & 983040;
    b_chroma = (int )vid_input & 15728640;
    if ((((((((unsigned int )vid_input & 4278194175U) != 0U || luma <= 4095) || luma > 32768) || r_chroma <= 262143) || r_chroma > 393216) || b_chroma <= 7340031) || b_chroma > 8388608) {
      printk("\v%s: 0x%06x is not a valid video input!\n", (char *)(& sd->name), (unsigned int )vid_input);
      return (-22);
    } else {
    }
    afe_mux_cfg = (u8 )((luma + -4096) >> 12);
    ch[0] = 2;
    afe_mux_cfg = (u8 )((int )((signed char )((r_chroma + -262144) >> 12)) | (int )((signed char )afe_mux_cfg));
    ch[1] = 6;
    afe_mux_cfg = (u8 )((int )((signed char )((b_chroma + -7340032) >> 14)) | (int )((signed char )afe_mux_cfg));
    ch[2] = 5;
    input_mode = 6U;
  } else {
    luma___0 = (int )vid_input & 240;
    chroma = (int )vid_input & 3840;
    if ((((((unsigned int )vid_input & 4294963215U) != 0U || luma___0 <= 15) || luma___0 > 128) || chroma <= 1023) || chroma > 2048) {
      printk("\v%s: 0x%06x is not a valid video input!\n", (char *)(& sd->name), (unsigned int )vid_input);
      return (-22);
    } else {
    }
    afe_mux_cfg = (unsigned int )((u8 )((luma___0 + -16) >> 4)) + 240U;
    ch[0] = 2;
    if (chroma > 1791) {
      afe_mux_cfg = (unsigned int )afe_mux_cfg & 63U;
      afe_mux_cfg = (u8 )((int )((signed char )((chroma + -1792) >> 2)) | (int )((signed char )afe_mux_cfg));
      ch[2] = 3;
    } else {
      afe_mux_cfg = (unsigned int )afe_mux_cfg & 207U;
      afe_mux_cfg = (u8 )((int )((signed char )((chroma + -1024) >> 4)) | (int )((signed char )afe_mux_cfg));
      ch[1] = 3;
    }
    input_mode = 2U;
  }
  switch ((unsigned int )aud_input) {
  case 0U: ;
  case 1U: ;
  goto ldv_51611;
  case 4U:
  afe_mux_cfg = (unsigned int )afe_mux_cfg & 207U;
  ch[1] = 4;
  goto ldv_51611;
  case 5U:
  afe_mux_cfg = (u8 )(((int )((signed char )afe_mux_cfg) & -49) | 16);
  ch[1] = 4;
  goto ldv_51611;
  case 6U:
  afe_mux_cfg = (u8 )(((int )((signed char )afe_mux_cfg) & -49) | 32);
  ch[1] = 4;
  goto ldv_51611;
  case 7U:
  afe_mux_cfg = (unsigned int )afe_mux_cfg & 63U;
  ch[2] = 4;
  goto ldv_51611;
  case 8U:
  afe_mux_cfg = (u8 )(((int )((signed char )afe_mux_cfg) & 63) | 64);
  ch[2] = 4;
  goto ldv_51611;
  default:
  printk("\v%s: 0x%04x is not a valid audio input!\n", (char *)(& sd->name), (unsigned int )aud_input);
  return (-22);
  }
  ldv_51611:
  cx18_av_write_expect(cx, 259, (int )afe_mux_cfg, (int )afe_mux_cfg, 247);
  cx18_av_and_or(cx, 1025, 4294967289U, (int )input_mode);
  adc2_cfg = cx18_av_read(cx, 258);
  if ((unsigned int )ch[2] == 0U) {
    adc2_cfg = (unsigned int )adc2_cfg & 253U;
  } else {
    adc2_cfg = (u8 )((unsigned int )adc2_cfg | 2U);
  }
  if ((unsigned int )ch[1] != 0U && (unsigned int )ch[2] != 0U) {
    adc2_cfg = (u8 )((unsigned int )adc2_cfg | 4U);
  } else {
    adc2_cfg = (unsigned int )adc2_cfg & 251U;
  }
  cx18_av_write_expect(cx, 258, (int )adc2_cfg, (int )adc2_cfg, 23);
  afe_cfg = cx18_av_read4(cx, 260);
  afe_cfg = afe_cfg & 4278190080U;
  afe_cfg = afe_cfg | 20480U;
  if ((unsigned int )ch[1] != 0U && (unsigned int )ch[2] != 0U) {
    afe_cfg = afe_cfg | 48U;
  } else {
  }
  i = 0;
  goto ldv_51628;
  ldv_51627: ;
  switch ((unsigned int )ch[i]) {
  default: ;
  case 0U:
  afe_cfg = (u32 )(512 << i) | afe_cfg;
  goto ldv_51620;
  case 1U: ;
  case 2U: ;
  if (i > 0) {
    afe_cfg = afe_cfg | 8192U;
  } else {
  }
  goto ldv_51620;
  case 3U: ;
  case 5U: ;
  case 6U:
  afe_cfg = (u32 )(512 << i) | afe_cfg;
  if (i == 0 && (unsigned int )ch[i] == 3U) {
    afe_cfg = afe_cfg & 4294963199U;
  } else {
  }
  goto ldv_51620;
  case 4U:
  afe_cfg = (u32 )(576 << i) | afe_cfg;
  if (i == 0) {
    afe_cfg = afe_cfg & 4294950911U;
  } else {
  }
  goto ldv_51620;
  }
  ldv_51620:
  i = i + 1;
  ldv_51628: ;
  if (i <= 2) {
    goto ldv_51627;
  } else {
  }
  cx18_av_write4(cx, 260, afe_cfg);
  state->vid_input = vid_input;
  state->aud_input = aud_input;
  cx18_av_audio_set_path(cx);
  input_change(cx);
  return (0);
}
}
static int cx18_av_s_video_routing(struct v4l2_subdev *sd , u32 input , u32 output ,
                                   u32 config )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  tmp___1 = set_input(cx, (enum cx18_av_video_input )input, state->aud_input);
  return (tmp___1);
}
}
static int cx18_av_s_audio_routing(struct v4l2_subdev *sd , u32 input , u32 output ,
                                   u32 config )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  tmp___1 = set_input(cx, state->vid_input, (enum cx18_av_audio_input )input);
  return (tmp___1);
}
}
static int cx18_av_g_tuner(struct v4l2_subdev *sd , struct v4l2_tuner *vt )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  u8 vpres ;
  u8 mode ;
  int val ;
  u8 tmp___1 ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  val = 0;
  if (state->radio != 0) {
    return (0);
  } else {
  }
  tmp___1 = cx18_av_read(cx, 1038);
  vpres = (unsigned int )tmp___1 & 32U;
  vt->signal = (unsigned int )vpres != 0U ? 65535 : 0;
  vt->capability = vt->capability | 112U;
  mode = cx18_av_read(cx, 2052);
  if (((int )mode & 15) == 1) {
    val = val | 2;
  } else {
    val = val | 1;
  }
  if ((unsigned int )mode == 2U || (unsigned int )mode == 4U) {
    val = 12;
  } else {
  }
  if (((int )mode & 16) != 0) {
    val = val | 4;
  } else {
  }
  vt->rxsubchans = (__u32 )val;
  vt->audmode = (__u32 )state->audmode;
  return (0);
}
}
static int cx18_av_s_tuner(struct v4l2_subdev *sd , struct v4l2_tuner const *vt )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  u8 v ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  if (state->radio != 0) {
    return (0);
  } else {
  }
  v = cx18_av_read(cx, 2057);
  v = (unsigned int )v & 240U;
  switch (vt->audmode) {
  case 0U: ;
  goto ldv_51663;
  case 1U: ;
  case 3U:
  v = (u8 )((unsigned int )v | 4U);
  goto ldv_51663;
  case 4U:
  v = (u8 )((unsigned int )v | 7U);
  goto ldv_51663;
  case 2U:
  v = (u8 )((unsigned int )v | 1U);
  goto ldv_51663;
  default: ;
  return (-22);
  }
  ldv_51663:
  cx18_av_write_expect(cx, 2057, (int )v, (int )v, 255);
  state->audmode = (int )vt->audmode;
  return (0);
}
}
static int cx18_av_s_std(struct v4l2_subdev *sd , v4l2_std_id norm )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  u8 fmt ;
  u8 pal_m ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  fmt = 0U;
  pal_m = 0U;
  if (state->radio == 0 && state->std == norm) {
    return (0);
  } else {
  }
  state->radio = 0;
  state->std = norm;
  if (state->std == 8192ULL) {
    fmt = 2U;
  } else
  if (state->std == 16384ULL) {
    fmt = 3U;
  } else
  if (state->std == 256ULL) {
    pal_m = 1U;
    fmt = 5U;
  } else
  if (state->std == 512ULL) {
    fmt = 6U;
  } else
  if (state->std == 1024ULL) {
    fmt = 7U;
  } else
  if (state->std == 2048ULL) {
    fmt = 8U;
  } else
  if ((state->std & 45056ULL) != 0ULL) {
    fmt = 1U;
  } else
  if ((state->std & 255ULL) != 0ULL) {
    fmt = 4U;
  } else
  if ((state->std & 16711680ULL) != 0ULL) {
    fmt = 12U;
  } else {
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: changing video std to fmt %i\n", (char *)(& sd->name),
           (int )fmt);
  } else {
  }
  if ((unsigned int )fmt > 3U && (unsigned int )fmt <= 7U) {
    cx18_av_and_or(cx, 1024, 4294967280U, 1);
    cx18_av_and_or(cx, 1147, 4294967289U, 0);
  } else {
  }
  cx18_av_and_or(cx, 1024, 4294967248U, (int )((unsigned int )fmt | 32U));
  cx18_av_and_or(cx, 1027, 4294967292U, (int )pal_m);
  cx18_av_std_setup(cx);
  input_change(cx);
  return (0);
}
}
static int cx18_av_s_radio(struct v4l2_subdev *sd )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  state->radio = 1;
  return (0);
}
}
static int cx18_av_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct v4l2_subdev *sd ;
  struct v4l2_subdev *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  {
  tmp = to_sd(ctrl);
  sd = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  switch (ctrl->id) {
  case 9963776U:
  cx18_av_write(cx, 1044, (int )((unsigned int )((u8 )ctrl->ldv_36505.val) + 128U));
  goto ldv_51687;
  case 9963777U:
  cx18_av_write(cx, 1045, (int )((u8 )ctrl->ldv_36505.val) << 1U);
  goto ldv_51687;
  case 9963778U:
  cx18_av_write(cx, 1056, (int )((u8 )ctrl->ldv_36505.val) << 1U);
  cx18_av_write(cx, 1057, (int )((u8 )ctrl->ldv_36505.val) << 1U);
  goto ldv_51687;
  case 9963779U:
  cx18_av_write(cx, 1058, (int )((u8 )ctrl->ldv_36505.val));
  goto ldv_51687;
  default: ;
  return (-22);
  }
  ldv_51687: ;
  return (0);
}
}
static int cx18_av_s_mbus_fmt(struct v4l2_subdev *sd , struct v4l2_mbus_framefmt *fmt )
{
  struct cx18_av_state *state ;
  struct cx18_av_state *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  int HSC ;
  int VSC ;
  int Vsrc ;
  int Hsrc ;
  int filter ;
  int Vlines ;
  int is_50Hz ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  {
  tmp = to_cx18_av_state(sd);
  state = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  is_50Hz = (state->std & 63744ULL) == 0ULL;
  if (fmt->code != 1U) {
    return (-22);
  } else {
  }
  fmt->field = 4U;
  fmt->colorspace = 1U;
  tmp___1 = cx18_av_read(cx, 1142);
  Vsrc = ((int )tmp___1 & 63) << 4;
  tmp___2 = cx18_av_read(cx, 1141);
  Vsrc = ((int )tmp___2 >> 4) | Vsrc;
  tmp___3 = cx18_av_read(cx, 1138);
  Hsrc = ((int )tmp___3 & 63) << 4;
  tmp___4 = cx18_av_read(cx, 1137);
  Hsrc = ((int )tmp___4 >> 4) | Hsrc;
  Vlines = (int )(fmt->height + (is_50Hz != 0 ? 3U : 1U));
  if (((fmt->width * 16U < (__u32 )Hsrc || (__u32 )Hsrc < fmt->width) || Vlines * 8 < Vsrc) || Vsrc < Vlines) {
    printk("\v%s: %dx%d is not a valid size!\n", (char *)(& sd->name), fmt->width,
           fmt->height);
    return (-34);
  } else {
  }
  HSC = (int )((__u32 )(Hsrc * 1048576) / fmt->width - 1048576U);
  VSC = 66048 - (Vsrc * 512) / Vlines;
  VSC = VSC & 8191;
  if (fmt->width > 384U) {
    filter = 0;
  } else
  if (fmt->width > 192U) {
    filter = 1;
  } else
  if (fmt->width > 96U) {
    filter = 2;
  } else {
    filter = 3;
  }
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: decoder set size %dx%d -> scale  %ux%u\n", (char *)(& sd->name),
           fmt->width, fmt->height, HSC, VSC);
  } else {
  }
  cx18_av_write(cx, 1048, (int )((u8 )HSC));
  cx18_av_write(cx, 1049, (int )((u8 )(HSC >> 8)));
  cx18_av_write(cx, 1050, (int )((u8 )(HSC >> 16)));
  cx18_av_write(cx, 1052, (int )((u8 )VSC));
  cx18_av_write(cx, 1053, (int )((u8 )(VSC >> 8)));
  cx18_av_write(cx, 1054, (int )((u8 )((int )((signed char )filter) | 8)));
  return (0);
}
}
static int cx18_av_s_stream(struct v4l2_subdev *sd , int enable )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: %s output\n", (char *)(& sd->name), enable != 0 ? (char *)"enable" : (char *)"disable");
  } else {
  }
  if (enable != 0) {
    cx18_av_write(cx, 277, 140);
    cx18_av_write(cx, 278, 7);
  } else {
    cx18_av_write(cx, 277, 0);
    cx18_av_write(cx, 278, 0);
  }
  return (0);
}
}
static void log_video_status(struct cx18 *cx )
{
  char const *fmt_strs[16U] ;
  struct cx18_av_state *state ;
  struct v4l2_subdev *sd ;
  u8 vidfmt_sel ;
  u8 tmp ;
  u8 gen_stat1 ;
  u8 tmp___0 ;
  u8 gen_stat2 ;
  u8 tmp___1 ;
  int vid_input ;
  {
  fmt_strs[0] = "0x0";
  fmt_strs[1] = "NTSC-M";
  fmt_strs[2] = "NTSC-J";
  fmt_strs[3] = "NTSC-4.43";
  fmt_strs[4] = "PAL-BDGHI";
  fmt_strs[5] = "PAL-M";
  fmt_strs[6] = "PAL-N";
  fmt_strs[7] = "PAL-Nc";
  fmt_strs[8] = "PAL-60";
  fmt_strs[9] = "0x9";
  fmt_strs[10] = "0xA";
  fmt_strs[11] = "0xB";
  fmt_strs[12] = "SECAM";
  fmt_strs[13] = "0xD";
  fmt_strs[14] = "0xE";
  fmt_strs[15] = "0xF";
  state = & cx->av_state;
  sd = & state->sd;
  tmp = cx18_av_read(cx, 1024);
  vidfmt_sel = (unsigned int )tmp & 15U;
  tmp___0 = cx18_av_read(cx, 1037);
  gen_stat1 = tmp___0;
  tmp___1 = cx18_av_read(cx, 1038);
  gen_stat2 = tmp___1;
  vid_input = (int )state->vid_input;
  printk("\016%s: Video signal:              %spresent\n", (char *)(& sd->name), ((int )gen_stat2 & 32) != 0 ? (char *)"" : (char *)"not ");
  printk("\016%s: Detected format:           %s\n", (char *)(& sd->name), fmt_strs[(int )gen_stat1 & 15]);
  printk("\016%s: Specified standard:        %s\n", (char *)(& sd->name), (unsigned int )vidfmt_sel != 0U ? fmt_strs[(int )vidfmt_sel] : (char const * )"automatic detection");
  if (vid_input > 0 && vid_input <= 8) {
    printk("\016%s: Specified video input:     Composite %d\n", (char *)(& sd->name),
           vid_input);
  } else {
    printk("\016%s: Specified video input:     S-Video (Luma In%d, Chroma In%d)\n",
           (char *)(& sd->name), (vid_input & 240) >> 4, (vid_input & 3840) >> 8);
  }
  printk("\016%s: Specified audioclock freq: %d Hz\n", (char *)(& sd->name), state->audclk_freq);
  return;
}
}
static void log_audio_status(struct cx18 *cx )
{
  struct cx18_av_state *state ;
  struct v4l2_subdev *sd ;
  u8 download_ctl ;
  u8 tmp ;
  u8 mod_det_stat0 ;
  u8 tmp___0 ;
  u8 mod_det_stat1 ;
  u8 tmp___1 ;
  u8 audio_config ;
  u8 tmp___2 ;
  u8 pref_mode ;
  u8 tmp___3 ;
  u8 afc0 ;
  u8 tmp___4 ;
  u8 mute_ctl ;
  u8 tmp___5 ;
  int aud_input ;
  char *p ;
  {
  state = & cx->av_state;
  sd = & state->sd;
  tmp = cx18_av_read(cx, 2051);
  download_ctl = tmp;
  tmp___0 = cx18_av_read(cx, 2052);
  mod_det_stat0 = tmp___0;
  tmp___1 = cx18_av_read(cx, 2053);
  mod_det_stat1 = tmp___1;
  tmp___2 = cx18_av_read(cx, 2056);
  audio_config = tmp___2;
  tmp___3 = cx18_av_read(cx, 2057);
  pref_mode = tmp___3;
  tmp___4 = cx18_av_read(cx, 2059);
  afc0 = tmp___4;
  tmp___5 = cx18_av_read(cx, 2259);
  mute_ctl = tmp___5;
  aud_input = (int )state->aud_input;
  switch ((int )mod_det_stat0) {
  case 0:
  p = (char *)"mono";
  goto ldv_51735;
  case 1:
  p = (char *)"stereo";
  goto ldv_51735;
  case 2:
  p = (char *)"dual";
  goto ldv_51735;
  case 4:
  p = (char *)"tri";
  goto ldv_51735;
  case 16:
  p = (char *)"mono with SAP";
  goto ldv_51735;
  case 17:
  p = (char *)"stereo with SAP";
  goto ldv_51735;
  case 18:
  p = (char *)"dual with SAP";
  goto ldv_51735;
  case 20:
  p = (char *)"tri with SAP";
  goto ldv_51735;
  case 254:
  p = (char *)"forced mode";
  goto ldv_51735;
  default:
  p = (char *)"not defined";
  goto ldv_51735;
  }
  ldv_51735:
  printk("\016%s: Detected audio mode:       %s\n", (char *)(& sd->name), p);
  switch ((int )mod_det_stat1) {
  case 0:
  p = (char *)"not defined";
  goto ldv_51746;
  case 1:
  p = (char *)"EIAJ";
  goto ldv_51746;
  case 2:
  p = (char *)"A2-M";
  goto ldv_51746;
  case 3:
  p = (char *)"A2-BG";
  goto ldv_51746;
  case 4:
  p = (char *)"A2-DK1";
  goto ldv_51746;
  case 5:
  p = (char *)"A2-DK2";
  goto ldv_51746;
  case 6:
  p = (char *)"A2-DK3";
  goto ldv_51746;
  case 7:
  p = (char *)"A1 (6.0 MHz FM Mono)";
  goto ldv_51746;
  case 8:
  p = (char *)"AM-L";
  goto ldv_51746;
  case 9:
  p = (char *)"NICAM-BG";
  goto ldv_51746;
  case 10:
  p = (char *)"NICAM-DK";
  goto ldv_51746;
  case 11:
  p = (char *)"NICAM-I";
  goto ldv_51746;
  case 12:
  p = (char *)"NICAM-L";
  goto ldv_51746;
  case 13:
  p = (char *)"BTSC/EIAJ/A2-M Mono (4.5 MHz FMMono)";
  goto ldv_51746;
  case 14:
  p = (char *)"IF FM Radio";
  goto ldv_51746;
  case 15:
  p = (char *)"BTSC";
  goto ldv_51746;
  case 16:
  p = (char *)"detected chrominance";
  goto ldv_51746;
  case 253:
  p = (char *)"unknown audio standard";
  goto ldv_51746;
  case 254:
  p = (char *)"forced audio standard";
  goto ldv_51746;
  case 255:
  p = (char *)"no detected audio standard";
  goto ldv_51746;
  default:
  p = (char *)"not defined";
  goto ldv_51746;
  }
  ldv_51746:
  printk("\016%s: Detected audio standard:   %s\n", (char *)(& sd->name), p);
  printk("\016%s: Audio muted:               %s\n", (char *)(& sd->name), ((int )mute_ctl & 2) != 0 ? (char *)"yes" : (char *)"no");
  printk("\016%s: Audio microcontroller:     %s\n", (char *)(& sd->name), ((int )download_ctl & 16) != 0 ? (char *)"running" : (char *)"stopped");
  switch ((int )audio_config >> 4) {
  case 0:
  p = (char *)"undefined";
  goto ldv_51768;
  case 1:
  p = (char *)"BTSC";
  goto ldv_51768;
  case 2:
  p = (char *)"EIAJ";
  goto ldv_51768;
  case 3:
  p = (char *)"A2-M";
  goto ldv_51768;
  case 4:
  p = (char *)"A2-BG";
  goto ldv_51768;
  case 5:
  p = (char *)"A2-DK1";
  goto ldv_51768;
  case 6:
  p = (char *)"A2-DK2";
  goto ldv_51768;
  case 7:
  p = (char *)"A2-DK3";
  goto ldv_51768;
  case 8:
  p = (char *)"A1 (6.0 MHz FM Mono)";
  goto ldv_51768;
  case 9:
  p = (char *)"AM-L";
  goto ldv_51768;
  case 10:
  p = (char *)"NICAM-BG";
  goto ldv_51768;
  case 11:
  p = (char *)"NICAM-DK";
  goto ldv_51768;
  case 12:
  p = (char *)"NICAM-I";
  goto ldv_51768;
  case 13:
  p = (char *)"NICAM-L";
  goto ldv_51768;
  case 14:
  p = (char *)"FM radio";
  goto ldv_51768;
  case 15:
  p = (char *)"automatic detection";
  goto ldv_51768;
  default:
  p = (char *)"undefined";
  goto ldv_51768;
  }
  ldv_51768:
  printk("\016%s: Configured audio standard: %s\n", (char *)(& sd->name), p);
  if ((unsigned int )((int )audio_config >> 4) <= 14U) {
    switch ((int )audio_config & 15) {
    case 0:
    p = (char *)"MONO1 (LANGUAGE A/Mono L+R channel for BTSC, EIAJ, A2)";
    goto ldv_51786;
    case 1:
    p = (char *)"MONO2 (LANGUAGE B)";
    goto ldv_51786;
    case 2:
    p = (char *)"MONO3 (STEREO forced MONO)";
    goto ldv_51786;
    case 3:
    p = (char *)"MONO4 (NICAM ANALOG-Language C/Analog Fallback)";
    goto ldv_51786;
    case 4:
    p = (char *)"STEREO";
    goto ldv_51786;
    case 5:
    p = (char *)"DUAL1 (AC)";
    goto ldv_51786;
    case 6:
    p = (char *)"DUAL2 (BC)";
    goto ldv_51786;
    case 7:
    p = (char *)"DUAL3 (AB)";
    goto ldv_51786;
    default:
    p = (char *)"undefined";
    }
    ldv_51786:
    printk("\016%s: Configured audio mode:     %s\n", (char *)(& sd->name), p);
  } else {
    switch ((int )audio_config & 15) {
    case 0:
    p = (char *)"BG";
    goto ldv_51796;
    case 1:
    p = (char *)"DK1";
    goto ldv_51796;
    case 2:
    p = (char *)"DK2";
    goto ldv_51796;
    case 3:
    p = (char *)"DK3";
    goto ldv_51796;
    case 4:
    p = (char *)"I";
    goto ldv_51796;
    case 5:
    p = (char *)"L";
    goto ldv_51796;
    case 6:
    p = (char *)"BTSC";
    goto ldv_51796;
    case 7:
    p = (char *)"EIAJ";
    goto ldv_51796;
    case 8:
    p = (char *)"A2-M";
    goto ldv_51796;
    case 9:
    p = (char *)"FM Radio (4.5 MHz)";
    goto ldv_51796;
    case 10:
    p = (char *)"FM Radio (5.5 MHz)";
    goto ldv_51796;
    case 11:
    p = (char *)"S-Video";
    goto ldv_51796;
    case 15:
    p = (char *)"automatic standard and mode detection";
    goto ldv_51796;
    default:
    p = (char *)"undefined";
    goto ldv_51796;
    }
    ldv_51796:
    printk("\016%s: Configured audio system:   %s\n", (char *)(& sd->name), p);
  }
  if (aud_input != 0) {
    printk("\016%s: Specified audio input:     Tuner (In%d)\n", (char *)(& sd->name),
           aud_input);
  } else {
    printk("\016%s: Specified audio input:     External\n", (char *)(& sd->name));
  }
  switch ((int )pref_mode & 15) {
  case 0:
  p = (char *)"mono/language A";
  goto ldv_51811;
  case 1:
  p = (char *)"language B";
  goto ldv_51811;
  case 2:
  p = (char *)"language C";
  goto ldv_51811;
  case 3:
  p = (char *)"analog fallback";
  goto ldv_51811;
  case 4:
  p = (char *)"stereo";
  goto ldv_51811;
  case 5:
  p = (char *)"language AC";
  goto ldv_51811;
  case 6:
  p = (char *)"language BC";
  goto ldv_51811;
  case 7:
  p = (char *)"language AB";
  goto ldv_51811;
  default:
  p = (char *)"undefined";
  goto ldv_51811;
  }
  ldv_51811:
  printk("\016%s: Preferred audio mode:      %s\n", (char *)(& sd->name), p);
  if (((int )audio_config & 15) == 15) {
    switch (((int )afc0 >> 3) & 1) {
    case 0:
    p = (char *)"system DK";
    goto ldv_51821;
    case 1:
    p = (char *)"system L";
    goto ldv_51821;
    }
    ldv_51821:
    printk("\016%s: Selected 65 MHz format:    %s\n", (char *)(& sd->name), p);
    switch ((int )afc0 & 7) {
    case 0:
    p = (char *)"Chroma";
    goto ldv_51824;
    case 1:
    p = (char *)"BTSC";
    goto ldv_51824;
    case 2:
    p = (char *)"EIAJ";
    goto ldv_51824;
    case 3:
    p = (char *)"A2-M";
    goto ldv_51824;
    case 4:
    p = (char *)"autodetect";
    goto ldv_51824;
    default:
    p = (char *)"undefined";
    goto ldv_51824;
    }
    ldv_51824:
    printk("\016%s: Selected 45 MHz format:    %s\n", (char *)(& sd->name), p);
  } else {
  }
  return;
}
}
static int cx18_av_log_status(struct v4l2_subdev *sd )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  log_video_status(cx);
  log_audio_status(cx);
  return (0);
}
}
static int cx18_av_g_register(struct v4l2_subdev *sd , struct v4l2_dbg_register *reg )
{
  struct cx18 *cx ;
  void *tmp ;
  u32 tmp___0 ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  if ((reg->reg & 3ULL) != 0ULL) {
    return (-22);
  } else {
  }
  reg->size = 4U;
  tmp___0 = cx18_av_read4(cx, (int )((u16 )reg->reg) & 4092);
  reg->val = (__u64 )tmp___0;
  return (0);
}
}
static int cx18_av_s_register(struct v4l2_subdev *sd , struct v4l2_dbg_register const *reg )
{
  struct cx18 *cx ;
  void *tmp ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  if (((unsigned long long )reg->reg & 3ULL) != 0ULL) {
    return (-22);
  } else {
  }
  cx18_av_write4(cx, (int )((u16 )reg->reg) & 4092, (u32 )reg->val);
  return (0);
}
}
static struct v4l2_ctrl_ops const cx18_av_ctrl_ops = {0, 0, & cx18_av_s_ctrl};
static struct v4l2_subdev_core_ops const cx18_av_general_ops =
     {& cx18_av_log_status, 0, 0, & cx18_av_load_fw, & cx18_av_reset, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, & cx18_av_g_register, & cx18_av_s_register, 0, 0, 0, 0};
static struct v4l2_subdev_tuner_ops const cx18_av_tuner_ops =
     {& cx18_av_s_radio, & cx18_av_s_frequency, 0, 0, & cx18_av_g_tuner, & cx18_av_s_tuner,
    0, 0, 0, 0};
static struct v4l2_subdev_audio_ops const cx18_av_audio_ops = {& cx18_av_s_clock_freq, 0, & cx18_av_s_audio_routing, 0};
static struct v4l2_subdev_video_ops const cx18_av_video_ops =
     {& cx18_av_s_video_routing, 0, 0, & cx18_av_s_std, 0, 0, 0, 0, 0, 0, & cx18_av_s_stream,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx18_av_s_mbus_fmt, 0, 0, 0};
static struct v4l2_subdev_vbi_ops const cx18_av_vbi_ops = {& cx18_av_decode_vbi_line, 0, 0, 0, & cx18_av_s_raw_fmt, & cx18_av_g_sliced_fmt,
    & cx18_av_s_sliced_fmt};
static struct v4l2_subdev_ops const cx18_av_ops =
     {& cx18_av_general_ops, & cx18_av_tuner_ops, & cx18_av_audio_ops, & cx18_av_video_ops,
    & cx18_av_vbi_ops, 0, 0, 0};
int cx18_av_probe(struct cx18 *cx )
{
  struct cx18_av_state *state ;
  struct v4l2_subdev *sd ;
  int err ;
  u32 tmp ;
  struct lock_class_key _key ;
  int err___0 ;
  {
  state = & cx->av_state;
  tmp = cx18_av_read4(cx, 256);
  state->rev = tmp & 65535U;
  state->vid_input = 7;
  state->aud_input = 8;
  state->audclk_freq = 48000U;
  state->audmode = 3;
  state->slicer_line_delay = 0;
  state->slicer_line_offset = state->slicer_line_delay + 8;
  sd = & state->sd;
  v4l2_subdev_init(sd, & cx18_av_ops);
  v4l2_set_subdevdata(sd, (void *)cx);
  snprintf((char *)(& sd->name), 32UL, "%s %03x", (char *)(& cx->v4l2_dev.name), state->rev >> 4);
  sd->grp_id = 16U;
  v4l2_ctrl_handler_init_class(& state->hdl, 9U, & _key, "cx18_av_core:1423:(&state->hdl)->_lock");
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_ctrl_ops, 9963776U, 0, 255, 1U, 128);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_ctrl_ops, 9963777U, 0, 127, 1U, 64);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_ctrl_ops, 9963778U, 0, 127, 1U, 64);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_ctrl_ops, 9963779U, -128, 127, 1U, 0);
  state->volume = v4l2_ctrl_new_std(& state->hdl, & cx18_av_audio_ctrl_ops, 9963781U,
                                    0, 65535, 655U, 0);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_audio_ctrl_ops, 9963785U, 0, 1, 1U, 0);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_audio_ctrl_ops, 9963782U, 0, 65535, 655U,
                    32768);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_audio_ctrl_ops, 9963783U, 0, 65535, 655U,
                    32768);
  v4l2_ctrl_new_std(& state->hdl, & cx18_av_audio_ctrl_ops, 9963784U, 0, 65535, 655U,
                    32768);
  sd->ctrl_handler = & state->hdl;
  if (state->hdl.error != 0) {
    err___0 = state->hdl.error;
    v4l2_ctrl_handler_free(& state->hdl);
    return (err___0);
  } else {
  }
  err = v4l2_device_register_subdev(& cx->v4l2_dev, sd);
  if (err != 0) {
    v4l2_ctrl_handler_free(& state->hdl);
  } else {
    cx18_av_init(cx);
  }
  return (err);
}
}
void ldv_initialize_v4l2_subdev_video_ops_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(304UL);
  cx18_av_video_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_initialize_v4l2_subdev_audio_ops_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(304UL);
  cx18_av_audio_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_initialize_v4l2_subdev_core_ops_9(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(304UL);
  cx18_av_general_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_initialize_v4l2_subdev_tuner_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(304UL);
  cx18_av_tuner_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_initialize_v4l2_subdev_vbi_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(112UL);
  cx18_av_vbi_ops_group0 = (struct v4l2_sliced_vbi_format *)tmp;
  tmp___0 = ldv_zalloc(304UL);
  cx18_av_vbi_ops_group1 = (struct v4l2_subdev *)tmp___0;
  return;
}
}
void ldv_main_exported_8(void)
{
  struct v4l2_frequency *ldvarg109 ;
  void *tmp ;
  struct v4l2_tuner *ldvarg108 ;
  void *tmp___0 ;
  struct v4l2_tuner *ldvarg110 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(44UL);
  ldvarg109 = (struct v4l2_frequency *)tmp;
  tmp___0 = ldv_zalloc(84UL);
  ldvarg108 = (struct v4l2_tuner *)tmp___0;
  tmp___1 = ldv_zalloc(84UL);
  ldvarg110 = (struct v4l2_tuner *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    cx18_av_s_tuner(cx18_av_tuner_ops_group0, (struct v4l2_tuner const *)ldvarg110);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_51882;
  case 1: ;
  if (ldv_state_variable_8 == 1) {
    cx18_av_s_radio(cx18_av_tuner_ops_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_51882;
  case 2: ;
  if (ldv_state_variable_8 == 1) {
    cx18_av_s_frequency(cx18_av_tuner_ops_group0, (struct v4l2_frequency const *)ldvarg109);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_51882;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    cx18_av_g_tuner(cx18_av_tuner_ops_group0, ldvarg108);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_51882;
  default:
  ldv_stop();
  }
  ldv_51882: ;
  return;
}
}
void ldv_main_exported_6(void)
{
  struct v4l2_mbus_framefmt *ldvarg19 ;
  void *tmp ;
  u32 ldvarg22 ;
  u32 tmp___0 ;
  u32 ldvarg23 ;
  u32 tmp___1 ;
  v4l2_std_id ldvarg20 ;
  int ldvarg21 ;
  int tmp___2 ;
  u32 ldvarg24 ;
  u32 tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg19 = (struct v4l2_mbus_framefmt *)tmp;
  tmp___0 = __VERIFIER_nondet_u32();
  ldvarg22 = tmp___0;
  tmp___1 = __VERIFIER_nondet_u32();
  ldvarg23 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg21 = tmp___2;
  tmp___3 = __VERIFIER_nondet_u32();
  ldvarg24 = tmp___3;
  memset((void *)(& ldvarg20), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    cx18_av_s_video_routing(cx18_av_video_ops_group0, ldvarg24, ldvarg23, ldvarg22);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_51897;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    cx18_av_s_stream(cx18_av_video_ops_group0, ldvarg21);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_51897;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    cx18_av_s_std(cx18_av_video_ops_group0, ldvarg20);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_51897;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    cx18_av_s_mbus_fmt(cx18_av_video_ops_group0, ldvarg19);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_51897;
  default:
  ldv_stop();
  }
  ldv_51897: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  u32 ldvarg6 ;
  u32 tmp ;
  u32 ldvarg5 ;
  u32 tmp___0 ;
  u32 ldvarg7 ;
  u32 tmp___1 ;
  u32 ldvarg8 ;
  u32 tmp___2 ;
  int tmp___3 ;
  {
  tmp = __VERIFIER_nondet_u32();
  ldvarg6 = tmp;
  tmp___0 = __VERIFIER_nondet_u32();
  ldvarg5 = tmp___0;
  tmp___1 = __VERIFIER_nondet_u32();
  ldvarg7 = tmp___1;
  tmp___2 = __VERIFIER_nondet_u32();
  ldvarg8 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    cx18_av_s_audio_routing(cx18_av_audio_ops_group0, ldvarg8, ldvarg7, ldvarg6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_51910;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    cx18_av_s_clock_freq(cx18_av_audio_ops_group0, ldvarg5);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_51910;
  default:
  ldv_stop();
  }
  ldv_51910: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct v4l2_ctrl *ldvarg113 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  ldvarg113 = (struct v4l2_ctrl *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    cx18_av_s_ctrl(ldvarg113);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_51918;
  default:
  ldv_stop();
  }
  ldv_51918: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct v4l2_dbg_register *ldvarg28 ;
  void *tmp ;
  struct v4l2_dbg_register *ldvarg26 ;
  void *tmp___0 ;
  u32 ldvarg27 ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(56UL);
  ldvarg28 = (struct v4l2_dbg_register *)tmp;
  tmp___0 = ldv_zalloc(56UL);
  ldvarg26 = (struct v4l2_dbg_register *)tmp___0;
  tmp___1 = __VERIFIER_nondet_u32();
  ldvarg27 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    cx18_av_load_fw(cx18_av_general_ops_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_51927;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    cx18_av_s_register(cx18_av_general_ops_group0, (struct v4l2_dbg_register const *)ldvarg28);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_51927;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    cx18_av_reset(cx18_av_general_ops_group0, ldvarg27);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_51927;
  case 3: ;
  if (ldv_state_variable_9 == 1) {
    cx18_av_g_register(cx18_av_general_ops_group0, ldvarg26);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_51927;
  case 4: ;
  if (ldv_state_variable_9 == 1) {
    cx18_av_log_status(cx18_av_general_ops_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_51927;
  default:
  ldv_stop();
  }
  ldv_51927: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  struct v4l2_vbi_format *ldvarg115 ;
  void *tmp ;
  struct v4l2_decode_vbi_line *ldvarg114 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_zalloc(44UL);
  ldvarg115 = (struct v4l2_vbi_format *)tmp;
  tmp___0 = ldv_zalloc(24UL);
  ldvarg114 = (struct v4l2_decode_vbi_line *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    cx18_av_s_raw_fmt(cx18_av_vbi_ops_group1, ldvarg115);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_51939;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    cx18_av_g_sliced_fmt(cx18_av_vbi_ops_group1, cx18_av_vbi_ops_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_51939;
  case 2: ;
  if (ldv_state_variable_5 == 1) {
    cx18_av_decode_vbi_line(cx18_av_vbi_ops_group1, ldvarg114);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_51939;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    cx18_av_s_sliced_fmt(cx18_av_vbi_ops_group1, cx18_av_vbi_ops_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_51939;
  default:
  ldv_stop();
  }
  ldv_51939: ;
  return;
}
}
int ldv_pskb_expand_head_662(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_664(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_666(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_667(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_668(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_669(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_670(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_671(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_672(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_706(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_714(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_708(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_704(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_712(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_713(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_709(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_710(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_711(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static int set_audclk_freq(struct cx18 *cx , u32 freq )
{
  struct cx18_av_state *state ;
  {
  state = & cx->av_state;
  if ((freq != 32000U && freq != 44100U) && freq != 48000U) {
    return (-22);
  } else {
  }
  if ((unsigned int )state->aud_input > 1U) {
    switch (freq) {
    case 32000U:
    cx18_av_write4(cx, 264, 537723919U);
    cx18_av_write4(cx, 268, 2876158U);
    cx18_av_write4(cx, 272, 24540172U);
    cx18_av_write4(cx, 2304, 134346623U);
    cx18_av_write4(cx, 2308, 134346623U);
    cx18_av_write4(cx, 2316, 134346623U);
    cx18_av_write(cx, 295, 96);
    cx18_av_write4(cx, 300, 287322111U);
    cx18_av_write4(cx, 296, 2685218552U);
    goto ldv_51265;
    case 44100U:
    cx18_av_write4(cx, 264, 403571727U);
    cx18_av_write4(cx, 268, 2876158U);
    cx18_av_write4(cx, 272, 6463986U);
    cx18_av_write4(cx, 2304, 134311257U);
    cx18_av_write4(cx, 2308, 134311257U);
    cx18_av_write4(cx, 2316, 134311257U);
    cx18_av_write(cx, 295, 88);
    cx18_av_write4(cx, 300, 287347455U);
    cx18_av_write4(cx, 296, 2686274552U);
    goto ldv_51265;
    case 48000U:
    cx18_av_write4(cx, 264, 370017295U);
    cx18_av_write4(cx, 268, 2876158U);
    cx18_av_write4(cx, 272, 5384109U);
    cx18_av_write4(cx, 2304, 134303658U);
    cx18_av_write4(cx, 2308, 134303658U);
    cx18_av_write4(cx, 2316, 134303658U);
    cx18_av_write(cx, 295, 86);
    cx18_av_write4(cx, 300, 287334399U);
    cx18_av_write4(cx, 296, 2685506552U);
    goto ldv_51265;
    }
    ldv_51265: ;
  } else {
    switch (freq) {
    case 32000U:
    cx18_av_write4(cx, 264, 806159375U);
    cx18_av_write4(cx, 268, 2876158U);
    cx18_av_write4(cx, 272, 24540172U);
    cx18_av_write4(cx, 2296, 134283264U);
    cx18_av_write4(cx, 2304, 134348800U);
    cx18_av_write4(cx, 2308, 134348800U);
    cx18_av_write4(cx, 2316, 134348800U);
    cx18_av_write(cx, 295, 112);
    cx18_av_write4(cx, 300, 287318015U);
    cx18_av_write4(cx, 296, 2685218552U);
    goto ldv_51269;
    case 44100U:
    cx18_av_write4(cx, 264, 604898319U);
    cx18_av_write4(cx, 268, 2876158U);
    cx18_av_write4(cx, 272, 6463986U);
    cx18_av_write4(cx, 2296, 134308045U);
    cx18_av_write4(cx, 2304, 134312837U);
    cx18_av_write4(cx, 2308, 134312837U);
    cx18_av_write4(cx, 2316, 134312837U);
    cx18_av_write(cx, 295, 100);
    cx18_av_write4(cx, 300, 287334911U);
    cx18_av_write4(cx, 296, 2686274552U);
    goto ldv_51269;
    case 48000U:
    cx18_av_write4(cx, 264, 537723919U);
    cx18_av_write4(cx, 268, 2876158U);
    cx18_av_write4(cx, 272, 24540172U);
    cx18_av_write4(cx, 2296, 134316032U);
    cx18_av_write4(cx, 2304, 134305109U);
    cx18_av_write4(cx, 2308, 134305109U);
    cx18_av_write4(cx, 2316, 134305109U);
    cx18_av_write(cx, 295, 96);
    cx18_av_write4(cx, 300, 287326207U);
    cx18_av_write4(cx, 296, 2685506552U);
    goto ldv_51269;
    }
    ldv_51269: ;
  }
  state->audclk_freq = freq;
  return (0);
}
}
void cx18_av_audio_set_path(struct cx18 *cx )
{
  struct cx18_av_state *state ;
  u8 v ;
  u8 tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  {
  state = & cx->av_state;
  tmp = cx18_av_read(cx, 2051);
  v = (unsigned int )tmp & 239U;
  cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
  tmp___0 = cx18_av_read(cx, 2064);
  v = (u8 )((unsigned int )tmp___0 | 1U);
  cx18_av_write_expect(cx, 2064, (int )v, (int )v, 15);
  cx18_av_write(cx, 2259, 31);
  if ((unsigned int )state->aud_input <= 1U) {
    cx18_av_write4(cx, 2256, 16846866U);
  } else {
    cx18_av_write4(cx, 2256, 520501360U);
  }
  set_audclk_freq(cx, state->audclk_freq);
  tmp___1 = cx18_av_read(cx, 2064);
  v = (unsigned int )tmp___1 & 254U;
  cx18_av_write_expect(cx, 2064, (int )v, (int )v, 15);
  if ((unsigned int )state->aud_input > 1U) {
    tmp___2 = cx18_av_read(cx, 2051);
    v = (u8 )((unsigned int )tmp___2 | 16U);
    cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
  } else {
  }
  return;
}
}
static void set_volume(struct cx18 *cx , int volume )
{
  int vol ;
  {
  vol = volume >> 9;
  if (vol <= 23) {
    vol = 0;
  } else {
    vol = vol + -23;
  }
  cx18_av_write(cx, 2260, (int )((unsigned int )((u8 )(114 - vol)) * 2U));
  return;
}
}
static void set_bass(struct cx18 *cx , int bass )
{
  {
  cx18_av_and_or(cx, 2265, 4294967232U, (int )(48U - (unsigned int )((u8 )((bass * 48) / 65535))));
  return;
}
}
static void set_treble(struct cx18 *cx , int treble )
{
  {
  cx18_av_and_or(cx, 2267, 4294967232U, (int )(48U - (unsigned int )((u8 )((treble * 48) / 65535))));
  return;
}
}
static void set_balance(struct cx18 *cx , int balance )
{
  int bal ;
  {
  bal = balance >> 8;
  if (bal > 128) {
    cx18_av_and_or(cx, 2261, 127U, 128);
    cx18_av_and_or(cx, 2261, 4294967168U, (int )((u8 )bal) & 127);
  } else {
    cx18_av_and_or(cx, 2261, 127U, 0);
    cx18_av_and_or(cx, 2261, 4294967168U, (int )(128U - (unsigned int )((u8 )bal)));
  }
  return;
}
}
static void set_mute(struct cx18 *cx , int mute )
{
  struct cx18_av_state *state ;
  u8 v ;
  {
  state = & cx->av_state;
  if ((unsigned int )state->aud_input > 1U) {
    v = cx18_av_read(cx, 2051);
    if (mute != 0) {
      v = (unsigned int )v & 239U;
      cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
      cx18_av_write(cx, 2259, 31);
    } else {
      v = (u8 )((unsigned int )v | 16U);
      cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
    }
  } else {
    cx18_av_and_or(cx, 2259, 4294967293U, mute != 0 ? 2 : 0);
  }
  return;
}
}
int cx18_av_s_clock_freq(struct v4l2_subdev *sd , u32 freq )
{
  struct cx18 *cx ;
  void *tmp ;
  struct cx18_av_state *state ;
  int retval ;
  u8 v ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  state = & cx->av_state;
  if ((unsigned int )state->aud_input > 1U) {
    tmp___0 = cx18_av_read(cx, 2051);
    v = (unsigned int )tmp___0 & 239U;
    cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
    cx18_av_write(cx, 2259, 31);
  } else {
  }
  tmp___1 = cx18_av_read(cx, 2064);
  v = (u8 )((unsigned int )tmp___1 | 1U);
  cx18_av_write_expect(cx, 2064, (int )v, (int )v, 15);
  retval = set_audclk_freq(cx, freq);
  tmp___2 = cx18_av_read(cx, 2064);
  v = (unsigned int )tmp___2 & 254U;
  cx18_av_write_expect(cx, 2064, (int )v, (int )v, 15);
  if ((unsigned int )state->aud_input > 1U) {
    tmp___3 = cx18_av_read(cx, 2051);
    v = (u8 )((unsigned int )tmp___3 | 16U);
    cx18_av_write_expect(cx, 2051, (int )v, (int )v, 31);
  } else {
  }
  return (retval);
}
}
static int cx18_av_audio_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct v4l2_subdev *sd ;
  struct v4l2_subdev *tmp ;
  struct cx18 *cx ;
  void *tmp___0 ;
  {
  tmp = to_sd(ctrl);
  sd = tmp;
  tmp___0 = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp___0;
  switch (ctrl->id) {
  case 9963781U:
  set_volume(cx, ctrl->ldv_36505.val);
  goto ldv_51315;
  case 9963783U:
  set_bass(cx, ctrl->ldv_36505.val);
  goto ldv_51315;
  case 9963784U:
  set_treble(cx, ctrl->ldv_36505.val);
  goto ldv_51315;
  case 9963782U:
  set_balance(cx, ctrl->ldv_36505.val);
  goto ldv_51315;
  case 9963785U:
  set_mute(cx, ctrl->ldv_36505.val);
  goto ldv_51315;
  default: ;
  return (-22);
  }
  ldv_51315: ;
  return (0);
}
}
struct v4l2_ctrl_ops const cx18_av_audio_ctrl_ops = {0, 0, & cx18_av_audio_s_ctrl};
void ldv_main_exported_4(void)
{
  struct v4l2_ctrl *ldvarg111 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  ldvarg111 = (struct v4l2_ctrl *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    cx18_av_audio_s_ctrl(ldvarg111);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_51327;
  default:
  ldv_stop();
  }
  ldv_51327: ;
  return;
}
}
int ldv_pskb_expand_head_704(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_706(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_708(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_709(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_710(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_711(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_712(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_713(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_714(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_748(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_756(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_750(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_746(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_754(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_755(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_751(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_752(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_753(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static int cx18_av_verifyfw(struct cx18 *cx , struct firmware const *fw )
{
  struct v4l2_subdev *sd ;
  int ret ;
  u8 const *data ;
  u32 size ;
  int addr ;
  u32 expected ;
  u32 dl_control ;
  {
  sd = & cx->av_state.sd;
  ret = 0;
  dl_control = cx18_av_read4(cx, 2048);
  ldv_51443:
  dl_control = dl_control & 16777215U;
  dl_control = dl_control | 251658240U;
  cx18_av_write4_noretry(cx, 2048, dl_control);
  dl_control = cx18_av_read4(cx, 2048);
  if ((dl_control & 4278190080U) != 251658240U) {
    goto ldv_51443;
  } else {
  }
  goto ldv_51446;
  ldv_51445:
  dl_control = cx18_av_read4(cx, 2048);
  ldv_51446: ;
  if ((dl_control & 16383U) != 0U) {
    goto ldv_51445;
  } else {
  }
  data = fw->data;
  size = (u32 )fw->size;
  addr = 0;
  goto ldv_51450;
  ldv_51449:
  dl_control = dl_control & 4294918143U;
  expected = (((unsigned int )*(data + (unsigned long )addr) << 16) | (unsigned int )addr) | 251658240U;
  if (expected != dl_control) {
    printk("\v%s: verification of %s firmware load failed: expected %#010x got %#010x\n",
           (char *)(& sd->name), (char *)"v4l-cx23418-dig.fw", expected, dl_control);
    ret = -5;
    goto ldv_51448;
  } else {
  }
  dl_control = cx18_av_read4(cx, 2048);
  addr = addr + 1;
  ldv_51450: ;
  if ((u32 )addr < size) {
    goto ldv_51449;
  } else {
  }
  ldv_51448: ;
  if (ret == 0) {
    printk("\016%s: verified load of %s firmware (%d bytes)\n", (char *)(& sd->name),
           (char *)"v4l-cx23418-dig.fw", size);
  } else {
  }
  return (ret);
}
}
int cx18_av_loadfw(struct cx18 *cx )
{
  struct v4l2_subdev *sd ;
  struct firmware const *fw ;
  u32 size ;
  u32 u ;
  u32 v ;
  u8 const *ptr ;
  int i ;
  int retries1 ;
  int tmp ;
  u32 dl_control ;
  u32 value ;
  int retries2 ;
  int unrec_err ;
  int tmp___0 ;
  {
  sd = & cx->av_state.sd;
  fw = (struct firmware const *)0;
  retries1 = 0;
  tmp = request_firmware(& fw, "v4l-cx23418-dig.fw", & (cx->pci_dev)->dev);
  if (tmp != 0) {
    printk("\v%s: unable to open firmware %s\n", (char *)(& sd->name), (char *)"v4l-cx23418-dig.fw");
    return (-22);
  } else {
  }
  goto ldv_51474;
  ldv_51473:
  cx18_av_write4_expect(cx, 256, 65536U, 33840U, 4294967295U);
  cx18_av_write_expect(cx, 2056, 246, 246, 255);
  cx18_av_write4_expect(cx, 33024, 65536U, 33840U, 4294967295U);
  cx18_av_write4_noretry(cx, 2048, 251658240U);
  ptr = fw->data;
  size = (u32 )fw->size;
  i = 0;
  goto ldv_51471;
  ldv_51470:
  dl_control = (((unsigned int )*(ptr + (unsigned long )i) << 16) | (unsigned int )i) | 251658240U;
  value = 0U;
  unrec_err = 0;
  retries2 = 0;
  goto ldv_51468;
  ldv_51467:
  cx18_av_write4_noretry(cx, 2048, dl_control);
  __const_udelay(42950UL);
  value = cx18_av_read4(cx, 2048);
  if (value == dl_control) {
    goto ldv_51466;
  } else {
  }
  if (((value ^ dl_control) & 16128U) != 0U) {
    unrec_err = 1;
    goto ldv_51466;
  } else {
  }
  retries2 = retries2 + 1;
  ldv_51468: ;
  if (retries2 <= 9) {
    goto ldv_51467;
  } else {
  }
  ldv_51466: ;
  if (unrec_err != 0 || retries2 > 9) {
    goto ldv_51469;
  } else {
  }
  i = i + 1;
  ldv_51471: ;
  if ((u32 )i < size) {
    goto ldv_51470;
  } else {
  }
  ldv_51469: ;
  if ((u32 )i == size) {
    goto ldv_51472;
  } else {
  }
  retries1 = retries1 + 1;
  ldv_51474: ;
  if (retries1 <= 4) {
    goto ldv_51473;
  } else {
  }
  ldv_51472: ;
  if (retries1 > 4) {
    printk("\v%s: unable to load firmware %s\n", (char *)(& sd->name), (char *)"v4l-cx23418-dig.fw");
    release_firmware(fw);
    return (-5);
  } else {
  }
  cx18_av_write4_expect(cx, 2048, (u32 )fw->size | 50331648U, 50331648U, 318767104U);
  printk("\016%s: loaded %s firmware (%d bytes)\n", (char *)(& sd->name), (char *)"v4l-cx23418-dig.fw",
         size);
  tmp___0 = cx18_av_verifyfw(cx, fw);
  if (tmp___0 == 0) {
    cx18_av_write4_expect(cx, 2048, (u32 )fw->size | 318767104U, 318767104U, 318767104U);
  } else {
  }
  cx18_av_and_or4(cx, 276, 4294967295U, 491520U);
  cx18_av_write4(cx, 2324, 160U);
  cx18_av_write4(cx, 2328, 416U);
  cx18_av_write4(cx, 292, 1442887303U);
  cx18_av_write4_expect(cx, 2056, 246U, 246U, 1057030143U);
  cx18_av_write4(cx, 2508, 1U);
  v = cx18_read_reg(cx, 13049876U);
  if ((v & 2048U) != 0U) {
    cx18_write_reg_expect(cx, v & 4294966271U, 13049876U, 0U, 1024U);
  } else {
  }
  v = cx18_read_reg(cx, 13049876U);
  u = v & 48U;
  v = v & 4294967247U;
  if (u == 32U || u == 48U) {
    v = v;
    cx18_write_reg_expect(cx, v | 2816U, 13049876U, v, 48U);
    v = (v & 4294967247U) | 32U;
  } else {
    v = v | 32U;
    cx18_write_reg_expect(cx, v | 2816U, 13049876U, v, 48U);
    v = (v & 4294967247U) | u;
  }
  cx18_write_reg_expect(cx, v | 2816U, 13049876U, v, 48U);
  v = cx18_av_read4(cx, 2056);
  v = v | 255U;
  v = v | 1024U;
  v = v | 335544320U;
  cx18_av_write4_expect(cx, 2056, v, v, 1057030143U);
  release_firmware(fw);
  return (0);
}
}
int ldv_pskb_expand_head_746(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_748(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_750(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_751(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_752(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_753(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_754(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_755(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_756(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_790(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_798(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_792(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_788(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_796(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_797(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_793(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_794(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_795(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static u8 const sliced_vbi_did[2U] = { 145U, 85U};
static int odd_parity(u8 c )
{
  {
  c = (u8 )(((int )c >> 4) ^ (int )c);
  c = (u8 )(((int )c >> 2) ^ (int )c);
  c = (u8 )(((int )c >> 1) ^ (int )c);
  return ((int )c & 1);
}
}
static int decode_vps(u8 *dst , u8 *p )
{
  u8 biphase_tbl[256U] ;
  u8 c ;
  u8 err ;
  int i ;
  {
  biphase_tbl[0] = 240U;
  biphase_tbl[1] = 120U;
  biphase_tbl[2] = 112U;
  biphase_tbl[3] = 240U;
  biphase_tbl[4] = 180U;
  biphase_tbl[5] = 60U;
  biphase_tbl[6] = 52U;
  biphase_tbl[7] = 180U;
  biphase_tbl[8] = 176U;
  biphase_tbl[9] = 56U;
  biphase_tbl[10] = 48U;
  biphase_tbl[11] = 176U;
  biphase_tbl[12] = 240U;
  biphase_tbl[13] = 120U;
  biphase_tbl[14] = 112U;
  biphase_tbl[15] = 240U;
  biphase_tbl[16] = 210U;
  biphase_tbl[17] = 90U;
  biphase_tbl[18] = 82U;
  biphase_tbl[19] = 210U;
  biphase_tbl[20] = 150U;
  biphase_tbl[21] = 30U;
  biphase_tbl[22] = 22U;
  biphase_tbl[23] = 150U;
  biphase_tbl[24] = 146U;
  biphase_tbl[25] = 26U;
  biphase_tbl[26] = 18U;
  biphase_tbl[27] = 146U;
  biphase_tbl[28] = 210U;
  biphase_tbl[29] = 90U;
  biphase_tbl[30] = 82U;
  biphase_tbl[31] = 210U;
  biphase_tbl[32] = 208U;
  biphase_tbl[33] = 88U;
  biphase_tbl[34] = 80U;
  biphase_tbl[35] = 208U;
  biphase_tbl[36] = 148U;
  biphase_tbl[37] = 28U;
  biphase_tbl[38] = 20U;
  biphase_tbl[39] = 148U;
  biphase_tbl[40] = 144U;
  biphase_tbl[41] = 24U;
  biphase_tbl[42] = 16U;
  biphase_tbl[43] = 144U;
  biphase_tbl[44] = 208U;
  biphase_tbl[45] = 88U;
  biphase_tbl[46] = 80U;
  biphase_tbl[47] = 208U;
  biphase_tbl[48] = 240U;
  biphase_tbl[49] = 120U;
  biphase_tbl[50] = 112U;
  biphase_tbl[51] = 240U;
  biphase_tbl[52] = 180U;
  biphase_tbl[53] = 60U;
  biphase_tbl[54] = 52U;
  biphase_tbl[55] = 180U;
  biphase_tbl[56] = 176U;
  biphase_tbl[57] = 56U;
  biphase_tbl[58] = 48U;
  biphase_tbl[59] = 176U;
  biphase_tbl[60] = 240U;
  biphase_tbl[61] = 120U;
  biphase_tbl[62] = 112U;
  biphase_tbl[63] = 240U;
  biphase_tbl[64] = 225U;
  biphase_tbl[65] = 105U;
  biphase_tbl[66] = 97U;
  biphase_tbl[67] = 225U;
  biphase_tbl[68] = 165U;
  biphase_tbl[69] = 45U;
  biphase_tbl[70] = 37U;
  biphase_tbl[71] = 165U;
  biphase_tbl[72] = 161U;
  biphase_tbl[73] = 41U;
  biphase_tbl[74] = 33U;
  biphase_tbl[75] = 161U;
  biphase_tbl[76] = 225U;
  biphase_tbl[77] = 105U;
  biphase_tbl[78] = 97U;
  biphase_tbl[79] = 225U;
  biphase_tbl[80] = 195U;
  biphase_tbl[81] = 75U;
  biphase_tbl[82] = 67U;
  biphase_tbl[83] = 195U;
  biphase_tbl[84] = 135U;
  biphase_tbl[85] = 15U;
  biphase_tbl[86] = 7U;
  biphase_tbl[87] = 135U;
  biphase_tbl[88] = 131U;
  biphase_tbl[89] = 11U;
  biphase_tbl[90] = 3U;
  biphase_tbl[91] = 131U;
  biphase_tbl[92] = 195U;
  biphase_tbl[93] = 75U;
  biphase_tbl[94] = 67U;
  biphase_tbl[95] = 195U;
  biphase_tbl[96] = 193U;
  biphase_tbl[97] = 73U;
  biphase_tbl[98] = 65U;
  biphase_tbl[99] = 193U;
  biphase_tbl[100] = 133U;
  biphase_tbl[101] = 13U;
  biphase_tbl[102] = 5U;
  biphase_tbl[103] = 133U;
  biphase_tbl[104] = 129U;
  biphase_tbl[105] = 9U;
  biphase_tbl[106] = 1U;
  biphase_tbl[107] = 129U;
  biphase_tbl[108] = 193U;
  biphase_tbl[109] = 73U;
  biphase_tbl[110] = 65U;
  biphase_tbl[111] = 193U;
  biphase_tbl[112] = 225U;
  biphase_tbl[113] = 105U;
  biphase_tbl[114] = 97U;
  biphase_tbl[115] = 225U;
  biphase_tbl[116] = 165U;
  biphase_tbl[117] = 45U;
  biphase_tbl[118] = 37U;
  biphase_tbl[119] = 165U;
  biphase_tbl[120] = 161U;
  biphase_tbl[121] = 41U;
  biphase_tbl[122] = 33U;
  biphase_tbl[123] = 161U;
  biphase_tbl[124] = 225U;
  biphase_tbl[125] = 105U;
  biphase_tbl[126] = 97U;
  biphase_tbl[127] = 225U;
  biphase_tbl[128] = 224U;
  biphase_tbl[129] = 104U;
  biphase_tbl[130] = 96U;
  biphase_tbl[131] = 224U;
  biphase_tbl[132] = 164U;
  biphase_tbl[133] = 44U;
  biphase_tbl[134] = 36U;
  biphase_tbl[135] = 164U;
  biphase_tbl[136] = 160U;
  biphase_tbl[137] = 40U;
  biphase_tbl[138] = 32U;
  biphase_tbl[139] = 160U;
  biphase_tbl[140] = 224U;
  biphase_tbl[141] = 104U;
  biphase_tbl[142] = 96U;
  biphase_tbl[143] = 224U;
  biphase_tbl[144] = 194U;
  biphase_tbl[145] = 74U;
  biphase_tbl[146] = 66U;
  biphase_tbl[147] = 194U;
  biphase_tbl[148] = 134U;
  biphase_tbl[149] = 14U;
  biphase_tbl[150] = 6U;
  biphase_tbl[151] = 134U;
  biphase_tbl[152] = 130U;
  biphase_tbl[153] = 10U;
  biphase_tbl[154] = 2U;
  biphase_tbl[155] = 130U;
  biphase_tbl[156] = 194U;
  biphase_tbl[157] = 74U;
  biphase_tbl[158] = 66U;
  biphase_tbl[159] = 194U;
  biphase_tbl[160] = 192U;
  biphase_tbl[161] = 72U;
  biphase_tbl[162] = 64U;
  biphase_tbl[163] = 192U;
  biphase_tbl[164] = 132U;
  biphase_tbl[165] = 12U;
  biphase_tbl[166] = 4U;
  biphase_tbl[167] = 132U;
  biphase_tbl[168] = 128U;
  biphase_tbl[169] = 8U;
  biphase_tbl[170] = 0U;
  biphase_tbl[171] = 128U;
  biphase_tbl[172] = 192U;
  biphase_tbl[173] = 72U;
  biphase_tbl[174] = 64U;
  biphase_tbl[175] = 192U;
  biphase_tbl[176] = 224U;
  biphase_tbl[177] = 104U;
  biphase_tbl[178] = 96U;
  biphase_tbl[179] = 224U;
  biphase_tbl[180] = 164U;
  biphase_tbl[181] = 44U;
  biphase_tbl[182] = 36U;
  biphase_tbl[183] = 164U;
  biphase_tbl[184] = 160U;
  biphase_tbl[185] = 40U;
  biphase_tbl[186] = 32U;
  biphase_tbl[187] = 160U;
  biphase_tbl[188] = 224U;
  biphase_tbl[189] = 104U;
  biphase_tbl[190] = 96U;
  biphase_tbl[191] = 224U;
  biphase_tbl[192] = 240U;
  biphase_tbl[193] = 120U;
  biphase_tbl[194] = 112U;
  biphase_tbl[195] = 240U;
  biphase_tbl[196] = 180U;
  biphase_tbl[197] = 60U;
  biphase_tbl[198] = 52U;
  biphase_tbl[199] = 180U;
  biphase_tbl[200] = 176U;
  biphase_tbl[201] = 56U;
  biphase_tbl[202] = 48U;
  biphase_tbl[203] = 176U;
  biphase_tbl[204] = 240U;
  biphase_tbl[205] = 120U;
  biphase_tbl[206] = 112U;
  biphase_tbl[207] = 240U;
  biphase_tbl[208] = 210U;
  biphase_tbl[209] = 90U;
  biphase_tbl[210] = 82U;
  biphase_tbl[211] = 210U;
  biphase_tbl[212] = 150U;
  biphase_tbl[213] = 30U;
  biphase_tbl[214] = 22U;
  biphase_tbl[215] = 150U;
  biphase_tbl[216] = 146U;
  biphase_tbl[217] = 26U;
  biphase_tbl[218] = 18U;
  biphase_tbl[219] = 146U;
  biphase_tbl[220] = 210U;
  biphase_tbl[221] = 90U;
  biphase_tbl[222] = 82U;
  biphase_tbl[223] = 210U;
  biphase_tbl[224] = 208U;
  biphase_tbl[225] = 88U;
  biphase_tbl[226] = 80U;
  biphase_tbl[227] = 208U;
  biphase_tbl[228] = 148U;
  biphase_tbl[229] = 28U;
  biphase_tbl[230] = 20U;
  biphase_tbl[231] = 148U;
  biphase_tbl[232] = 144U;
  biphase_tbl[233] = 24U;
  biphase_tbl[234] = 16U;
  biphase_tbl[235] = 144U;
  biphase_tbl[236] = 208U;
  biphase_tbl[237] = 88U;
  biphase_tbl[238] = 80U;
  biphase_tbl[239] = 208U;
  biphase_tbl[240] = 240U;
  biphase_tbl[241] = 120U;
  biphase_tbl[242] = 112U;
  biphase_tbl[243] = 240U;
  biphase_tbl[244] = 180U;
  biphase_tbl[245] = 60U;
  biphase_tbl[246] = 52U;
  biphase_tbl[247] = 180U;
  biphase_tbl[248] = 176U;
  biphase_tbl[249] = 56U;
  biphase_tbl[250] = 48U;
  biphase_tbl[251] = 176U;
  biphase_tbl[252] = 240U;
  biphase_tbl[253] = 120U;
  biphase_tbl[254] = 112U;
  biphase_tbl[255] = 240U;
  err = 0U;
  i = 0;
  goto ldv_51279;
  ldv_51278:
  err = (u8 )(((int )biphase_tbl[(int )*(p + (unsigned long )i)] | (int )biphase_tbl[(int )*(p + ((unsigned long )i + 1UL))]) | (int )err);
  c = (u8 )(((int )((signed char )biphase_tbl[(int )*(p + ((unsigned long )i + 1UL))]) & 15) | (int )((signed char )((int )biphase_tbl[(int )*(p + (unsigned long )i)] << 4)));
  *(dst + (unsigned long )(i / 2)) = c;
  i = i + 2;
  ldv_51279: ;
  if (i <= 25) {
    goto ldv_51278;
  } else {
  }
  return ((int )err & 240);
}
}
int cx18_av_g_sliced_fmt(struct v4l2_subdev *sd , struct v4l2_sliced_vbi_format *svbi )
{
  struct cx18 *cx ;
  void *tmp ;
  struct cx18_av_state *state ;
  u16 lcr2vbi[16U] ;
  int is_pal ;
  int i ;
  u8 tmp___0 ;
  u8 v ;
  u8 tmp___1 ;
  u8 v___0 ;
  u8 tmp___2 ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  state = & cx->av_state;
  lcr2vbi[0] = 0U;
  lcr2vbi[1] = 1U;
  lcr2vbi[2] = 0U;
  lcr2vbi[3] = 0U;
  lcr2vbi[4] = 16384U;
  lcr2vbi[5] = 0U;
  lcr2vbi[6] = 4096U;
  lcr2vbi[7] = 0U;
  lcr2vbi[8] = 0U;
  lcr2vbi[9] = 1024U;
  lcr2vbi[10] = 0U;
  lcr2vbi[11] = 0U;
  lcr2vbi[12] = 0U;
  lcr2vbi[13] = 0U;
  lcr2vbi[14] = 0U;
  lcr2vbi[15] = 0U;
  is_pal = (state->std & 63744ULL) == 0ULL;
  memset((void *)(& svbi->service_lines), 0, 96UL);
  svbi->service_set = 0U;
  tmp___0 = cx18_av_read(cx, 1028);
  if (((int )tmp___0 & 16) == 0) {
    return (0);
  } else {
  }
  if (is_pal != 0) {
    i = 7;
    goto ldv_51292;
    ldv_51291:
    tmp___1 = cx18_av_read(cx, (int )((unsigned int )((u16 )i) + 1053U));
    v = tmp___1;
    svbi->service_lines[0][i] = lcr2vbi[(int )v >> 4];
    svbi->service_lines[1][i] = lcr2vbi[(int )v & 15];
    svbi->service_set = (__u16 )((int )svbi->service_set | ((int )svbi->service_lines[0][i] | (int )svbi->service_lines[1][i]));
    i = i + 1;
    ldv_51292: ;
    if (i <= 23) {
      goto ldv_51291;
    } else {
    }
  } else {
    i = 10;
    goto ldv_51296;
    ldv_51295:
    tmp___2 = cx18_av_read(cx, (int )((unsigned int )((u16 )i) + 1050U));
    v___0 = tmp___2;
    svbi->service_lines[0][i] = lcr2vbi[(int )v___0 >> 4];
    svbi->service_lines[1][i] = lcr2vbi[(int )v___0 & 15];
    svbi->service_set = (__u16 )((int )svbi->service_set | ((int )svbi->service_lines[0][i] | (int )svbi->service_lines[1][i]));
    i = i + 1;
    ldv_51296: ;
    if (i <= 21) {
      goto ldv_51295;
    } else {
    }
  }
  return (0);
}
}
int cx18_av_s_raw_fmt(struct v4l2_subdev *sd , struct v4l2_vbi_format *fmt )
{
  struct cx18 *cx ;
  void *tmp ;
  struct cx18_av_state *state ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  state = & cx->av_state;
  cx18_av_std_setup(cx);
  cx18_av_write(cx, 1151, (int )((u8 )state->slicer_line_delay));
  cx18_av_write(cx, 1028, 46);
  return (0);
}
}
int cx18_av_s_sliced_fmt(struct v4l2_subdev *sd , struct v4l2_sliced_vbi_format *svbi )
{
  struct cx18 *cx ;
  void *tmp ;
  struct cx18_av_state *state ;
  int is_pal ;
  int i ;
  int x ;
  u8 lcr[24U] ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  state = & cx->av_state;
  is_pal = (state->std & 63744ULL) == 0ULL;
  x = 0;
  goto ldv_51315;
  ldv_51314:
  lcr[x] = 0U;
  x = x + 1;
  ldv_51315: ;
  if (x <= 23) {
    goto ldv_51314;
  } else {
  }
  cx18_av_std_setup(cx);
  cx18_av_write(cx, 1028, 50);
  cx18_av_write(cx, 1030, 19);
  cx18_av_write(cx, 1151, (int )((u8 )state->slicer_line_delay));
  if (is_pal != 0) {
    i = 0;
    goto ldv_51318;
    ldv_51317:
    tmp___0 = 0U;
    svbi->service_lines[1][i] = tmp___0;
    svbi->service_lines[0][i] = tmp___0;
    i = i + 1;
    ldv_51318: ;
    if (i <= 6) {
      goto ldv_51317;
    } else {
    }
  } else {
    i = 0;
    goto ldv_51321;
    ldv_51320:
    tmp___1 = 0U;
    svbi->service_lines[1][i] = tmp___1;
    svbi->service_lines[0][i] = tmp___1;
    i = i + 1;
    ldv_51321: ;
    if (i <= 9) {
      goto ldv_51320;
    } else {
    }
    i = 22;
    goto ldv_51324;
    ldv_51323:
    tmp___2 = 0U;
    svbi->service_lines[1][i] = tmp___2;
    svbi->service_lines[0][i] = tmp___2;
    i = i + 1;
    ldv_51324: ;
    if (i <= 23) {
      goto ldv_51323;
    } else {
    }
  }
  i = 7;
  goto ldv_51335;
  ldv_51334:
  x = 0;
  goto ldv_51332;
  ldv_51331: ;
  switch ((int )svbi->service_lines[1 - x][i]) {
  case 1:
  lcr[i] = (u8 )((int )((signed char )lcr[i]) | (int )((signed char )(1 << x * 4)));
  goto ldv_51327;
  case 16384:
  lcr[i] = (u8 )((int )((signed char )lcr[i]) | (int )((signed char )(4 << x * 4)));
  goto ldv_51327;
  case 4096:
  lcr[i] = (u8 )((int )((signed char )lcr[i]) | (int )((signed char )(6 << x * 4)));
  goto ldv_51327;
  case 1024:
  lcr[i] = (u8 )((int )((signed char )lcr[i]) | (int )((signed char )(9 << x * 4)));
  goto ldv_51327;
  }
  ldv_51327:
  x = x + 1;
  ldv_51332: ;
  if (x <= 1) {
    goto ldv_51331;
  } else {
  }
  i = i + 1;
  ldv_51335: ;
  if (i <= 23) {
    goto ldv_51334;
  } else {
  }
  if (is_pal != 0) {
    x = 1;
    i = 1060;
    goto ldv_51338;
    ldv_51337:
    cx18_av_write(cx, (int )((u16 )i), (int )lcr[x + 6]);
    i = i + 1;
    x = x + 1;
    ldv_51338: ;
    if (i <= 1076) {
      goto ldv_51337;
    } else {
    }
  } else {
    x = 1;
    i = 1060;
    goto ldv_51341;
    ldv_51340:
    cx18_av_write(cx, (int )((u16 )i), (int )lcr[x + 9]);
    i = i + 1;
    x = x + 1;
    ldv_51341: ;
    if (i <= 1072) {
      goto ldv_51340;
    } else {
    }
    i = 1073;
    goto ldv_51344;
    ldv_51343:
    cx18_av_write(cx, (int )((u16 )i), 0);
    i = i + 1;
    ldv_51344: ;
    if (i <= 1076) {
      goto ldv_51343;
    } else {
    }
  }
  cx18_av_write(cx, 1084, 22);
  cx18_av_write(cx, 1140, is_pal != 0 ? 38 : 26);
  return (0);
}
}
int cx18_av_decode_vbi_line(struct v4l2_subdev *sd , struct v4l2_decode_vbi_line *vbi )
{
  struct cx18 *cx ;
  void *tmp ;
  struct cx18_av_state *state ;
  struct vbi_anc_data *anc ;
  u8 *p ;
  int did ;
  int sdid ;
  int l ;
  int err ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = v4l2_get_subdevdata((struct v4l2_subdev const *)sd);
  cx = (struct cx18 *)tmp;
  state = & cx->av_state;
  anc = (struct vbi_anc_data *)vbi->p;
  err = 0;
  if ((((unsigned int )anc->preamble[0] != 0U || (unsigned int )anc->preamble[1] != 255U) || (unsigned int )anc->preamble[2] != 255U) || ((int )anc->did != (int )((unsigned char )sliced_vbi_did[0]) && (int )anc->did != (int )((unsigned char )sliced_vbi_did[1]))) {
    tmp___0 = 0U;
    vbi->type = tmp___0;
    vbi->line = tmp___0;
    return (0);
  } else {
  }
  did = (int )anc->did;
  sdid = (int )anc->sdid & 15;
  l = (int )anc->idid[0] & 63;
  l = state->slicer_line_offset + l;
  p = (u8 *)(& anc->payload);
  switch (sdid) {
  case 1:
  sdid = 1;
  goto ldv_51359;
  case 4:
  sdid = 16384;
  goto ldv_51359;
  case 6:
  sdid = 4096;
  tmp___1 = odd_parity((int )*p);
  if (tmp___1 == 0) {
    tmp___3 = 1;
  } else {
    tmp___2 = odd_parity((int )*(p + 1UL));
    if (tmp___2 == 0) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  }
  err = tmp___3;
  goto ldv_51359;
  case 9:
  sdid = 1024;
  tmp___4 = decode_vps(p, p);
  if (tmp___4 != 0) {
    err = 1;
  } else {
  }
  goto ldv_51359;
  default:
  sdid = 0;
  err = 1;
  goto ldv_51359;
  }
  ldv_51359:
  vbi->type = err == 0 ? (u32 )sdid : 0U;
  vbi->line = err == 0 ? (u32 )l : 0U;
  vbi->is_second_field = (u32 )(err == 0 && (int )sliced_vbi_did[1] == did);
  vbi->p = p;
  return (0);
}
}
int ldv_pskb_expand_head_788(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_790(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_792(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_793(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_794(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_795(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_796(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_797(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_798(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_832(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_840(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_834(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_830(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_838(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_839(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_835(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_836(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_837(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
void cx18_memset_io(struct cx18 *cx , void *addr , int val , size_t count ) ;
void cx18_init_scb(struct cx18 *cx )
{
  {
  cx18_setup_page(cx, 14417920U);
  cx18_memset_io(cx, (void *)cx->scb, 0, 65536UL);
  cx18_writel(cx, 1U, (void *)(& (cx->scb)->apu2cpu_irq));
  cx18_writel(cx, 1U, (void *)(& (cx->scb)->cpu2apu_irq_ack));
  cx18_writel(cx, 2U, (void *)(& (cx->scb)->hpu2cpu_irq));
  cx18_writel(cx, 2U, (void *)(& (cx->scb)->cpu2hpu_irq_ack));
  cx18_writel(cx, 4U, (void *)(& (cx->scb)->ppu2cpu_irq));
  cx18_writel(cx, 4U, (void *)(& (cx->scb)->cpu2ppu_irq_ack));
  cx18_writel(cx, 8U, (void *)(& (cx->scb)->epu2cpu_irq));
  cx18_writel(cx, 8U, (void *)(& (cx->scb)->cpu2epu_irq_ack));
  cx18_writel(cx, 16U, (void *)(& (cx->scb)->cpu2apu_irq));
  cx18_writel(cx, 16U, (void *)(& (cx->scb)->apu2cpu_irq_ack));
  cx18_writel(cx, 32U, (void *)(& (cx->scb)->hpu2apu_irq));
  cx18_writel(cx, 32U, (void *)(& (cx->scb)->apu2hpu_irq_ack));
  cx18_writel(cx, 64U, (void *)(& (cx->scb)->ppu2apu_irq));
  cx18_writel(cx, 64U, (void *)(& (cx->scb)->apu2ppu_irq_ack));
  cx18_writel(cx, 128U, (void *)(& (cx->scb)->epu2apu_irq));
  cx18_writel(cx, 128U, (void *)(& (cx->scb)->apu2epu_irq_ack));
  cx18_writel(cx, 256U, (void *)(& (cx->scb)->cpu2hpu_irq));
  cx18_writel(cx, 256U, (void *)(& (cx->scb)->hpu2cpu_irq_ack));
  cx18_writel(cx, 512U, (void *)(& (cx->scb)->apu2hpu_irq));
  cx18_writel(cx, 512U, (void *)(& (cx->scb)->hpu2apu_irq_ack));
  cx18_writel(cx, 1024U, (void *)(& (cx->scb)->ppu2hpu_irq));
  cx18_writel(cx, 1024U, (void *)(& (cx->scb)->hpu2ppu_irq_ack));
  cx18_writel(cx, 2048U, (void *)(& (cx->scb)->epu2hpu_irq));
  cx18_writel(cx, 2048U, (void *)(& (cx->scb)->hpu2epu_irq_ack));
  cx18_writel(cx, 4096U, (void *)(& (cx->scb)->cpu2ppu_irq));
  cx18_writel(cx, 4096U, (void *)(& (cx->scb)->ppu2cpu_irq_ack));
  cx18_writel(cx, 8192U, (void *)(& (cx->scb)->apu2ppu_irq));
  cx18_writel(cx, 8192U, (void *)(& (cx->scb)->ppu2apu_irq_ack));
  cx18_writel(cx, 16384U, (void *)(& (cx->scb)->hpu2ppu_irq));
  cx18_writel(cx, 16384U, (void *)(& (cx->scb)->ppu2hpu_irq_ack));
  cx18_writel(cx, 32768U, (void *)(& (cx->scb)->epu2ppu_irq));
  cx18_writel(cx, 32768U, (void *)(& (cx->scb)->ppu2epu_irq_ack));
  cx18_writel(cx, 65536U, (void *)(& (cx->scb)->cpu2epu_irq));
  cx18_writel(cx, 65536U, (void *)(& (cx->scb)->epu2cpu_irq_ack));
  cx18_writel(cx, 131072U, (void *)(& (cx->scb)->apu2epu_irq));
  cx18_writel(cx, 131072U, (void *)(& (cx->scb)->epu2apu_irq_ack));
  cx18_writel(cx, 262144U, (void *)(& (cx->scb)->hpu2epu_irq));
  cx18_writel(cx, 262144U, (void *)(& (cx->scb)->epu2hpu_irq_ack));
  cx18_writel(cx, 524288U, (void *)(& (cx->scb)->ppu2epu_irq));
  cx18_writel(cx, 524288U, (void *)(& (cx->scb)->epu2ppu_irq_ack));
  cx18_writel(cx, 14419776U, (void *)(& (cx->scb)->apu2cpu_mb_offset));
  cx18_writel(cx, 14419840U, (void *)(& (cx->scb)->hpu2cpu_mb_offset));
  cx18_writel(cx, 14419904U, (void *)(& (cx->scb)->ppu2cpu_mb_offset));
  cx18_writel(cx, 14419968U, (void *)(& (cx->scb)->epu2cpu_mb_offset));
  cx18_writel(cx, 14420032U, (void *)(& (cx->scb)->cpu2apu_mb_offset));
  cx18_writel(cx, 14420096U, (void *)(& (cx->scb)->hpu2apu_mb_offset));
  cx18_writel(cx, 14420160U, (void *)(& (cx->scb)->ppu2apu_mb_offset));
  cx18_writel(cx, 14420224U, (void *)(& (cx->scb)->epu2apu_mb_offset));
  cx18_writel(cx, 14420288U, (void *)(& (cx->scb)->cpu2hpu_mb_offset));
  cx18_writel(cx, 14420352U, (void *)(& (cx->scb)->apu2hpu_mb_offset));
  cx18_writel(cx, 14420416U, (void *)(& (cx->scb)->ppu2hpu_mb_offset));
  cx18_writel(cx, 14420480U, (void *)(& (cx->scb)->epu2hpu_mb_offset));
  cx18_writel(cx, 14420544U, (void *)(& (cx->scb)->cpu2ppu_mb_offset));
  cx18_writel(cx, 14420608U, (void *)(& (cx->scb)->apu2ppu_mb_offset));
  cx18_writel(cx, 14420672U, (void *)(& (cx->scb)->hpu2ppu_mb_offset));
  cx18_writel(cx, 14420736U, (void *)(& (cx->scb)->epu2ppu_mb_offset));
  cx18_writel(cx, 14420800U, (void *)(& (cx->scb)->cpu2epu_mb_offset));
  cx18_writel(cx, 14420864U, (void *)(& (cx->scb)->apu2epu_mb_offset));
  cx18_writel(cx, 14420928U, (void *)(& (cx->scb)->hpu2epu_mb_offset));
  cx18_writel(cx, 14420992U, (void *)(& (cx->scb)->ppu2epu_mb_offset));
  cx18_writel(cx, 14418016U, (void *)(& (cx->scb)->ipc_offset));
  cx18_writel(cx, 1U, (void *)(& (cx->scb)->epu_state));
  return;
}
}
int ldv_pskb_expand_head_830(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_832(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_834(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_835(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_836(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_837(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_838(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_839(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_840(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
extern void *__symbol_get(char const * ) ;
extern void __symbol_put(char const * ) ;
extern int dvb_register_adapter(struct dvb_adapter * , char const * , struct module * ,
                                struct device * , short * ) ;
extern int dvb_unregister_adapter(struct dvb_adapter * ) ;
extern int dvb_dmxdev_init(struct dmxdev * , struct dvb_adapter * ) ;
extern void dvb_dmxdev_release(struct dmxdev * ) ;
extern int dvb_dmx_init(struct dvb_demux * ) ;
extern void dvb_dmx_release(struct dvb_demux * ) ;
extern int dvb_register_frontend(struct dvb_adapter * , struct dvb_frontend * ) ;
extern int dvb_unregister_frontend(struct dvb_frontend * ) ;
extern void dvb_frontend_detach(struct dvb_frontend * ) ;
struct sk_buff *ldv_skb_clone_874(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_882(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_876(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_872(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_880(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_881(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_877(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_878(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_879(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void dvb_net_release(struct dvb_net * ) ;
extern int dvb_net_init(struct dvb_adapter * , struct dvb_net * , struct dmx_demux * ) ;
__inline static void cx18_writel___7(struct cx18 *cx , u32 val , void *addr )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_51298;
  ldv_51297:
  cx18_writel_noretry(cx, val, addr);
  tmp = cx18_readl(cx, (void const *)addr);
  if (tmp == val) {
    goto ldv_51296;
  } else {
  }
  i = i + 1;
  ldv_51298: ;
  if (i <= 9) {
    goto ldv_51297;
  } else {
  }
  ldv_51296: ;
  return;
}
}
__inline static void cx18_writel_expect___7(struct cx18 *cx , u32 val , void *addr ,
                                            u32 eval , u32 mask )
{
  int i ;
  u32 r ;
  {
  eval = eval & mask;
  i = 0;
  goto ldv_51311;
  ldv_51310:
  cx18_writel_noretry(cx, val, addr);
  r = cx18_readl(cx, (void const *)addr);
  if (r == 4294967295U && eval != 4294967295U) {
    goto ldv_51308;
  } else {
  }
  if ((r & mask) == eval) {
    goto ldv_51309;
  } else {
  }
  ldv_51308:
  i = i + 1;
  ldv_51311: ;
  if (i <= 9) {
    goto ldv_51310;
  } else {
  }
  ldv_51309: ;
  return;
}
}
__inline static void cx18_write_reg___3(struct cx18 *cx , u32 val , u32 reg )
{
  {
  cx18_writel___7(cx, val, cx->reg_mem + (unsigned long )reg);
  return;
}
}
__inline static void cx18_write_reg_expect___7(struct cx18 *cx , u32 val , u32 reg ,
                                               u32 eval , u32 mask )
{
  {
  cx18_writel_expect___7(cx, val, cx->reg_mem + (unsigned long )reg, eval, mask);
  return;
}
}
__inline static int mt352_write(struct dvb_frontend *fe , u8 const *buf , int len )
{
  int r ;
  {
  r = 0;
  if ((unsigned long )fe->ops.write != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                 u8 const * , int ))0)) {
    r = (*(fe->ops.write))(fe, buf, len);
  } else {
  }
  return (r);
}
}
static short adapter_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static struct mxl5005s_config hauppauge_hvr1600_tuner =
     {99U, 5380000U, 16000000U, 1U, 3U, 1U, 1U, 1U, 0U, 200U, 252U, 1U, 0U, 2U, 0U};
static struct s5h1409_config hauppauge_hvr1600_config =
     {25U, 1U, 1U, 44000U, 0U, 1U, 1U, 1U};
static struct s5h1411_config hcw_s5h1411_config = {1U, 0U, 1U, 4000U, 44000U, 1U, 1U};
static struct tda18271_std_map hauppauge_tda18271_std_map =
     {{(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {5380U, 3U, 3U, (unsigned char)0,
                                                               6U, 55U}, {(unsigned short)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {4000U, 3U, 0U, (unsigned char)0,
                                                               6U, 55U}, {(unsigned short)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}};
static struct tda18271_config hauppauge_tda18271_config =
     {& hauppauge_tda18271_std_map, 0, 2, 1, 0, (unsigned char)0, (unsigned char)0,
    0U};
static struct zl10353_config leadtek_dvr3100h_demod =
     {15U, 0, 45600, 1, 1, 1U, (unsigned char)0, (unsigned char)0};
static int yuan_mpc718_mt352_reqfw(struct cx18_stream *stream , struct firmware const **fw )
{
  struct cx18 *cx ;
  char const *fn ;
  int ret ;
  size_t sz ;
  {
  cx = stream->cx;
  fn = "dvb-cx18-mpc718-mt352.fw";
  ret = request_firmware(fw, fn, & (cx->pci_dev)->dev);
  if (ret != 0) {
    printk("\v%s: Unable to open firmware file %s\n", (char *)(& cx->v4l2_dev.name),
           fn);
  } else {
    sz = (*fw)->size;
    if ((sz <= 1UL || sz > 64UL) || (int )sz & 1) {
      printk("\v%s: Firmware %s has a bad size: %lu bytes\n", (char *)(& cx->v4l2_dev.name),
             fn, sz);
      ret = -84;
      release_firmware(*fw);
      *fw = (struct firmware const *)0;
    } else {
    }
  }
  if (ret != 0) {
    printk("\v%s: The MPC718 board variant with the MT352 DVB-Tdemodualtor will not work without it\n",
           (char *)(& cx->v4l2_dev.name));
    printk("\v%s: Run \'linux/Documentation/dvb/get_dvb_firmware mpc718\' if you need the firmware\n",
           (char *)(& cx->v4l2_dev.name));
  } else {
  }
  return (ret);
}
}
static int yuan_mpc718_mt352_init(struct dvb_frontend *fe )
{
  struct cx18_dvb *dvb ;
  struct dvb_adapter const *__mptr ;
  struct cx18_stream *stream ;
  struct firmware const *fw ;
  int ret ;
  int i ;
  u8 buf[3U] ;
  {
  __mptr = (struct dvb_adapter const *)fe->dvb;
  dvb = (struct cx18_dvb *)__mptr + 0xfffffffffffffdd8UL;
  stream = dvb->stream;
  fw = (struct firmware const *)0;
  ret = yuan_mpc718_mt352_reqfw(stream, & fw);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = 0;
  goto ldv_51895;
  ldv_51894:
  buf[0] = *(fw->data + (unsigned long )i);
  switch ((int )buf[0]) {
  case 85: ;
  goto ldv_51889;
  case 84:
  buf[1] = 114U;
  buf[2] = 73U;
  mt352_write(fe, (u8 const *)(& buf), 3);
  goto ldv_51889;
  case 87: ;
  goto ldv_51889;
  case 86:
  buf[1] = 49U;
  buf[2] = 192U;
  mt352_write(fe, (u8 const *)(& buf), 3);
  goto ldv_51889;
  default:
  buf[1] = *(fw->data + ((unsigned long )i + 1UL));
  mt352_write(fe, (u8 const *)(& buf), 2);
  goto ldv_51889;
  }
  ldv_51889:
  i = i + 2;
  ldv_51895: ;
  if ((unsigned long )i < (unsigned long )fw->size) {
    goto ldv_51894;
  } else {
  }
  buf[0] = 93U;
  buf[1] = 1U;
  mt352_write(fe, (u8 const *)(& buf), 2);
  release_firmware(fw);
  return (0);
}
}
static struct mt352_config yuan_mpc718_mt352_demod = {15U, 20480, 4560, 1, & yuan_mpc718_mt352_init};
static struct zl10353_config yuan_mpc718_zl10353_demod =
     {15U, 0, 45600, 1, 1, 1U, (unsigned char)0, (unsigned char)0};
static struct zl10353_config gotview_dvd3_zl10353_demod =
     {15U, 0, 45600, 1, 1, 1U, (unsigned char)0, (unsigned char)0};
static int dvb_register(struct cx18_stream *stream ) ;
static int cx18_dvb_start_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct cx18_stream *stream ;
  struct cx18 *cx ;
  int ret ;
  u32 v ;
  int tmp ;
  {
  demux = feed->demux;
  stream = (struct cx18_stream *)demux->priv;
  if ((unsigned long )stream == (unsigned long )((struct cx18_stream *)0)) {
    return (-22);
  } else {
  }
  cx = stream->cx;
  if ((cx18_debug & 2) != 0) {
    printk("\016%s:  info: Start feed: pid = 0x%x index = %d\n", (char *)(& cx->v4l2_dev.name),
           (int )feed->pid, feed->index);
  } else {
  }
  mutex_lock_nested(& cx->serialize_lock, 0U);
  ret = cx18_init_on_first_open(cx);
  mutex_unlock(& cx->serialize_lock);
  if (ret != 0) {
    printk("\v%s: Failed to initialize firmware starting DVB feed\n", (char *)(& cx->v4l2_dev.name));
    return (ret);
  } else {
  }
  ret = -22;
  switch ((cx->card)->type) {
  case 0: ;
  case 1: ;
  case 9:
  v = cx18_read_reg(cx, 14000128U);
  v = v | 4194304U;
  v = v | 8192U;
  v = v | 65536U;
  v = v | 131072U;
  v = v | 786432U;
  cx18_write_reg___3(cx, v, 14000128U);
  goto ldv_51913;
  case 7: ;
  case 3: ;
  case 8: ;
  default: ;
  goto ldv_51913;
  }
  ldv_51913: ;
  if ((unsigned long )demux->dmx.frontend == (unsigned long )((struct dmx_frontend *)0)) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& (stream->dvb)->feedlock, 0U);
  tmp = (stream->dvb)->feeding;
  (stream->dvb)->feeding = (stream->dvb)->feeding + 1;
  if (tmp == 0) {
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Starting Transport DMA\n", (char *)(& cx->v4l2_dev.name));
    } else {
    }
    mutex_lock_nested(& cx->serialize_lock, 0U);
    set_bit(4L, (unsigned long volatile *)(& stream->s_flags));
    ret = cx18_start_v4l2_encode_stream(stream);
    if (ret < 0) {
      if ((cx18_debug & 2) != 0) {
        printk("\016%s:  info: Failed to start Transport DMA\n", (char *)(& cx->v4l2_dev.name));
      } else {
      }
      (stream->dvb)->feeding = (stream->dvb)->feeding - 1;
      if ((stream->dvb)->feeding == 0) {
        clear_bit(4L, (unsigned long volatile *)(& stream->s_flags));
      } else {
      }
    } else {
    }
    mutex_unlock(& cx->serialize_lock);
  } else {
    ret = 0;
  }
  mutex_unlock(& (stream->dvb)->feedlock);
  return (ret);
}
}
static int cx18_dvb_stop_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct cx18_stream *stream ;
  struct cx18 *cx ;
  int ret ;
  {
  demux = feed->demux;
  stream = (struct cx18_stream *)demux->priv;
  ret = -22;
  if ((unsigned long )stream != (unsigned long )((struct cx18_stream *)0)) {
    cx = stream->cx;
    if ((cx18_debug & 2) != 0) {
      printk("\016%s:  info: Stop feed: pid = 0x%x index = %d\n", (char *)(& cx->v4l2_dev.name),
             (int )feed->pid, feed->index);
    } else {
    }
    mutex_lock_nested(& (stream->dvb)->feedlock, 0U);
    (stream->dvb)->feeding = (stream->dvb)->feeding - 1;
    if ((stream->dvb)->feeding == 0) {
      if ((cx18_debug & 2) != 0) {
        printk("\016%s:  info: Stopping Transport DMA\n", (char *)(& cx->v4l2_dev.name));
      } else {
      }
      mutex_lock_nested(& cx->serialize_lock, 0U);
      ret = cx18_stop_v4l2_encode_stream(stream, 0);
      mutex_unlock(& cx->serialize_lock);
    } else {
      ret = 0;
    }
    mutex_unlock(& (stream->dvb)->feedlock);
  } else {
  }
  return (ret);
}
}
int cx18_dvb_register(struct cx18_stream *stream )
{
  struct cx18 *cx ;
  struct cx18_dvb *dvb ;
  struct dvb_adapter *dvb_adapter ;
  struct dvb_demux *dvbdemux ;
  struct dmx_demux *dmx ;
  int ret ;
  struct lock_class_key __key ;
  {
  cx = stream->cx;
  dvb = stream->dvb;
  if ((unsigned long )dvb == (unsigned long )((struct cx18_dvb *)0)) {
    return (-22);
  } else {
  }
  dvb->enabled = 0;
  dvb->stream = stream;
  ret = dvb_register_adapter(& dvb->dvb_adapter, "cx18", & __this_module, & (cx->pci_dev)->dev,
                             (short *)(& adapter_nr));
  if (ret < 0) {
    goto err_out;
  } else {
  }
  dvb_adapter = & dvb->dvb_adapter;
  dvbdemux = & dvb->demux;
  dvbdemux->priv = (void *)stream;
  dvbdemux->filternum = 256;
  dvbdemux->feednum = 256;
  dvbdemux->start_feed = & cx18_dvb_start_feed;
  dvbdemux->stop_feed = & cx18_dvb_stop_feed;
  dvbdemux->dmx.capabilities = 13U;
  ret = dvb_dmx_init(dvbdemux);
  if (ret < 0) {
    goto err_dvb_unregister_adapter;
  } else {
  }
  dmx = & dvbdemux->dmx;
  dvb->hw_frontend.source = 1;
  dvb->mem_frontend.source = 0;
  dvb->dmxdev.filternum = 256;
  dvb->dmxdev.demux = dmx;
  ret = dvb_dmxdev_init(& dvb->dmxdev, dvb_adapter);
  if (ret < 0) {
    goto err_dvb_dmx_release;
  } else {
  }
  ret = (*(dmx->add_frontend))(dmx, & dvb->hw_frontend);
  if (ret < 0) {
    goto err_dvb_dmxdev_release;
  } else {
  }
  ret = (*(dmx->add_frontend))(dmx, & dvb->mem_frontend);
  if (ret < 0) {
    goto err_remove_hw_frontend;
  } else {
  }
  ret = (*(dmx->connect_frontend))(dmx, & dvb->hw_frontend);
  if (ret < 0) {
    goto err_remove_mem_frontend;
  } else {
  }
  ret = dvb_register(stream);
  if (ret < 0) {
    goto err_disconnect_frontend;
  } else {
  }
  dvb_net_init(dvb_adapter, & dvb->dvbnet, dmx);
  printk("\016%s: DVB Frontend registered\n", (char *)(& cx->v4l2_dev.name));
  printk("\016%s: Registered DVB adapter%d for %s (%d x %d.%02d kB)\n", (char *)(& cx->v4l2_dev.name),
         (stream->dvb)->dvb_adapter.num, stream->name, stream->buffers, stream->buf_size / 1024U,
         ((stream->buf_size * 100U) / 1024U) % 100U);
  __mutex_init(& dvb->feedlock, "&dvb->feedlock", & __key);
  dvb->enabled = 1;
  return (ret);
  err_disconnect_frontend:
  (*(dmx->disconnect_frontend))(dmx);
  err_remove_mem_frontend:
  (*(dmx->remove_frontend))(dmx, & dvb->mem_frontend);
  err_remove_hw_frontend:
  (*(dmx->remove_frontend))(dmx, & dvb->hw_frontend);
  err_dvb_dmxdev_release:
  dvb_dmxdev_release(& dvb->dmxdev);
  err_dvb_dmx_release:
  dvb_dmx_release(dvbdemux);
  err_dvb_unregister_adapter:
  dvb_unregister_adapter(dvb_adapter);
  err_out: ;
  return (ret);
}
}
void cx18_dvb_unregister(struct cx18_stream *stream )
{
  struct cx18 *cx ;
  struct cx18_dvb *dvb ;
  struct dvb_adapter *dvb_adapter ;
  struct dvb_demux *dvbdemux ;
  struct dmx_demux *dmx ;
  {
  cx = stream->cx;
  dvb = stream->dvb;
  printk("\016%s: unregister DVB\n", (char *)(& cx->v4l2_dev.name));
  if ((unsigned long )dvb == (unsigned long )((struct cx18_dvb *)0) || dvb->enabled == 0) {
    return;
  } else {
  }
  dvb_adapter = & dvb->dvb_adapter;
  dvbdemux = & dvb->demux;
  dmx = & dvbdemux->dmx;
  (*(dmx->close))(dmx);
  dvb_net_release(& dvb->dvbnet);
  (*(dmx->remove_frontend))(dmx, & dvb->mem_frontend);
  (*(dmx->remove_frontend))(dmx, & dvb->hw_frontend);
  dvb_dmxdev_release(& dvb->dmxdev);
  dvb_dmx_release(dvbdemux);
  dvb_unregister_frontend(dvb->fe);
  dvb_frontend_detach(dvb->fe);
  dvb_unregister_adapter(dvb_adapter);
  return;
}
}
static int dvb_register(struct cx18_stream *stream )
{
  struct cx18_dvb *dvb ;
  struct cx18 *cx ;
  int ret ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___0 ;
  struct dvb_frontend *(*tmp___1)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *tmp___3 ;
  void *__r___0 ;
  struct dvb_frontend *(*__a___0)(struct dvb_frontend * , struct i2c_adapter * , struct mxl5005s_config * ) ;
  void *tmp___5 ;
  struct dvb_frontend *(*tmp___6)(struct dvb_frontend * , struct i2c_adapter * , struct mxl5005s_config * ) ;
  void *tmp___7 ;
  struct dvb_frontend *tmp___8 ;
  void *__r___1 ;
  struct dvb_frontend *(*__a___1)(struct s5h1411_config const * , struct i2c_adapter * ) ;
  void *tmp___10 ;
  struct dvb_frontend *(*tmp___11)(struct s5h1411_config const * , struct i2c_adapter * ) ;
  void *tmp___12 ;
  struct dvb_frontend *tmp___13 ;
  void *__r___2 ;
  struct dvb_frontend *(*__a___2)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                  struct tda18271_config * ) ;
  void *tmp___15 ;
  struct dvb_frontend *(*tmp___16)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___17 ;
  struct dvb_frontend *tmp___18 ;
  void *__r___3 ;
  struct dvb_frontend *(*__a___3)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___20 ;
  struct dvb_frontend *(*tmp___21)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___22 ;
  struct dvb_frontend *tmp___23 ;
  struct dvb_frontend *fe ;
  struct xc2028_config cfg ;
  struct xc2028_ctrl ctrl ;
  void *__r___4 ;
  struct dvb_frontend *(*__a___4)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___25 ;
  struct dvb_frontend *(*tmp___26)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___27 ;
  struct dvb_frontend *tmp___28 ;
  void *__r___5 ;
  struct dvb_frontend *(*__a___5)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___30 ;
  struct dvb_frontend *(*tmp___31)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___32 ;
  struct dvb_frontend *tmp___33 ;
  void *__r___6 ;
  struct dvb_frontend *(*__a___6)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___35 ;
  struct dvb_frontend *(*tmp___36)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___37 ;
  struct dvb_frontend *tmp___38 ;
  struct dvb_frontend *fe___0 ;
  struct xc2028_config cfg___0 ;
  struct xc2028_ctrl ctrl___0 ;
  void *__r___7 ;
  struct dvb_frontend *(*__a___7)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___40 ;
  struct dvb_frontend *(*tmp___41)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___42 ;
  struct dvb_frontend *tmp___43 ;
  void *__r___8 ;
  struct dvb_frontend *(*__a___8)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___45 ;
  struct dvb_frontend *(*tmp___46)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___47 ;
  struct dvb_frontend *tmp___48 ;
  struct dvb_frontend *fe___1 ;
  struct xc2028_config cfg___1 ;
  struct xc2028_ctrl ctrl___1 ;
  void *__r___9 ;
  struct dvb_frontend *(*__a___9)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___50 ;
  struct dvb_frontend *(*tmp___51)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___52 ;
  struct dvb_frontend *tmp___53 ;
  {
  dvb = stream->dvb;
  cx = stream->cx;
  ret = 0;
  switch ((cx->card)->type) {
  case 0: ;
  case 1:
  __r = (void *)0;
  tmp___2 = __symbol_get("s5h1409_attach");
  tmp___1 = (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                       struct i2c_adapter * ))tmp___2) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  if (tmp___1) {
  } else {
    __request_module(1, "symbol:s5h1409_attach");
    tmp___0 = __symbol_get("s5h1409_attach");
    tmp___1 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___0;
  }
  __a = tmp___1;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    tmp___3 = (*__a)((struct s5h1409_config const *)(& hauppauge_hvr1600_config),
                     (struct i2c_adapter *)(& cx->i2c_adap));
    __r = (void *)tmp___3;
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      __symbol_put("s5h1409_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol s5h1409_attach()\n");
  }
  dvb->fe = (struct dvb_frontend *)__r;
  if ((unsigned long )dvb->fe != (unsigned long )((struct dvb_frontend *)0)) {
    __r___0 = (void *)0;
    tmp___7 = __symbol_get("mxl5005s_attach");
    tmp___6 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                         struct mxl5005s_config * ))tmp___7) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                           struct i2c_adapter * ,
                                                                                                                                           struct mxl5005s_config * ))0);
    if (tmp___6) {
    } else {
      __request_module(1, "symbol:mxl5005s_attach");
      tmp___5 = __symbol_get("mxl5005s_attach");
      tmp___6 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                          struct mxl5005s_config * ))tmp___5;
    }
    __a___0 = tmp___6;
    if ((unsigned long )__a___0 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct i2c_adapter * ,
                                                                              struct mxl5005s_config * ))0)) {
      tmp___8 = (*__a___0)(dvb->fe, (struct i2c_adapter *)(& cx->i2c_adap), & hauppauge_hvr1600_tuner);
      __r___0 = (void *)tmp___8;
      if ((unsigned long )__r___0 == (unsigned long )((void *)0)) {
        __symbol_put("mxl5005s_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol mxl5005s_attach()\n");
    }
    ret = 0;
  } else {
  }
  goto ldv_51964;
  case 9:
  __r___1 = (void *)0;
  tmp___12 = __symbol_get("s5h1411_attach");
  tmp___11 = (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                        struct i2c_adapter * ))tmp___12) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___11) {
  } else {
    __request_module(1, "symbol:s5h1411_attach");
    tmp___10 = __symbol_get("s5h1411_attach");
    tmp___11 = (struct dvb_frontend *(*)(struct s5h1411_config const * , struct i2c_adapter * ))tmp___10;
  }
  __a___1 = tmp___11;
  if ((unsigned long )__a___1 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___13 = (*__a___1)((struct s5h1411_config const *)(& hcw_s5h1411_config),
                          (struct i2c_adapter *)(& cx->i2c_adap));
    __r___1 = (void *)tmp___13;
    if ((unsigned long )__r___1 == (unsigned long )((void *)0)) {
      __symbol_put("s5h1411_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol s5h1411_attach()\n");
  }
  dvb->fe = (struct dvb_frontend *)__r___1;
  if ((unsigned long )dvb->fe != (unsigned long )((struct dvb_frontend *)0)) {
    __r___2 = (void *)0;
    tmp___17 = __symbol_get("tda18271_attach");
    tmp___16 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          u8 , struct i2c_adapter * ,
                                                          struct tda18271_config * ))tmp___17) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                             u8 ,
                                                                                                                                             struct i2c_adapter * ,
                                                                                                                                             struct tda18271_config * ))0);
    if (tmp___16) {
    } else {
      __request_module(1, "symbol:tda18271_attach");
      tmp___15 = __symbol_get("tda18271_attach");
      tmp___16 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                           struct tda18271_config * ))tmp___15;
    }
    __a___2 = tmp___16;
    if ((unsigned long )__a___2 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              u8 ,
                                                                              struct i2c_adapter * ,
                                                                              struct tda18271_config * ))0)) {
      tmp___18 = (*__a___2)(dvb->fe, 96, (struct i2c_adapter *)(& cx->i2c_adap), & hauppauge_tda18271_config);
      __r___2 = (void *)tmp___18;
      if ((unsigned long )__r___2 == (unsigned long )((void *)0)) {
        __symbol_put("tda18271_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
    }
  } else {
  }
  goto ldv_51964;
  case 7:
  __r___3 = (void *)0;
  tmp___22 = __symbol_get("zl10353_attach");
  tmp___21 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                        struct i2c_adapter * ))tmp___22) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___21) {
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___20 = __symbol_get("zl10353_attach");
    tmp___21 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___20;
  }
  __a___3 = tmp___21;
  if ((unsigned long )__a___3 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___23 = (*__a___3)((struct zl10353_config const *)(& leadtek_dvr3100h_demod),
                          (struct i2c_adapter *)(& cx->i2c_adap) + 1UL);
    __r___3 = (void *)tmp___23;
    if ((unsigned long )__r___3 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol zl10353_attach()\n");
  }
  dvb->fe = (struct dvb_frontend *)__r___3;
  if ((unsigned long )dvb->fe != (unsigned long )((struct dvb_frontend *)0)) {
    cfg.i2c_adap = (struct i2c_adapter *)(& cx->i2c_adap) + 1UL;
    cfg.i2c_addr = 97U;
    cfg.ctrl = (struct xc2028_ctrl *)0;
    ctrl.fname = (char *)"xc3028-v27.fw";
    ctrl.max_len = 64;
    ctrl.msleep = 0;
    ctrl.scode_table = 0U;
    ctrl.mts = (unsigned char)0;
    ctrl.input1 = (unsigned char)0;
    ctrl.vhfbw7 = (unsigned char)0;
    ctrl.uhfbw8 = (unsigned char)0;
    ctrl.disable_power_mgmt = (unsigned char)0;
    ctrl.read_not_reliable = (unsigned char)0;
    ctrl.demod = 4560U;
    ctrl.type = 0U;
    __r___4 = (void *)0;
    tmp___27 = __symbol_get("xc2028_attach");
    tmp___26 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          struct xc2028_config * ))tmp___27) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                           struct xc2028_config * ))0);
    if (tmp___26) {
    } else {
      __request_module(1, "symbol:xc2028_attach");
      tmp___25 = __symbol_get("xc2028_attach");
      tmp___26 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___25;
    }
    __a___4 = tmp___26;
    if ((unsigned long )__a___4 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct xc2028_config * ))0)) {
      tmp___28 = (*__a___4)(dvb->fe, & cfg);
      __r___4 = (void *)tmp___28;
      if ((unsigned long )__r___4 == (unsigned long )((void *)0)) {
        __symbol_put("xc2028_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol xc2028_attach()\n");
    }
    fe = (struct dvb_frontend *)__r___4;
    if ((unsigned long )fe != (unsigned long )((struct dvb_frontend *)0) && (unsigned long )fe->ops.tuner_ops.set_config != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                      void * ))0)) {
      (*(fe->ops.tuner_ops.set_config))(fe, (void *)(& ctrl));
    } else {
    }
  } else {
  }
  goto ldv_51964;
  case 3:
  __r___5 = (void *)0;
  tmp___32 = __symbol_get("mt352_attach");
  tmp___31 = (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                        struct i2c_adapter * ))tmp___32) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___31) {
  } else {
    __request_module(1, "symbol:mt352_attach");
    tmp___30 = __symbol_get("mt352_attach");
    tmp___31 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___30;
  }
  __a___5 = tmp___31;
  if ((unsigned long )__a___5 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___33 = (*__a___5)((struct mt352_config const *)(& yuan_mpc718_mt352_demod),
                          (struct i2c_adapter *)(& cx->i2c_adap) + 1UL);
    __r___5 = (void *)tmp___33;
    if ((unsigned long )__r___5 == (unsigned long )((void *)0)) {
      __symbol_put("mt352_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol mt352_attach()\n");
  }
  dvb->fe = (struct dvb_frontend *)__r___5;
  if ((unsigned long )dvb->fe == (unsigned long )((struct dvb_frontend *)0)) {
    __r___6 = (void *)0;
    tmp___37 = __symbol_get("zl10353_attach");
    tmp___36 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                          struct i2c_adapter * ))tmp___37) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
    if (tmp___36) {
    } else {
      __request_module(1, "symbol:zl10353_attach");
      tmp___35 = __symbol_get("zl10353_attach");
      tmp___36 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___35;
    }
    __a___6 = tmp___36;
    if ((unsigned long )__a___6 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                              struct i2c_adapter * ))0)) {
      tmp___38 = (*__a___6)((struct zl10353_config const *)(& yuan_mpc718_zl10353_demod),
                            (struct i2c_adapter *)(& cx->i2c_adap) + 1UL);
      __r___6 = (void *)tmp___38;
      if ((unsigned long )__r___6 == (unsigned long )((void *)0)) {
        __symbol_put("zl10353_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol zl10353_attach()\n");
    }
    dvb->fe = (struct dvb_frontend *)__r___6;
  } else {
  }
  if ((unsigned long )dvb->fe != (unsigned long )((struct dvb_frontend *)0)) {
    cfg___0.i2c_adap = (struct i2c_adapter *)(& cx->i2c_adap) + 1UL;
    cfg___0.i2c_addr = 97U;
    cfg___0.ctrl = (struct xc2028_ctrl *)0;
    ctrl___0.fname = (char *)"xc3028-v27.fw";
    ctrl___0.max_len = 64;
    ctrl___0.msleep = 0;
    ctrl___0.scode_table = 0U;
    ctrl___0.mts = (unsigned char)0;
    ctrl___0.input1 = (unsigned char)0;
    ctrl___0.vhfbw7 = (unsigned char)0;
    ctrl___0.uhfbw8 = (unsigned char)0;
    ctrl___0.disable_power_mgmt = (unsigned char)0;
    ctrl___0.read_not_reliable = (unsigned char)0;
    ctrl___0.demod = 4560U;
    ctrl___0.type = 0U;
    __r___7 = (void *)0;
    tmp___42 = __symbol_get("xc2028_attach");
    tmp___41 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          struct xc2028_config * ))tmp___42) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                           struct xc2028_config * ))0);
    if (tmp___41) {
    } else {
      __request_module(1, "symbol:xc2028_attach");
      tmp___40 = __symbol_get("xc2028_attach");
      tmp___41 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___40;
    }
    __a___7 = tmp___41;
    if ((unsigned long )__a___7 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct xc2028_config * ))0)) {
      tmp___43 = (*__a___7)(dvb->fe, & cfg___0);
      __r___7 = (void *)tmp___43;
      if ((unsigned long )__r___7 == (unsigned long )((void *)0)) {
        __symbol_put("xc2028_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol xc2028_attach()\n");
    }
    fe___0 = (struct dvb_frontend *)__r___7;
    if ((unsigned long )fe___0 != (unsigned long )((struct dvb_frontend *)0) && (unsigned long )fe___0->ops.tuner_ops.set_config != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                              void * ))0)) {
      (*(fe___0->ops.tuner_ops.set_config))(fe___0, (void *)(& ctrl___0));
    } else {
    }
  } else {
  }
  goto ldv_51964;
  case 8:
  __r___8 = (void *)0;
  tmp___47 = __symbol_get("zl10353_attach");
  tmp___46 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                        struct i2c_adapter * ))tmp___47) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___46) {
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___45 = __symbol_get("zl10353_attach");
    tmp___46 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___45;
  }
  __a___8 = tmp___46;
  if ((unsigned long )__a___8 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___48 = (*__a___8)((struct zl10353_config const *)(& gotview_dvd3_zl10353_demod),
                          (struct i2c_adapter *)(& cx->i2c_adap) + 1UL);
    __r___8 = (void *)tmp___48;
    if ((unsigned long )__r___8 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol zl10353_attach()\n");
  }
  dvb->fe = (struct dvb_frontend *)__r___8;
  if ((unsigned long )dvb->fe != (unsigned long )((struct dvb_frontend *)0)) {
    cfg___1.i2c_adap = (struct i2c_adapter *)(& cx->i2c_adap) + 1UL;
    cfg___1.i2c_addr = 97U;
    cfg___1.ctrl = (struct xc2028_ctrl *)0;
    ctrl___1.fname = (char *)"xc3028-v27.fw";
    ctrl___1.max_len = 64;
    ctrl___1.msleep = 0;
    ctrl___1.scode_table = 0U;
    ctrl___1.mts = (unsigned char)0;
    ctrl___1.input1 = (unsigned char)0;
    ctrl___1.vhfbw7 = (unsigned char)0;
    ctrl___1.uhfbw8 = (unsigned char)0;
    ctrl___1.disable_power_mgmt = (unsigned char)0;
    ctrl___1.read_not_reliable = (unsigned char)0;
    ctrl___1.demod = 4560U;
    ctrl___1.type = 0U;
    __r___9 = (void *)0;
    tmp___52 = __symbol_get("xc2028_attach");
    tmp___51 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          struct xc2028_config * ))tmp___52) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                           struct xc2028_config * ))0);
    if (tmp___51) {
    } else {
      __request_module(1, "symbol:xc2028_attach");
      tmp___50 = __symbol_get("xc2028_attach");
      tmp___51 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___50;
    }
    __a___9 = tmp___51;
    if ((unsigned long )__a___9 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct xc2028_config * ))0)) {
      tmp___53 = (*__a___9)(dvb->fe, & cfg___1);
      __r___9 = (void *)tmp___53;
      if ((unsigned long )__r___9 == (unsigned long )((void *)0)) {
        __symbol_put("xc2028_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol xc2028_attach()\n");
    }
    fe___1 = (struct dvb_frontend *)__r___9;
    if ((unsigned long )fe___1 != (unsigned long )((struct dvb_frontend *)0) && (unsigned long )fe___1->ops.tuner_ops.set_config != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                              void * ))0)) {
      (*(fe___1->ops.tuner_ops.set_config))(fe___1, (void *)(& ctrl___1));
    } else {
    }
  } else {
  }
  goto ldv_51964;
  default: ;
  goto ldv_51964;
  }
  ldv_51964: ;
  if ((unsigned long )dvb->fe == (unsigned long )((struct dvb_frontend *)0)) {
    printk("\v%s: frontend initialization failed\n", (char *)(& cx->v4l2_dev.name));
    return (-1);
  } else {
  }
  (dvb->fe)->callback = & cx18_reset_tuner_gpio;
  ret = dvb_register_frontend(& dvb->dvb_adapter, dvb->fe);
  if (ret < 0) {
    if ((unsigned long )(dvb->fe)->ops.release != (unsigned long )((void (*)(struct dvb_frontend * ))0)) {
      (*((dvb->fe)->ops.release))(dvb->fe);
    } else {
    }
    return (ret);
  } else {
  }
  cx18_write_reg_expect___7(cx, 8388736U, 13045796U, 128U, 8388736U);
  return (ret);
}
}
void ldv_main_exported_3(void)
{
  struct dvb_frontend *ldvarg25 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1288UL);
  ldvarg25 = (struct dvb_frontend *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    yuan_mpc718_mt352_init(ldvarg25);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_52012;
  default:
  ldv_stop();
  }
  ldv_52012: ;
  return;
}
}
int ldv_pskb_expand_head_872(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_874(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_876(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_877(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_878(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_879(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_880(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_881(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_882(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
}
}
struct sk_buff *ldv_skb_clone_916(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_924(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_918(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_914(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_922(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_923(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_919(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_920(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_921(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static u16 cx18_readw(struct cx18 *cx , void const *addr )
{
  unsigned short tmp ;
  {
  tmp = readw((void const volatile *)addr);
  return (tmp);
}
}
__inline static void cx18_writew_noretry(struct cx18 *cx , u16 val , void *addr )
{
  {
  writew((int )val, (void volatile *)addr);
  return;
}
}
__inline static void cx18_writew(struct cx18 *cx , u16 val , void *addr )
{
  int i ;
  u16 tmp ;
  {
  i = 0;
  goto ldv_51325;
  ldv_51324:
  cx18_writew_noretry(cx, (int )val, addr);
  tmp = cx18_readw(cx, (void const *)addr);
  if ((int )tmp == (int )val) {
    goto ldv_51323;
  } else {
  }
  i = i + 1;
  ldv_51325: ;
  if (i <= 9) {
    goto ldv_51324;
  } else {
  }
  ldv_51323: ;
  return;
}
}
__inline static u8 cx18_readb(struct cx18 *cx , void const *addr )
{
  unsigned char tmp ;
  {
  tmp = readb((void const volatile *)addr);
  return (tmp);
}
}
__inline static void cx18_writeb_noretry(struct cx18 *cx , u8 val , void *addr )
{
  {
  writeb((int )val, (void volatile *)addr);
  return;
}
}
__inline static void cx18_writeb(struct cx18 *cx , u8 val , void *addr )
{
  int i ;
  u8 tmp ;
  {
  i = 0;
  goto ldv_51343;
  ldv_51342:
  cx18_writeb_noretry(cx, (int )val, addr);
  tmp = cx18_readb(cx, (void const *)addr);
  if ((int )tmp == (int )val) {
    goto ldv_51341;
  } else {
  }
  i = i + 1;
  ldv_51343: ;
  if (i <= 9) {
    goto ldv_51342;
  } else {
  }
  ldv_51341: ;
  return;
}
}
void cx18_memset_io(struct cx18 *cx , void *addr , int val , size_t count )
{
  u8 *dst ;
  u16 val2 ;
  u32 val4 ;
  {
  dst = (u8 *)addr;
  val2 = (u16 )((int )((short )(val << 8)) | (int )((short )val));
  val4 = (u32 )((int )val2 | ((int )val2 << 16));
  if (count != 0UL && (int )((unsigned long )dst) & 1) {
    cx18_writeb(cx, (int )((unsigned char )val), (void *)dst);
    count = count - 1UL;
    dst = dst + 1;
  } else {
  }
  if (count > 1UL && ((unsigned long )dst & 2UL) != 0UL) {
    cx18_writew(cx, (int )val2, (void *)dst);
    count = count - 2UL;
    dst = dst + 2UL;
  } else {
  }
  goto ldv_51416;
  ldv_51415:
  cx18_writel(cx, val4, (void *)dst);
  count = count - 4UL;
  dst = dst + 4UL;
  ldv_51416: ;
  if (count > 3UL) {
    goto ldv_51415;
  } else {
  }
  if (count > 1UL) {
    cx18_writew(cx, (int )val2, (void *)dst);
    count = count - 2UL;
    dst = dst + 2UL;
  } else {
  }
  if (count != 0UL) {
    cx18_writeb(cx, (int )((unsigned char )val), (void *)dst);
  } else {
  }
  return;
}
}
void cx18_sw1_irq_enable(struct cx18 *cx , u32 val )
{
  u32 tmp ;
  {
  cx18_write_reg_expect(cx, val, 13054212U, ~ val, val);
  tmp = cx18_read_reg(cx, 13054236U);
  cx->sw1_irq_mask = tmp | val;
  cx18_write_reg(cx, cx->sw1_irq_mask, 13054236U);
  return;
}
}
void cx18_sw1_irq_disable(struct cx18 *cx , u32 val )
{
  u32 tmp ;
  {
  tmp = cx18_read_reg(cx, 13054236U);
  cx->sw1_irq_mask = tmp & ~ val;
  cx18_write_reg(cx, cx->sw1_irq_mask, 13054236U);
  return;
}
}
void cx18_sw2_irq_enable(struct cx18 *cx , u32 val )
{
  u32 tmp ;
  {
  cx18_write_reg_expect(cx, val, 13054276U, ~ val, val);
  tmp = cx18_read_reg(cx, 13054300U);
  cx->sw2_irq_mask = tmp | val;
  cx18_write_reg(cx, cx->sw2_irq_mask, 13054300U);
  return;
}
}
void cx18_sw2_irq_disable(struct cx18 *cx , u32 val )
{
  u32 tmp ;
  {
  tmp = cx18_read_reg(cx, 13054300U);
  cx->sw2_irq_mask = tmp & ~ val;
  cx18_write_reg(cx, cx->sw2_irq_mask, 13054300U);
  return;
}
}
void cx18_sw2_irq_disable_cpu(struct cx18 *cx , u32 val )
{
  u32 r ;
  {
  r = cx18_read_reg(cx, 13054296U);
  cx18_write_reg(cx, ~ val & r, 13054296U);
  return;
}
}
void cx18_setup_page(struct cx18 *cx , u32 addr )
{
  u32 val ;
  {
  val = cx18_read_reg(cx, 13631736U);
  val = (val & 4294959359U) | ((addr >> 17) & 7936U);
  cx18_write_reg(cx, val, 13631736U);
  return;
}
}
int ldv_pskb_expand_head_914(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_916(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_918(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_919(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_920(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_921(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_922(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_923(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_924(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void *__symbol_get(const char *arg0) {
  return ldv_malloc(0UL);
}
void __symbol_put(const char *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int cx2341x_handler_init(struct cx2341x_handler *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void cx2341x_handler_set_50hz(struct cx2341x_handler *arg0, int arg1) {
  return;
}
void cx2341x_handler_set_busy(struct cx2341x_handler *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx2341x_handler_setup(struct cx2341x_handler *arg0) {
  return __VERIFIER_nondet_int();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_dmx_init(struct dvb_demux *arg0) {
  return __VERIFIER_nondet_int();
}
void dvb_dmx_release(struct dvb_demux *arg0) {
  return;
}
void dvb_dmx_swfilter(struct dvb_demux *arg0, const u8 *arg1, size_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_dmxdev_init(struct dmxdev *arg0, struct dvb_adapter *arg1) {
  return __VERIFIER_nondet_int();
}
void dvb_dmxdev_release(struct dmxdev *arg0) {
  return;
}
void dvb_frontend_detach(struct dvb_frontend *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_net_init(struct dvb_adapter *arg0, struct dvb_net *arg1, struct dmx_demux *arg2) {
  return __VERIFIER_nondet_int();
}
void dvb_net_release(struct dvb_net *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_register_adapter(struct dvb_adapter *arg0, const char *arg1, struct module *arg2, struct device *arg3, short *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_register_frontend(struct dvb_adapter *arg0, struct dvb_frontend *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_adapter(struct dvb_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_frontend(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_bit_add_bus(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
struct i2c_client *i2c_new_probed_device(struct i2c_adapter *arg0, struct i2c_board_info *arg1, const unsigned short *arg2, int (*arg3)(struct i2c_adapter *, unsigned short)) {
  return ldv_malloc(sizeof(struct i2c_client));
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
ktime_t ktime_get() {
  return *(union ktime *)ldv_xmalloc(sizeof(union ktime));
}
void ldv__builtin_va_arg(__builtin_va_list arg0, unsigned long arg1, void *arg2) {
  return;
}
void ldv__builtin_va_end(__builtin_va_list arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
struct timeval ns_to_timeval(const s64 arg0) {
  return *(struct timeval *)ldv_xmalloc(sizeof(struct timeval));
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int tveeprom_read(struct i2c_client *arg0, unsigned char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_log_status(struct v4l2_ctrl_handler *arg0, const char *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_s_ctrl(struct v4l2_ctrl *arg0, s32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register_subdev(struct v4l2_device *arg0, struct v4l2_subdev *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_is_singular(struct v4l2_fh *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
void v4l2_subdev_init(struct v4l2_subdev *arg0, const struct v4l2_subdev_ops *arg1) {
  return;
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_vmalloc_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *videobuf_to_vmalloc(struct videobuf_buffer *arg0) {
  return ldv_malloc(0UL);
}
void videobuf_vmalloc_free(struct videobuf_buffer *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_waiton(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
