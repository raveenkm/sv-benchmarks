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
typedef unsigned long long __u64;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
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
struct llist_head {
   struct llist_node *first ;
};
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
struct nsproxy;
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
struct tty_struct;
struct tty_port;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_16464_160 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_16465_159 {
   struct __anonstruct_ldv_16464_160 ldv_16464 ;
};
struct lockref {
   union __anonunion_ldv_16465_159 ldv_16465 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_16489_162 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_16491_161 {
   struct __anonstruct_ldv_16489_162 ldv_16489 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_16491_161 ldv_16491 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_163 {
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
   union __anonunion_d_u_163 d_u ;
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
struct __anonstruct_ldv_16852_165 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_16854_164 {
   struct __anonstruct_ldv_16852_165 ldv_16852 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_16854_164 ldv_16854 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
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
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct __anonstruct_kprojid_t_167 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_167 kprojid_t;
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
union __anonunion_ldv_17674_168 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_17674_168 ldv_17674 ;
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
struct backing_dev_info;
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
union __anonunion_ldv_18090_171 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_18110_172 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_18127_173 {
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
   union __anonunion_ldv_18090_171 ldv_18090 ;
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
   union __anonunion_ldv_18110_172 ldv_18110 ;
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
   union __anonunion_ldv_18127_173 ldv_18127 ;
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
union __anonunion_f_u_174 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_174 f_u ;
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
struct files_struct;
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
struct __anonstruct_afs_176 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_175 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_176 afs ;
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
   union __anonunion_fl_u_175 fl_u ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct proc_dir_entry;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion_ldv_20750_177 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_20750_177 ldv_20750 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct signal_struct;
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct class;
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
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
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
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
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
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_22318_189 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_22326_190 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_22339_192 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_22340_191 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_22339_192 ldv_22339 ;
};
union __anonunion_type_data_193 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_195 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_22355_194 {
   union __anonunion_payload_195 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_22318_189 ldv_22318 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_22326_190 ldv_22326 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_22340_191 ldv_22340 ;
   union __anonunion_type_data_193 type_data ;
   union __anonunion_ldv_22355_194 ldv_22355 ;
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
struct serial_struct {
   int type ;
   int line ;
   unsigned int port ;
   int irq ;
   int flags ;
   int xmit_fifo_size ;
   int custom_divisor ;
   int baud_base ;
   unsigned short close_delay ;
   char io_type ;
   char reserved_char[1U] ;
   int hub6 ;
   unsigned short closing_wait ;
   unsigned short closing_wait2 ;
   unsigned char *iomem_base ;
   unsigned short iomem_reg_shift ;
   unsigned int port_high ;
   unsigned long iomap_base ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
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
struct pci_driver;
union __anonunion_ldv_30030_202 {
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
   union __anonunion_ldv_30030_202 ldv_30030 ;
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
struct isi_port;
struct isi_board {
   unsigned long base ;
   int irq ;
   unsigned char port_count ;
   unsigned short status ;
   unsigned short port_status ;
   unsigned short shift_count ;
   struct isi_port *ports ;
   signed char count ;
   spinlock_t card_lock ;
   unsigned long flags ;
   unsigned int index ;
};
struct isi_port {
   unsigned short magic ;
   struct tty_port port ;
   u16 channel ;
   u16 status ;
   struct isi_board *card ;
   unsigned char *xmit_buf ;
   int xmit_head ;
   int xmit_tail ;
   int xmit_cnt ;
};
struct stframe {
   u16 addr ;
   u16 count ;
   u8 data[0U] ;
};
typedef int ldv_func_ret_type___2;
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
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void might_fault(void) ;
extern void __bad_percpu_size(void) ;
extern void *memset(void * , int , size_t ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
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
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern struct tvec_base boot_tvec_bases ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
__inline static void outw(unsigned short value , int port )
{
  {
  __asm__ volatile ("outw %w0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned short inw(int port )
{
  unsigned short value ;
  {
  __asm__ volatile ("inw %w1, %w0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outsw(int port , void const *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; outsw": "+S" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void insw(int port , void *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; insw": "+D" (addr), "+c" (count): "d" (port));
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
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned char __VERIFIER_nondet_uchar(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
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
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
void *ldv_irq_data_1_2 ;
struct tty_struct *isicom_ops_group1 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
struct file *isicom_ops_group0 ;
int ldv_irq_1_1 = 0;
int ldv_irq_line_1_3 ;
struct tty_port *isicom_port_ops_group1 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
struct pci_dev *isicom_driver_group0 ;
void ldv_initialize_tty_operations_3(void) ;
void ldv_initialize_pci_driver_5(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void choose_interrupt_1(void) ;
void ldv_tty_port_operations_2(void) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern bool capable(int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
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
extern struct tty_driver *__tty_alloc_driver(unsigned int , struct module * , unsigned long ) ;
extern void put_tty_driver(struct tty_driver * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static struct tty_driver *alloc_tty_driver(unsigned int lines )
{
  struct tty_driver *ret ;
  struct tty_driver *tmp ;
  bool tmp___0 ;
  {
  tmp = __tty_alloc_driver(lines, & __this_module, 0UL);
  ret = tmp;
  tmp___0 = IS_ERR((void const *)ret);
  if ((int )tmp___0) {
    return ((struct tty_driver *)0);
  } else {
  }
  return (ret);
}
}
__inline static unsigned char *char_buf_ptr(struct tty_buffer *b , int ofs )
{
  {
  return ((unsigned char *)(& b->data) + (unsigned long )ofs);
}
}
__inline static char *flag_buf_ptr(struct tty_buffer *b , int ofs )
{
  unsigned char *tmp ;
  {
  tmp = char_buf_ptr(b, ofs);
  return ((char *)tmp + (unsigned long )b->size);
}
}
extern void tty_kref_put(struct tty_struct * ) ;
extern struct ktermios tty_std_termios ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
extern void tty_hangup(struct tty_struct * ) ;
extern void do_SAK(struct tty_struct * ) ;
extern void tty_wakeup(struct tty_struct * ) ;
extern void tty_port_init(struct tty_port * ) ;
extern struct device *tty_port_register_device(struct tty_port * , struct tty_driver * ,
                                               unsigned int , struct device * ) ;
extern int tty_port_alloc_xmit_buf(struct tty_port * ) ;
extern void tty_port_free_xmit_buf(struct tty_port * ) ;
extern void tty_port_destroy(struct tty_port * ) ;
__inline static bool tty_port_cts_enabled(struct tty_port *port )
{
  {
  return ((port->flags & 67108864UL) != 0UL);
}
}
extern struct tty_struct *tty_port_tty_get(struct tty_port * ) ;
extern void tty_port_hangup(struct tty_port * ) ;
extern void tty_port_close(struct tty_port * , struct tty_struct * , struct file * ) ;
extern int tty_port_open(struct tty_port * , struct tty_struct * , struct file * ) ;
extern int tty_insert_flip_string_flags(struct tty_port * , unsigned char const * ,
                                        char const * , size_t ) ;
extern int tty_prepare_flip_string(struct tty_port * , unsigned char ** , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_char(struct tty_port *port , unsigned char ch ,
                                         char flag )
{
  struct tty_buffer *tb ;
  int change ;
  char *tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  tb = port->buf.tail;
  change = tb->flags & 1 && (int )((signed char )flag) != 0;
  if (change == 0 && tb->used < tb->size) {
    if ((tb->flags & 1) == 0) {
      tmp = flag_buf_ptr(tb, tb->used);
      *tmp = flag;
    } else {
    }
    tmp___0 = tb->used;
    tb->used = tb->used + 1;
    tmp___1 = char_buf_ptr(tb, tmp___0);
    *tmp___1 = ch;
    return (1);
  } else {
  }
  tmp___2 = tty_insert_flip_string_flags(port, (unsigned char const *)(& ch), (char const *)(& flag),
                                         1UL);
  return (tmp___2);
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
__inline static int ldv_request_irq_20(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
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
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int pci_request_region(struct pci_dev * , int , char const * ) ;
extern void pci_release_region(struct pci_dev * , int ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
static int isicom_probe(struct pci_dev *pdev , struct pci_device_id const *ent ) ;
static void isicom_remove(struct pci_dev *pdev ) ;
static struct pci_device_id isicom_pci_tbl[10U] =
  { {4277U, 8232U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8273U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8274U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8275U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8276U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8277U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8278U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8279U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4277U, 8280U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__isicom_pci_tbl_device_table ;
static struct pci_driver isicom_driver =
     {{0, 0}, "isicom", (struct pci_device_id const *)(& isicom_pci_tbl), & isicom_probe,
    & isicom_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                                           0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                         {0, 0}}};
static int prev_card = 3;
static struct tty_driver *isicom_normal ;
static void isicom_tx(unsigned long _data___0 ) ;
static void isicom_start(struct tty_struct *tty ) ;
static struct timer_list tx =
     {{0, (struct list_head *)1953723489}, 0UL, & boot_tvec_bases, & isicom_tx, 0UL,
    -1, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
               (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0},
    {(struct lock_class_key *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared:233",
     {0, 0}, "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared:233",
     0, 0UL}};
static signed char linuxb_to_isib[20U] =
  { -1, 0, 1, 2,
        3, 4, 5, 6,
        7, 8, 9, 11,
        13, 15, 16, 17,
        18, 19, 20, 21};
static struct isi_board isi_card[4U] ;
static struct isi_port isi_ports[64U] ;
__inline static int WaitTillCardIsFree(unsigned long base )
{
  unsigned int count ;
  unsigned int a ;
  int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  unsigned short tmp___1 ;
  unsigned int tmp___2 ;
  unsigned short tmp___3 ;
  {
  count = 0U;
  tmp = preempt_count();
  a = ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL;
  goto ldv_32357;
  ldv_32356: ;
  if (a != 0U) {
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_32354;
      ldv_32353:
      __const_udelay(4295000UL);
      ldv_32354:
      tmp___0 = __ms;
      __ms = __ms - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_32353;
      } else {
      }
    }
  } else {
    msleep(1U);
  }
  ldv_32357:
  tmp___1 = inw((int )((unsigned int )base + 14U));
  if (((int )tmp___1 & 1) == 0) {
    tmp___2 = count;
    count = count + 1U;
    if (tmp___2 <= 99U) {
      goto ldv_32356;
    } else {
      goto ldv_32358;
    }
  } else {
  }
  ldv_32358:
  tmp___3 = inw((int )((unsigned int )base + 14U));
  return (((int )tmp___3 & 1) == 0);
}
}
static int lock_card(struct isi_board *card )
{
  unsigned long base ;
  unsigned int retries ;
  unsigned int a ;
  unsigned short tmp ;
  {
  base = card->base;
  retries = 0U;
  goto ldv_32369;
  ldv_32368:
  ldv_spin_lock();
  a = 0U;
  goto ldv_32366;
  ldv_32365:
  tmp = inw((int )((unsigned int )base + 14U));
  if ((int )tmp & 1) {
    return (1);
  } else {
  }
  __const_udelay(42950UL);
  a = a + 1U;
  ldv_32366: ;
  if (a <= 9U) {
    goto ldv_32365;
  } else {
  }
  spin_unlock_irqrestore(& card->card_lock, card->flags);
  msleep(10U);
  retries = retries + 1U;
  ldv_32369: ;
  if (retries <= 9U) {
    goto ldv_32368;
  } else {
  }
  printk("\fisicom: Failed to lock Card (0x%lx)\n", card->base);
  return (0);
}
}
static void unlock_card(struct isi_board *card )
{
  {
  spin_unlock_irqrestore(& card->card_lock, card->flags);
  return;
}
}
static void raise_dtr(struct isi_port *port )
{
  struct isi_board *card ;
  unsigned long base ;
  u16 channel ;
  int tmp ;
  {
  card = port->card;
  base = card->base;
  channel = port->channel;
  tmp = WaitTillCardIsFree(base);
  if (tmp != 0) {
    return;
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
       (int )base);
  outw(1284, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  port->status = (u16 )((unsigned int )port->status | 256U);
  return;
}
}
__inline static void drop_dtr(struct isi_port *port )
{
  struct isi_board *card ;
  unsigned long base ;
  u16 channel ;
  int tmp ;
  {
  card = port->card;
  base = card->base;
  channel = port->channel;
  tmp = WaitTillCardIsFree(base);
  if (tmp != 0) {
    return;
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
       (int )base);
  outw(1028, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  port->status = (unsigned int )port->status & 65279U;
  return;
}
}
__inline static void raise_rts(struct isi_port *port )
{
  struct isi_board *card ;
  unsigned long base ;
  u16 channel ;
  int tmp ;
  {
  card = port->card;
  base = card->base;
  channel = port->channel;
  tmp = WaitTillCardIsFree(base);
  if (tmp != 0) {
    return;
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
       (int )base);
  outw(2564, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  port->status = (u16 )((unsigned int )port->status | 512U);
  return;
}
}
__inline static void drop_rts(struct isi_port *port )
{
  struct isi_board *card ;
  unsigned long base ;
  u16 channel ;
  int tmp ;
  {
  card = port->card;
  base = card->base;
  channel = port->channel;
  tmp = WaitTillCardIsFree(base);
  if (tmp != 0) {
    return;
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
       (int )base);
  outw(2052, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  port->status = (unsigned int )port->status & 65023U;
  return;
}
}
static void isicom_dtr_rts(struct tty_port *port , int on )
{
  struct isi_port *ip ;
  struct tty_port const *__mptr ;
  struct isi_board *card ;
  unsigned long base ;
  u16 channel ;
  int tmp ;
  {
  __mptr = (struct tty_port const *)port;
  ip = (struct isi_port *)__mptr + 0xfffffffffffffff8UL;
  card = ip->card;
  base = card->base;
  channel = ip->channel;
  tmp = lock_card(card);
  if (tmp == 0) {
    return;
  } else {
  }
  if (on != 0) {
    outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
         (int )base);
    outw(3844, (int )base);
    outw(0, (int )((unsigned int )base + 12U));
    ip->status = (u16 )((unsigned int )ip->status | 768U);
  } else {
    outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
         (int )base);
    outw(3076, (int )base);
    outw(0, (int )((unsigned int )base + 12U));
    ip->status = (unsigned int )ip->status & 64767U;
  }
  unlock_card(card);
  return;
}
}
static void drop_dtr_rts(struct isi_port *port )
{
  struct isi_board *card ;
  unsigned long base ;
  u16 channel ;
  int tmp ;
  {
  card = port->card;
  base = card->base;
  channel = port->channel;
  tmp = WaitTillCardIsFree(base);
  if (tmp != 0) {
    return;
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )channel << (int )card->shift_count)) | -32766)),
       (int )base);
  outw(3076, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  port->status = (unsigned int )port->status & 64767U;
  return;
}
}
static void isicom_tx(unsigned long _data___0 )
{
  unsigned long flags ;
  unsigned long base ;
  unsigned int retries ;
  short count ;
  short card ;
  short txcount ;
  short wrd ;
  short residue ;
  short word_count ;
  short cnt ;
  struct isi_port *port ;
  struct tty_struct *tty ;
  short tmp ;
  unsigned short tmp___0 ;
  short __min1 ;
  short __min2 ;
  unsigned short tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  int __min1___0 ;
  int __min2___0 ;
  unsigned long tmp___3 ;
  {
  count = 3;
  card = (int )((short )((unsigned int )((unsigned short )prev_card) + 1U)) & 3;
  goto ldv_32436;
  ldv_32435: ;
  if (((int )isi_card[(int )card].status & 2) != 0) {
    goto ldv_32434;
  } else {
  }
  card = (int )((short )((unsigned int )((unsigned short )card) + 1U)) & 3;
  ldv_32436:
  tmp = count;
  count = (short )((int )count - 1);
  if ((int )tmp > 0) {
    goto ldv_32435;
  } else {
  }
  ldv_32434: ;
  if (((int )isi_card[(int )card].status & 2) == 0) {
    goto sched_again;
  } else {
  }
  prev_card = (int )card;
  count = (short )isi_card[(int )card].port_count;
  port = isi_card[(int )card].ports;
  base = isi_card[(int )card].base;
  ldv_spin_lock();
  retries = 0U;
  goto ldv_32440;
  ldv_32439:
  tmp___0 = inw((int )((unsigned int )base + 14U));
  if ((int )tmp___0 & 1) {
    goto ldv_32438;
  } else {
  }
  __const_udelay(8590UL);
  retries = retries + 1U;
  ldv_32440: ;
  if (retries <= 99U) {
    goto ldv_32439;
  } else {
  }
  ldv_32438: ;
  if (retries > 99U) {
    goto unlock;
  } else {
  }
  tty = tty_port_tty_get(& port->port);
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0)) {
    goto put_unlock;
  } else {
  }
  goto ldv_32455;
  ldv_32454: ;
  if ((port->port.flags & 2147483648UL) == 0UL || ((int )port->status & 1) == 0) {
    goto ldv_32443;
  } else {
  }
  __min1 = 254;
  __min2 = (short )port->xmit_cnt;
  txcount = (short )((int )__min1 < (int )__min2 ? __min1 : __min2);
  if (((int )txcount <= 0 || (unsigned int )*((unsigned char *)tty + 1316UL) != 0U) || (unsigned int )*((unsigned char *)tty + 1316UL) != 0U) {
    goto ldv_32443;
  } else {
  }
  tmp___1 = inw((int )((unsigned int )base + 2U));
  if ((((int )tmp___1 >> (int )port->channel) & 1) == 0) {
    goto ldv_32443;
  } else {
  }
  descriptor.modname = "isicom";
  descriptor.function = "isicom_tx";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
  descriptor.format = "txing %d bytes, port%d.\n";
  descriptor.lineno = 506U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "isicom: txing %d bytes, port%d.\n", (int )txcount,
                       (int )port->channel + 1);
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )port->channel << (int )isi_card[(int )card].shift_count)) | (int )txcount)),
       (int )base);
  residue = 0;
  wrd = 0;
  ldv_32453:
  __min1___0 = (int )txcount;
  __min2___0 = (int )(4096U - (unsigned int )port->xmit_tail);
  cnt = (short )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  if ((int )residue == 1) {
    residue = 0;
    if ((int )cnt > 0) {
      wrd = (int )((short )((int )*(port->port.xmit_buf + (unsigned long )port->xmit_tail) << 8)) | (int )wrd;
      port->xmit_tail = (port->xmit_tail + 1) & 4095;
      port->xmit_cnt = port->xmit_cnt - 1;
      txcount = (short )((int )txcount - 1);
      cnt = (short )((int )cnt - 1);
      outw((int )((unsigned short )wrd), (int )base);
    } else {
      outw((int )((unsigned short )wrd), (int )base);
      goto ldv_32452;
    }
  } else {
  }
  if ((int )cnt <= 0) {
    goto ldv_32452;
  } else {
  }
  word_count = (int )cnt >> 1;
  outsw((int )base, (void const *)port->port.xmit_buf + (unsigned long )port->xmit_tail,
        (unsigned long )word_count);
  port->xmit_tail = (port->xmit_tail + ((int )word_count << 1)) & 4095;
  txcount = (short )((int )((unsigned short )txcount) - ((int )((unsigned short )word_count) << 1U));
  port->xmit_cnt = port->xmit_cnt - ((int )word_count << 1);
  if ((int )cnt & 1) {
    residue = 1;
    wrd = (short )*(port->port.xmit_buf + (unsigned long )port->xmit_tail);
    port->xmit_tail = (port->xmit_tail + 1) & 4095;
    port->xmit_cnt = port->xmit_cnt - 1;
    txcount = (short )((int )txcount - 1);
  } else {
  }
  goto ldv_32453;
  ldv_32452:
  outw(0, (int )((unsigned int )base + 12U));
  if (port->xmit_cnt <= 0) {
    port->status = (unsigned int )port->status & 65534U;
  } else {
  }
  if (port->xmit_cnt <= 256) {
    tty_wakeup(tty);
  } else {
  }
  ldv_32443:
  count = (short )((int )count - 1);
  port = port + 1;
  ldv_32455: ;
  if ((int )count > 0) {
    goto ldv_32454;
  } else {
  }
  put_unlock:
  tty_kref_put(tty);
  unlock:
  spin_unlock_irqrestore(& isi_card[(int )card].card_lock, flags);
  sched_again:
  tmp___3 = msecs_to_jiffies(10U);
  mod_timer(& tx, tmp___3 + (unsigned long )jiffies);
  return;
}
}
static irqreturn_t isicom_interrupt(int irq , void *dev_id )
{
  struct isi_board *card ;
  struct isi_port *port ;
  struct tty_struct *tty ;
  unsigned long base ;
  u16 header ;
  u16 word_count ;
  u16 count ;
  u16 channel ;
  short byte_count ;
  unsigned char *rp ;
  unsigned short tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___3 ;
  long tmp___6 ;
  unsigned short tmp___7 ;
  struct _ddebug descriptor___4 ;
  long tmp___8 ;
  {
  card = (struct isi_board *)dev_id;
  if ((unsigned long )card == (unsigned long )((struct isi_board *)0) || ((int )card->status & 1) == 0) {
    return (0);
  } else {
  }
  base = card->base;
  tmp = inw((int )((unsigned int )base + 14U));
  if (((int )tmp & 2) == 0) {
    return (0);
  } else {
  }
  spin_lock(& card->card_lock);
  outw(32768, (int )((unsigned int )base + 4U));
  inw((int )((unsigned int )base + 10U));
  inw((int )base);
  header = inw((int )base);
  channel = (u16 )(((int )header & 30720) >> (int )card->shift_count);
  byte_count = (int )((short )header) & 255;
  if ((int )channel + 1 > (int )card->port_count) {
    printk("\fisicom: %s(0x%lx): %d(channel) > port_count.\n", "isicom_interrupt",
           base, (int )channel + 1);
    outw(0, (int )((unsigned int )base + 4U));
    spin_unlock(& card->card_lock);
    return (1);
  } else {
  }
  port = card->ports + (unsigned long )channel;
  if ((port->port.flags & 2147483648UL) == 0UL) {
    outw(0, (int )((unsigned int )base + 4U));
    spin_unlock(& card->card_lock);
    return (1);
  } else {
  }
  tty = tty_port_tty_get(& port->port);
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0)) {
    word_count = (u16 )((int )byte_count >> 1);
    goto ldv_32473;
    ldv_32472:
    inw((int )base);
    byte_count = (short )((unsigned int )((unsigned short )byte_count) + 65534U);
    ldv_32473: ;
    if ((int )byte_count > 1) {
      goto ldv_32472;
    } else {
    }
    if ((int )byte_count & 1) {
      inw((int )base);
    } else {
    }
    outw(0, (int )((unsigned int )base + 4U));
    spin_unlock(& card->card_lock);
    return (1);
  } else {
  }
  if ((int )((short )header) < 0) {
    header = inw((int )base);
    switch ((int )header & 255) {
    case 0: ;
    if ((port->port.flags & 33554432UL) != 0UL) {
      if ((int )((short )port->status) < 0) {
        if ((int )((short )header) >= 0) {
          descriptor.modname = "isicom";
          descriptor.function = "isicom_interrupt";
          descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
          descriptor.format = "%s: DCD->low.\n";
          descriptor.lineno = 638U;
          descriptor.flags = 0U;
          tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          if (tmp___0 != 0L) {
            __dynamic_pr_debug(& descriptor, "isicom: %s: DCD->low.\n", "isicom_interrupt");
          } else {
          }
          port->status = (unsigned int )port->status & 32767U;
          tty_hangup(tty);
        } else {
        }
      } else
      if ((int )((short )header) < 0) {
        descriptor___0.modname = "isicom";
        descriptor___0.function = "isicom_interrupt";
        descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
        descriptor___0.format = "%s: DCD->high.\n";
        descriptor___0.lineno = 645U;
        descriptor___0.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_pr_debug(& descriptor___0, "isicom: %s: DCD->high.\n", "isicom_interrupt");
        } else {
        }
        port->status = (u16 )((unsigned int )port->status | 32768U);
        __wake_up(& port->port.open_wait, 1U, 1, (void *)0);
      } else {
      }
    } else
    if ((int )((short )header) < 0) {
      port->status = (u16 )((unsigned int )port->status | 32768U);
    } else {
      port->status = (unsigned int )port->status & 32767U;
    }
    tmp___2 = tty_port_cts_enabled(& port->port);
    if ((int )tmp___2) {
      if ((unsigned int )*((unsigned char *)tty + 1316UL) != 0U) {
        if (((int )header & 4096) != 0) {
          tty->hw_stopped = 0U;
          port->status = (u16 )((unsigned int )port->status | 4097U);
          tty_wakeup(tty);
        } else {
        }
      } else
      if (((int )header & 4096) == 0) {
        tty->hw_stopped = 1U;
        port->status = (unsigned int )port->status & 61438U;
      } else {
      }
    } else
    if (((int )header & 4096) != 0) {
      port->status = (u16 )((unsigned int )port->status | 4096U);
    } else {
      port->status = (unsigned int )port->status & 61439U;
    }
    if (((int )header & 8192) != 0) {
      port->status = (u16 )((unsigned int )port->status | 8192U);
    } else {
      port->status = (unsigned int )port->status & 57343U;
    }
    if (((int )header & 16384) != 0) {
      port->status = (u16 )((unsigned int )port->status | 16384U);
    } else {
      port->status = (unsigned int )port->status & 49151U;
    }
    goto ldv_32478;
    case 1:
    tty_insert_flip_char(& port->port, 0, 1);
    if ((port->port.flags & 4UL) != 0UL) {
      do_SAK(tty);
    } else {
    }
    tty_flip_buffer_push(& port->port);
    goto ldv_32478;
    case 2:
    descriptor___1.modname = "isicom";
    descriptor___1.function = "isicom_interrupt";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
    descriptor___1.format = "%s: stats!!!\n";
    descriptor___1.lineno = 697U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "isicom: %s: stats!!!\n", "isicom_interrupt");
    } else {
    }
    goto ldv_32478;
    default:
    descriptor___2.modname = "isicom";
    descriptor___2.function = "isicom_interrupt";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
    descriptor___2.format = "%s: Unknown code in status packet.\n";
    descriptor___2.lineno = 702U;
    descriptor___2.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "isicom: %s: Unknown code in status packet.\n",
                         "isicom_interrupt");
    } else {
    }
    goto ldv_32478;
    }
    ldv_32478: ;
  } else {
    tmp___5 = tty_prepare_flip_string(& port->port, & rp, (size_t )((int )byte_count & -2));
    count = (u16 )tmp___5;
    descriptor___3.modname = "isicom";
    descriptor___3.function = "isicom_interrupt";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
    descriptor___3.format = "%s: Can rx %d of %d bytes.\n";
    descriptor___3.lineno = 709U;
    descriptor___3.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "isicom: %s: Can rx %d of %d bytes.\n",
                         "isicom_interrupt", (int )count, (int )byte_count);
    } else {
    }
    word_count = (u16 )((int )count >> 1);
    insw((int )base, (void *)rp, (unsigned long )word_count);
    byte_count = (short )((int )((unsigned short )byte_count) - ((int )word_count << 1U));
    if ((int )count & 1) {
      tmp___7 = inw((int )base);
      tty_insert_flip_char(& port->port, (int )((unsigned char )tmp___7), 0);
      byte_count = (short )((unsigned int )((unsigned short )byte_count) + 65534U);
    } else {
    }
    if ((int )byte_count > 0) {
      descriptor___4.modname = "isicom";
      descriptor___4.function = "isicom_interrupt";
      descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
      descriptor___4.format = "%s(0x%lx:%d): Flip buffer overflow! dropping bytes...\n";
      descriptor___4.lineno = 720U;
      descriptor___4.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        __dynamic_pr_debug(& descriptor___4, "isicom: %s(0x%lx:%d): Flip buffer overflow! dropping bytes...\n",
                           "isicom_interrupt", base, (int )channel + 1);
      } else {
      }
      goto ldv_32487;
      ldv_32486:
      inw((int )base);
      byte_count = (short )((unsigned int )((unsigned short )byte_count) + 65534U);
      ldv_32487: ;
      if ((int )byte_count > 0) {
        goto ldv_32486;
      } else {
      }
    } else {
    }
    tty_flip_buffer_push(& port->port);
  }
  outw(0, (int )((unsigned int )base + 4U));
  spin_unlock(& card->card_lock);
  tty_kref_put(tty);
  return (1);
}
}
static void isicom_config_port(struct tty_struct *tty )
{
  struct isi_port *port ;
  struct isi_board *card ;
  unsigned long baud ;
  unsigned long base ;
  u16 channel_setup ;
  u16 channel ;
  u16 shift_count ;
  unsigned char flow_ctrl ;
  int tmp ;
  int tmp___0 ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  base = card->base;
  channel = port->channel;
  shift_count = card->shift_count;
  baud = (unsigned long )tty->termios.c_cflag & 4111UL;
  if ((baud & 4096UL) != 0UL) {
    baud = baud & 0xffffffffffffefffUL;
    if (baud == 0UL || baud > 4UL) {
      tty->termios.c_cflag = tty->termios.c_cflag & 4294963199U;
    } else {
      baud = baud + 15UL;
    }
  } else {
  }
  if (baud == 15UL) {
    if ((port->port.flags & 4144UL) == 16UL) {
      baud = baud + 1UL;
    } else {
    }
    if ((port->port.flags & 4144UL) == 32UL) {
      baud = baud + 2UL;
    } else {
    }
    if ((port->port.flags & 4144UL) == 4096UL) {
      baud = baud + 3UL;
    } else {
    }
    if ((port->port.flags & 4144UL) == 4112UL) {
      baud = baud + 4UL;
    } else {
    }
  } else {
  }
  if ((int )linuxb_to_isib[baud] == -1) {
    drop_dtr(port);
    return;
  } else {
    raise_dtr(port);
  }
  tmp = WaitTillCardIsFree(base);
  if (tmp == 0) {
    outw((int )((unsigned short )((int )((short )((int )channel << (int )shift_count)) | -32765)),
         (int )base);
    outw((int )((unsigned short )((int )((short )((int )linuxb_to_isib[baud] << 8)) | 3)),
         (int )base);
    channel_setup = 0U;
    switch (tty->termios.c_cflag & 48U) {
    case 0U:
    channel_setup = channel_setup;
    goto ldv_32501;
    case 16U:
    channel_setup = (u16 )((unsigned int )channel_setup | 1U);
    goto ldv_32501;
    case 32U:
    channel_setup = (u16 )((unsigned int )channel_setup | 2U);
    goto ldv_32501;
    case 48U:
    channel_setup = (u16 )((unsigned int )channel_setup | 3U);
    goto ldv_32501;
    }
    ldv_32501: ;
    if ((tty->termios.c_cflag & 64U) != 0U) {
      channel_setup = (u16 )((unsigned int )channel_setup | 4U);
    } else {
    }
    if ((tty->termios.c_cflag & 256U) != 0U) {
      channel_setup = (u16 )((unsigned int )channel_setup | 24U);
      if ((tty->termios.c_cflag & 512U) != 0U) {
        channel_setup = (u16 )((unsigned int )channel_setup | 8U);
      } else {
      }
    } else {
    }
    outw((int )channel_setup, (int )base);
    outw(0, (int )((unsigned int )base + 12U));
  } else {
  }
  if ((tty->termios.c_cflag & 2048U) != 0U) {
    port->port.flags = port->port.flags & 4261412863UL;
  } else {
    port->port.flags = port->port.flags | 33554432UL;
  }
  flow_ctrl = 0U;
  port->port.flags = port->port.flags & 4227858431UL;
  if ((int )tty->termios.c_cflag < 0) {
    port->port.flags = port->port.flags | 67108864UL;
    flow_ctrl = (unsigned int )flow_ctrl | 3U;
  } else {
  }
  if ((tty->termios.c_iflag & 1024U) != 0U) {
    flow_ctrl = (unsigned int )flow_ctrl | 8U;
  } else {
  }
  if ((tty->termios.c_iflag & 4096U) != 0U) {
    flow_ctrl = (unsigned int )flow_ctrl | 4U;
  } else {
  }
  tmp___0 = WaitTillCardIsFree(base);
  if (tmp___0 == 0) {
    outw((int )((unsigned short )((int )((short )((int )channel << (int )shift_count)) | -32764)),
         (int )base);
    outw((int )((unsigned short )((int )((short )((int )flow_ctrl << 8)) | 5)), (int )base);
    outw((int )((unsigned short )((int )((short )((int )tty->termios.c_cc[9] << 8)) | (int )((short )tty->termios.c_cc[8]))),
         (int )base);
    outw(0, (int )((unsigned int )base + 12U));
  } else {
  }
  if ((tty->termios.c_cflag & 128U) != 0U) {
    card->port_status = (unsigned short )((int )((short )card->port_status) | (int )((short )(1 << (int )channel)));
    outw((int )card->port_status, (int )((unsigned int )base + 2U));
  } else {
  }
  return;
}
}
__inline static void isicom_setup_board(struct isi_board *bp )
{
  int channel ;
  struct isi_port *port ;
  {
  bp->count = (signed char )((int )bp->count + 1);
  if (((int )bp->status & 4) == 0) {
    port = bp->ports;
    channel = 0;
    goto ldv_32511;
    ldv_32510:
    drop_dtr_rts(port);
    channel = channel + 1;
    port = port + 1;
    ldv_32511: ;
    if ((int )bp->port_count > channel) {
      goto ldv_32510;
    } else {
    }
  } else {
  }
  bp->status = (unsigned int )bp->status | 6U;
  return;
}
}
static int isicom_activate(struct tty_port *tport , struct tty_struct *tty )
{
  struct isi_port *port ;
  struct tty_port const *__mptr ;
  struct isi_board *card ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct tty_port const *)tport;
  port = (struct isi_port *)__mptr + 0xfffffffffffffff8UL;
  card = port->card;
  tmp = tty_port_alloc_xmit_buf(tport);
  if (tmp < 0) {
    return (-12);
  } else {
  }
  ldv_spin_lock();
  isicom_setup_board(card);
  tmp___1 = 0;
  port->xmit_tail = tmp___1;
  tmp___0 = tmp___1;
  port->xmit_head = tmp___0;
  port->xmit_cnt = tmp___0;
  tmp___2 = WaitTillCardIsFree(card->base);
  if (tmp___2 == 0) {
    outw((int )((unsigned short )((int )((short )((int )port->channel << (int )card->shift_count)) | -32766)),
         (int )card->base);
    outw(774, (int )card->base);
    outw(0, (int )((unsigned int )card->base + 12U));
  } else {
  }
  isicom_config_port(tty);
  spin_unlock_irqrestore(& card->card_lock, flags);
  return (0);
}
}
static int isicom_carrier_raised(struct tty_port *port )
{
  struct isi_port *ip ;
  struct tty_port const *__mptr ;
  {
  __mptr = (struct tty_port const *)port;
  ip = (struct isi_port *)__mptr + 0xfffffffffffffff8UL;
  return ((int )((short )ip->status) < 0);
}
}
static struct tty_port *isicom_find_port(struct tty_struct *tty )
{
  struct isi_port *port ;
  struct isi_board *card ;
  unsigned int board ;
  int line ;
  {
  line = tty->index;
  board = (unsigned int )(line >> 4) & 3U;
  card = (struct isi_board *)(& isi_card) + (unsigned long )board;
  if (((int )card->status & 1) == 0) {
    return ((struct tty_port *)0);
  } else {
  }
  if ((unsigned int )line > (board * 16U + (unsigned int )card->port_count) - 1U) {
    return ((struct tty_port *)0);
  } else {
  }
  port = (struct isi_port *)(& isi_ports) + (unsigned long )line;
  return (& port->port);
}
}
static int isicom_open(struct tty_struct *tty , struct file *filp )
{
  struct isi_port *port ;
  struct tty_port *tport ;
  struct tty_port const *__mptr ;
  int tmp ;
  {
  tport = isicom_find_port(tty);
  if ((unsigned long )tport == (unsigned long )((struct tty_port *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct tty_port const *)tport;
  port = (struct isi_port *)__mptr + 0xfffffffffffffff8UL;
  tty->driver_data = (void *)port;
  tmp = tty_port_open(tport, tty, filp);
  return (tmp);
}
}
static void isicom_shutdown_port(struct isi_port *port )
{
  struct isi_board *card ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  card = port->card;
  card->count = (signed char )((int )card->count - 1);
  if ((int )card->count < 0) {
    descriptor.modname = "isicom";
    descriptor.function = "isicom_shutdown_port";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
    descriptor.format = "%s: bad board(0x%lx) count %d.\n";
    descriptor.lineno = 944U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "isicom: %s: bad board(0x%lx) count %d.\n",
                         "isicom_shutdown_port", card->base, (int )card->count);
    } else {
    }
    card->count = 0;
  } else {
  }
  if ((int )card->count == 0) {
    card->status = (unsigned int )card->status & 2U;
  } else {
  }
  return;
}
}
static void isicom_flush_buffer(struct tty_struct *tty )
{
  struct isi_port *port ;
  struct isi_board *card ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  ldv_spin_lock();
  tmp___0 = 0;
  port->xmit_tail = tmp___0;
  tmp = tmp___0;
  port->xmit_head = tmp;
  port->xmit_cnt = tmp;
  spin_unlock_irqrestore(& card->card_lock, flags);
  tty_wakeup(tty);
  return;
}
}
static void isicom_shutdown(struct tty_port *port )
{
  struct isi_port *ip ;
  struct tty_port const *__mptr ;
  struct isi_board *card ;
  unsigned long flags ;
  {
  __mptr = (struct tty_port const *)port;
  ip = (struct isi_port *)__mptr + 0xfffffffffffffff8UL;
  card = ip->card;
  ldv_spin_lock();
  card->port_status = (unsigned short )((int )((short )card->port_status) & ~ ((int )((short )(1 << (int )ip->channel))));
  outw((int )card->port_status, (int )((unsigned int )card->base + 2U));
  isicom_shutdown_port(ip);
  spin_unlock_irqrestore(& card->card_lock, flags);
  tty_port_free_xmit_buf(port);
  return;
}
}
static void isicom_close(struct tty_struct *tty , struct file *filp )
{
  struct isi_port *ip ;
  struct tty_port *port ;
  {
  ip = (struct isi_port *)tty->driver_data;
  if ((unsigned long )ip == (unsigned long )((struct isi_port *)0)) {
    return;
  } else {
  }
  port = & ip->port;
  tty_port_close(port, tty, filp);
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
static int isicom_write(struct tty_struct *tty , unsigned char const *buf , int count )
{
  struct isi_port *port ;
  struct isi_board *card ;
  unsigned long flags ;
  int cnt ;
  int total ;
  int __min1 ;
  int __min2 ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  size_t __len ;
  void *__ret ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  total = 0;
  ldv_spin_lock();
  ldv_32589:
  __min1 = count;
  _min1 = 4095UL - (unsigned long )port->xmit_cnt;
  _min2 = 4096UL - (unsigned long )port->xmit_head;
  __min2 = (int )(_min1 < _min2 ? _min1 : _min2);
  cnt = __min1 < __min2 ? __min1 : __min2;
  if (cnt <= 0) {
    goto ldv_32585;
  } else {
  }
  __len = (size_t )cnt;
  __ret = memcpy((void *)port->port.xmit_buf + (unsigned long )port->xmit_head,
                           (void const *)buf, __len);
  port->xmit_head = (port->xmit_head + cnt) & 4095;
  port->xmit_cnt = port->xmit_cnt + cnt;
  buf = buf + (unsigned long )cnt;
  count = count - cnt;
  total = total + cnt;
  goto ldv_32589;
  ldv_32585: ;
  if ((port->xmit_cnt != 0 && (unsigned int )*((unsigned char *)tty + 1316UL) == 0U) && (unsigned int )*((unsigned char *)tty + 1316UL) == 0U) {
    port->status = (u16 )((unsigned int )port->status | 1U);
  } else {
  }
  spin_unlock_irqrestore(& card->card_lock, flags);
  return (total);
}
}
static int isicom_put_char(struct tty_struct *tty , unsigned char ch )
{
  struct isi_port *port ;
  struct isi_board *card ;
  unsigned long flags ;
  int tmp ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  ldv_spin_lock();
  if ((unsigned int )port->xmit_cnt > 4094U) {
    spin_unlock_irqrestore(& card->card_lock, flags);
    return (0);
  } else {
  }
  tmp = port->xmit_head;
  port->xmit_head = port->xmit_head + 1;
  *(port->port.xmit_buf + (unsigned long )tmp) = ch;
  port->xmit_head = port->xmit_head & 4095;
  port->xmit_cnt = port->xmit_cnt + 1;
  spin_unlock_irqrestore(& card->card_lock, flags);
  return (1);
}
}
static void isicom_flush_chars(struct tty_struct *tty )
{
  struct isi_port *port ;
  {
  port = (struct isi_port *)tty->driver_data;
  if (((port->xmit_cnt <= 0 || (unsigned int )*((unsigned char *)tty + 1316UL) != 0U) || (unsigned int )*((unsigned char *)tty + 1316UL) != 0U) || (unsigned long )port->port.xmit_buf == (unsigned long )((unsigned char *)0U)) {
    return;
  } else {
  }
  port->status = (u16 )((unsigned int )port->status | 1U);
  return;
}
}
static int isicom_write_room(struct tty_struct *tty )
{
  struct isi_port *port ;
  int free ;
  {
  port = (struct isi_port *)tty->driver_data;
  free = (int )(4095U - (unsigned int )port->xmit_cnt);
  if (free < 0) {
    free = 0;
  } else {
  }
  return (free);
}
}
static int isicom_chars_in_buffer(struct tty_struct *tty )
{
  struct isi_port *port ;
  {
  port = (struct isi_port *)tty->driver_data;
  return (port->xmit_cnt);
}
}
static int isicom_send_break(struct tty_struct *tty , int length )
{
  struct isi_port *port ;
  struct isi_board *card ;
  unsigned long base ;
  int tmp ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  base = card->base;
  if (length == -1) {
    return (-95);
  } else {
  }
  tmp = lock_card(card);
  if (tmp == 0) {
    return (-22);
  } else {
  }
  outw((int )((unsigned short )((int )((short )((int )port->channel << (int )card->shift_count)) | -32765)),
       (int )base);
  outw((int )((unsigned short )(length << 8)), (int )base);
  outw((int )((unsigned short )length) & 65280, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  unlock_card(card);
  return (0);
}
}
static int isicom_tiocmget(struct tty_struct *tty )
{
  struct isi_port *port ;
  u16 status ;
  {
  port = (struct isi_port *)tty->driver_data;
  status = port->status;
  return ((((((((int )status & 512) != 0 ? 4 : 0) | (((int )status & 256) != 0 ? 2 : 0)) | ((int )((short )status) < 0 ? 64 : 0)) | (((int )status & 8192) != 0 ? 256 : 0)) | (((int )status & 4096) != 0 ? 32 : 0)) | (((int )status & 16384) != 0 ? 128 : 0));
}
}
static int isicom_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct isi_port *port ;
  unsigned long flags ;
  {
  port = (struct isi_port *)tty->driver_data;
  ldv_spin_lock();
  if ((set & 4U) != 0U) {
    raise_rts(port);
  } else {
  }
  if ((set & 2U) != 0U) {
    raise_dtr(port);
  } else {
  }
  if ((clear & 4U) != 0U) {
    drop_rts(port);
  } else {
  }
  if ((clear & 2U) != 0U) {
    drop_dtr(port);
  } else {
  }
  spin_unlock_irqrestore(& (port->card)->card_lock, flags);
  return (0);
}
}
static int isicom_set_serial_info(struct tty_struct *tty , struct serial_struct *info )
{
  struct isi_port *port ;
  struct serial_struct newinfo ;
  int reconfig_port ;
  unsigned long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  unsigned long flags ;
  {
  port = (struct isi_port *)tty->driver_data;
  tmp = copy_from_user((void *)(& newinfo), (void const *)info, 72UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  mutex_lock_nested(& port->port.mutex, 0U);
  reconfig_port = ((port->port.flags ^ (unsigned long )((unsigned int )newinfo.flags)) & 4144UL) != 0UL;
  tmp___0 = capable(21);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if (((unsigned int )newinfo.close_delay != port->port.close_delay || (unsigned int )newinfo.closing_wait != port->port.closing_wait) || (((unsigned long )((unsigned int )newinfo.flags) ^ port->port.flags) & 4294953935UL) != 0UL) {
      mutex_unlock(& port->port.mutex);
      return (-1);
    } else {
    }
    port->port.flags = (port->port.flags & 4294953935UL) | ((unsigned long )((unsigned int )newinfo.flags) & 13360UL);
  } else {
    port->port.close_delay = (unsigned int )newinfo.close_delay;
    port->port.closing_wait = (unsigned int )newinfo.closing_wait;
    port->port.flags = (port->port.flags & 4294901760UL) | ((unsigned long )((unsigned int )newinfo.flags) & 65535UL);
  }
  if (reconfig_port != 0) {
    ldv_spin_lock();
    isicom_config_port(tty);
    spin_unlock_irqrestore(& (port->card)->card_lock, flags);
  } else {
  }
  mutex_unlock(& port->port.mutex);
  return (0);
}
}
static int isicom_get_serial_info(struct isi_port *port , struct serial_struct *info )
{
  struct serial_struct out_info ;
  unsigned long tmp ;
  {
  mutex_lock_nested(& port->port.mutex, 0U);
  memset((void *)(& out_info), 0, 72UL);
  out_info.line = (int )(((long )port - (long )(& isi_ports)) / 1112L);
  out_info.port = (unsigned int )(port->card)->base;
  out_info.irq = (port->card)->irq;
  out_info.flags = (int )port->port.flags;
  out_info.close_delay = (unsigned short )port->port.close_delay;
  out_info.closing_wait = (unsigned short )port->port.closing_wait;
  mutex_unlock(& port->port.mutex);
  tmp = copy_to_user((void *)info, (void const *)(& out_info), 72UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int isicom_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct isi_port *port ;
  void *argp ;
  int tmp ;
  int tmp___0 ;
  {
  port = (struct isi_port *)tty->driver_data;
  argp = (void *)arg;
  switch (cmd) {
  case 21534U:
  tmp = isicom_get_serial_info(port, (struct serial_struct *)argp);
  return (tmp);
  case 21535U:
  tmp___0 = isicom_set_serial_info(tty, (struct serial_struct *)argp);
  return (tmp___0);
  default: ;
  return (-515);
  }
  return (0);
}
}
static void isicom_set_termios(struct tty_struct *tty , struct ktermios *old_termios )
{
  struct isi_port *port ;
  unsigned long flags ;
  {
  port = (struct isi_port *)tty->driver_data;
  if (tty->termios.c_cflag == old_termios->c_cflag && tty->termios.c_iflag == old_termios->c_iflag) {
    return;
  } else {
  }
  ldv_spin_lock();
  isicom_config_port(tty);
  spin_unlock_irqrestore(& (port->card)->card_lock, flags);
  if ((int )old_termios->c_cflag < 0 && (int )tty->termios.c_cflag >= 0) {
    tty->hw_stopped = 0U;
    isicom_start(tty);
  } else {
  }
  return;
}
}
static void isicom_throttle(struct tty_struct *tty )
{
  struct isi_port *port ;
  struct isi_board *card ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  card->port_status = (unsigned short )((int )((short )card->port_status) & ~ ((int )((short )(1 << (int )port->channel))));
  outw((int )card->port_status, (int )((unsigned int )card->base + 2U));
  return;
}
}
static void isicom_unthrottle(struct tty_struct *tty )
{
  struct isi_port *port ;
  struct isi_board *card ;
  {
  port = (struct isi_port *)tty->driver_data;
  card = port->card;
  card->port_status = (unsigned short )((int )((short )card->port_status) | (int )((short )(1 << (int )port->channel)));
  outw((int )card->port_status, (int )((unsigned int )card->base + 2U));
  return;
}
}
static void isicom_stop(struct tty_struct *tty )
{
  struct isi_port *port ;
  {
  port = (struct isi_port *)tty->driver_data;
  port->status = (unsigned int )port->status & 65534U;
  return;
}
}
static void isicom_start(struct tty_struct *tty )
{
  struct isi_port *port ;
  {
  port = (struct isi_port *)tty->driver_data;
  port->status = (u16 )((unsigned int )port->status | 1U);
  return;
}
}
static void isicom_hangup(struct tty_struct *tty )
{
  struct isi_port *port ;
  {
  port = (struct isi_port *)tty->driver_data;
  tty_port_hangup(& port->port);
  return;
}
}
static struct tty_operations const isicom_ops =
     {0, 0, 0, & isicom_open, & isicom_close, 0, 0, & isicom_write, & isicom_put_char,
    & isicom_flush_chars, & isicom_write_room, & isicom_chars_in_buffer, & isicom_ioctl,
    0, & isicom_set_termios, & isicom_throttle, & isicom_unthrottle, & isicom_stop,
    & isicom_start, & isicom_hangup, & isicom_send_break, & isicom_flush_buffer, 0,
    0, 0, & isicom_tiocmget, & isicom_tiocmset, 0, 0, 0, 0, 0, 0, 0};
static struct tty_port_operations const isicom_port_ops = {& isicom_carrier_raised, & isicom_dtr_rts, & isicom_shutdown, & isicom_activate,
    0};
static int reset_card(struct pci_dev *pdev , unsigned int const card , unsigned int *signature )
{
  struct isi_board *board ;
  void *tmp ;
  unsigned long base ;
  unsigned int sig ;
  unsigned int portcount ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned short tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  unsigned short tmp___3 ;
  unsigned short tmp___4 ;
  {
  tmp = pci_get_drvdata(pdev);
  board = (struct isi_board *)tmp;
  base = board->base;
  portcount = 0U;
  retval = 0;
  descriptor.modname = "isicom";
  descriptor.function = "reset_card";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
  descriptor.format = "ISILoad:Resetting Card%d at 0x%lx\n";
  descriptor.lineno = 1372U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "ISILoad:Resetting Card%d at 0x%lx\n",
                      (unsigned int )card + 1U, base);
  } else {
  }
  inw((int )((unsigned int )base + 8U));
  msleep(10U);
  outw(0, (int )((unsigned int )base + 8U));
  msleep(1000U);
  tmp___1 = inw((int )((unsigned int )base + 4U));
  sig = (unsigned int )tmp___1 & 255U;
  if ((((sig != 165U && sig != 187U) && sig != 204U) && sig != 221U) && sig != 238U) {
    dev_warn((struct device const *)(& pdev->dev), "ISILoad:Card%u reset failure (Possible bad I/O Port Address 0x%lx).\n",
             (unsigned int )card + 1U, base);
    descriptor___0.modname = "isicom";
    descriptor___0.function = "reset_card";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
    descriptor___0.format = "Sig=0x%x\n";
    descriptor___0.lineno = 1388U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev),
                        "Sig=0x%x\n", sig);
    } else {
    }
    retval = -5;
    goto end;
  } else {
  }
  msleep(10U);
  tmp___3 = inw((int )((unsigned int )base + 2U));
  portcount = (unsigned int )tmp___3;
  tmp___4 = inw((int )((unsigned int )base + 14U));
  if (((int )tmp___4 & 1) == 0 || (((portcount != 0U && portcount != 4U) && portcount != 8U) && portcount != 16U)) {
    dev_err((struct device const *)(& pdev->dev), "ISILoad:PCI Card%d reset failure.\n",
            (unsigned int )card + 1U);
    retval = -5;
    goto end;
  } else {
  }
  switch (sig) {
  case 165U: ;
  case 187U: ;
  case 221U:
  board->port_count = portcount == 4U ? 4U : 8U;
  board->shift_count = 12U;
  goto ldv_32699;
  case 204U: ;
  case 238U:
  board->port_count = 16U;
  board->shift_count = 11U;
  goto ldv_32699;
  }
  ldv_32699:
  _dev_info((struct device const *)(& pdev->dev), "-Done\n");
  *signature = sig;
  end: ;
  return (retval);
}
}
static int load_firmware(struct pci_dev *pdev , unsigned int const index , unsigned int const signature )
{
  struct isi_board *board ;
  void *tmp ;
  struct firmware const *fw ;
  unsigned long base ;
  unsigned int a ;
  u16 word_count ;
  u16 status ;
  int retval ;
  char *name ;
  u8 *data ;
  struct stframe *frame ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = pci_get_drvdata(pdev);
  board = (struct isi_board *)tmp;
  base = board->base;
  retval = -5;
  switch (signature) {
  case 165U:
  name = (char *)"isi608.bin";
  goto ldv_32722;
  case 187U:
  name = (char *)"isi608em.bin";
  goto ldv_32722;
  case 204U:
  name = (char *)"isi616em.bin";
  goto ldv_32722;
  case 221U:
  name = (char *)"isi4608.bin";
  goto ldv_32722;
  case 238U:
  name = (char *)"isi4616.bin";
  goto ldv_32722;
  default:
  dev_err((struct device const *)(& pdev->dev), "Unknown signature.\n");
  goto end;
  }
  ldv_32722:
  retval = request_firmware(& fw, (char const *)name, & pdev->dev);
  if (retval != 0) {
    goto end;
  } else {
  }
  retval = -5;
  frame = (struct stframe *)fw->data;
  goto ldv_32731;
  ldv_32730:
  tmp___0 = WaitTillCardIsFree(base);
  if (tmp___0 != 0) {
    goto errrelfw;
  } else {
  }
  outw(240, (int )base);
  outw(0, (int )base);
  outw((int )frame->addr, (int )base);
  word_count = (unsigned int )((u16 )((unsigned int )frame->count / 2U)) + ((unsigned int )frame->count & 1U);
  outw((int )word_count, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  __const_udelay(429500UL);
  tmp___1 = WaitTillCardIsFree(base);
  if (tmp___1 != 0) {
    goto errrelfw;
  } else {
  }
  status = inw((int )((unsigned int )base + 4U));
  if ((unsigned int )status != 0U) {
    dev_warn((struct device const *)(& pdev->dev), "Card%d rejected load header:\nAddress:0x%x\nCount:0x%x\nStatus:0x%x\n",
             (unsigned int )index + 1U, (int )frame->addr, (int )frame->count, (int )status);
    goto errrelfw;
  } else {
  }
  outsw((int )base, (void const *)(& frame->data), (unsigned long )word_count);
  outw(0, (int )((unsigned int )base + 12U));
  __const_udelay(214750UL);
  tmp___2 = WaitTillCardIsFree(base);
  if (tmp___2 != 0) {
    goto errrelfw;
  } else {
  }
  status = inw((int )((unsigned int )base + 4U));
  if ((unsigned int )status != 0U) {
    dev_err((struct device const *)(& pdev->dev), "Card%d got out of sync.Card Status:0x%x\n",
            (unsigned int )index + 1U, (int )status);
    goto errrelfw;
  } else {
  }
  frame = frame + ((unsigned long )frame->count + 1UL);
  ldv_32731: ;
  if ((unsigned long )((struct stframe *)(fw->data + fw->size)) > (unsigned long )frame) {
    goto ldv_32730;
  } else {
  }
  frame = (struct stframe *)fw->data;
  goto ldv_32737;
  ldv_32736:
  tmp___3 = WaitTillCardIsFree(base);
  if (tmp___3 != 0) {
    goto errrelfw;
  } else {
  }
  outw(241, (int )base);
  outw(0, (int )base);
  outw((int )frame->addr, (int )base);
  word_count = (unsigned int )((u16 )((int )frame->count >> 1)) + ((unsigned int )frame->count & 1U);
  outw((int )((unsigned int )word_count + 1U), (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  __const_udelay(214750UL);
  tmp___4 = WaitTillCardIsFree(base);
  if (tmp___4 != 0) {
    goto errrelfw;
  } else {
  }
  status = inw((int )((unsigned int )base + 4U));
  if ((unsigned int )status != 0U) {
    dev_warn((struct device const *)(& pdev->dev), "Card%d rejected verify header:\nAddress:0x%x\nCount:0x%x\nStatus: 0x%x\n",
             (unsigned int )index + 1U, (int )frame->addr, (int )frame->count, (int )status);
    goto errrelfw;
  } else {
  }
  tmp___5 = kmalloc((size_t )((int )word_count * 2), 208U);
  data = (u8 *)tmp___5;
  if ((unsigned long )data == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& pdev->dev), "Card%d, firmware upload failed, not enough memory\n",
            (unsigned int )index + 1U);
    goto errrelfw;
  } else {
  }
  inw((int )base);
  insw((int )base, (void *)data, (unsigned long )word_count);
  outw(0, (int )((unsigned int )base + 12U));
  a = 0U;
  goto ldv_32734;
  ldv_32733: ;
  if ((int )*(data + (unsigned long )a) != (int )frame->data[a]) {
    kfree((void const *)data);
    dev_err((struct device const *)(& pdev->dev), "Card%d, firmware upload failed\n",
            (unsigned int )index + 1U);
    goto errrelfw;
  } else {
  }
  a = a + 1U;
  ldv_32734: ;
  if ((unsigned int )frame->count > a) {
    goto ldv_32733;
  } else {
  }
  kfree((void const *)data);
  __const_udelay(214750UL);
  tmp___6 = WaitTillCardIsFree(base);
  if (tmp___6 != 0) {
    goto errrelfw;
  } else {
  }
  status = inw((int )((unsigned int )base + 4U));
  if ((unsigned int )status != 0U) {
    dev_err((struct device const *)(& pdev->dev), "Card%d verify got out of sync. Card Status:0x%x\n",
            (unsigned int )index + 1U, (int )status);
    goto errrelfw;
  } else {
  }
  frame = frame + ((unsigned long )frame->count + 1UL);
  ldv_32737: ;
  if ((unsigned long )((struct stframe *)(fw->data + fw->size)) > (unsigned long )frame) {
    goto ldv_32736;
  } else {
  }
  tmp___7 = WaitTillCardIsFree(base);
  if (tmp___7 != 0) {
    goto errrelfw;
  } else {
  }
  outw(242, (int )base);
  outw(2048, (int )base);
  outw(0, (int )base);
  outw(0, (int )base);
  outw(0, (int )((unsigned int )base + 12U));
  outw(0, (int )((unsigned int )base + 4U));
  board->status = (unsigned int )board->status | 1U;
  retval = 0;
  errrelfw:
  release_firmware(fw);
  end: ;
  return (retval);
}
}
static unsigned int card_count ;
static int isicom_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  unsigned int signature ;
  unsigned int index ;
  int retval ;
  struct isi_board *board ;
  struct tty_port *tport ;
  {
  signature = signature;
  retval = -1;
  board = (struct isi_board *)0;
  if (card_count > 3U) {
    goto err;
  } else {
  }
  retval = pci_enable_device(pdev);
  if (retval != 0) {
    dev_err((struct device const *)(& pdev->dev), "failed to enable\n");
    goto err;
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "ISI PCI Card(Device ID 0x%x)\n",
            ent->device);
  index = 0U;
  goto ldv_32751;
  ldv_32750: ;
  if (isi_card[index].base == 0UL) {
    board = (struct isi_board *)(& isi_card) + (unsigned long )index;
    goto ldv_32749;
  } else {
  }
  index = index + 1U;
  ldv_32751: ;
  if (index <= 3U) {
    goto ldv_32750;
  } else {
  }
  ldv_32749: ;
  if (index == 4U) {
    retval = -19;
    goto err_disable;
  } else {
  }
  board->index = index;
  board->base = (unsigned long )pdev->resource[3].start;
  board->irq = (int )pdev->irq;
  card_count = card_count + 1U;
  pci_set_drvdata(pdev, (void *)board);
  retval = pci_request_region(pdev, 3, "ISICom");
  if (retval != 0) {
    dev_err((struct device const *)(& pdev->dev), "I/O Region 0x%lx-0x%lx is busy. Card%d will be disabled.\n",
            board->base, board->base + 15UL, index + 1U);
    retval = -16;
    goto errdec;
  } else {
  }
  retval = ldv_request_irq_20((unsigned int )board->irq, & isicom_interrupt, 128UL,
                              "ISICom", (void *)board);
  if (retval < 0) {
    dev_err((struct device const *)(& pdev->dev), "Could not install handler at Irq %d. Card%d will be disabled.\n",
            board->irq, index + 1U);
    goto errunrr;
  } else {
  }
  retval = reset_card(pdev, index, & signature);
  if (retval < 0) {
    goto errunri;
  } else {
  }
  retval = load_firmware(pdev, index, signature);
  if (retval < 0) {
    goto errunri;
  } else {
  }
  index = 0U;
  goto ldv_32758;
  ldv_32757:
  tport = & (board->ports + (unsigned long )index)->port;
  tty_port_init(tport);
  tport->ops = & isicom_port_ops;
  tport->close_delay = 125U;
  tport->closing_wait = 7500U;
  tty_port_register_device(tport, isicom_normal, board->index * 16U + index, & pdev->dev);
  index = index + 1U;
  ldv_32758: ;
  if ((unsigned int )board->port_count > index) {
    goto ldv_32757;
  } else {
  }
  return (0);
  errunri:
  ldv_free_irq_21((unsigned int )board->irq, (void *)board);
  errunrr:
  pci_release_region(pdev, 3);
  errdec:
  board->base = 0UL;
  card_count = card_count - 1U;
  err_disable:
  pci_disable_device(pdev);
  err: ;
  return (retval);
}
}
static void isicom_remove(struct pci_dev *pdev )
{
  struct isi_board *board ;
  void *tmp ;
  unsigned int i ;
  {
  tmp = pci_get_drvdata(pdev);
  board = (struct isi_board *)tmp;
  i = 0U;
  goto ldv_32766;
  ldv_32765:
  tty_unregister_device(isicom_normal, board->index * 16U + i);
  tty_port_destroy(& (board->ports + (unsigned long )i)->port);
  i = i + 1U;
  ldv_32766: ;
  if ((unsigned int )board->port_count > i) {
    goto ldv_32765;
  } else {
  }
  ldv_free_irq_22((unsigned int )board->irq, (void *)board);
  pci_release_region(pdev, 3);
  board->base = 0UL;
  card_count = card_count - 1U;
  pci_disable_device(pdev);
  return;
}
}
static int isicom_init(void)
{
  int retval ;
  int idx ;
  int channel ;
  struct isi_port *port ;
  struct lock_class_key __key ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  idx = 0;
  goto ldv_32780;
  ldv_32779:
  port = (struct isi_port *)(& isi_ports) + (unsigned long )(idx * 16);
  isi_card[idx].ports = port;
  spinlock_check(& isi_card[idx].card_lock);
  __raw_spin_lock_init(& isi_card[idx].card_lock.ldv_6347.rlock, "&(&isi_card[idx].card_lock)->rlock",
                       & __key);
  channel = 0;
  goto ldv_32777;
  ldv_32776:
  port->magic = 19796U;
  port->card = (struct isi_board *)(& isi_card) + (unsigned long )idx;
  port->channel = (u16 )channel;
  port->status = 0U;
  channel = channel + 1;
  port = port + 1;
  ldv_32777: ;
  if (channel <= 15) {
    goto ldv_32776;
  } else {
  }
  isi_card[idx].base = 0UL;
  isi_card[idx].irq = 0;
  idx = idx + 1;
  ldv_32780: ;
  if (idx <= 3) {
    goto ldv_32779;
  } else {
  }
  isicom_normal = alloc_tty_driver(64U);
  if ((unsigned long )isicom_normal == (unsigned long )((struct tty_driver *)0)) {
    retval = -12;
    goto error;
  } else {
  }
  isicom_normal->name = "ttyM";
  isicom_normal->major = 112;
  isicom_normal->minor_start = 0;
  isicom_normal->type = 3;
  isicom_normal->subtype = 1;
  isicom_normal->init_termios = tty_std_termios;
  isicom_normal->init_termios.c_cflag = 3261U;
  isicom_normal->flags = 44UL;
  tty_set_operations(isicom_normal, & isicom_ops);
  retval = tty_register_driver(isicom_normal);
  if (retval != 0) {
    descriptor.modname = "isicom";
    descriptor.function = "isicom_init";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/597/dscv_tempdir/dscv/ri/43_2a/drivers/tty/isicom.o.c.prepared";
    descriptor.format = "Couldn\'t register the dialin driver\n";
    descriptor.lineno = 1749U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "isicom: Couldn\'t register the dialin driver\n");
    } else {
    }
    goto err_puttty;
  } else {
  }
  retval = __pci_register_driver(& isicom_driver, & __this_module, "isicom");
  if (retval < 0) {
    printk("\visicom: Unable to register pci driver.\n");
    goto err_unrtty;
  } else {
  }
  mod_timer(& tx, (unsigned long )jiffies + 1UL);
  return (0);
  err_unrtty:
  tty_unregister_driver(isicom_normal);
  err_puttty:
  put_tty_driver(isicom_normal);
  error: ;
  return (retval);
}
}
static void isicom_exit(void)
{
  {
  del_timer_sync(& tx);
  pci_unregister_driver(& isicom_driver);
  tty_unregister_driver(isicom_normal);
  put_tty_driver(isicom_normal);
  return;
}
}
extern int ldv_setup_3(void) ;
extern int ldv_destruct_2(void) ;
int ldv_retval_2 ;
extern int ldv_disconnect_3(void) ;
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
extern int ldv_release_3(void) ;
int ldv_retval_3 ;
void ldv_initialize_tty_operations_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(512UL);
  isicom_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(1752UL);
  isicom_ops_group1 = (struct tty_struct *)tmp___0;
  return;
}
}
void ldv_initialize_pci_driver_5(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  isicom_driver_group0 = (struct pci_dev *)tmp;
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& isicom_interrupt)) {
    return (1);
  } else {
  }
  return (0);
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
      irq_retval = isicom_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_32850;
    default:
    ldv_stop();
    }
    ldv_32850: ;
  } else {
  }
  return (state);
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
  goto ldv_32858;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_32858;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_32858;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_32858;
  default:
  ldv_stop();
  }
  ldv_32858: ;
  return;
}
}
void ldv_tty_port_operations_2(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1064UL);
  isicom_port_ops_group1 = (struct tty_port *)tmp;
  return;
}
}
int main(void)
{
  unsigned long ldvarg0 ;
  unsigned long tmp ;
  unsigned int ldvarg7 ;
  unsigned int tmp___0 ;
  unsigned char *ldvarg3 ;
  void *tmp___1 ;
  unsigned int ldvarg5 ;
  unsigned int tmp___2 ;
  unsigned long ldvarg6 ;
  unsigned long tmp___3 ;
  int ldvarg1 ;
  int tmp___4 ;
  struct ktermios *ldvarg8 ;
  void *tmp___5 ;
  unsigned int ldvarg4 ;
  unsigned int tmp___6 ;
  unsigned char ldvarg9 ;
  unsigned char tmp___7 ;
  int ldvarg2 ;
  int tmp___8 ;
  int ldvarg11 ;
  int tmp___9 ;
  struct tty_struct *ldvarg10 ;
  void *tmp___10 ;
  struct pci_device_id *ldvarg12 ;
  void *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp = __VERIFIER_nondet_ulong();
  ldvarg0 = tmp;
  tmp___0 = __VERIFIER_nondet_uint();
  ldvarg7 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg3 = (unsigned char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_uint();
  ldvarg5 = tmp___2;
  tmp___3 = __VERIFIER_nondet_ulong();
  ldvarg6 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg1 = tmp___4;
  tmp___5 = ldv_zalloc(44UL);
  ldvarg8 = (struct ktermios *)tmp___5;
  tmp___6 = __VERIFIER_nondet_uint();
  ldvarg4 = tmp___6;
  tmp___7 = __VERIFIER_nondet_uchar();
  ldvarg9 = tmp___7;
  tmp___8 = __VERIFIER_nondet_int();
  ldvarg2 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg11 = tmp___9;
  tmp___10 = ldv_zalloc(1752UL);
  ldvarg10 = (struct tty_struct *)tmp___10;
  tmp___11 = ldv_zalloc(32UL);
  ldvarg12 = (struct pci_device_id *)tmp___11;
  ldv_initialize();
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_32942:
  tmp___12 = __VERIFIER_nondet_int();
  switch (tmp___12) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      isicom_tx(ldvarg0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_32894;
    default:
    ldv_stop();
    }
    ldv_32894: ;
  } else {
  }
  goto ldv_32896;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_32896;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      isicom_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_32901;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = isicom_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_pci_driver_5();
        ldv_state_variable_2 = 1;
        ldv_tty_port_operations_2();
        ldv_state_variable_3 = 1;
        ldv_initialize_tty_operations_3();
        ldv_state_variable_4 = 1;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_32901;
    default:
    ldv_stop();
    }
    ldv_32901: ;
  } else {
  }
  goto ldv_32896;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_3 == 3) {
      isicom_start(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 1: ;
    if (ldv_state_variable_3 == 4) {
      isicom_throttle(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_throttle(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_throttle(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_throttle(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_throttle(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 2: ;
    if (ldv_state_variable_3 == 4) {
      isicom_put_char(isicom_ops_group1, (int )ldvarg9);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_put_char(isicom_ops_group1, (int )ldvarg9);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_put_char(isicom_ops_group1, (int )ldvarg9);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_put_char(isicom_ops_group1, (int )ldvarg9);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_put_char(isicom_ops_group1, (int )ldvarg9);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 3: ;
    if (ldv_state_variable_3 == 4) {
      isicom_hangup(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_hangup(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_hangup(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_hangup(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_hangup(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 4: ;
    if (ldv_state_variable_3 == 4) {
      isicom_unthrottle(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_unthrottle(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_unthrottle(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_unthrottle(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_unthrottle(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 5: ;
    if (ldv_state_variable_3 == 2) {
      ldv_retval_1 = isicom_open(isicom_ops_group1, isicom_ops_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 3;
      } else {
      }
    } else {
    }
    goto ldv_32906;
    case 6: ;
    if (ldv_state_variable_3 == 4) {
      isicom_set_termios(isicom_ops_group1, ldvarg8);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_set_termios(isicom_ops_group1, ldvarg8);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_set_termios(isicom_ops_group1, ldvarg8);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_set_termios(isicom_ops_group1, ldvarg8);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_set_termios(isicom_ops_group1, ldvarg8);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 7: ;
    if (ldv_state_variable_3 == 4) {
      isicom_flush_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_flush_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_flush_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_flush_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_flush_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 8: ;
    if (ldv_state_variable_3 == 4) {
      isicom_ioctl(isicom_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_ioctl(isicom_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_ioctl(isicom_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_ioctl(isicom_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_ioctl(isicom_ops_group1, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 9: ;
    if (ldv_state_variable_3 == 5) {
      isicom_stop(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_32906;
    case 10: ;
    if (ldv_state_variable_3 == 4) {
      isicom_tiocmset(isicom_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_tiocmset(isicom_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_tiocmset(isicom_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_tiocmset(isicom_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_tiocmset(isicom_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 11: ;
    if (ldv_state_variable_3 == 5) {
      isicom_write(isicom_ops_group1, (unsigned char const *)ldvarg3, ldvarg2);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 12: ;
    if (ldv_state_variable_3 == 3) {
      isicom_close(isicom_ops_group1, isicom_ops_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_32906;
    case 13: ;
    if (ldv_state_variable_3 == 4) {
      isicom_write_room(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_write_room(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_write_room(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_write_room(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_write_room(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 14: ;
    if (ldv_state_variable_3 == 4) {
      isicom_send_break(isicom_ops_group1, ldvarg1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_send_break(isicom_ops_group1, ldvarg1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_send_break(isicom_ops_group1, ldvarg1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_send_break(isicom_ops_group1, ldvarg1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_send_break(isicom_ops_group1, ldvarg1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 15: ;
    if (ldv_state_variable_3 == 4) {
      isicom_chars_in_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_chars_in_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_chars_in_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_chars_in_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_chars_in_buffer(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 16: ;
    if (ldv_state_variable_3 == 4) {
      isicom_tiocmget(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_tiocmget(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_tiocmget(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_tiocmget(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_tiocmget(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 17: ;
    if (ldv_state_variable_3 == 4) {
      isicom_flush_chars(isicom_ops_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      isicom_flush_chars(isicom_ops_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      isicom_flush_chars(isicom_ops_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      isicom_flush_chars(isicom_ops_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      isicom_flush_chars(isicom_ops_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_32906;
    case 18: ;
    if (ldv_state_variable_3 == 3) {
      ldv_disconnect_3();
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      ldv_disconnect_3();
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      ldv_disconnect_3();
      ldv_state_variable_3 = 4;
    } else {
    }
    goto ldv_32906;
    case 19: ;
    if (ldv_state_variable_3 == 4) {
      ldv_release_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_32906;
    case 20: ;
    if (ldv_state_variable_3 == 1) {
      ldv_setup_3();
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_32906;
    default:
    ldv_stop();
    }
    ldv_32906: ;
  } else {
  }
  goto ldv_32896;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      isicom_dtr_rts(isicom_port_ops_group1, ldvarg11);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      isicom_dtr_rts(isicom_port_ops_group1, ldvarg11);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      isicom_dtr_rts(isicom_port_ops_group1, ldvarg11);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_32930;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      isicom_shutdown(isicom_port_ops_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_32930;
    case 2: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_2 = isicom_activate(isicom_port_ops_group1, ldvarg10);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_32930;
    case 3: ;
    if (ldv_state_variable_2 == 1) {
      isicom_carrier_raised(isicom_port_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      isicom_carrier_raised(isicom_port_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      isicom_carrier_raised(isicom_port_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_32930;
    case 4: ;
    if (ldv_state_variable_2 == 1) {
      ldv_destruct_2();
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_32930;
    default:
    ldv_stop();
    }
    ldv_32930: ;
  } else {
  }
  goto ldv_32896;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_3 = isicom_probe(isicom_driver_group0, (struct pci_device_id const *)ldvarg12);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_32938;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      isicom_remove(isicom_driver_group0);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_32938;
    default:
    ldv_stop();
    }
    ldv_32938: ;
  } else {
  }
  goto ldv_32896;
  default:
  ldv_stop();
  }
  ldv_32896: ;
  goto ldv_32942;
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
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
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
__inline static int ldv_request_irq_20(unsigned int irq , irqreturn_t (*handler)(int ,
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
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct tty_driver *__tty_alloc_driver(unsigned int arg0, struct module *arg1, unsigned long arg2) {
  return ldv_malloc(sizeof(struct tty_driver));
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
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
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void do_SAK(struct tty_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_destruct_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_3() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_3() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
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
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_release_region(struct pci_dev *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_region(struct pci_dev *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_tty_driver(struct tty_driver *arg0) {
  return;
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
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
void tty_hangup(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_flags(struct tty_port *arg0, const unsigned char *arg1, const char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_kref_put(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_port_alloc_xmit_buf(struct tty_port *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_port_close(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return;
}
void tty_port_destroy(struct tty_port *arg0) {
  return;
}
void tty_port_free_xmit_buf(struct tty_port *arg0) {
  return;
}
void tty_port_hangup(struct tty_port *arg0) {
  return;
}
void tty_port_init(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_port_open(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return __VERIFIER_nondet_int();
}
struct device *tty_port_register_device(struct tty_port *arg0, struct tty_driver *arg1, unsigned int arg2, struct device *arg3) {
  return ldv_malloc(sizeof(struct device));
}
struct tty_struct *tty_port_tty_get(struct tty_port *arg0) {
  return ldv_malloc(sizeof(struct tty_struct));
}
int __VERIFIER_nondet_int(void);
int tty_prepare_flip_string(struct tty_port *arg0, unsigned char **arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_wakeup(struct tty_struct *arg0) {
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
