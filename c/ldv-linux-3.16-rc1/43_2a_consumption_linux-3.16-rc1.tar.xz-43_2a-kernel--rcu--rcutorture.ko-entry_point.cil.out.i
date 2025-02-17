extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned char u8;
typedef unsigned short u16;
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
typedef unsigned int gfp_t;
typedef unsigned int oom_flags_t;
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
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
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
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
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
struct completion;
struct pid;
enum ftrace_dump_mode {
    DUMP_NONE = 0,
    DUMP_ALL = 1,
    DUMP_ORIG = 2
} ;
struct timespec;
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
typedef atomic64_t atomic_long_t;
typedef int pao_T__;
typedef int pao_T_____0;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
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
struct notifier_block;
enum rcutorture_type {
    RCU_FLAVOR = 0,
    RCU_BH_FLAVOR = 1,
    RCU_SCHED_FLAVOR = 2,
    SRCU_FLAVOR = 3,
    INVALID_RCU_FLAVOR = 4
} ;
struct srcu_struct_array {
   unsigned long c[2U] ;
   unsigned long seq[2U] ;
};
struct rcu_batch {
   struct callback_head *head ;
   struct callback_head **tail ;
};
struct srcu_struct {
   unsigned int completed ;
   struct srcu_struct_array *per_cpu_ref ;
   spinlock_t queue_lock ;
   bool running ;
   struct rcu_batch batch_queue ;
   struct rcu_batch batch_check0 ;
   struct rcu_batch batch_check1 ;
   struct rcu_batch batch_done ;
   struct delayed_work work ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct __anonstruct_ldv_14016_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14020_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14021_135 {
   struct __anonstruct_ldv_14016_136 ldv_14016 ;
   struct __anonstruct_ldv_14020_137 ldv_14020 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14021_135 ldv_14021 ;
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
union __anonunion_ldv_14130_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14136_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14146_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14148_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14146_144 ldv_14146 ;
   int units ;
};
struct __anonstruct_ldv_14150_142 {
   union __anonunion_ldv_14148_143 ldv_14148 ;
   atomic_t _count ;
};
union __anonunion_ldv_14152_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14150_142 ldv_14150 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14153_139 {
   union __anonunion_ldv_14136_140 ldv_14136 ;
   union __anonunion_ldv_14152_141 ldv_14152 ;
};
struct __anonstruct_ldv_14160_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14165_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14160_146 ldv_14160 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14171_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14130_138 ldv_14130 ;
   struct __anonstruct_ldv_14153_139 ldv_14153 ;
   union __anonunion_ldv_14165_145 ldv_14165 ;
   union __anonunion_ldv_14171_147 ldv_14171 ;
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
union __anonunion_ldv_14534_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14534_153 ldv_14534 ;
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
union __anonunion_ldv_14678_154 {
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
   union __anonunion_ldv_14678_154 ldv_14678 ;
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
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
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
struct __anonstruct_ldv_15973_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15979_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15980_156 {
   struct __anonstruct_ldv_15973_157 ldv_15973 ;
   struct __anonstruct_ldv_15979_158 ldv_15979 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15980_156 ldv_15980 ;
};
struct sched_param {
   int sched_priority ;
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
union __anonunion_ldv_17584_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17592_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_17605_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_17606_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_17605_174 ldv_17605 ;
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
union __anonunion_ldv_17621_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17584_171 ldv_17584 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17592_172 ldv_17592 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_17606_173 ldv_17606 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_17621_176 ldv_17621 ;
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
struct torture_random_state {
   unsigned long trs_state ;
   long trs_count ;
};
struct rcu_torture {
   struct callback_head rtort_rcu ;
   int rtort_pipe_count ;
   struct list_head rtort_free ;
   int rtort_mbtest ;
};
struct rcu_torture_ops {
   int ttype ;
   void (*init)(void) ;
   int (*readlock)(void) ;
   void (*read_delay)(struct torture_random_state * ) ;
   void (*readunlock)(int ) ;
   int (*completed)(void) ;
   void (*deferred_free)(struct rcu_torture * ) ;
   void (*sync)(void) ;
   void (*exp_sync)(void) ;
   unsigned long (*get_state)(void) ;
   void (*cond_sync)(unsigned long ) ;
   void (*call)(struct callback_head * , void (*)(struct callback_head * ) ) ;
   void (*cb_barrier)(void) ;
   void (*fqs)(void) ;
   void (*stats)(char * ) ;
   int irq_capable ;
   int can_boost ;
   char const *name ;
};
struct rcu_boost_inflight {
   struct callback_head rcu ;
   int inflight ;
};
typedef long pao_T_____1;
typedef long pao_T_____2;
typedef long pao_T_____3;
typedef long pao_T_____4;
typedef long pao_T_____5;
typedef long pao_T_____6;
typedef long pao_T_____7;
typedef long pao_T_____8;
typedef long pao_T_____9;
typedef long pao_T_____10;
typedef long pao_T_____11;
typedef long pao_T_____12;
typedef long pao_T_____13;
typedef long pao_T_____14;
typedef long pao_T_____15;
typedef long pao_T_____16;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
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
   union __anonunion_ldv_14136_140 __annonCompField38 ;
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
   union __anonunion_ldv_14130_138 __annonCompField37 ;
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
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern void ftrace_dump(enum ftrace_dump_mode ) ;
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
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern unsigned long __per_cpu_offset[8192U] ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
extern int strcmp(char const * , char const * ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_possible_mask ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (unsigned int )nr_cpu_ids <= cpu;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/cpumask.h", 108);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (cpu);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    cpumask_check((unsigned int )n);
  } else {
  }
  tmp = find_next_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                      (unsigned long )(n + 1));
  return ((unsigned int )tmp);
}
}
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void arch_local_irq_disable(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (814), "i" (12UL));
    ldv_4870: ;
    goto ldv_4870;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static void arch_local_irq_enable(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_enable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (819), "i" (12UL));
    ldv_4879: ;
    goto ldv_4879;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (47UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_enable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
extern void __xchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
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
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int atomic_xchg(atomic_t *v , int new )
{
  int __ret ;
  {
  __ret = new;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (v->counter): : "memory",
                       "cc");
  goto ldv_5661;
  case 2UL:
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (v->counter): : "memory",
                       "cc");
  goto ldv_5661;
  case 4UL:
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (v->counter): : "memory",
                       "cc");
  goto ldv_5661;
  case 8UL:
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (v->counter): : "memory",
                       "cc");
  goto ldv_5661;
  default:
  __xchg_wrong_size();
  }
  ldv_5661: ;
  return (__ret);
}
}
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  default:
  __bad_percpu_size();
  }
  ldv_6004: ;
  return (pfo_ret__ & 2147483647);
}
}
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6061;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6061;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6061;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6061;
  default:
  __bad_percpu_size();
  }
  ldv_6061: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6073;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6073;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6073;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6073;
  default:
  __bad_percpu_size();
  }
  ldv_6073: ;
  return;
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  return;
}
}
extern int debug_locks ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_2(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_6(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
extern unsigned long get_seconds(void) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_trylock(struct mutex * ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern struct tvec_base boot_tvec_bases ;
extern void destroy_timer_on_stack(struct timer_list * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_19(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_20(struct timer_list *ldv_func_arg1 ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern int __cpu_to_node(int ) ;
extern void __bad_size_call_parameter(void) ;
__inline static void __this_cpu_preempt_check(char const *op )
{
  {
  return;
}
}
extern void rcutorture_get_gp_data(enum rcutorture_type , int * , unsigned long * ,
                                   unsigned long * ) ;
extern void rcutorture_record_test_transition(void) ;
extern void rcutorture_record_progress(unsigned long ) ;
extern void do_trace_rcu_torture_read(char const * , struct callback_head * , unsigned long ,
                                      unsigned long , unsigned long ) ;
extern void call_rcu_bh(struct callback_head * , void (*)(struct callback_head * ) ) ;
extern void call_rcu_sched(struct callback_head * , void (*)(struct callback_head * ) ) ;
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
extern void synchronize_rcu_bh(void) ;
extern void synchronize_sched_expedited(void) ;
extern void synchronize_rcu_expedited(void) ;
__inline static void synchronize_rcu_bh_expedited(void)
{
  {
  synchronize_sched_expedited();
  return;
}
}
extern void rcu_barrier(void) ;
extern void rcu_barrier_bh(void) ;
extern void rcu_barrier_sched(void) ;
extern unsigned long get_state_synchronize_rcu(void) ;
extern void cond_synchronize_rcu(unsigned long ) ;
extern long rcu_batches_completed(void) ;
extern long rcu_batches_completed_bh(void) ;
extern void show_rcu_gp_kthreads(void) ;
extern void rcu_force_quiescent_state(void) ;
extern void rcu_bh_force_quiescent_state(void) ;
extern void rcu_sched_force_quiescent_state(void) ;
extern bool rcu_is_watching(void) ;
extern void init_rcu_head_on_stack(struct callback_head * ) ;
extern void destroy_rcu_head_on_stack(struct callback_head * ) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 0, (struct lockdep_map *)0, (unsigned long )((void *)0));
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern struct lockdep_map rcu_bh_lock_map ;
extern struct lockdep_map rcu_sched_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_watching();
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  tmp___2 = rcu_lockdep_current_cpu_online();
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  tmp___4 = lock_is_held(& rcu_lock_map);
  return (tmp___4);
}
}
extern int rcu_read_lock_bh_held(void) ;
__inline static int rcu_read_lock_sched_held(void)
{
  int lockdep_opinion ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long _flags ;
  int tmp___5 ;
  int tmp___6 ;
  {
  lockdep_opinion = 0;
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_watching();
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  tmp___2 = rcu_lockdep_current_cpu_online();
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  if (debug_locks != 0) {
    lockdep_opinion = lock_is_held(& rcu_sched_lock_map);
  } else {
  }
  if (lockdep_opinion != 0) {
    tmp___6 = 1;
  } else {
    tmp___4 = preempt_count();
    if (tmp___4 != 0) {
      tmp___6 = 1;
    } else {
      _flags = arch_local_save_flags();
      tmp___5 = arch_irqs_disabled_flags(_flags);
      if (tmp___5 != 0) {
        tmp___6 = 1;
      } else {
        tmp___6 = 0;
      }
    }
  }
  return (tmp___6);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 871, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 892, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  return;
}
}
__inline static void rcu_read_lock_bh(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  local_bh_disable();
  rcu_lock_acquire(& rcu_bh_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 921, "rcu_read_lock_bh() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock_bh(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 932, "rcu_read_unlock_bh() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_bh_lock_map);
  local_bh_enable();
  return;
}
}
extern void process_srcu(struct work_struct * ) ;
extern void call_srcu(struct srcu_struct * , struct callback_head * , void (*)(struct callback_head * ) ) ;
extern int __srcu_read_lock(struct srcu_struct * ) ;
extern void __srcu_read_unlock(struct srcu_struct * , int ) ;
extern void synchronize_srcu(struct srcu_struct * ) ;
extern void synchronize_srcu_expedited(struct srcu_struct * ) ;
extern long srcu_batches_completed(struct srcu_struct * ) ;
extern void srcu_barrier(struct srcu_struct * ) ;
__inline static int srcu_read_lock_held(struct srcu_struct *sp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = lock_is_held(& sp->dep_map);
  return (tmp___0);
}
}
__inline static int srcu_read_lock(struct srcu_struct *sp )
{
  int retval ;
  int tmp ;
  {
  tmp = __srcu_read_lock(sp);
  retval = tmp;
  rcu_lock_acquire(& sp->dep_map);
  return (retval);
}
}
__inline static void srcu_read_unlock(struct srcu_struct *sp , int idx )
{
  {
  rcu_lock_release(& sp->dep_map);
  __srcu_read_unlock(sp, idx);
  return;
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
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
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_8 ;
int ldv_timer_1_0 ;
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct timer_list *ldv_timer_list_1_1 ;
int ldv_state_variable_6 ;
struct timer_list *ldv_timer_list_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_1_2 ;
int ldv_state_variable_3 ;
int ldv_timer_1_1 ;
int ldv_state_variable_2 ;
struct timer_list *ldv_timer_list_1_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void timer_init_1(void) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
extern long schedule_timeout_interruptible(long ) ;
extern long schedule_timeout_uninterruptible(long ) ;
extern void schedule(void) ;
extern void set_user_nice(struct task_struct * , long ) ;
extern int sched_setscheduler(struct task_struct * , int , struct sched_param const * ) ;
extern int wake_up_process(struct task_struct * ) ;
extern int _cond_resched(void) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern void kthread_bind(struct task_struct * , unsigned int ) ;
extern bool kthread_should_stop(void) ;
extern int register_cpu_notifier(struct notifier_block * ) ;
extern void unregister_cpu_notifier(struct notifier_block * ) ;
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern u64 trace_clock_local(void) ;
extern int torture_onoff_init(long , long ) ;
extern char *torture_onoff_stats(char * ) ;
extern bool torture_onoff_failures(void) ;
extern unsigned long torture_random(struct torture_random_state * ) ;
extern int torture_shuffle_init(long ) ;
extern void torture_shutdown_absorb(char const * ) ;
extern int torture_shutdown_init(int , void (*)(void) ) ;
extern void stutter_wait(char const * ) ;
extern int torture_stutter_init(int ) ;
extern bool torture_init_begin(char * , bool , int * ) ;
extern void torture_init_end(void) ;
extern bool torture_cleanup(void) ;
extern bool torture_must_stop(void) ;
extern bool torture_must_stop_irq(void) ;
extern void torture_kthread_stopping(char * ) ;
extern int _torture_create_kthread(int (*)(void * ) , void * , char * , char * , char * ,
                                   struct task_struct ** ) ;
extern void _torture_stop_kthread(char * , struct task_struct ** ) ;
static int fqs_duration = 0;
static int fqs_holdoff = 0;
static int fqs_stutter = 3;
static bool gp_cond = 0;
static bool gp_exp = 0;
static bool gp_normal = 0;
static bool gp_sync = 0;
static int irqreader = 1;
static int n_barrier_cbs = 0;
static int nfakewriters = 4;
static int nreaders = -1;
static int object_debug = 0;
static int onoff_holdoff = 0;
static int onoff_interval = 0;
static int shuffle_interval = 3;
static int shutdown_secs = 0;
static int stall_cpu = 0;
static int stall_cpu_holdoff = 10;
static int stat_interval = 60;
static int stutter = 5;
static int test_boost = 1;
static int test_boost_duration = 4;
static int test_boost_interval = 7;
static bool test_no_idle_hz = 1;
static bool verbose = 1;
static char *torture_type = (char *)"rcu";
static int nrealreaders ;
static struct task_struct *writer_task ;
static struct task_struct **fakewriter_tasks ;
static struct task_struct **reader_tasks ;
static struct task_struct *stats_task ;
static struct task_struct *fqs_task ;
static struct task_struct *boost_tasks[8192U] ;
static struct task_struct *stall_task ;
static struct task_struct **barrier_cbs_tasks ;
static struct task_struct *barrier_task ;
static struct list_head rcu_torture_freelist = {& rcu_torture_freelist, & rcu_torture_freelist};
static struct rcu_torture *rcu_torture_current ;
static unsigned long rcu_torture_current_version ;
static struct rcu_torture rcu_tortures[100U] ;
static spinlock_t rcu_torture_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rcu_torture_lock",
                                                     0, 0UL}}}};
char __pcpu_unique_rcu_torture_count ;
long rcu_torture_count[11U] ;
long rcu_torture_count[11U] = { 0L};
char __pcpu_unique_rcu_torture_batch ;
long rcu_torture_batch[11U] ;
long rcu_torture_batch[11U] = { 0L};
static atomic_t rcu_torture_wcount[11U] ;
static atomic_t n_rcu_torture_alloc ;
static atomic_t n_rcu_torture_alloc_fail ;
static atomic_t n_rcu_torture_free ;
static atomic_t n_rcu_torture_mberror ;
static atomic_t n_rcu_torture_error ;
static long n_rcu_torture_barrier_error ;
static long n_rcu_torture_boost_ktrerror ;
static long n_rcu_torture_boost_rterror ;
static long n_rcu_torture_boost_failure ;
static long n_rcu_torture_boosts ;
static long n_rcu_torture_timers ;
static long n_barrier_attempts ;
static long n_barrier_successes ;
static struct list_head rcu_torture_removed ;
static int rcu_torture_writer_state ;
int rcutorture_runnable = 1;
static u64 rcu_trace_clock_local(void)
{
  u64 ts ;
  u64 tmp ;
  unsigned long ts_rem ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  tmp = trace_clock_local();
  ts = tmp;
  __base = 1000U;
  __rem = (uint32_t )(ts % (u64 )__base);
  ts = ts / (u64 )__base;
  ts_rem = (unsigned long )__rem;
  return (ts);
}
}
static unsigned long boost_starttime ;
struct mutex boost_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "boost_mutex.wait_lock",
                                                           0, 0UL}}}}, {& boost_mutex.wait_list,
                                                                        & boost_mutex.wait_list},
    0, 0, (void *)(& boost_mutex), {0, {0, 0}, "boost_mutex", 0, 0UL}};
static atomic_t barrier_cbs_count ;
static bool barrier_phase ;
static atomic_t barrier_cbs_invoked ;
static wait_queue_head_t *barrier_cbs_wq ;
static wait_queue_head_t barrier_wq = {{{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "barrier_wq.lock",
                                                      0, 0UL}}}}, {& barrier_wq.task_list,
                                                                   & barrier_wq.task_list}};
static struct rcu_torture *rcu_torture_alloc(void)
{
  struct list_head *p ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  spin_lock_bh(& rcu_torture_lock);
  tmp = list_empty((struct list_head const *)(& rcu_torture_freelist));
  if (tmp != 0) {
    atomic_inc(& n_rcu_torture_alloc_fail);
    spin_unlock_bh(& rcu_torture_lock);
    return ((struct rcu_torture *)0);
  } else {
  }
  atomic_inc(& n_rcu_torture_alloc);
  p = rcu_torture_freelist.next;
  list_del_init(p);
  spin_unlock_bh(& rcu_torture_lock);
  __mptr = (struct list_head const *)p;
  return ((struct rcu_torture *)__mptr + 0xffffffffffffffe8UL);
}
}
static void rcu_torture_free(struct rcu_torture *p )
{
  {
  atomic_inc(& n_rcu_torture_free);
  spin_lock_bh(& rcu_torture_lock);
  list_add_tail(& p->rtort_free, & rcu_torture_freelist);
  spin_unlock_bh(& rcu_torture_lock);
  return;
}
}
static struct rcu_torture_ops *cur_ops ;
static int rcu_torture_read_lock(void)
{
  {
  rcu_read_lock();
  return (0);
}
}
static void rcu_read_delay(struct torture_random_state *rrsp )
{
  unsigned long shortdelay_us ;
  unsigned long longdelay_ms ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  shortdelay_us = 200UL;
  longdelay_ms = 50UL;
  tmp___0 = torture_random(rrsp);
  if (tmp___0 % ((unsigned long )(nrealreaders * 2000) * longdelay_ms) == 0UL) {
    __ms = longdelay_ms;
    goto ldv_23075;
    ldv_23074:
    __const_udelay(4295000UL);
    ldv_23075:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_23074;
    } else {
    }
  } else {
  }
  tmp___1 = torture_random(rrsp);
  if (tmp___1 % ((unsigned long )(nrealreaders * 2) * shortdelay_us) == 0UL) {
    __udelay(shortdelay_us);
  } else {
  }
  return;
}
}
static void rcu_torture_read_unlock(int idx )
{
  {
  rcu_read_unlock();
  return;
}
}
static int rcu_torture_completed(void)
{
  long tmp ;
  {
  tmp = rcu_batches_completed();
  return ((int )tmp);
}
}
static bool rcu_torture_pipe_update_one(struct rcu_torture *rp )
{
  int i ;
  {
  i = rp->rtort_pipe_count;
  if (i > 10) {
    i = 10;
  } else {
  }
  atomic_inc((atomic_t *)(& rcu_torture_wcount) + (unsigned long )i);
  rp->rtort_pipe_count = rp->rtort_pipe_count + 1;
  if (rp->rtort_pipe_count > 9) {
    rp->rtort_mbtest = 0;
    return (1);
  } else {
  }
  return (0);
}
}
static void rcu_torture_pipe_update(struct rcu_torture *old_rp )
{
  struct rcu_torture *rp ;
  struct rcu_torture *rp1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  bool tmp ;
  struct list_head const *__mptr___1 ;
  {
  if ((unsigned long )old_rp != (unsigned long )((struct rcu_torture *)0)) {
    list_add(& old_rp->rtort_free, & rcu_torture_removed);
  } else {
  }
  __mptr = (struct list_head const *)rcu_torture_removed.next;
  rp = (struct rcu_torture *)__mptr + 0xffffffffffffffe8UL;
  __mptr___0 = (struct list_head const *)rp->rtort_free.next;
  rp1 = (struct rcu_torture *)__mptr___0 + 0xffffffffffffffe8UL;
  goto ldv_23099;
  ldv_23098:
  tmp = rcu_torture_pipe_update_one(rp);
  if ((int )tmp) {
    list_del(& rp->rtort_free);
    rcu_torture_free(rp);
  } else {
  }
  rp = rp1;
  __mptr___1 = (struct list_head const *)rp1->rtort_free.next;
  rp1 = (struct rcu_torture *)__mptr___1 + 0xffffffffffffffe8UL;
  ldv_23099: ;
  if ((unsigned long )(& rp->rtort_free) != (unsigned long )(& rcu_torture_removed)) {
    goto ldv_23098;
  } else {
  }
  return;
}
}
static void rcu_torture_cb(struct callback_head *p )
{
  struct rcu_torture *rp ;
  struct callback_head const *__mptr ;
  bool tmp ;
  bool tmp___0 ;
  {
  __mptr = (struct callback_head const *)p;
  rp = (struct rcu_torture *)__mptr;
  tmp = torture_must_stop_irq();
  if ((int )tmp) {
    return;
  } else {
  }
  tmp___0 = rcu_torture_pipe_update_one(rp);
  if ((int )tmp___0) {
    rcu_torture_free(rp);
  } else {
    (*(cur_ops->deferred_free))(rp);
  }
  return;
}
}
static int rcu_no_completed(void)
{
  {
  return (0);
}
}
static void rcu_torture_deferred_free(struct rcu_torture *p )
{
  {
  call_rcu_sched(& p->rtort_rcu, & rcu_torture_cb);
  return;
}
}
static void rcu_sync_torture_init(void)
{
  {
  INIT_LIST_HEAD(& rcu_torture_removed);
  return;
}
}
static struct rcu_torture_ops rcu_ops =
     {0, & rcu_sync_torture_init, & rcu_torture_read_lock, & rcu_read_delay, & rcu_torture_read_unlock,
    & rcu_torture_completed, & rcu_torture_deferred_free, & synchronize_rcu, & synchronize_rcu_expedited,
    & get_state_synchronize_rcu, & cond_synchronize_rcu, & call_rcu_sched, & rcu_barrier,
    & rcu_force_quiescent_state, (void (*)(char * ))0, 1, 0, "rcu"};
static int rcu_bh_torture_read_lock(void)
{
  {
  rcu_read_lock_bh();
  return (0);
}
}
static void rcu_bh_torture_read_unlock(int idx )
{
  {
  rcu_read_unlock_bh();
  return;
}
}
static int rcu_bh_torture_completed(void)
{
  long tmp ;
  {
  tmp = rcu_batches_completed_bh();
  return ((int )tmp);
}
}
static void rcu_bh_torture_deferred_free(struct rcu_torture *p )
{
  {
  call_rcu_bh(& p->rtort_rcu, & rcu_torture_cb);
  return;
}
}
static struct rcu_torture_ops rcu_bh_ops =
     {1, & rcu_sync_torture_init, & rcu_bh_torture_read_lock, & rcu_read_delay, & rcu_bh_torture_read_unlock,
    & rcu_bh_torture_completed, & rcu_bh_torture_deferred_free, & synchronize_rcu_bh,
    & synchronize_rcu_bh_expedited, 0, 0, & call_rcu_bh, & rcu_barrier_bh, & rcu_bh_force_quiescent_state,
    (void (*)(char * ))0, 1, 0, "rcu_bh"};
static void rcu_busted_torture_deferred_free(struct rcu_torture *p )
{
  {
  rcu_torture_cb(& p->rtort_rcu);
  return;
}
}
static void synchronize_rcu_busted(void)
{
  {
  return;
}
}
static void call_rcu_busted(struct callback_head *head , void (*func)(struct callback_head * ) )
{
  {
  (*func)(head);
  return;
}
}
static struct rcu_torture_ops rcu_busted_ops =
     {4, & rcu_sync_torture_init, & rcu_torture_read_lock, & rcu_read_delay, & rcu_torture_read_unlock,
    & rcu_no_completed, & rcu_busted_torture_deferred_free, & synchronize_rcu_busted,
    & synchronize_rcu_busted, 0, 0, & call_rcu_busted, (void (*)(void))0, (void (*)(void))0,
    (void (*)(char * ))0, 1, 0, "rcu_busted"};
char __pcpu_unique_srcu_ctl_srcu_array ;
struct srcu_struct_array srcu_ctl_srcu_array ;
static struct srcu_struct srcu_ctl =
     {4294966996U, & srcu_ctl_srcu_array, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1,
                                           {0, {0, 0}, "srcu_ctl.queue_lock", 0, 0UL}}}},
    0, {(struct callback_head *)0, & srcu_ctl.batch_queue.head}, {(struct callback_head *)0,
                                                                  & srcu_ctl.batch_check0.head},
    {(struct callback_head *)0, & srcu_ctl.batch_check1.head}, {(struct callback_head *)0,
                                                                & srcu_ctl.batch_done.head},
    {{{137438953424L}, {& srcu_ctl.work.work.entry, & srcu_ctl.work.work.entry}, & process_srcu,
      {(struct lock_class_key *)(& srcu_ctl.work.work), {0, 0}, "(srcu_ctl.work).work",
       0, 0UL}}, {{0, (struct list_head *)1953723489}, 0UL, (struct tvec_base *)((unsigned long )(& boot_tvec_bases) + 2UL),
                  & delayed_work_timer_fn, (unsigned long )(& srcu_ctl.work), -1,
                  0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                         (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                         (char)0, (char)0}, {(struct lock_class_key *)"/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared:521",
                                             {0, 0}, "/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared:521",
                                             0, 0UL}}, 0, 0}, {0, {0, 0}, "srcu_ctl",
                                                               0, 0UL}};
static int srcu_torture_read_lock(void)
{
  int tmp ;
  {
  tmp = srcu_read_lock(& srcu_ctl);
  return (tmp);
}
}
static void srcu_read_delay(struct torture_random_state *rrsp )
{
  long delay ;
  long uspertick ;
  long longdelay ;
  unsigned long tmp ;
  {
  uspertick = 4000L;
  longdelay = 10L;
  tmp = torture_random(rrsp);
  delay = (long )(tmp % (unsigned long )(((long )(nrealreaders * 2) * longdelay) * uspertick));
  if (delay == 0L) {
    schedule_timeout_interruptible(longdelay);
  } else {
    rcu_read_delay(rrsp);
  }
  return;
}
}
static void srcu_torture_read_unlock(int idx )
{
  {
  srcu_read_unlock(& srcu_ctl, idx);
  return;
}
}
static int srcu_torture_completed(void)
{
  long tmp ;
  {
  tmp = srcu_batches_completed(& srcu_ctl);
  return ((int )tmp);
}
}
static void srcu_torture_deferred_free(struct rcu_torture *rp )
{
  {
  call_srcu(& srcu_ctl, & rp->rtort_rcu, & rcu_torture_cb);
  return;
}
}
static void srcu_torture_synchronize(void)
{
  {
  synchronize_srcu(& srcu_ctl);
  return;
}
}
static void srcu_torture_call(struct callback_head *head , void (*func)(struct callback_head * ) )
{
  {
  call_srcu(& srcu_ctl, head, func);
  return;
}
}
static void srcu_torture_barrier(void)
{
  {
  srcu_barrier(& srcu_ctl);
  return;
}
}
static void srcu_torture_stats(char *page )
{
  int cpu ;
  int idx ;
  int tmp ;
  long c0 ;
  long c1 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  idx = (int )srcu_ctl.completed & 1;
  tmp = sprintf(page, "%s%s per-CPU(idx=%d):", torture_type, (char *)"-torture:",
                idx);
  page = page + (unsigned long )tmp;
  cpu = -1;
  goto ldv_23194;
  ldv_23193:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (srcu_ctl.per_cpu_ref));
  c0 = (long )((struct srcu_struct_array *)(__per_cpu_offset[cpu] + __ptr))->c[idx == 0];
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (srcu_ctl.per_cpu_ref));
  c1 = (long )((struct srcu_struct_array *)(__per_cpu_offset[cpu] + __ptr___0))->c[idx];
  tmp___0 = sprintf(page, " %d(%ld,%ld)", cpu, c0, c1);
  page = page + (unsigned long )tmp___0;
  ldv_23194:
  tmp___1 = cpumask_next(cpu, cpu_possible_mask);
  cpu = (int )tmp___1;
  if (cpu < nr_cpu_ids) {
    goto ldv_23193;
  } else {
  }
  sprintf(page, "\n");
  return;
}
}
static void srcu_torture_synchronize_expedited(void)
{
  {
  synchronize_srcu_expedited(& srcu_ctl);
  return;
}
}
static struct rcu_torture_ops srcu_ops =
     {3, & rcu_sync_torture_init, & srcu_torture_read_lock, & srcu_read_delay, & srcu_torture_read_unlock,
    & srcu_torture_completed, & srcu_torture_deferred_free, & srcu_torture_synchronize,
    & srcu_torture_synchronize_expedited, 0, 0, & srcu_torture_call, & srcu_torture_barrier,
    0, & srcu_torture_stats, 0, 0, "srcu"};
static int sched_torture_read_lock(void)
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  return (0);
}
}
static void sched_torture_read_unlock(int idx )
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
static void rcu_sched_torture_deferred_free(struct rcu_torture *p )
{
  {
  call_rcu_sched(& p->rtort_rcu, & rcu_torture_cb);
  return;
}
}
static struct rcu_torture_ops sched_ops =
     {2, & rcu_sync_torture_init, & sched_torture_read_lock, & rcu_read_delay, & sched_torture_read_unlock,
    & rcu_no_completed, & rcu_sched_torture_deferred_free, & synchronize_sched, & synchronize_sched_expedited,
    0, 0, & call_rcu_sched, & rcu_barrier_sched, & rcu_sched_force_quiescent_state,
    (void (*)(char * ))0, 1, 0, "sched"};
static void rcu_torture_boost_cb(struct callback_head *head )
{
  struct rcu_boost_inflight *rbip ;
  struct callback_head const *__mptr ;
  {
  __mptr = (struct callback_head const *)head;
  rbip = (struct rcu_boost_inflight *)__mptr;
  __asm__ volatile ("mfence": : : "memory");
  rbip->inflight = 0;
  return;
}
}
static int rcu_torture_boost(void *arg )
{
  unsigned long call_rcu_time ;
  unsigned long endtime ;
  unsigned long oldstarttime ;
  struct rcu_boost_inflight rbi ;
  struct sched_param sp ;
  struct task_struct *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  {
  rbi.rcu.next = 0;
  rbi.rcu.func = 0;
  rbi.inflight = 0;
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_boost started");
  } else {
  }
  sp.sched_priority = 1;
  tmp = get_current();
  tmp___0 = sched_setscheduler(tmp, 1, (struct sched_param const *)(& sp));
  if (tmp___0 < 0) {
    if ((int )verbose) {
      printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_boost RT prio failed!");
    } else {
    }
    n_rcu_torture_boost_rterror = n_rcu_torture_boost_rterror + 1L;
  } else {
  }
  init_rcu_head_on_stack(& rbi.rcu);
  ldv_23238:
  oldstarttime = boost_starttime;
  goto ldv_23229;
  ldv_23228:
  schedule_timeout_interruptible((long )(oldstarttime - (unsigned long )jiffies));
  stutter_wait("rcu_torture_boost");
  tmp___1 = torture_must_stop();
  if ((int )tmp___1) {
    goto checkwait;
  } else {
  }
  ldv_23229: ;
  if ((long )((unsigned long )jiffies - oldstarttime) < 0L) {
    goto ldv_23228;
  } else {
  }
  endtime = (unsigned long )(test_boost_duration * 250) + oldstarttime;
  call_rcu_time = jiffies;
  goto ldv_23233;
  ldv_23232: ;
  if (rbi.inflight == 0) {
    __asm__ volatile ("mfence": : : "memory");
    rbi.inflight = 1;
    call_rcu_sched(& rbi.rcu, & rcu_torture_boost_cb);
    if ((unsigned long )jiffies - call_rcu_time > (unsigned long )(test_boost_duration * 250 + -125)) {
      if ((int )verbose) {
        printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_boost boosting failed");
      } else {
      }
      n_rcu_torture_boost_failure = n_rcu_torture_boost_failure + 1L;
    } else {
    }
    call_rcu_time = jiffies;
  } else {
  }
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                717, 0);
  _cond_resched();
  stutter_wait("rcu_torture_boost");
  tmp___2 = torture_must_stop();
  if ((int )tmp___2) {
    goto checkwait;
  } else {
  }
  ldv_23233: ;
  if ((long )((unsigned long )jiffies - endtime) < 0L) {
    goto ldv_23232;
  } else {
  }
  goto ldv_23237;
  ldv_23236:
  tmp___3 = mutex_trylock(& boost_mutex);
  if (tmp___3 != 0) {
    boost_starttime = (unsigned long )(test_boost_interval * 250) + (unsigned long )jiffies;
    n_rcu_torture_boosts = n_rcu_torture_boosts + 1L;
    mutex_unlock(& boost_mutex);
    goto ldv_23235;
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  ldv_23237: ;
  if (oldstarttime == boost_starttime) {
    tmp___4 = kthread_should_stop();
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      goto ldv_23236;
    } else {
      goto ldv_23235;
    }
  } else {
  }
  ldv_23235: ;
  checkwait:
  stutter_wait("rcu_torture_boost");
  tmp___6 = torture_must_stop();
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    goto ldv_23238;
  } else {
  }
  goto ldv_23241;
  ldv_23240:
  torture_shutdown_absorb("rcu_torture_boost");
  schedule_timeout_uninterruptible(1L);
  ldv_23241:
  tmp___8 = kthread_should_stop();
  if (tmp___8) {
    tmp___9 = 0;
  } else {
    tmp___9 = 1;
  }
  if (tmp___9 || rbi.inflight != 0) {
    goto ldv_23240;
  } else {
  }
  __asm__ volatile ("mfence": : : "memory");
  destroy_rcu_head_on_stack(& rbi.rcu);
  torture_kthread_stopping((char *)"rcu_torture_boost");
  return (0);
}
}
static int rcu_torture_fqs(void *arg )
{
  unsigned long fqs_resume_time ;
  int fqs_burst_remaining ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_fqs task started");
  } else {
  }
  ldv_23254:
  fqs_resume_time = (unsigned long )(fqs_stutter * 250) + (unsigned long )jiffies;
  goto ldv_23249;
  ldv_23248:
  schedule_timeout_interruptible(1L);
  ldv_23249: ;
  if ((long )((unsigned long )jiffies - fqs_resume_time) < 0L) {
    tmp = kthread_should_stop();
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      goto ldv_23248;
    } else {
      goto ldv_23250;
    }
  } else {
  }
  ldv_23250:
  fqs_burst_remaining = fqs_duration;
  goto ldv_23252;
  ldv_23251:
  (*(cur_ops->fqs))();
  __udelay((unsigned long )fqs_holdoff);
  fqs_burst_remaining = fqs_burst_remaining - fqs_holdoff;
  ldv_23252: ;
  if (fqs_burst_remaining > 0) {
    tmp___1 = kthread_should_stop();
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      goto ldv_23251;
    } else {
      goto ldv_23253;
    }
  } else {
  }
  ldv_23253:
  stutter_wait("rcu_torture_fqs");
  tmp___3 = torture_must_stop();
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    goto ldv_23254;
  } else {
  }
  torture_kthread_stopping((char *)"rcu_torture_fqs");
  return (0);
}
}
extern void __compiletime_assert_852(void) ;
static int rcu_torture_writer(void *arg )
{
  unsigned long gp_snap ;
  bool gp_cond1 ;
  bool gp_exp1 ;
  bool gp_normal1 ;
  bool gp_sync1 ;
  int i ;
  struct rcu_torture *rp ;
  struct rcu_torture *old_rp ;
  struct torture_random_state rand ;
  int synctype[4U] ;
  int nsynctypes ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  unsigned long tmp___9 ;
  struct rcu_torture *_________p1 ;
  bool __warned___0 ;
  int tmp___10 ;
  int tmp___11 ;
  struct task_struct *tmp___12 ;
  bool __cond ;
  unsigned long tmp___13 ;
  unsigned long tmp___14 ;
  unsigned long tmp___17 ;
  bool __warned___1 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  bool tmp___21 ;
  int tmp___22 ;
  {
  gp_cond1 = gp_cond;
  gp_exp1 = gp_exp;
  gp_normal1 = gp_normal;
  gp_sync1 = gp_sync;
  rand.trs_state = 0UL;
  rand.trs_count = 0L;
  synctype[0] = 3;
  synctype[1] = 4;
  synctype[2] = 5;
  synctype[3] = 7;
  nsynctypes = 0;
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_writer task started");
  } else {
  }
  if (((! gp_cond1 && ! gp_exp1) && ! gp_normal1) && ! gp_sync) {
    gp_sync1 = 1;
    gp_normal1 = gp_sync1;
    gp_exp1 = gp_normal1;
    gp_cond1 = gp_exp1;
  } else {
  }
  if (((int )gp_cond1 && (unsigned long )cur_ops->get_state != (unsigned long )((unsigned long (*)(void))0)) && (unsigned long )cur_ops->cond_sync != (unsigned long )((void (*)(unsigned long ))0)) {
    tmp = nsynctypes;
    nsynctypes = nsynctypes + 1;
    synctype[tmp] = 5;
  } else
  if ((int )gp_cond && ((unsigned long )cur_ops->get_state == (unsigned long )((unsigned long (*)(void))0) || (unsigned long )cur_ops->cond_sync == (unsigned long )((void (*)(unsigned long ))0))) {
    printk("\trcu_torture_writer: gp_cond without primitives.\n");
  } else {
  }
  if ((int )gp_exp1 && (unsigned long )cur_ops->exp_sync != (unsigned long )((void (*)(void))0)) {
    tmp___0 = nsynctypes;
    nsynctypes = nsynctypes + 1;
    synctype[tmp___0] = 4;
  } else
  if ((int )gp_exp && (unsigned long )cur_ops->exp_sync == (unsigned long )((void (*)(void))0)) {
    printk("\trcu_torture_writer: gp_exp without primitives.\n");
  } else {
  }
  if ((int )gp_normal1 && (unsigned long )cur_ops->deferred_free != (unsigned long )((void (*)(struct rcu_torture * ))0)) {
    tmp___1 = nsynctypes;
    nsynctypes = nsynctypes + 1;
    synctype[tmp___1] = 3;
  } else
  if ((int )gp_normal && (unsigned long )cur_ops->deferred_free == (unsigned long )((void (*)(struct rcu_torture * ))0)) {
    printk("\trcu_torture_writer: gp_normal without primitives.\n");
  } else {
  }
  if ((int )gp_sync1 && (unsigned long )cur_ops->sync != (unsigned long )((void (*)(void))0)) {
    tmp___2 = nsynctypes;
    nsynctypes = nsynctypes + 1;
    synctype[tmp___2] = 7;
  } else
  if ((int )gp_sync && (unsigned long )cur_ops->sync == (unsigned long )((void (*)(void))0)) {
    printk("\trcu_torture_writer: gp_sync without primitives.\n");
  } else {
  }
  __ret_warn_once = nsynctypes == 0;
  tmp___5 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___5 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                        829, "rcu_torture_writer: No update-side primitives.\n");
    } else {
    }
    tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___4 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___6 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___6 != 0L) {
    rcu_torture_writer_state = 9;
    torture_kthread_stopping((char *)"rcu_torture_writer");
  } else {
  }
  ldv_23294:
  rcu_torture_writer_state = 0;
  schedule_timeout_uninterruptible(1L);
  rp = rcu_torture_alloc();
  if ((unsigned long )rp == (unsigned long )((struct rcu_torture *)0)) {
    goto ldv_23275;
  } else {
  }
  rp->rtort_pipe_count = 0;
  rcu_torture_writer_state = 1;
  tmp___9 = torture_random(& rand);
  __udelay(tmp___9 & 1023UL);
  rcu_torture_writer_state = 2;
  _________p1 = *((struct rcu_torture * volatile *)(& rcu_torture_current));
  tmp___10 = debug_lockdep_rcu_enabled();
  if (tmp___10 != 0 && ! __warned___0) {
    tmp___11 = rcu_read_lock_held();
    if (tmp___11 == 0) {
      tmp___12 = get_current();
      if ((unsigned long )tmp___12 != (unsigned long )writer_task) {
        __warned___0 = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                               850, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
  } else {
  }
  old_rp = _________p1;
  rp->rtort_mbtest = 1;
  __cond = 0;
  if ((int )__cond) {
    __compiletime_assert_852();
  } else {
  }
  __asm__ volatile ("": : : "memory");
  *((struct rcu_torture * volatile *)(& rcu_torture_current)) = rp;
  __asm__ volatile ("": : : "memory");
  if ((unsigned long )old_rp != (unsigned long )((struct rcu_torture *)0)) {
    i = old_rp->rtort_pipe_count;
    if (i > 10) {
      i = 10;
    } else {
    }
    atomic_inc((atomic_t *)(& rcu_torture_wcount) + (unsigned long )i);
    old_rp->rtort_pipe_count = old_rp->rtort_pipe_count + 1;
    tmp___13 = torture_random(& rand);
    switch (synctype[tmp___13 % (unsigned long )nsynctypes]) {
    case 3:
    rcu_torture_writer_state = 3;
    (*(cur_ops->deferred_free))(old_rp);
    goto ldv_23284;
    case 4:
    rcu_torture_writer_state = 4;
    (*(cur_ops->exp_sync))();
    rcu_torture_pipe_update(old_rp);
    goto ldv_23284;
    case 5:
    rcu_torture_writer_state = 5;
    gp_snap = (*(cur_ops->get_state))();
    tmp___14 = torture_random(& rand);
    i = (int )tmp___14 & 15;
    if (i != 0) {
      schedule_timeout_interruptible((long )i);
    } else {
    }
    tmp___17 = torture_random(& rand);
    __udelay(tmp___17 % 1000UL);
    rcu_torture_writer_state = 6;
    (*(cur_ops->cond_sync))(gp_snap);
    rcu_torture_pipe_update(old_rp);
    goto ldv_23284;
    case 7:
    rcu_torture_writer_state = 7;
    (*(cur_ops->sync))();
    rcu_torture_pipe_update(old_rp);
    goto ldv_23284;
    default:
    __ret_warn_once___0 = 1;
    tmp___20 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    if (tmp___20 != 0L) {
      __ret_warn_on___0 = ! __warned___1;
      tmp___18 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___18 != 0L) {
        warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                           887);
      } else {
      }
      tmp___19 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___19 != 0L) {
        __warned___1 = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    goto ldv_23284;
    }
    ldv_23284: ;
  } else {
  }
  rcu_torture_current_version = rcu_torture_current_version + 1UL;
  rcutorture_record_progress(rcu_torture_current_version);
  rcu_torture_writer_state = 8;
  stutter_wait("rcu_torture_writer");
  ldv_23275:
  tmp___21 = torture_must_stop();
  if (tmp___21) {
    tmp___22 = 0;
  } else {
    tmp___22 = 1;
  }
  if (tmp___22) {
    goto ldv_23294;
  } else {
  }
  rcu_torture_writer_state = 9;
  torture_kthread_stopping((char *)"rcu_torture_writer");
  return (0);
}
}
static int rcu_torture_fakewriter(void *arg )
{
  struct torture_random_state rand ;
  struct task_struct *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  rand.trs_state = 0UL;
  rand.trs_count = 0L;
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_fakewriter task started");
  } else {
  }
  tmp = get_current();
  set_user_nice(tmp, 19L);
  ldv_23300:
  tmp___0 = torture_random(& rand);
  schedule_timeout_uninterruptible((long )(tmp___0 % 10UL + 1UL));
  tmp___3 = torture_random(& rand);
  __udelay(tmp___3 & 1023UL);
  if ((unsigned long )cur_ops->cb_barrier != (unsigned long )((void (*)(void))0)) {
    tmp___5 = torture_random(& rand);
    if (tmp___5 % (unsigned long )(nfakewriters * 8) == 0UL) {
      (*(cur_ops->cb_barrier))();
    } else {
      goto _L;
    }
  } else
  _L:
  if ((int )gp_normal == (int )gp_exp) {
    tmp___4 = torture_random(& rand);
    if ((tmp___4 & 128UL) != 0UL) {
      (*(cur_ops->sync))();
    } else {
      (*(cur_ops->exp_sync))();
    }
  } else
  if ((int )gp_normal) {
    (*(cur_ops->sync))();
  } else {
    (*(cur_ops->exp_sync))();
  }
  stutter_wait("rcu_torture_fakewriter");
  tmp___6 = torture_must_stop();
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    goto ldv_23300;
  } else {
  }
  torture_kthread_stopping((char *)"rcu_torture_fakewriter");
  return (0);
}
}
static void rcutorture_trace_dump(void)
{
  atomic_t beenhere ;
  int tmp ;
  int tmp___0 ;
  {
  beenhere.counter = 0;
  tmp = atomic_read((atomic_t const *)(& beenhere));
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = atomic_xchg(& beenhere, 1);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  ftrace_dump(1);
  return;
}
}
static void rcu_torture_timer(unsigned long unused )
{
  int idx ;
  int completed ;
  int completed_end ;
  struct torture_random_state rand ;
  spinlock_t rand_lock ;
  struct rcu_torture *p ;
  int pipe_count ;
  unsigned long long ts ;
  struct rcu_torture *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  void const *__vpp_verify___0 ;
  int pao_ID_____3 ;
  int pao_ID_____4 ;
  int pao_ID_____5 ;
  int pao_ID_____6 ;
  {
  rand.trs_state = 0UL;
  rand.trs_count = 0L;
  rand_lock.ldv_6347.rlock.raw_lock.ldv_1458.head_tail = 0U;
  rand_lock.ldv_6347.rlock.magic = 3735899821U;
  rand_lock.ldv_6347.rlock.owner_cpu = 4294967295U;
  rand_lock.ldv_6347.rlock.owner = (void *)-1;
  rand_lock.ldv_6347.rlock.dep_map.key = 0;
  rand_lock.ldv_6347.rlock.dep_map.class_cache[0] = 0;
  rand_lock.ldv_6347.rlock.dep_map.class_cache[1] = 0;
  rand_lock.ldv_6347.rlock.dep_map.name = "rand_lock";
  rand_lock.ldv_6347.rlock.dep_map.cpu = 0;
  rand_lock.ldv_6347.rlock.dep_map.ip = 0UL;
  idx = (*(cur_ops->readlock))();
  completed = (*(cur_ops->completed))();
  ts = rcu_trace_clock_local();
  _________p1 = *((struct rcu_torture * volatile *)(& rcu_torture_current));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_read_lock_held();
    if (tmp___0 == 0) {
      tmp___1 = rcu_read_lock_bh_held();
      if (tmp___1 == 0) {
        tmp___2 = rcu_read_lock_sched_held();
        if (tmp___2 == 0) {
          tmp___3 = srcu_read_lock_held(& srcu_ctl);
          if (tmp___3 == 0) {
            __warned = 1;
            lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                                   969, "suspicious rcu_dereference_check() usage");
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  p = _________p1;
  if ((unsigned long )p == (unsigned long )((struct rcu_torture *)0)) {
    (*(cur_ops->readunlock))(idx);
    return;
  } else {
  }
  if (p->rtort_mbtest == 0) {
    atomic_inc(& n_rcu_torture_mberror);
  } else {
  }
  spin_lock(& rand_lock);
  (*(cur_ops->read_delay))(& rand);
  n_rcu_torture_timers = n_rcu_torture_timers + 1L;
  spin_unlock(& rand_lock);
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  pipe_count = p->rtort_pipe_count;
  if (pipe_count > 10) {
    pipe_count = 10;
  } else {
  }
  completed_end = (*(cur_ops->completed))();
  if (pipe_count > 1) {
    do_trace_rcu_torture_read(cur_ops->name, & p->rtort_rcu, (unsigned long )ts, (unsigned long )completed,
                              (unsigned long )completed_end);
    rcutorture_trace_dump();
  } else {
  }
  __this_cpu_preempt_check("add");
  __vpp_verify = (void const *)0;
  switch (8UL) {
  case 1UL:
  pao_ID__ = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23327;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23327;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23327;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23327;
  default:
  __bad_percpu_size();
  }
  ldv_23327: ;
  goto ldv_23332;
  case 2UL:
  pao_ID_____0 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23338;
  case 2UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23338;
  case 4UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23338;
  case 8UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23338;
  default:
  __bad_percpu_size();
  }
  ldv_23338: ;
  goto ldv_23332;
  case 4UL:
  pao_ID_____1 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23348;
  case 2UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23348;
  case 4UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23348;
  case 8UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23348;
  default:
  __bad_percpu_size();
  }
  ldv_23348: ;
  goto ldv_23332;
  case 8UL:
  pao_ID_____2 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23358;
  case 2UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23358;
  case 4UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23358;
  case 8UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23358;
  default:
  __bad_percpu_size();
  }
  ldv_23358: ;
  goto ldv_23332;
  default:
  __bad_size_call_parameter();
  goto ldv_23332;
  }
  ldv_23332:
  completed = completed_end - completed;
  if (completed > 10) {
    completed = 10;
  } else {
  }
  __this_cpu_preempt_check("add");
  __vpp_verify___0 = (void const *)0;
  switch (8UL) {
  case 1UL:
  pao_ID_____3 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23370;
  case 2UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23370;
  case 4UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23370;
  case 8UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23370;
  default:
  __bad_percpu_size();
  }
  ldv_23370: ;
  goto ldv_23375;
  case 2UL:
  pao_ID_____4 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23381;
  case 2UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23381;
  case 4UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23381;
  case 8UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23381;
  default:
  __bad_percpu_size();
  }
  ldv_23381: ;
  goto ldv_23375;
  case 4UL:
  pao_ID_____5 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23391;
  case 2UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23391;
  case 4UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23391;
  case 8UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23391;
  default:
  __bad_percpu_size();
  }
  ldv_23391: ;
  goto ldv_23375;
  case 8UL:
  pao_ID_____6 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23401;
  case 2UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23401;
  case 4UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23401;
  case 8UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23401;
  default:
  __bad_percpu_size();
  }
  ldv_23401: ;
  goto ldv_23375;
  default:
  __bad_size_call_parameter();
  goto ldv_23375;
  }
  ldv_23375:
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  (*(cur_ops->readunlock))(idx);
  return;
}
}
static int rcu_torture_reader(void *arg )
{
  int completed ;
  int completed_end ;
  int idx ;
  struct torture_random_state rand ;
  struct rcu_torture *p ;
  int pipe_count ;
  struct timer_list t ;
  unsigned long long ts ;
  struct task_struct *tmp ;
  int tmp___0 ;
  struct rcu_torture *_________p1 ;
  bool __warned ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  void const *__vpp_verify___0 ;
  int pao_ID_____3 ;
  int pao_ID_____4 ;
  int pao_ID_____5 ;
  int pao_ID_____6 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  rand.trs_state = 0UL;
  rand.trs_count = 0L;
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_reader task started");
  } else {
  }
  tmp = get_current();
  set_user_nice(tmp, 19L);
  if (irqreader != 0 && cur_ops->irq_capable != 0) {
    reg_timer_1(& t, & rcu_torture_timer, 0UL);
  } else {
  }
  ldv_23509: ;
  if (irqreader != 0 && cur_ops->irq_capable != 0) {
    tmp___0 = timer_pending((struct timer_list const *)(& t));
    if (tmp___0 == 0) {
      ldv_mod_timer_19(& t, (unsigned long )jiffies + 1UL);
    } else {
    }
  } else {
  }
  idx = (*(cur_ops->readlock))();
  completed = (*(cur_ops->completed))();
  ts = rcu_trace_clock_local();
  _________p1 = *((struct rcu_torture * volatile *)(& rcu_torture_current));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned) {
    tmp___2 = rcu_read_lock_held();
    if (tmp___2 == 0) {
      tmp___3 = rcu_read_lock_bh_held();
      if (tmp___3 == 0) {
        tmp___4 = rcu_read_lock_sched_held();
        if (tmp___4 == 0) {
          tmp___5 = srcu_read_lock_held(& srcu_ctl);
          if (tmp___5 == 0) {
            __warned = 1;
            lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                                   1038, "suspicious rcu_dereference_check() usage");
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  p = _________p1;
  if ((unsigned long )p == (unsigned long )((struct rcu_torture *)0)) {
    (*(cur_ops->readunlock))(idx);
    schedule_timeout_interruptible(250L);
    goto ldv_23421;
  } else {
  }
  if (p->rtort_mbtest == 0) {
    atomic_inc(& n_rcu_torture_mberror);
  } else {
  }
  (*(cur_ops->read_delay))(& rand);
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  pipe_count = p->rtort_pipe_count;
  if (pipe_count > 10) {
    pipe_count = 10;
  } else {
  }
  completed_end = (*(cur_ops->completed))();
  if (pipe_count > 1) {
    do_trace_rcu_torture_read(cur_ops->name, & p->rtort_rcu, (unsigned long )ts, (unsigned long )completed,
                              (unsigned long )completed_end);
    rcutorture_trace_dump();
  } else {
  }
  __this_cpu_preempt_check("add");
  __vpp_verify = (void const *)0;
  switch (8UL) {
  case 1UL:
  pao_ID__ = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23428;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23428;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23428;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23428;
  default:
  __bad_percpu_size();
  }
  ldv_23428: ;
  goto ldv_23433;
  case 2UL:
  pao_ID_____0 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23439;
  case 2UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23439;
  case 4UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23439;
  case 8UL: ;
  if (pao_ID_____0 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____0 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23439;
  default:
  __bad_percpu_size();
  }
  ldv_23439: ;
  goto ldv_23433;
  case 4UL:
  pao_ID_____1 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23449;
  case 2UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23449;
  case 4UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23449;
  case 8UL: ;
  if (pao_ID_____1 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____1 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23449;
  default:
  __bad_percpu_size();
  }
  ldv_23449: ;
  goto ldv_23433;
  case 8UL:
  pao_ID_____2 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "qi" (1L));
  }
  goto ldv_23459;
  case 2UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23459;
  case 4UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "ri" (1L));
  }
  goto ldv_23459;
  case 8UL: ;
  if (pao_ID_____2 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else
  if (pao_ID_____2 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_count[pipe_count]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_count[pipe_count]): "re" (1L));
  }
  goto ldv_23459;
  default:
  __bad_percpu_size();
  }
  ldv_23459: ;
  goto ldv_23433;
  default:
  __bad_size_call_parameter();
  goto ldv_23433;
  }
  ldv_23433:
  completed = completed_end - completed;
  if (completed > 10) {
    completed = 10;
  } else {
  }
  __this_cpu_preempt_check("add");
  __vpp_verify___0 = (void const *)0;
  switch (8UL) {
  case 1UL:
  pao_ID_____3 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23471;
  case 2UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23471;
  case 4UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23471;
  case 8UL: ;
  if (pao_ID_____3 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____3 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23471;
  default:
  __bad_percpu_size();
  }
  ldv_23471: ;
  goto ldv_23476;
  case 2UL:
  pao_ID_____4 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23482;
  case 2UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23482;
  case 4UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23482;
  case 8UL: ;
  if (pao_ID_____4 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____4 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23482;
  default:
  __bad_percpu_size();
  }
  ldv_23482: ;
  goto ldv_23476;
  case 4UL:
  pao_ID_____5 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23492;
  case 2UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23492;
  case 4UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23492;
  case 8UL: ;
  if (pao_ID_____5 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____5 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23492;
  default:
  __bad_percpu_size();
  }
  ldv_23492: ;
  goto ldv_23476;
  case 8UL:
  pao_ID_____6 = 1;
  switch (8UL) {
  case 1UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "qi" (1L));
  }
  goto ldv_23502;
  case 2UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23502;
  case 4UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "ri" (1L));
  }
  goto ldv_23502;
  case 8UL: ;
  if (pao_ID_____6 == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else
  if (pao_ID_____6 == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (rcu_torture_batch[completed]));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (rcu_torture_batch[completed]): "re" (1L));
  }
  goto ldv_23502;
  default:
  __bad_percpu_size();
  }
  ldv_23502: ;
  goto ldv_23476;
  default:
  __bad_size_call_parameter();
  goto ldv_23476;
  }
  ldv_23476:
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  (*(cur_ops->readunlock))(idx);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                1069, 0);
  _cond_resched();
  stutter_wait("rcu_torture_reader");
  ldv_23421:
  tmp___6 = torture_must_stop();
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    goto ldv_23509;
  } else {
  }
  if (irqreader != 0 && cur_ops->irq_capable != 0) {
    ldv_del_timer_sync_20(& t);
    destroy_timer_on_stack(& t);
  } else {
  }
  torture_kthread_stopping((char *)"rcu_torture_reader");
  return (0);
}
}
static void rcu_torture_printk(char *page )
{
  int cpu ;
  int i ;
  long pipesummary[11U] ;
  unsigned int tmp ;
  long batchsummary[11U] ;
  unsigned int tmp___0 ;
  unsigned long rtcv_snap ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  unsigned int tmp___1 ;
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
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int flags ;
  unsigned long gpnum ;
  unsigned long completed ;
  int tmp___28 ;
  {
  pipesummary[0] = 0L;
  tmp = 1U;
  while (1) {
    if (tmp >= 11U) {
      break;
    } else {
    }
    pipesummary[tmp] = 0L;
    tmp = tmp + 1U;
  }
  batchsummary[0] = 0L;
  tmp___0 = 1U;
  while (1) {
    if (tmp___0 >= 11U) {
      break;
    } else {
    }
    batchsummary[tmp___0] = 0L;
    tmp___0 = tmp___0 + 1U;
  }
  rtcv_snap = 0xffffffffffffffffUL;
  cpu = -1;
  goto ldv_23531;
  ldv_23530:
  i = 0;
  goto ldv_23528;
  ldv_23527:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& rcu_torture_count));
  pipesummary[i] = pipesummary[i] + (*((long (*)[11])(__per_cpu_offset[cpu] + __ptr)))[i];
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& rcu_torture_batch));
  batchsummary[i] = batchsummary[i] + (*((long (*)[11])(__per_cpu_offset[cpu] + __ptr___0)))[i];
  i = i + 1;
  ldv_23528: ;
  if (i <= 10) {
    goto ldv_23527;
  } else {
  }
  ldv_23531:
  tmp___1 = cpumask_next(cpu, cpu_possible_mask);
  cpu = (int )tmp___1;
  if (cpu < nr_cpu_ids) {
    goto ldv_23530;
  } else {
  }
  i = 9;
  goto ldv_23535;
  ldv_23534: ;
  if (pipesummary[i] != 0L) {
    goto ldv_23533;
  } else {
  }
  i = i - 1;
  ldv_23535: ;
  if (i >= 0) {
    goto ldv_23534;
  } else {
  }
  ldv_23533:
  tmp___2 = sprintf(page, "%s%s ", torture_type, (char *)"-torture:");
  page = page + (unsigned long )tmp___2;
  tmp___3 = atomic_read((atomic_t const *)(& n_rcu_torture_free));
  tmp___4 = atomic_read((atomic_t const *)(& n_rcu_torture_alloc_fail));
  tmp___5 = atomic_read((atomic_t const *)(& n_rcu_torture_alloc));
  tmp___6 = list_empty((struct list_head const *)(& rcu_torture_freelist));
  tmp___7 = sprintf(page, "rtc: %p ver: %lu tfle: %d rta: %d rtaf: %d rtf: %d ", rcu_torture_current,
                    rcu_torture_current_version, tmp___6, tmp___5, tmp___4, tmp___3);
  page = page + (unsigned long )tmp___7;
  tmp___8 = atomic_read((atomic_t const *)(& n_rcu_torture_mberror));
  tmp___9 = sprintf(page, "rtmbe: %d rtbke: %ld rtbre: %ld ", tmp___8, n_rcu_torture_boost_ktrerror,
                    n_rcu_torture_boost_rterror);
  page = page + (unsigned long )tmp___9;
  tmp___10 = sprintf(page, "rtbf: %ld rtb: %ld nt: %ld ", n_rcu_torture_boost_failure,
                     n_rcu_torture_boosts, n_rcu_torture_timers);
  page = page + (unsigned long )tmp___10;
  page = torture_onoff_stats(page);
  tmp___11 = sprintf(page, "barrier: %ld/%ld:%ld", n_barrier_successes, n_barrier_attempts,
                     n_rcu_torture_barrier_error);
  page = page + (unsigned long )tmp___11;
  tmp___12 = sprintf(page, "\n%s%s ", torture_type, (char *)"-torture:");
  page = page + (unsigned long )tmp___12;
  tmp___17 = atomic_read((atomic_t const *)(& n_rcu_torture_mberror));
  if (((((tmp___17 != 0 || n_rcu_torture_barrier_error != 0L) || n_rcu_torture_boost_ktrerror != 0L) || n_rcu_torture_boost_rterror != 0L) || n_rcu_torture_boost_failure != 0L) || i > 1) {
    tmp___13 = sprintf(page, "!!! ");
    page = page + (unsigned long )tmp___13;
    atomic_inc(& n_rcu_torture_error);
    __ret_warn_once = 1;
    tmp___16 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___16 != 0L) {
      __ret_warn_on = ! __warned;
      tmp___14 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___14 != 0L) {
        warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                           1133);
      } else {
      }
      tmp___15 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___15 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once != 0, 0L);
  } else {
  }
  tmp___18 = sprintf(page, "Reader Pipe: ");
  page = page + (unsigned long )tmp___18;
  i = 0;
  goto ldv_23542;
  ldv_23541:
  tmp___19 = sprintf(page, " %ld", pipesummary[i]);
  page = page + (unsigned long )tmp___19;
  i = i + 1;
  ldv_23542: ;
  if (i <= 10) {
    goto ldv_23541;
  } else {
  }
  tmp___20 = sprintf(page, "\n%s%s ", torture_type, (char *)"-torture:");
  page = page + (unsigned long )tmp___20;
  tmp___21 = sprintf(page, "Reader Batch: ");
  page = page + (unsigned long )tmp___21;
  i = 0;
  goto ldv_23545;
  ldv_23544:
  tmp___22 = sprintf(page, " %ld", batchsummary[i]);
  page = page + (unsigned long )tmp___22;
  i = i + 1;
  ldv_23545: ;
  if (i <= 10) {
    goto ldv_23544;
  } else {
  }
  tmp___23 = sprintf(page, "\n%s%s ", torture_type, (char *)"-torture:");
  page = page + (unsigned long )tmp___23;
  tmp___24 = sprintf(page, "Free-Block Circulation: ");
  page = page + (unsigned long )tmp___24;
  i = 0;
  goto ldv_23548;
  ldv_23547:
  tmp___25 = atomic_read((atomic_t const *)(& rcu_torture_wcount) + (unsigned long )i);
  tmp___26 = sprintf(page, " %d", tmp___25);
  page = page + (unsigned long )tmp___26;
  i = i + 1;
  ldv_23548: ;
  if (i <= 10) {
    goto ldv_23547;
  } else {
  }
  tmp___27 = sprintf(page, "\n");
  page = page + (unsigned long )tmp___27;
  if ((unsigned long )cur_ops->stats != (unsigned long )((void (*)(char * ))0)) {
    (*(cur_ops->stats))(page);
  } else {
  }
  if (rtcv_snap == rcu_torture_current_version && (unsigned long )rcu_torture_current != (unsigned long )((struct rcu_torture *)0)) {
    rcutorture_get_gp_data((enum rcutorture_type )cur_ops->ttype, & flags, & gpnum,
                           & completed);
    tmp___28 = sprintf(page, "??? Writer stall state %d g%lu c%lu f%#x\n", rcu_torture_writer_state,
                       gpnum, completed, flags);
    page = page + (unsigned long )tmp___28;
    show_rcu_gp_kthreads();
    rcutorture_trace_dump();
  } else {
  }
  rtcv_snap = rcu_torture_current_version;
  return;
}
}
static void rcu_torture_stats_print(void)
{
  int size ;
  char *buf ;
  void *tmp ;
  {
  size = nr_cpu_ids * 200 + 8192;
  tmp = kmalloc((size_t )size, 208U);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    printk("\vrcu-torture: Out of memory, need: %d", size);
    return;
  } else {
  }
  rcu_torture_printk(buf);
  printk("\t%s", buf);
  kfree((void const *)buf);
  return;
}
}
static int rcu_torture_stats(void *arg )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_stats task started");
  } else {
  }
  ldv_23561:
  schedule_timeout_interruptible((long )(stat_interval * 250));
  rcu_torture_stats_print();
  torture_shutdown_absorb("rcu_torture_stats");
  tmp = torture_must_stop();
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_23561;
  } else {
  }
  torture_kthread_stopping((char *)"rcu_torture_stats");
  return (0);
}
}
__inline static void rcu_torture_print_module_parms(struct rcu_torture_ops *cur_ops___0 ,
                                                    char const *tag )
{
  {
  printk("\t%s-torture:--- %s: nreaders=%d nfakewriters=%d stat_interval=%d verbose=%d test_no_idle_hz=%d shuffle_interval=%d stutter=%d irqreader=%d fqs_duration=%d fqs_holdoff=%d fqs_stutter=%d test_boost=%d/%d test_boost_interval=%d test_boost_duration=%d shutdown_secs=%d stall_cpu=%d stall_cpu_holdoff=%d n_barrier_cbs=%d onoff_interval=%d onoff_holdoff=%d\n",
         torture_type, tag, nrealreaders, nfakewriters, stat_interval, (int )verbose,
         (int )test_no_idle_hz, shuffle_interval, stutter, irqreader, fqs_duration,
         fqs_holdoff, fqs_stutter, test_boost, cur_ops___0->can_boost, test_boost_interval,
         test_boost_duration, shutdown_secs, stall_cpu, stall_cpu_holdoff, n_barrier_cbs,
         onoff_interval, onoff_holdoff);
  return;
}
}
static void rcutorture_booster_cleanup(int cpu )
{
  struct task_struct *t ;
  {
  if ((unsigned long )boost_tasks[cpu] == (unsigned long )((struct task_struct *)0)) {
    return;
  } else {
  }
  mutex_lock_nested(& boost_mutex, 0U);
  t = boost_tasks[cpu];
  boost_tasks[cpu] = (struct task_struct *)0;
  mutex_unlock(& boost_mutex);
  _torture_stop_kthread((char *)"Stopping rcu_torture_boost task", & t);
  return;
}
}
static int rcutorture_booster_init(int cpu )
{
  int retval ;
  int tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  if ((unsigned long )boost_tasks[cpu] != (unsigned long )((struct task_struct *)0)) {
    return (0);
  } else {
  }
  mutex_lock_nested(& boost_mutex, 0U);
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"Creating rcu_torture_boost task");
  } else {
  }
  tmp = __cpu_to_node(cpu);
  boost_tasks[cpu] = kthread_create_on_node(& rcu_torture_boost, (void *)0, tmp, "rcu_torture_boost");
  tmp___1 = IS_ERR((void const *)boost_tasks[cpu]);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)boost_tasks[cpu]);
    retval = (int )tmp___0;
    if ((int )verbose) {
      printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_boost task create failed");
    } else {
    }
    n_rcu_torture_boost_ktrerror = n_rcu_torture_boost_ktrerror + 1L;
    boost_tasks[cpu] = (struct task_struct *)0;
    mutex_unlock(& boost_mutex);
    return (retval);
  } else {
  }
  kthread_bind(boost_tasks[cpu], (unsigned int )cpu);
  wake_up_process(boost_tasks[cpu]);
  mutex_unlock(& boost_mutex);
  return (0);
}
}
static int rcu_torture_stall(void *args )
{
  unsigned long stop_at ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_stall task started");
  } else {
  }
  if (stall_cpu_holdoff > 0) {
    if ((int )verbose) {
      printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_stall begin holdoff");
    } else {
    }
    schedule_timeout_interruptible((long )(stall_cpu_holdoff * 250));
    if ((int )verbose) {
      printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_stall end holdoff");
    } else {
    }
  } else {
  }
  tmp___1 = kthread_should_stop();
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    tmp = get_seconds();
    stop_at = tmp + (unsigned long )stall_cpu;
    printk("\trcu_torture_stall start.\n");
    rcu_read_lock();
    __preempt_count_add(1);
    __asm__ volatile ("": : : "memory");
    goto ldv_23579;
    ldv_23580: ;
    goto ldv_23579;
    ldv_23579:
    tmp___0 = get_seconds();
    if ((long )(tmp___0 - stop_at) < 0L) {
      goto ldv_23580;
    } else {
    }
    __asm__ volatile ("": : : "memory");
    __preempt_count_sub(1);
    rcu_read_unlock();
    printk("\trcu_torture_stall end.\n");
  } else {
  }
  torture_shutdown_absorb("rcu_torture_stall");
  goto ldv_23583;
  ldv_23582:
  schedule_timeout_interruptible(2500L);
  ldv_23583:
  tmp___3 = kthread_should_stop();
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    goto ldv_23582;
  } else {
  }
  return (0);
}
}
static int rcu_torture_stall_init(void)
{
  int tmp ;
  {
  if (stall_cpu <= 0) {
    return (0);
  } else {
  }
  tmp = _torture_create_kthread(& rcu_torture_stall, (void *)0, (char *)"rcu_torture_stall",
                                (char *)"Creating rcu_torture_stall task", (char *)"Failed to create rcu_torture_stall",
                                & stall_task);
  return (tmp);
}
}
static void rcu_torture_barrier_cbf(struct callback_head *rcu )
{
  {
  atomic_inc(& barrier_cbs_invoked);
  return;
}
}
static int rcu_torture_barrier_cbs(void *arg )
{
  long myid ;
  bool lastphase ;
  bool newphase ;
  struct callback_head rcu ;
  struct task_struct *tmp ;
  bool tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  {
  myid = (long )arg;
  lastphase = 0;
  init_rcu_head_on_stack(& rcu);
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_barrier_cbs task started");
  } else {
  }
  tmp = get_current();
  set_user_nice(tmp, 19L);
  ldv_23607:
  newphase = *((bool volatile *)(& barrier_phase));
  if ((int )newphase != (int )lastphase) {
    goto ldv_23598;
  } else {
    tmp___0 = torture_must_stop();
    if ((int )tmp___0) {
      goto ldv_23598;
    } else {
    }
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_23604:
  tmp___1 = prepare_to_wait_event(barrier_cbs_wq + (unsigned long )myid, & __wait,
                                  2);
  __int = tmp___1;
  newphase = *((bool volatile *)(& barrier_phase));
  if ((int )newphase != (int )lastphase) {
    goto ldv_23603;
  } else {
    tmp___2 = torture_must_stop();
    if ((int )tmp___2) {
      goto ldv_23603;
    } else {
    }
  }
  schedule();
  goto ldv_23604;
  ldv_23603:
  finish_wait(barrier_cbs_wq + (unsigned long )myid, & __wait);
  ldv_23598:
  lastphase = newphase;
  __asm__ volatile ("mfence": : : "memory");
  tmp___3 = torture_must_stop();
  if ((int )tmp___3) {
    goto ldv_23606;
  } else {
  }
  (*(cur_ops->call))(& rcu, & rcu_torture_barrier_cbf);
  tmp___4 = atomic_dec_and_test(& barrier_cbs_count);
  if (tmp___4 != 0) {
    __wake_up(& barrier_wq, 3U, 1, (void *)0);
  } else {
  }
  tmp___5 = torture_must_stop();
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    goto ldv_23607;
  } else {
  }
  ldv_23606:
  (*(cur_ops->cb_barrier))();
  destroy_rcu_head_on_stack(& rcu);
  torture_kthread_stopping((char *)"rcu_torture_barrier_cbs");
  return (0);
}
}
static int rcu_torture_barrier(void *arg )
{
  int i ;
  int tmp ;
  bool tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  if ((int )verbose) {
    printk("\t%s-torture: %s\n", torture_type, (char *)"rcu_torture_barrier task starting");
  } else {
  }
  ldv_23629:
  atomic_set(& barrier_cbs_invoked, 0);
  atomic_set(& barrier_cbs_count, n_barrier_cbs);
  __asm__ volatile ("mfence": : : "memory");
  barrier_phase = (bool )(! ((int )barrier_phase != 0));
  i = 0;
  goto ldv_23613;
  ldv_23612:
  __wake_up(barrier_cbs_wq + (unsigned long )i, 3U, 1, (void *)0);
  i = i + 1;
  ldv_23613: ;
  if (i < n_barrier_cbs) {
    goto ldv_23612;
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& barrier_cbs_count));
  if (tmp == 0) {
    goto ldv_23615;
  } else {
    tmp___0 = torture_must_stop();
    if ((int )tmp___0) {
      goto ldv_23615;
    } else {
    }
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_23621:
  tmp___1 = prepare_to_wait_event(& barrier_wq, & __wait, 2);
  __int = tmp___1;
  tmp___2 = atomic_read((atomic_t const *)(& barrier_cbs_count));
  if (tmp___2 == 0) {
    goto ldv_23620;
  } else {
    tmp___3 = torture_must_stop();
    if ((int )tmp___3) {
      goto ldv_23620;
    } else {
    }
  }
  schedule();
  goto ldv_23621;
  ldv_23620:
  finish_wait(& barrier_wq, & __wait);
  ldv_23615:
  tmp___4 = torture_must_stop();
  if ((int )tmp___4) {
    goto ldv_23623;
  } else {
  }
  n_barrier_attempts = n_barrier_attempts + 1L;
  (*(cur_ops->cb_barrier))();
  tmp___8 = atomic_read((atomic_t const *)(& barrier_cbs_invoked));
  if (tmp___8 != n_barrier_cbs) {
    n_rcu_torture_barrier_error = n_rcu_torture_barrier_error + 1L;
    __ret_warn_once = 1;
    tmp___7 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___7 != 0L) {
      __ret_warn_on = ! __warned;
      tmp___5 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___5 != 0L) {
        warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--kernel--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11/dscv_tempdir/dscv/ri/43_2a/kernel/rcu/rcutorture.o.c.prepared",
                           1373);
      } else {
      }
      tmp___6 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___6 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once != 0, 0L);
  } else {
  }
  n_barrier_successes = n_barrier_successes + 1L;
  schedule_timeout_interruptible(25L);
  tmp___9 = torture_must_stop();
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    goto ldv_23629;
  } else {
  }
  ldv_23623:
  torture_kthread_stopping((char *)"rcu_torture_barrier");
  return (0);
}
}
static int rcu_torture_barrier_init(void)
{
  int i ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  {
  if (n_barrier_cbs == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )cur_ops->call == (unsigned long )((void (*)(struct callback_head * ,
                                                                  void (*)(struct callback_head * ) ))0) || (unsigned long )cur_ops->cb_barrier == (unsigned long )((void (*)(void))0)) {
    printk("\t%s-torture: Call or barrier ops missing for %s,\n", torture_type, cur_ops->name);
    printk("\t%s-torture: RCU barrier testing omitted from run.\n", torture_type);
    return (0);
  } else {
  }
  atomic_set(& barrier_cbs_count, 0);
  atomic_set(& barrier_cbs_invoked, 0);
  tmp = kzalloc((unsigned long )n_barrier_cbs * 8UL, 208U);
  barrier_cbs_tasks = (struct task_struct **)tmp;
  tmp___0 = kzalloc((unsigned long )n_barrier_cbs * 88UL, 208U);
  barrier_cbs_wq = (wait_queue_head_t *)tmp___0;
  if ((unsigned long )barrier_cbs_tasks == (unsigned long )((struct task_struct **)0) || (unsigned long )barrier_cbs_wq == (unsigned long )((wait_queue_head_t *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_23637;
  ldv_23636:
  __init_waitqueue_head(barrier_cbs_wq + (unsigned long )i, "&barrier_cbs_wq[i]",
                        & __key);
  ret = _torture_create_kthread(& rcu_torture_barrier_cbs, (void *)((long )i), (char *)"rcu_torture_barrier_cbs",
                                (char *)"Creating rcu_torture_barrier_cbs task", (char *)"Failed to create rcu_torture_barrier_cbs",
                                barrier_cbs_tasks + (unsigned long )i);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_23637: ;
  if (i < n_barrier_cbs) {
    goto ldv_23636;
  } else {
  }
  tmp___1 = _torture_create_kthread(& rcu_torture_barrier, (void *)0, (char *)"rcu_torture_barrier",
                                    (char *)"Creating rcu_torture_barrier task", (char *)"Failed to create rcu_torture_barrier",
                                    & barrier_task);
  return (tmp___1);
}
}
static void rcu_torture_barrier_cleanup(void)
{
  int i ;
  {
  _torture_stop_kthread((char *)"Stopping rcu_torture_barrier task", & barrier_task);
  if ((unsigned long )barrier_cbs_tasks != (unsigned long )((struct task_struct **)0)) {
    i = 0;
    goto ldv_23644;
    ldv_23643:
    _torture_stop_kthread((char *)"Stopping rcu_torture_barrier_cbs task", barrier_cbs_tasks + (unsigned long )i);
    i = i + 1;
    ldv_23644: ;
    if (i < n_barrier_cbs) {
      goto ldv_23643;
    } else {
    }
    kfree((void const *)barrier_cbs_tasks);
    barrier_cbs_tasks = (struct task_struct **)0;
  } else {
  }
  if ((unsigned long )barrier_cbs_wq != (unsigned long )((wait_queue_head_t *)0)) {
    kfree((void const *)barrier_cbs_wq);
    barrier_cbs_wq = (wait_queue_head_t *)0;
  } else {
  }
  return;
}
}
static int rcutorture_cpu_notify(struct notifier_block *self , unsigned long action ,
                                 void *hcpu )
{
  long cpu ;
  {
  cpu = (long )hcpu;
  switch (action) {
  case 2UL: ;
  case 6UL:
  rcutorture_booster_init((int )cpu);
  goto ldv_23654;
  case 5UL:
  rcutorture_booster_cleanup((int )cpu);
  goto ldv_23654;
  default: ;
  goto ldv_23654;
  }
  ldv_23654: ;
  return (1);
}
}
static struct notifier_block rcutorture_cpu_nb = {& rcutorture_cpu_notify, 0, 0};
static void rcu_torture_cleanup(void)
{
  int i ;
  bool tmp ;
  unsigned int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  rcutorture_record_test_transition();
  tmp = torture_cleanup();
  if ((int )tmp) {
    if ((unsigned long )cur_ops->cb_barrier != (unsigned long )((void (*)(void))0)) {
      (*(cur_ops->cb_barrier))();
    } else {
    }
    return;
  } else {
  }
  rcu_torture_barrier_cleanup();
  _torture_stop_kthread((char *)"Stopping rcu_torture_stall task", & stall_task);
  _torture_stop_kthread((char *)"Stopping rcu_torture_writer task", & writer_task);
  if ((unsigned long )reader_tasks != (unsigned long )((struct task_struct **)0)) {
    i = 0;
    goto ldv_23663;
    ldv_23662:
    _torture_stop_kthread((char *)"Stopping rcu_torture_reader task", reader_tasks + (unsigned long )i);
    i = i + 1;
    ldv_23663: ;
    if (i < nrealreaders) {
      goto ldv_23662;
    } else {
    }
    kfree((void const *)reader_tasks);
  } else {
  }
  rcu_torture_current = (struct rcu_torture *)0;
  if ((unsigned long )fakewriter_tasks != (unsigned long )((struct task_struct **)0)) {
    i = 0;
    goto ldv_23666;
    ldv_23665:
    _torture_stop_kthread((char *)"Stopping rcu_torture_fakewriter task", fakewriter_tasks + (unsigned long )i);
    i = i + 1;
    ldv_23666: ;
    if (i < nfakewriters) {
      goto ldv_23665;
    } else {
    }
    kfree((void const *)fakewriter_tasks);
    fakewriter_tasks = (struct task_struct **)0;
  } else {
  }
  _torture_stop_kthread((char *)"Stopping rcu_torture_stats task", & stats_task);
  _torture_stop_kthread((char *)"Stopping rcu_torture_fqs task", & fqs_task);
  if ((test_boost == 1 && cur_ops->can_boost != 0) || test_boost == 2) {
    unregister_cpu_notifier(& rcutorture_cpu_nb);
    i = -1;
    goto ldv_23669;
    ldv_23668:
    rcutorture_booster_cleanup(i);
    ldv_23669:
    tmp___0 = cpumask_next(i, cpu_possible_mask);
    i = (int )tmp___0;
    if (i < nr_cpu_ids) {
      goto ldv_23668;
    } else {
    }
  } else {
  }
  if ((unsigned long )cur_ops->cb_barrier != (unsigned long )((void (*)(void))0)) {
    (*(cur_ops->cb_barrier))();
  } else {
  }
  rcu_torture_stats_print();
  tmp___2 = atomic_read((atomic_t const *)(& n_rcu_torture_error));
  if (tmp___2 != 0 || n_rcu_torture_barrier_error != 0L) {
    rcu_torture_print_module_parms(cur_ops, "End of test: FAILURE");
  } else {
    tmp___1 = torture_onoff_failures();
    if ((int )tmp___1) {
      rcu_torture_print_module_parms(cur_ops, "End of test: RCU_HOTPLUG");
    } else {
      rcu_torture_print_module_parms(cur_ops, "End of test: SUCCESS");
    }
  }
  return;
}
}
static void rcu_torture_leak_cb(struct callback_head *rhp )
{
  {
  return;
}
}
static void rcu_torture_err_cb(struct callback_head *rhp )
{
  {
  printk("\trcutorture: duplicated callback was invoked.\n");
  return;
}
}
static void rcu_test_debug_objects(void)
{
  struct callback_head rh1 ;
  struct callback_head rh2 ;
  {
  init_rcu_head_on_stack(& rh1);
  init_rcu_head_on_stack(& rh2);
  printk("\trcutorture: WARN: Duplicate call_rcu() test starting.\n");
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  rcu_read_lock();
  call_rcu_sched(& rh1, & rcu_torture_leak_cb);
  arch_local_irq_disable();
  trace_hardirqs_off();
  call_rcu_sched(& rh2, & rcu_torture_leak_cb);
  call_rcu_sched(& rh2, & rcu_torture_err_cb);
  trace_hardirqs_on();
  arch_local_irq_enable();
  rcu_read_unlock();
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  rcu_barrier();
  printk("\trcutorture: WARN: Duplicate call_rcu() test complete.\n");
  destroy_rcu_head_on_stack(& rh1);
  destroy_rcu_head_on_stack(& rh2);
  return;
}
}
static int rcu_torture_init(void)
{
  int i ;
  int cpu ;
  int firsterr ;
  struct rcu_torture_ops *torture_ops[5U] ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  unsigned int tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  {
  firsterr = 0;
  torture_ops[0] = & rcu_ops;
  torture_ops[1] = & rcu_bh_ops;
  torture_ops[2] = & rcu_busted_ops;
  torture_ops[3] = & srcu_ops;
  torture_ops[4] = & sched_ops;
  tmp = torture_init_begin(torture_type, (int )verbose, & rcutorture_runnable);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_23693;
  ldv_23692:
  cur_ops = torture_ops[i];
  tmp___1 = strcmp((char const *)torture_type, cur_ops->name);
  if (tmp___1 == 0) {
    goto ldv_23691;
  } else {
  }
  i = i + 1;
  ldv_23693: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_23692;
  } else {
  }
  ldv_23691: ;
  if (i == 5) {
    printk("\trcu-torture: invalid torture type: \"%s\"\n", torture_type);
    printk("\trcu-torture types:");
    i = 0;
    goto ldv_23699;
    ldv_23698:
    printk("\t %s", (torture_ops[i])->name);
    i = i + 1;
    ldv_23699: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_23698;
    } else {
    }
    printk("\t\n");
    torture_init_end();
    return (-22);
  } else {
  }
  if ((unsigned long )cur_ops->fqs == (unsigned long )((void (*)(void))0) && fqs_duration != 0) {
    printk("\trcu-torture: ->fqs NULL and non-zero fqs_duration, fqs disabled.\n");
    fqs_duration = 0;
  } else {
  }
  if ((unsigned long )cur_ops->init != (unsigned long )((void (*)(void))0)) {
    (*(cur_ops->init))();
  } else {
  }
  if (nreaders >= 0) {
    nrealreaders = nreaders;
  } else {
    tmp___2 = cpumask_weight(cpu_online_mask);
    nrealreaders = (int )(tmp___2 - 1U);
    if (nrealreaders <= 0) {
      nrealreaders = 1;
    } else {
    }
  }
  rcu_torture_print_module_parms(cur_ops, "Start of test");
  INIT_LIST_HEAD(& rcu_torture_freelist);
  i = 0;
  goto ldv_23704;
  ldv_23703:
  rcu_tortures[i].rtort_mbtest = 0;
  list_add_tail(& rcu_tortures[i].rtort_free, & rcu_torture_freelist);
  i = i + 1;
  ldv_23704: ;
  if ((unsigned int )i <= 99U) {
    goto ldv_23703;
  } else {
  }
  rcu_torture_current = (struct rcu_torture *)0;
  rcu_torture_current_version = 0UL;
  atomic_set(& n_rcu_torture_alloc, 0);
  atomic_set(& n_rcu_torture_alloc_fail, 0);
  atomic_set(& n_rcu_torture_free, 0);
  atomic_set(& n_rcu_torture_mberror, 0);
  atomic_set(& n_rcu_torture_error, 0);
  n_rcu_torture_barrier_error = 0L;
  n_rcu_torture_boost_ktrerror = 0L;
  n_rcu_torture_boost_rterror = 0L;
  n_rcu_torture_boost_failure = 0L;
  n_rcu_torture_boosts = 0L;
  i = 0;
  goto ldv_23707;
  ldv_23706:
  atomic_set((atomic_t *)(& rcu_torture_wcount) + (unsigned long )i, 0);
  i = i + 1;
  ldv_23707: ;
  if (i <= 10) {
    goto ldv_23706;
  } else {
  }
  cpu = -1;
  goto ldv_23721;
  ldv_23720:
  i = 0;
  goto ldv_23718;
  ldv_23717:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& rcu_torture_count));
  (*((long (*)[11])(__per_cpu_offset[cpu] + __ptr)))[i] = 0L;
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& rcu_torture_batch));
  (*((long (*)[11])(__per_cpu_offset[cpu] + __ptr___0)))[i] = 0L;
  i = i + 1;
  ldv_23718: ;
  if (i <= 10) {
    goto ldv_23717;
  } else {
  }
  ldv_23721:
  tmp___3 = cpumask_next(cpu, cpu_possible_mask);
  cpu = (int )tmp___3;
  if (cpu < nr_cpu_ids) {
    goto ldv_23720;
  } else {
  }
  firsterr = _torture_create_kthread(& rcu_torture_writer, (void *)0, (char *)"rcu_torture_writer",
                                     (char *)"Creating rcu_torture_writer task", (char *)"Failed to create rcu_torture_writer",
                                     & writer_task);
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  tmp___4 = kzalloc((unsigned long )nfakewriters * 8UL, 208U);
  fakewriter_tasks = (struct task_struct **)tmp___4;
  if ((unsigned long )fakewriter_tasks == (unsigned long )((struct task_struct **)0)) {
    if ((int )verbose) {
      printk("\t%s-torture:!!! %s\n", torture_type, (char *)"out of memory");
    } else {
    }
    firsterr = -12;
    goto unwind;
  } else {
  }
  i = 0;
  goto ldv_23725;
  ldv_23724:
  firsterr = _torture_create_kthread(& rcu_torture_fakewriter, (void *)0, (char *)"rcu_torture_fakewriter",
                                     (char *)"Creating rcu_torture_fakewriter task",
                                     (char *)"Failed to create rcu_torture_fakewriter",
                                     fakewriter_tasks + (unsigned long )i);
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  i = i + 1;
  ldv_23725: ;
  if (i < nfakewriters) {
    goto ldv_23724;
  } else {
  }
  tmp___5 = kzalloc((unsigned long )nrealreaders * 8UL, 208U);
  reader_tasks = (struct task_struct **)tmp___5;
  if ((unsigned long )reader_tasks == (unsigned long )((struct task_struct **)0)) {
    if ((int )verbose) {
      printk("\t%s-torture:!!! %s\n", torture_type, (char *)"out of memory");
    } else {
    }
    firsterr = -12;
    goto unwind;
  } else {
  }
  i = 0;
  goto ldv_23728;
  ldv_23727:
  firsterr = _torture_create_kthread(& rcu_torture_reader, (void *)0, (char *)"rcu_torture_reader",
                                     (char *)"Creating rcu_torture_reader task", (char *)"Failed to create rcu_torture_reader",
                                     reader_tasks + (unsigned long )i);
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  i = i + 1;
  ldv_23728: ;
  if (i < nrealreaders) {
    goto ldv_23727;
  } else {
  }
  if (stat_interval > 0) {
    firsterr = _torture_create_kthread(& rcu_torture_stats, (void *)0, (char *)"rcu_torture_stats",
                                       (char *)"Creating rcu_torture_stats task",
                                       (char *)"Failed to create rcu_torture_stats",
                                       & stats_task);
    if (firsterr != 0) {
      goto unwind;
    } else {
    }
  } else {
  }
  if ((int )test_no_idle_hz) {
    firsterr = torture_shuffle_init((long )(shuffle_interval * 250));
    if (firsterr != 0) {
      goto unwind;
    } else {
    }
  } else {
  }
  if (stutter < 0) {
    stutter = 0;
  } else {
  }
  if (stutter != 0) {
    firsterr = torture_stutter_init(stutter * 250);
    if (firsterr != 0) {
      goto unwind;
    } else {
    }
  } else {
  }
  if (fqs_duration < 0) {
    fqs_duration = 0;
  } else {
  }
  if (fqs_duration != 0) {
    firsterr = _torture_create_kthread(& rcu_torture_fqs, (void *)0, (char *)"rcu_torture_fqs",
                                       (char *)"Creating rcu_torture_fqs task", (char *)"Failed to create rcu_torture_fqs",
                                       & fqs_task);
    if (firsterr != 0) {
      goto unwind;
    } else {
    }
  } else {
  }
  if (test_boost_interval <= 0) {
    test_boost_interval = 1;
  } else {
  }
  if (test_boost_duration <= 1) {
    test_boost_duration = 2;
  } else {
  }
  if ((test_boost == 1 && cur_ops->can_boost != 0) || test_boost == 2) {
    boost_starttime = (unsigned long )(test_boost_interval * 250) + (unsigned long )jiffies;
    register_cpu_notifier(& rcutorture_cpu_nb);
    i = -1;
    goto ldv_23730;
    ldv_23731:
    tmp___6 = cpumask_check((unsigned int )i);
    tmp___7 = variable_test_bit((long )tmp___6, (unsigned long const volatile *)(& cpu_online_mask->bits));
    tmp___8 = ldv__builtin_expect(tmp___7 == 0, 0L);
    if (tmp___8 != 0L) {
      goto ldv_23730;
    } else {
    }
    firsterr = rcutorture_booster_init(i);
    if (firsterr != 0) {
      goto unwind;
    } else {
    }
    ldv_23730:
    tmp___9 = cpumask_next(i, cpu_possible_mask);
    i = (int )tmp___9;
    if (i < nr_cpu_ids) {
      goto ldv_23731;
    } else {
    }
  } else {
  }
  firsterr = torture_shutdown_init(shutdown_secs, & rcu_torture_cleanup);
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  firsterr = torture_onoff_init((long )(onoff_holdoff * 250), (long )(onoff_interval * 250));
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  firsterr = rcu_torture_stall_init();
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  firsterr = rcu_torture_barrier_init();
  if (firsterr != 0) {
    goto unwind;
  } else {
  }
  if (object_debug != 0) {
    rcu_test_debug_objects();
  } else {
  }
  rcutorture_record_test_transition();
  torture_init_end();
  return (0);
  unwind:
  torture_init_end();
  rcu_torture_cleanup();
  return (firsterr);
}
}
void (*ldvarg3)(struct callback_head * ) ;
extern int ldv_setup_7(void) ;
void (*ldvarg8)(struct callback_head * ) ;
extern int ldv_release_8(void) ;
int ldv_retval_0 ;
void (*ldvarg13)(struct callback_head * ) ;
extern void ldv_initialize(void) ;
extern int ldv_release_4(void) ;
extern int ldv_release_6(void) ;
extern int ldv_setup_3(void) ;
extern int ldv_setup_4(void) ;
extern int ldv_setup_6(void) ;
extern void ldv_check_final_state(void) ;
void (*ldvarg22)(struct callback_head * ) ;
extern int ldv_release_3(void) ;
void (*ldvarg28)(struct callback_head * ) ;
extern int ldv_release_7(void) ;
extern int ldv_setup_8(void) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_23796;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_23796;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_23796;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_23796;
  default:
  ldv_stop();
  }
  ldv_23796: ;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& rcu_torture_timer)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  rcu_torture_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int main(void)
{
  struct rcu_torture *ldvarg1 ;
  void *tmp ;
  int ldvarg4 ;
  int tmp___0 ;
  struct torture_random_state *ldvarg0 ;
  void *tmp___1 ;
  struct callback_head *ldvarg2 ;
  void *tmp___2 ;
  struct callback_head *ldvarg7 ;
  void *tmp___3 ;
  int ldvarg9 ;
  int tmp___4 ;
  struct torture_random_state *ldvarg5 ;
  void *tmp___5 ;
  struct rcu_torture *ldvarg6 ;
  void *tmp___6 ;
  struct rcu_torture *ldvarg11 ;
  void *tmp___7 ;
  int ldvarg14 ;
  int tmp___8 ;
  struct torture_random_state *ldvarg10 ;
  void *tmp___9 ;
  struct callback_head *ldvarg12 ;
  void *tmp___10 ;
  unsigned long ldvarg17 ;
  unsigned long tmp___11 ;
  void *ldvarg16 ;
  void *tmp___12 ;
  struct notifier_block *ldvarg15 ;
  void *tmp___13 ;
  struct callback_head *ldvarg21 ;
  void *tmp___14 ;
  struct torture_random_state *ldvarg18 ;
  void *tmp___15 ;
  unsigned long ldvarg20 ;
  unsigned long tmp___16 ;
  int ldvarg23 ;
  int tmp___17 ;
  struct rcu_torture *ldvarg19 ;
  void *tmp___18 ;
  struct torture_random_state *ldvarg24 ;
  void *tmp___19 ;
  struct callback_head *ldvarg27 ;
  void *tmp___20 ;
  struct rcu_torture *ldvarg26 ;
  void *tmp___21 ;
  char *ldvarg25 ;
  void *tmp___22 ;
  int ldvarg29 ;
  int tmp___23 ;
  struct work_struct *ldvarg31 ;
  void *tmp___24 ;
  unsigned long ldvarg30 ;
  unsigned long tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg1 = (struct rcu_torture *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg4 = tmp___0;
  tmp___1 = ldv_zalloc(16UL);
  ldvarg0 = (struct torture_random_state *)tmp___1;
  tmp___2 = ldv_zalloc(16UL);
  ldvarg2 = (struct callback_head *)tmp___2;
  tmp___3 = ldv_zalloc(16UL);
  ldvarg7 = (struct callback_head *)tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg9 = tmp___4;
  tmp___5 = ldv_zalloc(16UL);
  ldvarg5 = (struct torture_random_state *)tmp___5;
  tmp___6 = ldv_zalloc(48UL);
  ldvarg6 = (struct rcu_torture *)tmp___6;
  tmp___7 = ldv_zalloc(48UL);
  ldvarg11 = (struct rcu_torture *)tmp___7;
  tmp___8 = __VERIFIER_nondet_int();
  ldvarg14 = tmp___8;
  tmp___9 = ldv_zalloc(16UL);
  ldvarg10 = (struct torture_random_state *)tmp___9;
  tmp___10 = ldv_zalloc(16UL);
  ldvarg12 = (struct callback_head *)tmp___10;
  tmp___11 = __VERIFIER_nondet_ulong();
  ldvarg17 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg16 = tmp___12;
  tmp___13 = ldv_zalloc(24UL);
  ldvarg15 = (struct notifier_block *)tmp___13;
  tmp___14 = ldv_zalloc(16UL);
  ldvarg21 = (struct callback_head *)tmp___14;
  tmp___15 = ldv_zalloc(16UL);
  ldvarg18 = (struct torture_random_state *)tmp___15;
  tmp___16 = __VERIFIER_nondet_ulong();
  ldvarg20 = tmp___16;
  tmp___17 = __VERIFIER_nondet_int();
  ldvarg23 = tmp___17;
  tmp___18 = ldv_zalloc(48UL);
  ldvarg19 = (struct rcu_torture *)tmp___18;
  tmp___19 = ldv_zalloc(16UL);
  ldvarg24 = (struct torture_random_state *)tmp___19;
  tmp___20 = ldv_zalloc(16UL);
  ldvarg27 = (struct callback_head *)tmp___20;
  tmp___21 = ldv_zalloc(48UL);
  ldvarg26 = (struct rcu_torture *)tmp___21;
  tmp___22 = ldv_zalloc(1UL);
  ldvarg25 = (char *)tmp___22;
  tmp___23 = __VERIFIER_nondet_int();
  ldvarg29 = tmp___23;
  tmp___24 = ldv_zalloc(80UL);
  ldvarg31 = (struct work_struct *)tmp___24;
  tmp___25 = __VERIFIER_nondet_ulong();
  ldvarg30 = tmp___25;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_8 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_23958:
  tmp___26 = __VERIFIER_nondet_int();
  switch (tmp___26) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___27 = __VERIFIER_nondet_int();
    switch (tmp___27) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      rcu_no_completed();
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rcu_no_completed();
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rcu_no_completed();
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 1: ;
    if (ldv_state_variable_6 == 3) {
      rcu_torture_read_unlock(ldvarg4);
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_23862;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      call_rcu_busted(ldvarg2, ldvarg3);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      call_rcu_busted(ldvarg2, ldvarg3);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      call_rcu_busted(ldvarg2, ldvarg3);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      synchronize_rcu_busted();
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      synchronize_rcu_busted();
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      synchronize_rcu_busted();
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 4: ;
    if (ldv_state_variable_6 == 2) {
      rcu_sync_torture_init();
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_23862;
    case 5: ;
    if (ldv_state_variable_6 == 1) {
      rcu_busted_torture_deferred_free(ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rcu_busted_torture_deferred_free(ldvarg1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rcu_busted_torture_deferred_free(ldvarg1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 6: ;
    if (ldv_state_variable_6 == 1) {
      synchronize_rcu_busted();
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      synchronize_rcu_busted();
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      synchronize_rcu_busted();
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 7: ;
    if (ldv_state_variable_6 == 1) {
      rcu_torture_read_lock();
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rcu_torture_read_lock();
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rcu_torture_read_lock();
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 8: ;
    if (ldv_state_variable_6 == 1) {
      rcu_read_delay(ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rcu_read_delay(ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rcu_read_delay(ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_23862;
    case 9: ;
    if (ldv_state_variable_6 == 1) {
      ldv_setup_6();
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_23862;
    case 10: ;
    if (ldv_state_variable_6 == 3) {
      ldv_release_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      ldv_release_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_23862;
    default:
    ldv_stop();
    }
    ldv_23862: ;
  } else {
  }
  goto ldv_23874;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    tmp___28 = __VERIFIER_nondet_int();
    switch (tmp___28) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      rcu_no_completed();
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rcu_no_completed();
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rcu_no_completed();
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 1: ;
    if (ldv_state_variable_3 == 3) {
      sched_torture_read_unlock(ldvarg9);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_23877;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      call_rcu_sched(ldvarg7, ldvarg8);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      call_rcu_sched(ldvarg7, ldvarg8);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      call_rcu_sched(ldvarg7, ldvarg8);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      rcu_sched_force_quiescent_state();
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rcu_sched_force_quiescent_state();
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rcu_sched_force_quiescent_state();
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 4: ;
    if (ldv_state_variable_3 == 1) {
      synchronize_sched_expedited();
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      synchronize_sched_expedited();
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      synchronize_sched_expedited();
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 5: ;
    if (ldv_state_variable_3 == 2) {
      rcu_sync_torture_init();
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_23877;
    case 6: ;
    if (ldv_state_variable_3 == 1) {
      rcu_barrier_sched();
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rcu_barrier_sched();
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rcu_barrier_sched();
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 7: ;
    if (ldv_state_variable_3 == 1) {
      rcu_sched_torture_deferred_free(ldvarg6);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rcu_sched_torture_deferred_free(ldvarg6);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rcu_sched_torture_deferred_free(ldvarg6);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 8: ;
    if (ldv_state_variable_3 == 1) {
      synchronize_sched();
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      synchronize_sched();
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      synchronize_sched();
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 9: ;
    if (ldv_state_variable_3 == 1) {
      sched_torture_read_lock();
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      sched_torture_read_lock();
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      sched_torture_read_lock();
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 10: ;
    if (ldv_state_variable_3 == 1) {
      rcu_read_delay(ldvarg5);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      rcu_read_delay(ldvarg5);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      rcu_read_delay(ldvarg5);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_23877;
    case 11: ;
    if (ldv_state_variable_3 == 1) {
      ldv_setup_3();
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_23877;
    case 12: ;
    if (ldv_state_variable_3 == 3) {
      ldv_release_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      ldv_release_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_23877;
    default:
    ldv_stop();
    }
    ldv_23877: ;
  } else {
  }
  goto ldv_23874;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___29 = __VERIFIER_nondet_int();
    switch (tmp___29) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      rcu_bh_torture_completed();
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rcu_bh_torture_completed();
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rcu_bh_torture_completed();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 1: ;
    if (ldv_state_variable_7 == 3) {
      rcu_bh_torture_read_unlock(ldvarg14);
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_23893;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      call_rcu_bh(ldvarg12, ldvarg13);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      call_rcu_bh(ldvarg12, ldvarg13);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      call_rcu_bh(ldvarg12, ldvarg13);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      rcu_bh_force_quiescent_state();
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rcu_bh_force_quiescent_state();
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rcu_bh_force_quiescent_state();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      synchronize_rcu_bh_expedited();
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      synchronize_rcu_bh_expedited();
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      synchronize_rcu_bh_expedited();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 5: ;
    if (ldv_state_variable_7 == 2) {
      rcu_sync_torture_init();
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_23893;
    case 6: ;
    if (ldv_state_variable_7 == 1) {
      rcu_barrier_bh();
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rcu_barrier_bh();
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rcu_barrier_bh();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 7: ;
    if (ldv_state_variable_7 == 1) {
      rcu_bh_torture_deferred_free(ldvarg11);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rcu_bh_torture_deferred_free(ldvarg11);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rcu_bh_torture_deferred_free(ldvarg11);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 8: ;
    if (ldv_state_variable_7 == 1) {
      synchronize_rcu_bh();
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      synchronize_rcu_bh();
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      synchronize_rcu_bh();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 9: ;
    if (ldv_state_variable_7 == 1) {
      rcu_bh_torture_read_lock();
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rcu_bh_torture_read_lock();
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rcu_bh_torture_read_lock();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 10: ;
    if (ldv_state_variable_7 == 1) {
      rcu_read_delay(ldvarg10);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rcu_read_delay(ldvarg10);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rcu_read_delay(ldvarg10);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_23893;
    case 11: ;
    if (ldv_state_variable_7 == 1) {
      ldv_setup_7();
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_23893;
    case 12: ;
    if (ldv_state_variable_7 == 3) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_23893;
    default:
    ldv_stop();
    }
    ldv_23893: ;
  } else {
  }
  goto ldv_23874;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___30 = __VERIFIER_nondet_int();
    switch (tmp___30) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      rcutorture_cpu_notify(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_23909;
    default:
    ldv_stop();
    }
    ldv_23909: ;
  } else {
  }
  goto ldv_23874;
  case 4: ;
  if (ldv_state_variable_8 != 0) {
    tmp___31 = __VERIFIER_nondet_int();
    switch (tmp___31) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      rcu_torture_completed();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rcu_torture_completed();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rcu_torture_completed();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      get_state_synchronize_rcu();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      get_state_synchronize_rcu();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      get_state_synchronize_rcu();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 2: ;
    if (ldv_state_variable_8 == 3) {
      rcu_torture_read_unlock(ldvarg23);
      ldv_state_variable_8 = 3;
    } else {
    }
    goto ldv_23913;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      call_rcu_sched(ldvarg21, ldvarg22);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      call_rcu_sched(ldvarg21, ldvarg22);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      call_rcu_sched(ldvarg21, ldvarg22);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 4: ;
    if (ldv_state_variable_8 == 1) {
      rcu_force_quiescent_state();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rcu_force_quiescent_state();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rcu_force_quiescent_state();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 5: ;
    if (ldv_state_variable_8 == 1) {
      cond_synchronize_rcu(ldvarg20);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      cond_synchronize_rcu(ldvarg20);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      cond_synchronize_rcu(ldvarg20);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 6: ;
    if (ldv_state_variable_8 == 1) {
      synchronize_rcu_expedited();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      synchronize_rcu_expedited();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      synchronize_rcu_expedited();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 7: ;
    if (ldv_state_variable_8 == 2) {
      rcu_sync_torture_init();
      ldv_state_variable_8 = 3;
    } else {
    }
    goto ldv_23913;
    case 8: ;
    if (ldv_state_variable_8 == 1) {
      rcu_barrier();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rcu_barrier();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rcu_barrier();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 9: ;
    if (ldv_state_variable_8 == 1) {
      rcu_torture_deferred_free(ldvarg19);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rcu_torture_deferred_free(ldvarg19);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rcu_torture_deferred_free(ldvarg19);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 10: ;
    if (ldv_state_variable_8 == 1) {
      synchronize_rcu();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      synchronize_rcu();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      synchronize_rcu();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 11: ;
    if (ldv_state_variable_8 == 1) {
      rcu_torture_read_lock();
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rcu_torture_read_lock();
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rcu_torture_read_lock();
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 12: ;
    if (ldv_state_variable_8 == 1) {
      rcu_read_delay(ldvarg18);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rcu_read_delay(ldvarg18);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rcu_read_delay(ldvarg18);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_23913;
    case 13: ;
    if (ldv_state_variable_8 == 1) {
      ldv_setup_8();
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_23913;
    case 14: ;
    if (ldv_state_variable_8 == 3) {
      ldv_release_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      ldv_release_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_23913;
    default:
    ldv_stop();
    }
    ldv_23913: ;
  } else {
  }
  goto ldv_23874;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_23874;
  case 6: ;
  if (ldv_state_variable_4 != 0) {
    tmp___32 = __VERIFIER_nondet_int();
    switch (tmp___32) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_completed();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_completed();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_completed();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 1: ;
    if (ldv_state_variable_4 == 3) {
      srcu_torture_read_unlock(ldvarg29);
      ldv_state_variable_4 = 3;
    } else {
    }
    goto ldv_23932;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_call(ldvarg27, ldvarg28);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_call(ldvarg27, ldvarg28);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_call(ldvarg27, ldvarg28);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_synchronize_expedited();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_synchronize_expedited();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_synchronize_expedited();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 4: ;
    if (ldv_state_variable_4 == 2) {
      rcu_sync_torture_init();
      ldv_state_variable_4 = 3;
    } else {
    }
    goto ldv_23932;
    case 5: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_barrier();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_barrier();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_barrier();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 6: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_deferred_free(ldvarg26);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_deferred_free(ldvarg26);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_deferred_free(ldvarg26);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 7: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_stats(ldvarg25);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_stats(ldvarg25);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_stats(ldvarg25);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 8: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_synchronize();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_synchronize();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_synchronize();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 9: ;
    if (ldv_state_variable_4 == 1) {
      srcu_torture_read_lock();
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_torture_read_lock();
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_torture_read_lock();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 10: ;
    if (ldv_state_variable_4 == 1) {
      srcu_read_delay(ldvarg24);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      srcu_read_delay(ldvarg24);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      srcu_read_delay(ldvarg24);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_23932;
    case 11: ;
    if (ldv_state_variable_4 == 1) {
      ldv_setup_4();
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_23932;
    case 12: ;
    if (ldv_state_variable_4 == 3) {
      ldv_release_4();
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      ldv_release_4();
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_23932;
    default:
    ldv_stop();
    }
    ldv_23932: ;
  } else {
  }
  goto ldv_23874;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___33 = __VERIFIER_nondet_int();
    switch (tmp___33) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      rcu_torture_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_23949;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = rcu_torture_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_2 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_6 = 1;
        ldv_state_variable_8 = 1;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_23949;
    default:
    ldv_stop();
    }
    ldv_23949: ;
  } else {
  }
  goto ldv_23874;
  case 8: ;
  if (ldv_state_variable_5 != 0) {
    tmp___34 = __VERIFIER_nondet_int();
    switch (tmp___34) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      process_srcu(ldvarg31);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_23954;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      delayed_work_timer_fn(ldvarg30);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_23954;
    default:
    ldv_stop();
    }
    ldv_23954: ;
  } else {
  }
  goto ldv_23874;
  default:
  ldv_stop();
  }
  ldv_23874: ;
  goto ldv_23958;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_bh_2(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_bh_6(lock);
  return;
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
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
int ldv_mod_timer_19(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_20(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
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
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __compiletime_assert_852() {
  return;
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __cpu_to_node(int arg0) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __srcu_read_lock(struct srcu_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void __srcu_read_unlock(struct srcu_struct *arg0, int arg1) {
  return;
}
void __udelay(unsigned long arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _torture_create_kthread(int (*arg0)(void *), void *arg1, char *arg2, char *arg3, char *arg4, struct task_struct **arg5) {
  return __VERIFIER_nondet_int();
}
void _torture_stop_kthread(char *arg0, struct task_struct **arg1) {
  return;
}
void call_rcu_bh(struct callback_head *arg0, void (*arg1)(struct callback_head *)) {
  return;
}
void call_rcu_sched(struct callback_head *arg0, void (*arg1)(struct callback_head *)) {
  return;
}
void call_srcu(struct srcu_struct *arg0, struct callback_head *arg1, void (*arg2)(struct callback_head *)) {
  return;
}
void cond_synchronize_rcu(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void delayed_work_timer_fn(unsigned long arg0) {
  return;
}
void destroy_rcu_head_on_stack(struct callback_head *arg0) {
  return;
}
void destroy_timer_on_stack(struct timer_list *arg0) {
  return;
}
void do_trace_rcu_torture_read(const char *arg0, struct callback_head *arg1, unsigned long arg2, unsigned long arg3, unsigned long arg4) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void ftrace_dump(enum ftrace_dump_mode arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_seconds() {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_state_synchronize_rcu() {
  return __VERIFIER_nondet_ulong();
}
void init_rcu_head_on_stack(struct callback_head *arg0) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void kthread_bind(struct task_struct *arg0, unsigned int arg1) {
  return;
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_8() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
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
void process_srcu(struct work_struct *arg0) {
  return;
}
void rcu_barrier() {
  return;
}
void rcu_barrier_bh() {
  return;
}
void rcu_barrier_sched() {
  return;
}
long __VERIFIER_nondet_long(void);
long int rcu_batches_completed() {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int rcu_batches_completed_bh() {
  return __VERIFIER_nondet_long();
}
void rcu_bh_force_quiescent_state() {
  return;
}
void rcu_force_quiescent_state() {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rcu_read_lock_bh_held() {
  return __VERIFIER_nondet_int();
}
void rcu_sched_force_quiescent_state() {
  return;
}
void rcutorture_get_gp_data(enum rcutorture_type arg0, int *arg1, unsigned long *arg2, unsigned long *arg3) {
  return;
}
void rcutorture_record_progress(unsigned long arg0) {
  return;
}
void rcutorture_record_test_transition() {
  return;
}
int __VERIFIER_nondet_int(void);
int register_cpu_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sched_setscheduler(struct task_struct *arg0, int arg1, const struct sched_param *arg2) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
void set_user_nice(struct task_struct *arg0, long arg1) {
  return;
}
void show_rcu_gp_kthreads() {
  return;
}
void srcu_barrier(struct srcu_struct *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int srcu_batches_completed(struct srcu_struct *arg0) {
  return __VERIFIER_nondet_long();
}
void stutter_wait(const char *arg0) {
  return;
}
void synchronize_rcu_bh() {
  return;
}
void synchronize_rcu_expedited() {
  return;
}
void synchronize_sched() {
  return;
}
void synchronize_sched_expedited() {
  return;
}
void synchronize_srcu(struct srcu_struct *arg0) {
  return;
}
void synchronize_srcu_expedited(struct srcu_struct *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool torture_cleanup() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool torture_init_begin(char *arg0, bool arg1, int *arg2) {
  return __VERIFIER_nondet_bool();
}
void torture_init_end() {
  return;
}
void torture_kthread_stopping(char *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool torture_must_stop() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool torture_must_stop_irq() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool torture_onoff_failures() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int torture_onoff_init(long arg0, long arg1) {
  return __VERIFIER_nondet_int();
}
char *torture_onoff_stats(char *arg0) {
  return ldv_malloc(sizeof(char));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int torture_random(struct torture_random_state *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int torture_shuffle_init(long arg0) {
  return __VERIFIER_nondet_int();
}
void torture_shutdown_absorb(const char *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int torture_shutdown_init(int arg0, void (*arg1)()) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int torture_stutter_init(int arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 trace_clock_local() {
  return __VERIFIER_nondet_ulong();
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
void unregister_cpu_notifier(struct notifier_block *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
