extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __u16 __le16;
typedef __u32 __le32;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
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
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
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
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
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
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct exec_domain;
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
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
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
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
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
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
typedef atomic64_t atomic_long_t;
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
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6154_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6154_31 ldv_6154 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
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
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_7336_37 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_7338_36 {
   struct __anonstruct_ldv_7336_37 ldv_7336 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_7338_36 ldv_7338 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_38 {
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
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_38 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
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
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_nodemask_t_104 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_104 nodemask_t;
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct vm_area_struct;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
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
union __anonunion_ldv_12581_132 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_12581_132 ldv_12581 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_134 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_133 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_134 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_133 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
union __anonunion_ldv_13017_135 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_13037_136 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_13053_137 {
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
   union __anonunion_ldv_13017_135 ldv_13017 ;
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
   union __anonunion_ldv_13037_136 ldv_13037 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_13053_137 ldv_13053 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
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
union __anonunion_f_u_138 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_138 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
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
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
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
struct __anonstruct_afs_140 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_139 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_140 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
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
   union __anonunion_fl_u_139 fl_u ;
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
struct file_system_type;
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
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
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
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
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
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
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
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
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
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion_ldv_16072_142 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16082_146 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16084_145 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16082_146 ldv_16082 ;
   int units ;
};
struct __anonstruct_ldv_16086_144 {
   union __anonunion_ldv_16084_145 ldv_16084 ;
   atomic_t _count ;
};
union __anonunion_ldv_16087_143 {
   unsigned long counters ;
   struct __anonstruct_ldv_16086_144 ldv_16086 ;
};
struct __anonstruct_ldv_16088_141 {
   union __anonunion_ldv_16072_142 ldv_16072 ;
   union __anonunion_ldv_16087_143 ldv_16087 ;
};
struct __anonstruct_ldv_16095_148 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16099_147 {
   struct list_head lru ;
   struct __anonstruct_ldv_16095_148 ldv_16095 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16104_149 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16088_141 ldv_16088 ;
   union __anonunion_ldv_16099_147 ldv_16099 ;
   union __anonunion_ldv_16104_149 ldv_16104 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_151 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_150 {
   struct __anonstruct_linear_151 linear ;
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
   union __anonunion_shared_150 shared ;
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
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
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
   unsigned long nr_ptes ;
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
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
struct user_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct nsproxy;
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
struct sock;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
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
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   struct sysfs_dirent *sd ;
   struct kref kref ;
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
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_21713_159 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_21713_159 ldv_21713 ;
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
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
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
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
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
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
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
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
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
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
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
struct acpi_dev_node {
   void *handle ;
};
struct dma_coherent_mem;
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
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
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
struct sg_mapping_iter {
   struct page *page ;
   void *addr ;
   size_t length ;
   size_t consumed ;
   struct scatterlist *__sg ;
   unsigned int __nents ;
   unsigned int __offset ;
   unsigned int __flags ;
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
struct mem_cgroup;
struct __anonstruct_ldv_23883_161 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_23884_160 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_23883_161 ldv_23883 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_23884_160 ldv_23884 ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct regulator;
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   int brightness ;
   int max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_165 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_165 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_168 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_169 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_171 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_172 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_173 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_166 {
   int _pad[28U] ;
   struct __anonstruct__kill_167 _kill ;
   struct __anonstruct__timer_168 _timer ;
   struct __anonstruct__rt_169 _rt ;
   struct __anonstruct__sigchld_170 _sigchld ;
   struct __anonstruct__sigfault_171 _sigfault ;
   struct __anonstruct__sigpoll_172 _sigpoll ;
   struct __anonstruct__sigsys_173 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_166 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
   struct hrtimer_clock_base clock_base[3U] ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_25472_176 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_25481_177 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_178 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_179 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_25472_176 ldv_25472 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_25481_177 ldv_25481 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_178 type_data ;
   union __anonunion_payload_179 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
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
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_180 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_180 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
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
   atomic_t files ;
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
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*migrate_task_rq)(struct task_struct * , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
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
   struct plist_head pi_waiters ;
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
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
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
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
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
   unsigned int cmd_timeout_ms ;
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
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
};
struct mmc_host;
struct mmc_card;
struct mmc_async_req;
typedef unsigned int mmc_pm_flag_t;
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
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   void (*enable_preset_value)(struct mmc_host * , bool ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   struct mutex lock ;
   void *handler_priv ;
};
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
   unsigned int max_discard_to ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   u32 ocr ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
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
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned long private[0U] ;
};
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[16U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
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
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int sectors ;
   unsigned int card_type ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool enhanced_area_en ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
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
struct sdio_func;
struct sdio_func_tuple;
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
   struct dentry *debugfs_root ;
   struct mmc_part part[6U] ;
   unsigned int nr_parts ;
};
struct sdhci_ops;
struct sdhci_host {
   char const *hw_name ;
   unsigned int quirks ;
   unsigned int quirks2 ;
   int irq ;
   void *ioaddr ;
   struct sdhci_ops const *ops ;
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
   struct mmc_host *mmc ;
   u64 dma_mask ;
   struct led_classdev led ;
   char led_name[32U] ;
   spinlock_t lock ;
   int flags ;
   unsigned int version ;
   unsigned int max_clk ;
   unsigned int timeout_clk ;
   unsigned int clk_mul ;
   unsigned int clock ;
   u8 pwr ;
   bool runtime_suspended ;
   struct mmc_request *mrq ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   unsigned char data_early : 1 ;
   struct sg_mapping_iter sg_miter ;
   unsigned int blocks ;
   int sg_count ;
   u8 *adma_desc ;
   u8 *align_buffer ;
   dma_addr_t adma_addr ;
   dma_addr_t align_addr ;
   struct tasklet_struct card_tasklet ;
   struct tasklet_struct finish_tasklet ;
   struct timer_list timer ;
   u32 caps ;
   u32 caps1 ;
   unsigned int ocr_avail_sdio ;
   unsigned int ocr_avail_sd ;
   unsigned int ocr_avail_mmc ;
   wait_queue_head_t buf_ready_int ;
   unsigned int tuning_done ;
   unsigned int tuning_count ;
   unsigned int tuning_mode ;
   struct timer_list tuning_timer ;
   unsigned long private[0U] ;
};
struct sdhci_ops {
   void (*set_clock)(struct sdhci_host * , unsigned int ) ;
   int (*enable_dma)(struct sdhci_host * ) ;
   unsigned int (*get_max_clock)(struct sdhci_host * ) ;
   unsigned int (*get_min_clock)(struct sdhci_host * ) ;
   unsigned int (*get_timeout_clock)(struct sdhci_host * ) ;
   int (*platform_8bit_width)(struct sdhci_host * , int ) ;
   void (*platform_send_init_74_clocks)(struct sdhci_host * , u8 ) ;
   unsigned int (*get_ro)(struct sdhci_host * ) ;
   void (*platform_reset_enter)(struct sdhci_host * , u8 ) ;
   void (*platform_reset_exit)(struct sdhci_host * , u8 ) ;
   int (*set_uhs_signaling)(struct sdhci_host * , unsigned int ) ;
   void (*hw_reset)(struct sdhci_host * ) ;
   void (*platform_suspend)(struct sdhci_host * ) ;
   void (*platform_resume)(struct sdhci_host * ) ;
   void (*adma_workaround)(struct sdhci_host * , u32 ) ;
   void (*platform_init)(struct sdhci_host * ) ;
};
typedef int ldv_func_ret_type___2;
long ldv__builtin_expect(long exp , long c ) ;
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void arch_local_irq_restore(unsigned long f )
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.restore_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (830), "i" (12UL));
    ldv_4735: ;
    goto ldv_4735;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.restore_fl.func), [paravirt_clobber] "i" (1),
                       "D" (f): "memory", "cc");
  return;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (835), "i" (12UL));
    ldv_4744: ;
    goto ldv_4744;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (47UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static unsigned long arch_local_irq_save(void)
{
  unsigned long f ;
  {
  f = arch_local_save_flags();
  arch_local_irq_disable();
  return (f);
}
}
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR_OR_NULL(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
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
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6177;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6177;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6177;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6177;
  default:
  __bad_percpu_size();
  }
  ldv_6177:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer(struct timer_list * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
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
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
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
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
__inline static void pagefault_disable(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
extern void synchronize_irq(unsigned int ) ;
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  pagefault_enable();
  return;
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
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
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_23069: ;
    goto ldv_23069;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_23070: ;
    goto ldv_23070;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void sg_miter_start(struct sg_mapping_iter * , struct scatterlist * , unsigned int ,
                           unsigned int ) ;
extern bool sg_miter_next(struct sg_mapping_iter * ) ;
extern void sg_miter_stop(struct sg_mapping_iter * ) ;
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
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern void debug_dma_sync_sg_for_cpu(struct device * , struct scatterlist * , int ,
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
    ldv_23544: ;
    goto ldv_23544;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, 0xffffea0000000000UL + (tmp___2 >> 12), (unsigned long )ptr & 4095UL,
                            size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, 0xffffea0000000000UL + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
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
    ldv_23553: ;
    goto ldv_23553;
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
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_23566;
  ldv_23565:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_23566: ;
  if (i < nents) {
    goto ldv_23565;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_23568: ;
    goto ldv_23568;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
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
                         "i" (65), "i" (12UL));
    ldv_23577: ;
    goto ldv_23577;
  } else {
  }
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
  } else {
  }
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
    ldv_23611: ;
    goto ldv_23611;
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
__inline static void dma_sync_sg_for_cpu(struct device *dev , struct scatterlist *sg ,
                                         int nelems , enum dma_data_direction dir )
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
                         "i" (155), "i" (12UL));
    ldv_23637: ;
    goto ldv_23637;
  } else {
  }
  if ((unsigned long )ops->sync_sg_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                         struct scatterlist * ,
                                                                         int , enum dma_data_direction ))0)) {
    (*(ops->sync_sg_for_cpu))(dev, sg, nelems, dir);
  } else {
  }
  debug_dma_sync_sg_for_cpu(dev, sg, nelems, (int )dir);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
extern struct regulator *regulator_get(struct device * , char const * ) ;
extern void regulator_put(struct regulator * ) ;
extern int regulator_enable(struct regulator * ) ;
extern int regulator_disable(struct regulator * ) ;
extern int regulator_is_supported_voltage(struct regulator * , int , int ) ;
extern int regulator_set_voltage(struct regulator * , int , int ) ;
extern int regulator_get_current_limit(struct regulator * ) ;
extern int __pm_runtime_suspend(struct device * , int ) ;
extern int __pm_runtime_resume(struct device * , int ) ;
__inline static void pm_runtime_mark_last_busy(struct device *dev )
{
  {
  *((unsigned long volatile *)(& dev->power.last_busy)) = jiffies;
  return;
}
}
__inline static int pm_runtime_get_sync(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_resume(dev, 4);
  return (tmp);
}
}
__inline static int pm_runtime_put_autosuspend(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_suspend(dev, 13);
  return (tmp);
}
}
extern int led_classdev_register(struct device * , struct led_classdev * ) ;
extern void led_classdev_unregister(struct led_classdev * ) ;
__inline static bool mmc_op_multi(u32 opcode )
{
  {
  return ((bool )(opcode == 25U || opcode == 18U));
}
}
extern long schedule_timeout(long ) ;
extern int wake_up_process(struct task_struct * ) ;
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
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern struct mmc_host *mmc_alloc_host(int , struct device * ) ;
extern int mmc_add_host(struct mmc_host * ) ;
extern void mmc_remove_host(struct mmc_host * ) ;
extern void mmc_free_host(struct mmc_host * ) ;
__inline static void *mmc_priv(struct mmc_host *host )
{
  {
  return ((void *)(& host->private));
}
}
extern int mmc_suspend_host(struct mmc_host * ) ;
extern int mmc_resume_host(struct mmc_host * ) ;
extern void mmc_detect_change(struct mmc_host * , unsigned long ) ;
extern void mmc_request_done(struct mmc_host * , struct mmc_request * ) ;
__inline static void mmc_signal_sdio_irq(struct mmc_host *host )
{
  {
  (*((host->ops)->enable_sdio_irq))(host, 0);
  host->sdio_irq_pending = 1;
  wake_up_process(host->sdio_irq_thread);
  return;
}
}
extern int mmc_regulator_set_ocr(struct mmc_host * , struct regulator * , unsigned short ) ;
extern int mmc_gpio_get_cd(struct mmc_host * ) ;
__inline static void sdhci_writel(struct sdhci_host *host , u32 val , int reg )
{
  {
  writel(val, (void volatile *)host->ioaddr + (unsigned long )reg);
  return;
}
}
__inline static void sdhci_writew(struct sdhci_host *host , u16 val , int reg )
{
  {
  writew((int )val, (void volatile *)host->ioaddr + (unsigned long )reg);
  return;
}
}
__inline static void sdhci_writeb(struct sdhci_host *host , u8 val , int reg )
{
  {
  writeb((int )val, (void volatile *)host->ioaddr + (unsigned long )reg);
  return;
}
}
__inline static u32 sdhci_readl(struct sdhci_host *host , int reg )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)host->ioaddr + (unsigned long )reg);
  return (tmp);
}
}
__inline static u16 sdhci_readw(struct sdhci_host *host , int reg )
{
  unsigned short tmp ;
  {
  tmp = readw((void const volatile *)host->ioaddr + (unsigned long )reg);
  return (tmp);
}
}
__inline static u8 sdhci_readb(struct sdhci_host *host , int reg )
{
  unsigned char tmp ;
  {
  tmp = readb((void const volatile *)host->ioaddr + (unsigned long )reg);
  return (tmp);
}
}
struct sdhci_host *sdhci_alloc_host(struct device *dev , size_t priv_size ) ;
void sdhci_free_host(struct sdhci_host *host ) ;
int sdhci_add_host(struct sdhci_host *host ) ;
void sdhci_remove_host(struct sdhci_host *host , int dead ) ;
int sdhci_suspend_host(struct sdhci_host *host ) ;
int sdhci_resume_host(struct sdhci_host *host ) ;
void sdhci_enable_irq_wakeups(struct sdhci_host *host ) ;
int sdhci_runtime_suspend_host(struct sdhci_host *host ) ;
int sdhci_runtime_resume_host(struct sdhci_host *host ) ;
static unsigned int debug_quirks = 0U;
static unsigned int debug_quirks2 ;
static void sdhci_finish_data(struct sdhci_host *host ) ;
static void sdhci_send_command(struct sdhci_host *host , struct mmc_command *cmd ) ;
static void sdhci_finish_command(struct sdhci_host *host ) ;
static int sdhci_execute_tuning(struct mmc_host *mmc , u32 opcode ) ;
static void sdhci_tuning_timer(unsigned long data ) ;
static int sdhci_runtime_pm_get(struct sdhci_host *host ) ;
static int sdhci_runtime_pm_put(struct sdhci_host *host ) ;
static void sdhci_dumpregs(struct sdhci_host *host )
{
  struct _ddebug descriptor ;
  char const *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  u16 tmp___1 ;
  u32 tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  u16 tmp___7 ;
  u32 tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  u8 tmp___10 ;
  u32 tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  u8 tmp___13 ;
  u8 tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___5 ;
  u16 tmp___16 ;
  u8 tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___6 ;
  u32 tmp___19 ;
  u8 tmp___20 ;
  long tmp___21 ;
  struct _ddebug descriptor___7 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  long tmp___24 ;
  struct _ddebug descriptor___8 ;
  u16 tmp___25 ;
  u16 tmp___26 ;
  long tmp___27 ;
  struct _ddebug descriptor___9 ;
  u32 tmp___28 ;
  u32 tmp___29 ;
  long tmp___30 ;
  struct _ddebug descriptor___10 ;
  u32 tmp___31 ;
  u16 tmp___32 ;
  long tmp___33 ;
  struct _ddebug descriptor___11 ;
  u16 tmp___34 ;
  long tmp___35 ;
  struct _ddebug descriptor___12 ;
  unsigned int tmp___36 ;
  unsigned int tmp___37 ;
  long tmp___38 ;
  struct _ddebug descriptor___13 ;
  long tmp___39 ;
  {
  descriptor.modname = "sdhci";
  descriptor.function = "sdhci_dumpregs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor.format = "sdhci: =========== REGISTER DUMP (%s)===========\n";
  descriptor.lineno = 106U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
    __dynamic_pr_debug(& descriptor, "sdhci: =========== REGISTER DUMP (%s)===========\n",
                       tmp);
  } else {
  }
  descriptor___0.modname = "sdhci";
  descriptor___0.function = "sdhci_dumpregs";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___0.format = "sdhci: Sys addr: 0x%08x | Version:  0x%08x\n";
  descriptor___0.lineno = 110U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___1 = sdhci_readw(host, 254);
    tmp___2 = sdhci_readl(host, 0);
    __dynamic_pr_debug(& descriptor___0, "sdhci: Sys addr: 0x%08x | Version:  0x%08x\n",
                       tmp___2, (int )tmp___1);
  } else {
  }
  descriptor___1.modname = "sdhci";
  descriptor___1.function = "sdhci_dumpregs";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___1.format = "sdhci: Blk size: 0x%08x | Blk cnt:  0x%08x\n";
  descriptor___1.lineno = 113U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___4 = sdhci_readw(host, 6);
    tmp___5 = sdhci_readw(host, 4);
    __dynamic_pr_debug(& descriptor___1, "sdhci: Blk size: 0x%08x | Blk cnt:  0x%08x\n",
                       (int )tmp___5, (int )tmp___4);
  } else {
  }
  descriptor___2.modname = "sdhci";
  descriptor___2.function = "sdhci_dumpregs";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___2.format = "sdhci: Argument: 0x%08x | Trn mode: 0x%08x\n";
  descriptor___2.lineno = 116U;
  descriptor___2.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___7 = sdhci_readw(host, 12);
    tmp___8 = sdhci_readl(host, 8);
    __dynamic_pr_debug(& descriptor___2, "sdhci: Argument: 0x%08x | Trn mode: 0x%08x\n",
                       tmp___8, (int )tmp___7);
  } else {
  }
  descriptor___3.modname = "sdhci";
  descriptor___3.function = "sdhci_dumpregs";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___3.format = "sdhci: Present:  0x%08x | Host ctl: 0x%08x\n";
  descriptor___3.lineno = 119U;
  descriptor___3.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___10 = sdhci_readb(host, 40);
    tmp___11 = sdhci_readl(host, 36);
    __dynamic_pr_debug(& descriptor___3, "sdhci: Present:  0x%08x | Host ctl: 0x%08x\n",
                       tmp___11, (int )tmp___10);
  } else {
  }
  descriptor___4.modname = "sdhci";
  descriptor___4.function = "sdhci_dumpregs";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___4.format = "sdhci: Power:    0x%08x | Blk gap:  0x%08x\n";
  descriptor___4.lineno = 122U;
  descriptor___4.flags = 0U;
  tmp___15 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___13 = sdhci_readb(host, 42);
    tmp___14 = sdhci_readb(host, 41);
    __dynamic_pr_debug(& descriptor___4, "sdhci: Power:    0x%08x | Blk gap:  0x%08x\n",
                       (int )tmp___14, (int )tmp___13);
  } else {
  }
  descriptor___5.modname = "sdhci";
  descriptor___5.function = "sdhci_dumpregs";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___5.format = "sdhci: Wake-up:  0x%08x | Clock:    0x%08x\n";
  descriptor___5.lineno = 125U;
  descriptor___5.flags = 0U;
  tmp___18 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___16 = sdhci_readw(host, 44);
    tmp___17 = sdhci_readb(host, 43);
    __dynamic_pr_debug(& descriptor___5, "sdhci: Wake-up:  0x%08x | Clock:    0x%08x\n",
                       (int )tmp___17, (int )tmp___16);
  } else {
  }
  descriptor___6.modname = "sdhci";
  descriptor___6.function = "sdhci_dumpregs";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___6.format = "sdhci: Timeout:  0x%08x | Int stat: 0x%08x\n";
  descriptor___6.lineno = 128U;
  descriptor___6.flags = 0U;
  tmp___21 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___21 != 0L) {
    tmp___19 = sdhci_readl(host, 48);
    tmp___20 = sdhci_readb(host, 46);
    __dynamic_pr_debug(& descriptor___6, "sdhci: Timeout:  0x%08x | Int stat: 0x%08x\n",
                       (int )tmp___20, tmp___19);
  } else {
  }
  descriptor___7.modname = "sdhci";
  descriptor___7.function = "sdhci_dumpregs";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___7.format = "sdhci: Int enab: 0x%08x | Sig enab: 0x%08x\n";
  descriptor___7.lineno = 131U;
  descriptor___7.flags = 0U;
  tmp___24 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___22 = sdhci_readl(host, 56);
    tmp___23 = sdhci_readl(host, 52);
    __dynamic_pr_debug(& descriptor___7, "sdhci: Int enab: 0x%08x | Sig enab: 0x%08x\n",
                       tmp___23, tmp___22);
  } else {
  }
  descriptor___8.modname = "sdhci";
  descriptor___8.function = "sdhci_dumpregs";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___8.format = "sdhci: AC12 err: 0x%08x | Slot int: 0x%08x\n";
  descriptor___8.lineno = 134U;
  descriptor___8.flags = 0U;
  tmp___27 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___27 != 0L) {
    tmp___25 = sdhci_readw(host, 252);
    tmp___26 = sdhci_readw(host, 60);
    __dynamic_pr_debug(& descriptor___8, "sdhci: AC12 err: 0x%08x | Slot int: 0x%08x\n",
                       (int )tmp___26, (int )tmp___25);
  } else {
  }
  descriptor___9.modname = "sdhci";
  descriptor___9.function = "sdhci_dumpregs";
  descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___9.format = "sdhci: Caps:     0x%08x | Caps_1:   0x%08x\n";
  descriptor___9.lineno = 137U;
  descriptor___9.flags = 0U;
  tmp___30 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___30 != 0L) {
    tmp___28 = sdhci_readl(host, 68);
    tmp___29 = sdhci_readl(host, 64);
    __dynamic_pr_debug(& descriptor___9, "sdhci: Caps:     0x%08x | Caps_1:   0x%08x\n",
                       tmp___29, tmp___28);
  } else {
  }
  descriptor___10.modname = "sdhci";
  descriptor___10.function = "sdhci_dumpregs";
  descriptor___10.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___10.format = "sdhci: Cmd:      0x%08x | Max curr: 0x%08x\n";
  descriptor___10.lineno = 140U;
  descriptor___10.flags = 0U;
  tmp___33 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___33 != 0L) {
    tmp___31 = sdhci_readl(host, 72);
    tmp___32 = sdhci_readw(host, 14);
    __dynamic_pr_debug(& descriptor___10, "sdhci: Cmd:      0x%08x | Max curr: 0x%08x\n",
                       (int )tmp___32, tmp___31);
  } else {
  }
  descriptor___11.modname = "sdhci";
  descriptor___11.function = "sdhci_dumpregs";
  descriptor___11.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___11.format = "sdhci: Host ctl2: 0x%08x\n";
  descriptor___11.lineno = 142U;
  descriptor___11.flags = 0U;
  tmp___35 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
  if (tmp___35 != 0L) {
    tmp___34 = sdhci_readw(host, 62);
    __dynamic_pr_debug(& descriptor___11, "sdhci: Host ctl2: 0x%08x\n", (int )tmp___34);
  } else {
  }
  if ((host->flags & 2) != 0) {
    descriptor___12.modname = "sdhci";
    descriptor___12.function = "sdhci_dumpregs";
    descriptor___12.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor___12.format = "sdhci: ADMA Err: 0x%08x | ADMA Ptr: 0x%08x\n";
    descriptor___12.lineno = 147U;
    descriptor___12.flags = 0U;
    tmp___38 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
    if (tmp___38 != 0L) {
      tmp___36 = readl((void const volatile *)host->ioaddr + 88U);
      tmp___37 = readl((void const volatile *)host->ioaddr + 84U);
      __dynamic_pr_debug(& descriptor___12, "sdhci: ADMA Err: 0x%08x | ADMA Ptr: 0x%08x\n",
                         tmp___37, tmp___36);
    } else {
    }
  } else {
  }
  descriptor___13.modname = "sdhci";
  descriptor___13.function = "sdhci_dumpregs";
  descriptor___13.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor___13.format = "sdhci: ===========================================\n";
  descriptor___13.lineno = 149U;
  descriptor___13.flags = 0U;
  tmp___39 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
  if (tmp___39 != 0L) {
    __dynamic_pr_debug(& descriptor___13, "sdhci: ===========================================\n");
  } else {
  }
  return;
}
}
static void sdhci_clear_set_irqs(struct sdhci_host *host , u32 clear , u32 set )
{
  u32 ier ;
  {
  ier = sdhci_readl(host, 52);
  ier = ~ clear & ier;
  ier = ier | set;
  sdhci_writel(host, ier, 52);
  sdhci_writel(host, ier, 56);
  return;
}
}
static void sdhci_unmask_irqs(struct sdhci_host *host , u32 irqs )
{
  {
  sdhci_clear_set_irqs(host, 0U, irqs);
  return;
}
}
static void sdhci_mask_irqs(struct sdhci_host *host , u32 irqs )
{
  {
  sdhci_clear_set_irqs(host, irqs, 0U);
  return;
}
}
static void sdhci_set_card_detection(struct sdhci_host *host , bool enable )
{
  u32 present ;
  u32 irqs ;
  u32 tmp ;
  {
  if ((host->quirks & 32768U) != 0U || ((host->mmc)->caps & 256U) != 0U) {
    return;
  } else {
  }
  tmp = sdhci_readl(host, 36);
  present = tmp & 65536U;
  irqs = present != 0U ? 128U : 64U;
  if ((int )enable) {
    sdhci_unmask_irqs(host, irqs);
  } else {
    sdhci_mask_irqs(host, irqs);
  }
  return;
}
}
static void sdhci_enable_card_detection(struct sdhci_host *host )
{
  {
  sdhci_set_card_detection(host, 1);
  return;
}
}
static void sdhci_disable_card_detection(struct sdhci_host *host )
{
  {
  sdhci_set_card_detection(host, 0);
  return;
}
}
static void sdhci_reset(struct sdhci_host *host , u8 mask )
{
  unsigned long timeout ;
  u32 ier ;
  u32 tmp ;
  char const *tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  u8 tmp___2 ;
  {
  ier = ier;
  if ((host->quirks & 4U) != 0U) {
    tmp = sdhci_readl(host, 36);
    if ((tmp & 65536U) == 0U) {
      return;
    } else {
    }
  } else {
  }
  if ((host->quirks & 524288U) != 0U) {
    ier = sdhci_readl(host, 52);
  } else {
  }
  if ((unsigned long )(host->ops)->platform_reset_enter != (unsigned long )((void (* )(struct sdhci_host * ,
                                                                                                  u8 ))0)) {
    (*((host->ops)->platform_reset_enter))(host, (int )mask);
  } else {
  }
  sdhci_writeb(host, (int )mask, 47);
  if ((int )mask & 1) {
    host->clock = 0U;
  } else {
  }
  timeout = 100UL;
  goto ldv_29011;
  ldv_29010: ;
  if (timeout == 0UL) {
    tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Reset 0x%x never completed.\n", tmp___0, (int )mask);
    sdhci_dumpregs(host);
    return;
  } else {
  }
  timeout = timeout - 1UL;
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_29008;
    ldv_29007:
    __const_udelay(4295000UL);
    ldv_29008:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_29007;
    } else {
    }
  }
  ldv_29011:
  tmp___2 = sdhci_readb(host, 47);
  if ((unsigned int )((int )tmp___2 & (int )mask) != 0U) {
    goto ldv_29010;
  } else {
  }
  if ((unsigned long )(host->ops)->platform_reset_exit != (unsigned long )((void (* )(struct sdhci_host * ,
                                                                                                 u8 ))0)) {
    (*((host->ops)->platform_reset_exit))(host, (int )mask);
  } else {
  }
  if ((host->quirks & 524288U) != 0U) {
    sdhci_clear_set_irqs(host, 4294967295U, ier);
  } else {
  }
  if ((host->flags & 3) != 0) {
    if ((unsigned long )(host->ops)->enable_dma != (unsigned long )((int (* )(struct sdhci_host * ))0) && (int )mask & 1) {
      (*((host->ops)->enable_dma))(host);
    } else {
    }
  } else {
  }
  return;
}
}
static void sdhci_set_ios(struct mmc_host *mmc , struct mmc_ios *ios ) ;
static void sdhci_init(struct sdhci_host *host , int soft )
{
  {
  if (soft != 0) {
    sdhci_reset(host, 6);
  } else {
    sdhci_reset(host, 1);
  }
  sdhci_clear_set_irqs(host, 4294967295U, 16711683U);
  if (soft != 0) {
    host->clock = 0U;
    sdhci_set_ios(host->mmc, & (host->mmc)->ios);
  } else {
  }
  return;
}
}
static void sdhci_reinit(struct sdhci_host *host )
{
  {
  sdhci_init(host, 0);
  if ((host->flags & 2048) != 0) {
    host->flags = host->flags & -2049;
    del_timer_sync(& host->tuning_timer);
    host->flags = host->flags & -33;
    (host->mmc)->max_blk_count = (host->quirks & 2097152U) != 0U ? 1U : 65535U;
  } else {
  }
  sdhci_enable_card_detection(host);
  return;
}
}
static void sdhci_activate_led(struct sdhci_host *host )
{
  u8 ctrl ;
  {
  ctrl = sdhci_readb(host, 40);
  ctrl = (u8 )((unsigned int )ctrl | 1U);
  sdhci_writeb(host, (int )ctrl, 40);
  return;
}
}
static void sdhci_deactivate_led(struct sdhci_host *host )
{
  u8 ctrl ;
  {
  ctrl = sdhci_readb(host, 40);
  ctrl = (unsigned int )ctrl & 254U;
  sdhci_writeb(host, (int )ctrl, 40);
  return;
}
}
static void sdhci_led_control(struct led_classdev *led , enum led_brightness brightness )
{
  struct sdhci_host *host ;
  struct led_classdev const *__mptr ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  __mptr = (struct led_classdev const *)led;
  host = (struct sdhci_host *)__mptr + 0xffffffffffffffb8UL;
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((int )host->runtime_suspended) {
    goto out;
  } else {
  }
  if ((unsigned int )brightness == 0U) {
    sdhci_deactivate_led(host);
  } else {
    sdhci_activate_led(host);
  }
  out:
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static void sdhci_read_block_pio(struct sdhci_host *host )
{
  unsigned long flags ;
  size_t blksize ;
  size_t len ;
  size_t chunk ;
  u32 scratch ;
  u8 *buf ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  size_t _min1 ;
  size_t _min2 ;
  int tmp___2 ;
  {
  scratch = scratch;
  descriptor.modname = "sdhci";
  descriptor.function = "sdhci_read_block_pio";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor.format = "sdhci [%s()]: PIO reading\n";
  descriptor.lineno = 349U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "sdhci [%s()]: PIO reading\n", "sdhci_read_block_pio");
  } else {
  }
  blksize = (size_t )(host->data)->blksz;
  chunk = 0UL;
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  goto ldv_29065;
  ldv_29064:
  tmp___0 = sg_miter_next(& host->sg_miter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (358), "i" (12UL));
    ldv_29057: ;
    goto ldv_29057;
  } else {
  }
  _min1 = host->sg_miter.length;
  _min2 = blksize;
  len = _min1 < _min2 ? _min1 : _min2;
  blksize = blksize - len;
  host->sg_miter.consumed = len;
  buf = (u8 *)host->sg_miter.addr;
  goto ldv_29062;
  ldv_29061: ;
  if (chunk == 0UL) {
    scratch = sdhci_readl(host, 32);
    chunk = 4UL;
  } else {
  }
  *buf = (u8 )scratch;
  buf = buf + 1;
  scratch = scratch >> 8;
  chunk = chunk - 1UL;
  len = len - 1UL;
  ldv_29062: ;
  if (len != 0UL) {
    goto ldv_29061;
  } else {
  }
  ldv_29065: ;
  if (blksize != 0UL) {
    goto ldv_29064;
  } else {
  }
  sg_miter_stop(& host->sg_miter);
  tmp___2 = arch_irqs_disabled_flags(flags);
  if (tmp___2 != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  return;
}
}
static void sdhci_write_block_pio(struct sdhci_host *host )
{
  unsigned long flags ;
  size_t blksize ;
  size_t len ;
  size_t chunk ;
  u32 scratch ;
  u8 *buf ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  size_t _min1 ;
  size_t _min2 ;
  int tmp___2 ;
  {
  descriptor.modname = "sdhci";
  descriptor.function = "sdhci_write_block_pio";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor.format = "sdhci [%s()]: PIO writing\n";
  descriptor.lineno = 394U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "sdhci [%s()]: PIO writing\n", "sdhci_write_block_pio");
  } else {
  }
  blksize = (size_t )(host->data)->blksz;
  chunk = 0UL;
  scratch = 0U;
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  goto ldv_29099;
  ldv_29098:
  tmp___0 = sg_miter_next(& host->sg_miter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (404), "i" (12UL));
    ldv_29091: ;
    goto ldv_29091;
  } else {
  }
  _min1 = host->sg_miter.length;
  _min2 = blksize;
  len = _min1 < _min2 ? _min1 : _min2;
  blksize = blksize - len;
  host->sg_miter.consumed = len;
  buf = (u8 *)host->sg_miter.addr;
  goto ldv_29096;
  ldv_29095:
  scratch = ((unsigned int )*buf << (int )((unsigned int )chunk * 8U)) | scratch;
  buf = buf + 1;
  chunk = chunk + 1UL;
  len = len - 1UL;
  if (chunk == 4UL || (len == 0UL && blksize == 0UL)) {
    sdhci_writel(host, scratch, 32);
    chunk = 0UL;
    scratch = 0U;
  } else {
  }
  ldv_29096: ;
  if (len != 0UL) {
    goto ldv_29095;
  } else {
  }
  ldv_29099: ;
  if (blksize != 0UL) {
    goto ldv_29098;
  } else {
  }
  sg_miter_stop(& host->sg_miter);
  tmp___2 = arch_irqs_disabled_flags(flags);
  if (tmp___2 != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  return;
}
}
static void sdhci_transfer_pio(struct sdhci_host *host )
{
  u32 mask ;
  long tmp ;
  u32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect((unsigned long )host->data == (unsigned long )((struct mmc_data *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (437), "i" (12UL));
    ldv_29115: ;
    goto ldv_29115;
  } else {
  }
  if (host->blocks == 0U) {
    return;
  } else {
  }
  if (((host->data)->flags & 512U) != 0U) {
    mask = 2048U;
  } else {
    mask = 1024U;
  }
  if ((host->quirks & 8192U) != 0U && (host->data)->blocks == 1U) {
    mask = 4294967295U;
  } else {
  }
  goto ldv_29118;
  ldv_29117: ;
  if ((host->quirks & 262144U) != 0U) {
    __const_udelay(429500UL);
  } else {
  }
  if (((host->data)->flags & 512U) != 0U) {
    sdhci_read_block_pio(host);
  } else {
    sdhci_write_block_pio(host);
  }
  host->blocks = host->blocks - 1U;
  if (host->blocks == 0U) {
    goto ldv_29116;
  } else {
  }
  ldv_29118:
  tmp___0 = sdhci_readl(host, 36);
  if ((tmp___0 & mask) != 0U) {
    goto ldv_29117;
  } else {
  }
  ldv_29116:
  descriptor.modname = "sdhci";
  descriptor.function = "sdhci_transfer_pio";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor.format = "sdhci [%s()]: PIO transfer complete.\n";
  descriptor.lineno = 470U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor, "sdhci [%s()]: PIO transfer complete.\n", "sdhci_transfer_pio");
  } else {
  }
  return;
}
}
static char *sdhci_kmap_atomic(struct scatterlist *sg , unsigned long *flags )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  *flags = arch_local_irq_save();
  trace_hardirqs_off();
  tmp = sg_page(sg);
  tmp___0 = kmap_atomic(tmp);
  return ((char *)tmp___0 + (unsigned long )sg->offset);
}
}
static void sdhci_kunmap_atomic(void *buffer , unsigned long *flags )
{
  int tmp ;
  {
  __kunmap_atomic(buffer);
  tmp = arch_irqs_disabled_flags(*flags);
  if (tmp != 0) {
    arch_local_irq_restore(*flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(*flags);
  }
  return;
}
}
static void sdhci_set_adma_desc(u8 *desc , u32 addr , int len , unsigned int cmd )
{
  __le32 *dataddr ;
  __le16 *cmdlen ;
  {
  dataddr = (__le32 *)desc + 4U;
  cmdlen = (__le16 *)desc;
  *cmdlen = (unsigned short )cmd;
  *(cmdlen + 1UL) = (unsigned short )len;
  *dataddr = addr;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
static int sdhci_adma_table_pre(struct sdhci_host *host , struct mmc_data *data )
{
  int direction ;
  u8 *desc ;
  u8 *align ;
  dma_addr_t addr ;
  dma_addr_t align_addr ;
  int len ;
  int offset ;
  struct scatterlist *sg ;
  int i ;
  char *buffer ;
  unsigned long flags ;
  int tmp ;
  long tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  size_t __len ;
  void *__ret ;
  long tmp___2 ;
  long tmp___3 ;
  int __ret_warn_on___0 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  {
  if ((data->flags & 512U) != 0U) {
    direction = 2;
  } else {
    direction = 1;
  }
  host->align_addr = dma_map_single_attrs((host->mmc)->parent, (void *)host->align_buffer,
                                          512UL, (enum dma_data_direction )direction,
                                          0);
  tmp = dma_mapping_error((host->mmc)->parent, host->align_addr);
  if (tmp != 0) {
    goto fail;
  } else {
  }
  tmp___0 = ldv__builtin_expect((host->align_addr & 3ULL) != 0ULL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (534), "i" (12UL));
    ldv_29166: ;
    goto ldv_29166;
  } else {
  }
  host->sg_count = dma_map_sg_attrs((host->mmc)->parent, data->sg, (int )data->sg_len,
                                    (enum dma_data_direction )direction, 0);
  if (host->sg_count == 0) {
    goto unmap_align;
  } else {
  }
  desc = host->adma_desc;
  align = host->align_buffer;
  align_addr = host->align_addr;
  i = 0;
  sg = data->sg;
  goto ldv_29178;
  ldv_29177:
  addr = sg->dma_address;
  len = (int )sg->dma_length;
  offset = (int )(- ((unsigned int )addr)) & 3;
  if (offset != 0) {
    if ((data->flags & 256U) != 0U) {
      buffer = sdhci_kmap_atomic(sg, & flags);
      __ret_warn_on = ((unsigned long )buffer & 0xfffffffffffff000UL) > 4093UL;
      tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___1 != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                           561);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      __len = (size_t )offset;
      __ret = memcpy((void *)align, (void const *)buffer, __len);
      sdhci_kunmap_atomic((void *)buffer, & flags);
    } else {
    }
    sdhci_set_adma_desc(desc, (u32 )align_addr, offset, 33U);
    tmp___2 = ldv__builtin_expect(offset > 65536, 0L);
    if (tmp___2 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                           "i" (569), "i" (12UL));
      ldv_29173: ;
      goto ldv_29173;
    } else {
    }
    align = align + 4UL;
    align_addr = align_addr + 4ULL;
    desc = desc + 8UL;
    addr = (dma_addr_t )offset + addr;
    len = len - offset;
  } else {
  }
  tmp___3 = ldv__builtin_expect(len > 65536, 0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (580), "i" (12UL));
    ldv_29174: ;
    goto ldv_29174;
  } else {
  }
  sdhci_set_adma_desc(desc, (u32 )addr, len, 33U);
  desc = desc + 8UL;
  __ret_warn_on___0 = (long )desc - (long )host->adma_desc > 1028L;
  tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___4 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       590);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  i = i + 1;
  sg = sg_next(sg);
  ldv_29178: ;
  if (host->sg_count > i) {
    goto ldv_29177;
  } else {
  }
  if ((host->quirks & 67108864U) != 0U) {
    if ((unsigned long )host->adma_desc != (unsigned long )desc) {
      desc = desc + 0xfffffffffffffff8UL;
      *desc = (u8 )((unsigned int )*desc | 2U);
    } else {
      sdhci_set_adma_desc(desc, 0U, 0, 3U);
    }
  } else {
  }
  if ((data->flags & 256U) != 0U) {
    dma_sync_single_for_device((host->mmc)->parent, host->align_addr, 512UL, (enum dma_data_direction )direction);
  } else {
  }
  host->adma_addr = dma_map_single_attrs((host->mmc)->parent, (void *)host->adma_desc,
                                         1028UL, 1, 0);
  tmp___5 = dma_mapping_error((host->mmc)->parent, host->adma_addr);
  if (tmp___5 != 0) {
    goto unmap_entries;
  } else {
  }
  tmp___6 = ldv__builtin_expect((host->adma_addr & 3ULL) != 0ULL, 0L);
  if (tmp___6 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (622), "i" (12UL));
    ldv_29181: ;
    goto ldv_29181;
  } else {
  }
  return (0);
  unmap_entries:
  dma_unmap_sg_attrs((host->mmc)->parent, data->sg, (int )data->sg_len, (enum dma_data_direction )direction,
                     0);
  unmap_align:
  dma_unmap_single_attrs((host->mmc)->parent, host->align_addr, 512UL, (enum dma_data_direction )direction,
                         0);
  fail: ;
  return (-22);
}
}
static void sdhci_adma_table_post(struct sdhci_host *host , struct mmc_data *data )
{
  int direction ;
  struct scatterlist *sg ;
  int i ;
  int size ;
  u8 *align ;
  char *buffer ;
  unsigned long flags ;
  int __ret_warn_on ;
  long tmp ;
  size_t __len ;
  void *__ret ;
  {
  if ((data->flags & 512U) != 0U) {
    direction = 2;
  } else {
    direction = 1;
  }
  dma_unmap_single_attrs((host->mmc)->parent, host->adma_addr, 1028UL, 1, 0);
  dma_unmap_single_attrs((host->mmc)->parent, host->align_addr, 512UL, (enum dma_data_direction )direction,
                         0);
  if ((data->flags & 512U) != 0U) {
    dma_sync_sg_for_cpu((host->mmc)->parent, data->sg, (int )data->sg_len, (enum dma_data_direction )direction);
    align = host->align_buffer;
    i = 0;
    sg = data->sg;
    goto ldv_29199;
    ldv_29198: ;
    if ((sg->dma_address & 3ULL) != 0ULL) {
      size = (int )(4U - ((unsigned int )sg->dma_address & 3U));
      buffer = sdhci_kmap_atomic(sg, & flags);
      __ret_warn_on = ((unsigned long )buffer & 0xfffffffffffff000UL) > 4093UL;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                           669);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      __len = (size_t )size;
      __ret = memcpy((void *)buffer, (void const *)align, __len);
      sdhci_kunmap_atomic((void *)buffer, & flags);
      align = align + 4UL;
    } else {
    }
    i = i + 1;
    sg = sg_next(sg);
    ldv_29199: ;
    if (host->sg_count > i) {
      goto ldv_29198;
    } else {
    }
  } else {
  }
  dma_unmap_sg_attrs((host->mmc)->parent, data->sg, (int )data->sg_len, (enum dma_data_direction )direction,
                     0);
  return;
}
}
static u8 sdhci_calc_timeout(struct sdhci_host *host , struct mmc_command *cmd )
{
  u8 count ;
  struct mmc_data *data ;
  unsigned int target_timeout ;
  unsigned int current_timeout ;
  struct _ddebug descriptor ;
  char const *tmp ;
  long tmp___0 ;
  {
  data = cmd->data;
  if ((host->quirks & 4096U) != 0U) {
    return (14U);
  } else {
  }
  if ((unsigned long )data == (unsigned long )((struct mmc_data *)0) && cmd->cmd_timeout_ms == 0U) {
    return (14U);
  } else {
  }
  if ((unsigned long )data == (unsigned long )((struct mmc_data *)0)) {
    target_timeout = cmd->cmd_timeout_ms * 1000U;
  } else {
    target_timeout = data->timeout_ns / 1000U;
    if (host->clock != 0U) {
      target_timeout = data->timeout_clks / host->clock + target_timeout;
    } else {
    }
  }
  count = 0U;
  current_timeout = 8192000U / host->timeout_clk;
  goto ldv_29211;
  ldv_29210:
  count = (u8 )((int )count + 1);
  current_timeout = current_timeout << 1;
  if ((unsigned int )count > 14U) {
    goto ldv_29209;
  } else {
  }
  ldv_29211: ;
  if (current_timeout < target_timeout) {
    goto ldv_29210;
  } else {
  }
  ldv_29209: ;
  if ((unsigned int )count > 14U) {
    descriptor.modname = "sdhci";
    descriptor.function = "sdhci_calc_timeout";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor.format = "sdhci [%s()]: %s: Too large timeout 0x%x requested for CMD%d!\n";
    descriptor.lineno = 731U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
      __dynamic_pr_debug(& descriptor, "sdhci [%s()]: %s: Too large timeout 0x%x requested for CMD%d!\n",
                         "sdhci_calc_timeout", tmp, (int )count, cmd->opcode);
    } else {
    }
    count = 14U;
  } else {
  }
  return (count);
}
}
static void sdhci_set_transfer_irqs(struct sdhci_host *host )
{
  u32 pio_irqs ;
  u32 dma_irqs ;
  {
  pio_irqs = 48U;
  dma_irqs = 33554440U;
  if ((host->flags & 4) != 0) {
    sdhci_clear_set_irqs(host, pio_irqs, dma_irqs);
  } else {
    sdhci_clear_set_irqs(host, dma_irqs, pio_irqs);
  }
  return;
}
}
static void sdhci_prepare_data(struct sdhci_host *host , struct mmc_command *cmd )
{
  u8 count ;
  u8 ctrl ;
  struct mmc_data *data ;
  int ret ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int broken ;
  int i ;
  struct scatterlist *sg ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  long tmp___4 ;
  int broken___0 ;
  int i___0 ;
  struct scatterlist *sg___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___5 ;
  long tmp___6 ;
  int __ret_warn_on___0 ;
  long tmp___7 ;
  int sg_cnt ;
  int __ret_warn_on___1 ;
  long tmp___8 ;
  int __ret_warn_on___2 ;
  long tmp___9 ;
  int flags ;
  {
  data = cmd->data;
  __ret_warn_on = (unsigned long )host->data != (unsigned long )((struct mmc_data *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       756);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )data != (unsigned long )((struct mmc_data *)0) || (cmd->flags & 8U) != 0U) {
    count = sdhci_calc_timeout(host, cmd);
    sdhci_writeb(host, (int )count, 46);
  } else {
  }
  if ((unsigned long )data == (unsigned long )((struct mmc_data *)0)) {
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(data->blksz * data->blocks > 524288U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (767), "i" (12UL));
    ldv_29229: ;
    goto ldv_29229;
  } else {
  }
  tmp___1 = ldv__builtin_expect(data->blksz > (host->mmc)->max_blk_size, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (768), "i" (12UL));
    ldv_29230: ;
    goto ldv_29230;
  } else {
  }
  tmp___2 = ldv__builtin_expect(data->blocks > 65535U, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (769), "i" (12UL));
    ldv_29231: ;
    goto ldv_29231;
  } else {
  }
  host->data = data;
  host->data_early = 0U;
  (host->data)->bytes_xfered = 0U;
  if ((host->flags & 3) != 0) {
    host->flags = host->flags | 4;
  } else {
  }
  if ((host->flags & 4) != 0) {
    broken = 0;
    if ((host->flags & 2) != 0) {
      if ((host->quirks & 512U) != 0U) {
        broken = 1;
      } else
      if ((host->quirks & 256U) != 0U) {
        broken = 1;
      } else {
      }
    } else {
    }
    tmp___4 = ldv__builtin_expect(broken != 0, 0L);
    if (tmp___4 != 0L) {
      i = 0;
      sg = data->sg;
      goto ldv_29239;
      ldv_29238: ;
      if ((sg->length & 3U) != 0U) {
        descriptor.modname = "sdhci";
        descriptor.function = "sdhci_prepare_data";
        descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
        descriptor.format = "sdhci [%s()]: Reverting to PIO because of transfer size (%d)\n";
        descriptor.lineno = 800U;
        descriptor.flags = 0U;
        tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___3 != 0L) {
          __dynamic_pr_debug(& descriptor, "sdhci [%s()]: Reverting to PIO because of transfer size (%d)\n",
                             "sdhci_prepare_data", sg->length);
        } else {
        }
        host->flags = host->flags & -5;
        goto ldv_29237;
      } else {
      }
      i = i + 1;
      sg = sg_next(sg);
      ldv_29239: ;
      if ((unsigned int )i < data->sg_len) {
        goto ldv_29238;
      } else {
      }
      ldv_29237: ;
    } else {
    }
  } else {
  }
  if ((host->flags & 4) != 0) {
    broken___0 = 0;
    if ((host->flags & 2) != 0) {
      if ((host->quirks & 512U) != 0U) {
        broken___0 = 1;
      } else
      if ((host->quirks & 128U) != 0U) {
        broken___0 = 1;
      } else {
      }
    } else {
    }
    tmp___6 = ldv__builtin_expect(broken___0 != 0, 0L);
    if (tmp___6 != 0L) {
      i___0 = 0;
      sg___0 = data->sg;
      goto ldv_29246;
      ldv_29245: ;
      if ((sg___0->offset & 3U) != 0U) {
        descriptor___0.modname = "sdhci";
        descriptor___0.function = "sdhci_prepare_data";
        descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
        descriptor___0.format = "sdhci [%s()]: Reverting to PIO because of bad alignment\n";
        descriptor___0.lineno = 834U;
        descriptor___0.flags = 0U;
        tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___5 != 0L) {
          __dynamic_pr_debug(& descriptor___0, "sdhci [%s()]: Reverting to PIO because of bad alignment\n",
                             "sdhci_prepare_data");
        } else {
        }
        host->flags = host->flags & -5;
        goto ldv_29244;
      } else {
      }
      i___0 = i___0 + 1;
      sg___0 = sg_next(sg___0);
      ldv_29246: ;
      if ((unsigned int )i___0 < data->sg_len) {
        goto ldv_29245;
      } else {
      }
      ldv_29244: ;
    } else {
    }
  } else {
  }
  if ((host->flags & 4) != 0) {
    if ((host->flags & 2) != 0) {
      ret = sdhci_adma_table_pre(host, data);
      if (ret != 0) {
        __ret_warn_on___0 = 1;
        tmp___7 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
        if (tmp___7 != 0L) {
          warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                             850);
        } else {
        }
        ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
        host->flags = host->flags & -5;
      } else {
        sdhci_writel(host, (u32 )host->adma_addr, 88);
      }
    } else {
      sg_cnt = dma_map_sg_attrs((host->mmc)->parent, data->sg, (int )data->sg_len,
                                (data->flags & 512U) != 0U ? 2 : 1, 0);
      if (sg_cnt == 0) {
        __ret_warn_on___1 = 1;
        tmp___8 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
        if (tmp___8 != 0L) {
          warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                             869);
        } else {
        }
        ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
        host->flags = host->flags & -5;
      } else {
        __ret_warn_on___2 = sg_cnt != 1;
        tmp___9 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
        if (tmp___9 != 0L) {
          warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                             872);
        } else {
        }
        ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
        sdhci_writel(host, (u32 )(data->sg)->dma_address, 0);
      }
    }
  } else {
  }
  if (host->version != 0U) {
    ctrl = sdhci_readb(host, 40);
    ctrl = (unsigned int )ctrl & 231U;
    if ((host->flags & 4) != 0 && (host->flags & 2) != 0) {
      ctrl = (u8 )((unsigned int )ctrl | 16U);
    } else {
      ctrl = ctrl;
    }
    sdhci_writeb(host, (int )ctrl, 40);
  } else {
  }
  if ((host->flags & 4) == 0) {
    flags = 1;
    if (((host->data)->flags & 512U) != 0U) {
      flags = flags | 2;
    } else {
      flags = flags | 4;
    }
    sg_miter_start(& host->sg_miter, data->sg, data->sg_len, (unsigned int )flags);
    host->blocks = data->blocks;
  } else {
  }
  sdhci_set_transfer_irqs(host);
  sdhci_writew(host, (int )(((unsigned int )((u16 )data->blksz) & 4095U) | 28672U),
               4);
  sdhci_writew(host, (int )((u16 )data->blocks), 6);
  return;
}
}
static void sdhci_set_transfer_mode(struct sdhci_host *host , struct mmc_command *cmd )
{
  u16 mode ;
  struct mmc_data *data ;
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  {
  data = cmd->data;
  if ((unsigned long )data == (unsigned long )((struct mmc_data *)0)) {
    return;
  } else {
  }
  __ret_warn_on = (unsigned long )host->data == (unsigned long )((struct mmc_data *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       924);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  mode = 2U;
  tmp___0 = mmc_op_multi(cmd->opcode);
  if ((int )tmp___0 || data->blocks > 1U) {
    mode = (u16 )((unsigned int )mode | 32U);
    if ((unsigned long )(host->mrq)->sbc == (unsigned long )((struct mmc_command *)0) && (host->flags & 64) != 0) {
      mode = (u16 )((unsigned int )mode | 4U);
    } else
    if ((unsigned long )(host->mrq)->sbc != (unsigned long )((struct mmc_command *)0) && (host->flags & 128) != 0) {
      mode = (u16 )((unsigned int )mode | 8U);
      sdhci_writel(host, ((host->mrq)->sbc)->arg, 0);
    } else {
    }
  } else {
  }
  if ((data->flags & 512U) != 0U) {
    mode = (u16 )((unsigned int )mode | 16U);
  } else {
  }
  if ((host->flags & 4) != 0) {
    mode = (u16 )((unsigned int )mode | 1U);
  } else {
  }
  sdhci_writew(host, (int )mode, 12);
  return;
}
}
static void sdhci_finish_data(struct sdhci_host *host )
{
  struct mmc_data *data ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )host->data == (unsigned long )((struct mmc_data *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (953), "i" (12UL));
    ldv_29267: ;
    goto ldv_29267;
  } else {
  }
  data = host->data;
  host->data = 0;
  if ((host->flags & 4) != 0) {
    if ((host->flags & 2) != 0) {
      sdhci_adma_table_post(host, data);
    } else {
      dma_unmap_sg_attrs((host->mmc)->parent, data->sg, (int )data->sg_len, (data->flags & 512U) != 0U ? 2 : 1,
                         0);
    }
  } else {
  }
  if (data->error != 0U) {
    data->bytes_xfered = 0U;
  } else {
    data->bytes_xfered = data->blksz * data->blocks;
  }
  if ((unsigned long )data->stop != (unsigned long )((struct mmc_command *)0) && (data->error != 0U || (unsigned long )(host->mrq)->sbc == (unsigned long )((struct mmc_command *)0))) {
    if (data->error != 0U) {
      sdhci_reset(host, 2);
      sdhci_reset(host, 4);
    } else {
    }
    sdhci_send_command(host, data->stop);
  } else {
    tasklet_schedule(& host->finish_tasklet);
  }
  return;
}
}
static void sdhci_send_command(struct sdhci_host *host , struct mmc_command *cmd )
{
  int flags ;
  u32 mask ;
  unsigned long timeout ;
  int __ret_warn_on ;
  long tmp ;
  char const *tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  u32 tmp___2 ;
  char const *tmp___3 ;
  {
  __ret_warn_on = (unsigned long )host->cmd != (unsigned long )((struct mmc_command *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       1009);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  timeout = 10UL;
  mask = 1U;
  if ((unsigned long )cmd->data != (unsigned long )((struct mmc_data *)0) || (cmd->flags & 8U) != 0U) {
    mask = mask | 2U;
  } else {
  }
  if ((unsigned long )(host->mrq)->data != (unsigned long )((struct mmc_data *)0) && (unsigned long )((host->mrq)->data)->stop == (unsigned long )cmd) {
    mask = mask & 4294967293U;
  } else {
  }
  goto ldv_29282;
  ldv_29281: ;
  if (timeout == 0UL) {
    tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Controller never released inhibit bit(s).\n", tmp___0);
    sdhci_dumpregs(host);
    cmd->error = 4294967291U;
    tasklet_schedule(& host->finish_tasklet);
    return;
  } else {
  }
  timeout = timeout - 1UL;
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_29279;
    ldv_29278:
    __const_udelay(4295000UL);
    ldv_29279:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_29278;
    } else {
    }
  }
  ldv_29282:
  tmp___2 = sdhci_readl(host, 36);
  if ((tmp___2 & mask) != 0U) {
    goto ldv_29281;
  } else {
  }
  mod_timer(& host->timer, (unsigned long )jiffies + 2500UL);
  host->cmd = cmd;
  sdhci_prepare_data(host, cmd);
  sdhci_writel(host, cmd->arg, 8);
  sdhci_set_transfer_mode(host, cmd);
  if ((cmd->flags & 2U) != 0U && (cmd->flags & 8U) != 0U) {
    tmp___3 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Unsupported response type!\n", tmp___3);
    cmd->error = 4294967274U;
    tasklet_schedule(& host->finish_tasklet);
    return;
  } else {
  }
  if ((cmd->flags & 1U) == 0U) {
    flags = 0;
  } else
  if ((cmd->flags & 2U) != 0U) {
    flags = 1;
  } else
  if ((cmd->flags & 8U) != 0U) {
    flags = 3;
  } else {
    flags = 2;
  }
  if ((cmd->flags & 4U) != 0U) {
    flags = flags | 8;
  } else {
  }
  if ((cmd->flags & 16U) != 0U) {
    flags = flags | 16;
  } else {
  }
  if (((unsigned long )cmd->data != (unsigned long )((struct mmc_data *)0) || cmd->opcode == 19U) || cmd->opcode == 21U) {
    flags = flags | 32;
  } else {
  }
  sdhci_writew(host, (int )((unsigned int )((int )((u16 )cmd->opcode) << 8U) | ((unsigned int )((u16 )flags) & 255U)),
               14);
  return;
}
}
static void sdhci_finish_command(struct sdhci_host *host )
{
  int i ;
  long tmp ;
  u32 tmp___0 ;
  u8 tmp___1 ;
  {
  tmp = ldv__builtin_expect((unsigned long )host->cmd == (unsigned long )((struct mmc_command *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (1080), "i" (12UL));
    ldv_29288: ;
    goto ldv_29288;
  } else {
  }
  if ((int )(host->cmd)->flags & 1) {
    if (((host->cmd)->flags & 2U) != 0U) {
      i = 0;
      goto ldv_29290;
      ldv_29289:
      tmp___0 = sdhci_readl(host, (7 - i) * 4);
      (host->cmd)->resp[i] = tmp___0 << 8;
      if (i != 3) {
        tmp___1 = sdhci_readb(host, (7 - i) * 4 + -1);
        (host->cmd)->resp[i] = (host->cmd)->resp[i] | (u32 )tmp___1;
      } else {
      }
      i = i + 1;
      ldv_29290: ;
      if (i <= 3) {
        goto ldv_29289;
      } else {
      }
    } else {
      (host->cmd)->resp[0] = sdhci_readl(host, 16);
    }
  } else {
  }
  (host->cmd)->error = 0U;
  if ((unsigned long )host->cmd == (unsigned long )(host->mrq)->sbc) {
    host->cmd = 0;
    sdhci_send_command(host, (host->mrq)->cmd);
  } else {
    if ((unsigned long )host->data != (unsigned long )((struct mmc_data *)0) && (unsigned int )*((unsigned char *)host + 736UL) != 0U) {
      sdhci_finish_data(host);
    } else {
    }
    if ((unsigned long )(host->cmd)->data == (unsigned long )((struct mmc_data *)0)) {
      tasklet_schedule(& host->finish_tasklet);
    } else {
    }
    host->cmd = 0;
  }
  return;
}
}
static void sdhci_set_clock(struct sdhci_host *host , unsigned int clock )
{
  int div ;
  int real_div ;
  int clk_mul ;
  u16 clk ;
  unsigned long timeout ;
  u16 ctrl ;
  char const *tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  div = 0;
  real_div = div;
  clk_mul = 1;
  clk = 0U;
  if (clock != 0U && host->clock == clock) {
    return;
  } else {
  }
  (host->mmc)->actual_clock = 0U;
  if ((unsigned long )(host->ops)->set_clock != (unsigned long )((void (* )(struct sdhci_host * ,
                                                                                       unsigned int ))0)) {
    (*((host->ops)->set_clock))(host, clock);
    if ((host->quirks & 131072U) != 0U) {
      return;
    } else {
    }
  } else {
  }
  sdhci_writew(host, 0, 44);
  if (clock == 0U) {
    goto out;
  } else {
  }
  if (host->version > 1U) {
    if (host->clk_mul != 0U) {
      ctrl = sdhci_readw(host, 62);
      if ((int )((short )ctrl) >= 0) {
        div = 1;
        goto ldv_29305;
        ldv_29304: ;
        if ((host->max_clk * host->clk_mul) / (unsigned int )div <= clock) {
          goto ldv_29303;
        } else {
        }
        div = div + 1;
        ldv_29305: ;
        if (div <= 1024) {
          goto ldv_29304;
        } else {
        }
        ldv_29303:
        clk = 32U;
        real_div = div;
        clk_mul = (int )host->clk_mul;
        div = div - 1;
      } else {
      }
    } else {
      if (host->max_clk <= clock) {
        div = 1;
      } else {
        div = 2;
        goto ldv_29308;
        ldv_29307: ;
        if (host->max_clk / (unsigned int )div <= clock) {
          goto ldv_29306;
        } else {
        }
        div = div + 2;
        ldv_29308: ;
        if (div <= 2045) {
          goto ldv_29307;
        } else {
        }
        ldv_29306: ;
      }
      real_div = div;
      div = div >> 1;
    }
  } else {
    div = 1;
    goto ldv_29311;
    ldv_29310: ;
    if (host->max_clk / (unsigned int )div <= clock) {
      goto ldv_29309;
    } else {
    }
    div = div * 2;
    ldv_29311: ;
    if (div <= 255) {
      goto ldv_29310;
    } else {
    }
    ldv_29309:
    real_div = div;
    div = div >> 1;
  }
  if (real_div != 0) {
    (host->mmc)->actual_clock = (host->max_clk * (unsigned int )clk_mul) / (unsigned int )real_div;
  } else {
  }
  clk = (u16 )((int )((short )(div << 8)) | (int )((short )clk));
  clk = (u16 )((int )((short )(((div & 768) >> 8) << 6)) | (int )((short )clk));
  clk = (u16 )((unsigned int )clk | 1U);
  sdhci_writew(host, (int )clk, 44);
  timeout = 20UL;
  goto ldv_29317;
  ldv_29316: ;
  if (timeout == 0UL) {
    tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Internal clock never stabilised.\n", tmp);
    sdhci_dumpregs(host);
    return;
  } else {
  }
  timeout = timeout - 1UL;
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_29314;
    ldv_29313:
    __const_udelay(4295000UL);
    ldv_29314:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_29313;
    } else {
    }
  }
  ldv_29317:
  clk = sdhci_readw(host, 44);
  if (((int )clk & 2) == 0) {
    goto ldv_29316;
  } else {
  }
  clk = (u16 )((unsigned int )clk | 4U);
  sdhci_writew(host, (int )clk, 44);
  out:
  host->clock = clock;
  return;
}
}
static int sdhci_set_power(struct sdhci_host *host , unsigned short power )
{
  u8 pwr ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  pwr = 0U;
  if ((unsigned int )power != 65535U) {
    switch (1 << (int )power) {
    case 128:
    pwr = 10U;
    goto ldv_29325;
    case 131072: ;
    case 262144:
    pwr = 12U;
    goto ldv_29325;
    case 1048576: ;
    case 2097152:
    pwr = 14U;
    goto ldv_29325;
    default:
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (1242), "i" (12UL));
    ldv_29331: ;
    goto ldv_29331;
    }
    ldv_29325: ;
  } else {
  }
  if ((int )host->pwr == (int )pwr) {
    return (-1);
  } else {
  }
  host->pwr = pwr;
  if ((unsigned int )pwr == 0U) {
    sdhci_writeb(host, 0, 41);
    return (0);
  } else {
  }
  if ((host->quirks & 8U) == 0U) {
    sdhci_writeb(host, 0, 41);
  } else {
  }
  if ((host->quirks & 2048U) != 0U) {
    sdhci_writeb(host, (int )pwr, 41);
  } else {
  }
  pwr = (u8 )((unsigned int )pwr | 1U);
  sdhci_writeb(host, (int )pwr, 41);
  if ((host->quirks & 8388608U) != 0U) {
    __ms = 10UL;
    goto ldv_29334;
    ldv_29333:
    __const_udelay(4295000UL);
    ldv_29334:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_29333;
    } else {
    }
  } else {
  }
  return ((int )power);
}
}
static void sdhci_request(struct mmc_host *mmc , struct mmc_request *mrq )
{
  struct sdhci_host *host ;
  bool present ;
  unsigned long flags ;
  u32 tuning_opcode ;
  void *tmp ;
  raw_spinlock_t *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  u32 tmp___2 ;
  int ret ;
  int tmp___3 ;
  u32 present_state ;
  raw_spinlock_t *tmp___4 ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  sdhci_runtime_pm_get(host);
  tmp___0 = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  __ret_warn_on = (unsigned long )host->mrq != (unsigned long )((struct mmc_request *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       1303);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )mrq->sbc == (unsigned long )((struct mmc_command *)0) && (host->flags & 64) != 0) {
    if ((unsigned long )mrq->stop != (unsigned long )((struct mmc_command *)0)) {
      (mrq->data)->stop = 0;
      mrq->stop = 0;
    } else {
    }
  } else {
  }
  host->mrq = mrq;
  if ((host->quirks & 32768U) != 0U) {
    present = 1;
  } else {
    tmp___2 = sdhci_readl(host, 36);
    present = (tmp___2 & 65536U) != 0U;
  }
  if (! present) {
    tmp___3 = mmc_gpio_get_cd(host->mmc);
    ret = tmp___3;
    if (ret > 0) {
      present = 1;
    } else {
    }
  } else {
  }
  if (! present || (host->flags & 8) != 0) {
    ((host->mrq)->cmd)->error = 4294967173U;
    tasklet_schedule(& host->finish_tasklet);
  } else {
    present_state = sdhci_readl(host, 36);
    if ((host->flags & 32) != 0 && (present_state & 768U) == 0U) {
      if ((unsigned long )mmc->card != (unsigned long )((struct mmc_card *)0)) {
        tuning_opcode = (mmc->card)->type == 0U ? 21U : 19U;
        spin_unlock_irqrestore(& host->lock, flags);
        sdhci_execute_tuning(mmc, tuning_opcode);
        tmp___4 = spinlock_check(& host->lock);
        flags = _raw_spin_lock_irqsave(tmp___4);
        host->mrq = mrq;
      } else {
      }
    } else {
    }
    if ((unsigned long )mrq->sbc != (unsigned long )((struct mmc_command *)0) && (host->flags & 128) == 0) {
      sdhci_send_command(host, mrq->sbc);
    } else {
      sdhci_send_command(host, mrq->cmd);
    }
  }
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static void sdhci_do_set_ios(struct sdhci_host *host , struct mmc_ios *ios )
{
  unsigned long flags ;
  int vdd_bit ;
  u8 ctrl ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  u16 clk ;
  u16 ctrl_2 ;
  unsigned int clock ;
  {
  vdd_bit = -1;
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((host->flags & 8) != 0) {
    spin_unlock_irqrestore(& host->lock, flags);
    if ((unsigned long )host->vmmc != (unsigned long )((struct regulator *)0) && (unsigned int )ios->power_mode == 0U) {
      mmc_regulator_set_ocr(host->mmc, host->vmmc, 0);
    } else {
    }
    return;
  } else {
  }
  if ((unsigned int )ios->power_mode == 0U) {
    sdhci_writel(host, 0U, 56);
    sdhci_reinit(host);
  } else {
  }
  sdhci_set_clock(host, ios->clock);
  if ((unsigned int )ios->power_mode == 0U) {
    vdd_bit = sdhci_set_power(host, 65535);
  } else {
    vdd_bit = sdhci_set_power(host, (int )ios->vdd);
  }
  if ((unsigned long )host->vmmc != (unsigned long )((struct regulator *)0) && vdd_bit != -1) {
    spin_unlock_irqrestore(& host->lock, flags);
    mmc_regulator_set_ocr(host->mmc, host->vmmc, (int )((unsigned short )vdd_bit));
    tmp___0 = spinlock_check(& host->lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
  } else {
  }
  if ((unsigned long )(host->ops)->platform_send_init_74_clocks != (unsigned long )((void (* )(struct sdhci_host * ,
                                                                                                          u8 ))0)) {
    (*((host->ops)->platform_send_init_74_clocks))(host, (int )ios->power_mode);
  } else {
  }
  if ((unsigned long )(host->ops)->platform_8bit_width != (unsigned long )((int (* )(struct sdhci_host * ,
                                                                                                int ))0)) {
    (*((host->ops)->platform_8bit_width))(host, (int )ios->bus_width);
  } else {
    ctrl = sdhci_readb(host, 40);
    if ((unsigned int )ios->bus_width == 3U) {
      ctrl = (unsigned int )ctrl & 253U;
      if (host->version > 1U) {
        ctrl = (u8 )((unsigned int )ctrl | 32U);
      } else {
      }
    } else {
      if (host->version > 1U) {
        ctrl = (unsigned int )ctrl & 223U;
      } else {
      }
      if ((unsigned int )ios->bus_width == 2U) {
        ctrl = (u8 )((unsigned int )ctrl | 2U);
      } else {
        ctrl = (unsigned int )ctrl & 253U;
      }
    }
    sdhci_writeb(host, (int )ctrl, 40);
  }
  ctrl = sdhci_readb(host, 40);
  if (((unsigned int )ios->timing == 2U || (unsigned int )ios->timing == 1U) && (host->quirks & 536870912U) == 0U) {
    ctrl = (u8 )((unsigned int )ctrl | 4U);
  } else {
    ctrl = (unsigned int )ctrl & 251U;
  }
  if (host->version > 1U) {
    if (((((unsigned int )ios->timing == 8U || (unsigned int )ios->timing == 5U) || (unsigned int )ios->timing == 6U) || (unsigned int )ios->timing == 7U) || (unsigned int )ios->timing == 4U) {
      ctrl = (u8 )((unsigned int )ctrl | 4U);
    } else {
    }
    ctrl_2 = sdhci_readw(host, 62);
    if ((int )((short )ctrl_2) >= 0) {
      sdhci_writeb(host, (int )ctrl, 40);
      ctrl_2 = (unsigned int )ctrl_2 & 65487U;
      if ((unsigned int )ios->drv_type == 1U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 16U);
      } else
      if ((unsigned int )ios->drv_type == 2U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 32U);
      } else {
      }
      sdhci_writew(host, (int )ctrl_2, 62);
    } else {
      clk = sdhci_readw(host, 44);
      clk = (unsigned int )clk & 65531U;
      sdhci_writew(host, (int )clk, 44);
      sdhci_writeb(host, (int )ctrl, 40);
      clock = host->clock;
      host->clock = 0U;
      sdhci_set_clock(host, clock);
    }
    clk = sdhci_readw(host, 44);
    clk = (unsigned int )clk & 65531U;
    sdhci_writew(host, (int )clk, 44);
    if ((unsigned long )(host->ops)->set_uhs_signaling != (unsigned long )((int (* )(struct sdhci_host * ,
                                                                                                unsigned int ))0)) {
      (*((host->ops)->set_uhs_signaling))(host, (unsigned int )ios->timing);
    } else {
      ctrl_2 = sdhci_readw(host, 62);
      ctrl_2 = (unsigned int )ctrl_2 & 65528U;
      if ((unsigned int )ios->timing == 8U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 5U);
      } else
      if ((unsigned int )ios->timing == 3U) {
        ctrl_2 = ctrl_2;
      } else
      if ((unsigned int )ios->timing == 4U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 1U);
      } else
      if ((unsigned int )ios->timing == 5U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 2U);
      } else
      if ((unsigned int )ios->timing == 6U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 3U);
      } else
      if ((unsigned int )ios->timing == 7U) {
        ctrl_2 = (u16 )((unsigned int )ctrl_2 | 4U);
      } else {
      }
      sdhci_writew(host, (int )ctrl_2, 62);
    }
    clock = host->clock;
    host->clock = 0U;
    sdhci_set_clock(host, clock);
  } else {
    sdhci_writeb(host, (int )ctrl, 40);
  }
  if ((host->quirks & 16U) != 0U) {
    sdhci_reset(host, 6);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static void sdhci_set_ios(struct mmc_host *mmc , struct mmc_ios *ios )
{
  struct sdhci_host *host ;
  void *tmp ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  sdhci_runtime_pm_get(host);
  sdhci_do_set_ios(host, ios);
  sdhci_runtime_pm_put(host);
  return;
}
}
static int sdhci_check_ro(struct sdhci_host *host )
{
  unsigned long flags ;
  int is_readonly ;
  raw_spinlock_t *tmp ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((host->flags & 8) != 0) {
    is_readonly = 0;
  } else
  if ((unsigned long )(host->ops)->get_ro != (unsigned long )((unsigned int (* )(struct sdhci_host * ))0)) {
    tmp___0 = (*((host->ops)->get_ro))(host);
    is_readonly = (int )tmp___0;
  } else {
    tmp___1 = sdhci_readl(host, 36);
    is_readonly = (tmp___1 & 524288U) == 0U;
  }
  spin_unlock_irqrestore(& host->lock, flags);
  return ((host->quirks & 65536U) != 0U ? is_readonly == 0 : is_readonly);
}
}
static int sdhci_do_get_ro(struct sdhci_host *host )
{
  int i ;
  int ro_count ;
  int tmp ;
  int tmp___0 ;
  {
  if ((int )host->quirks >= 0) {
    tmp = sdhci_check_ro(host);
    return (tmp);
  } else {
  }
  ro_count = 0;
  i = 0;
  goto ldv_29389;
  ldv_29388:
  tmp___0 = sdhci_check_ro(host);
  if (tmp___0 != 0) {
    ro_count = ro_count + 1;
    if (ro_count > 2) {
      return (1);
    } else {
    }
  } else {
  }
  msleep(30U);
  i = i + 1;
  ldv_29389: ;
  if (i <= 4) {
    goto ldv_29388;
  } else {
  }
  return (0);
}
}
static void sdhci_hw_reset(struct mmc_host *mmc )
{
  struct sdhci_host *host ;
  void *tmp ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  if ((unsigned long )host->ops != (unsigned long )((struct sdhci_ops const *)0) && (unsigned long )(host->ops)->hw_reset != (unsigned long )((void (* )(struct sdhci_host * ))0)) {
    (*((host->ops)->hw_reset))(host);
  } else {
  }
  return;
}
}
static int sdhci_get_ro(struct mmc_host *mmc )
{
  struct sdhci_host *host ;
  void *tmp ;
  int ret ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  sdhci_runtime_pm_get(host);
  ret = sdhci_do_get_ro(host);
  sdhci_runtime_pm_put(host);
  return (ret);
}
}
static void sdhci_enable_sdio_irq_nolock(struct sdhci_host *host , int enable )
{
  {
  if ((host->flags & 8) != 0) {
    goto out;
  } else {
  }
  if (enable != 0) {
    host->flags = host->flags | 512;
  } else {
    host->flags = host->flags & -513;
  }
  if ((int )host->runtime_suspended) {
    goto out;
  } else {
  }
  if (enable != 0) {
    sdhci_unmask_irqs(host, 256U);
  } else {
    sdhci_mask_irqs(host, 256U);
  }
  out:
  __asm__ volatile ("": : : "memory");
  return;
}
}
static void sdhci_enable_sdio_irq(struct mmc_host *mmc , int enable )
{
  struct sdhci_host *host ;
  void *tmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  tmp___0 = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  sdhci_enable_sdio_irq_nolock(host, enable);
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static int sdhci_do_3_3v_signal_voltage_switch(struct sdhci_host *host , u16 ctrl )
{
  int ret ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  ctrl = (unsigned int )ctrl & 65527U;
  sdhci_writew(host, (int )ctrl, 62);
  if ((unsigned long )host->vqmmc != (unsigned long )((struct regulator *)0)) {
    ret = regulator_set_voltage(host->vqmmc, 2700000, 3600000);
    if (ret != 0) {
      tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
      printk("\f%s: Switching to 3.3V signalling voltage  failed\n", tmp);
      return (-5);
    } else {
    }
  } else {
  }
  usleep_range(5000UL, 5500UL);
  ctrl = sdhci_readw(host, 62);
  if (((int )ctrl & 8) == 0) {
    return (0);
  } else {
  }
  tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
  printk("\f%s: 3.3V regulator output did not became stable\n", tmp___0);
  return (-5);
}
}
static int sdhci_do_1_8v_signal_voltage_switch(struct sdhci_host *host , u16 ctrl )
{
  u8 pwr ;
  u16 clk ;
  u32 present_state ;
  int ret ;
  char const *tmp ;
  {
  clk = sdhci_readw(host, 44);
  clk = (unsigned int )clk & 65531U;
  sdhci_writew(host, (int )clk, 44);
  present_state = sdhci_readl(host, 36);
  if ((present_state & 15728640U) >> 20 == 0U) {
    if ((unsigned long )host->vqmmc != (unsigned long )((struct regulator *)0)) {
      ret = regulator_set_voltage(host->vqmmc, 1700000, 1950000);
    } else {
      ret = 0;
    }
    if (ret == 0) {
      ctrl = (u16 )((unsigned int )ctrl | 8U);
      sdhci_writew(host, (int )ctrl, 62);
      usleep_range(5000UL, 5500UL);
      ctrl = sdhci_readw(host, 62);
      if (((int )ctrl & 8) != 0) {
        clk = sdhci_readw(host, 44);
        clk = (u16 )((unsigned int )clk | 4U);
        sdhci_writew(host, (int )clk, 44);
        usleep_range(1000UL, 1500UL);
        present_state = sdhci_readl(host, 36);
        if ((present_state & 15728640U) == 15728640U) {
          return (0);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  pwr = sdhci_readb(host, 41);
  pwr = (unsigned int )pwr & 254U;
  sdhci_writeb(host, (int )pwr, 41);
  if ((unsigned long )host->vmmc != (unsigned long )((struct regulator *)0)) {
    regulator_disable(host->vmmc);
  } else {
  }
  usleep_range(1000UL, 1500UL);
  pwr = (u8 )((unsigned int )pwr | 1U);
  sdhci_writeb(host, (int )pwr, 41);
  if ((unsigned long )host->vmmc != (unsigned long )((struct regulator *)0)) {
    regulator_enable(host->vmmc);
  } else {
  }
  tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
  printk("\f%s: Switching to 1.8V signalling voltage failed, retrying with S18R set to 0\n",
         tmp);
  return (-11);
}
}
static int sdhci_do_start_signal_voltage_switch(struct sdhci_host *host , struct mmc_ios *ios )
{
  u16 ctrl ;
  int tmp ;
  int tmp___0 ;
  {
  if (host->version <= 1U) {
    return (0);
  } else {
  }
  ctrl = sdhci_readw(host, 62);
  if ((unsigned int )ios->signal_voltage == 0U) {
    tmp = sdhci_do_3_3v_signal_voltage_switch(host, (int )ctrl);
    return (tmp);
  } else
  if (((int )ctrl & 8) == 0 && (unsigned int )ios->signal_voltage == 1U) {
    tmp___0 = sdhci_do_1_8v_signal_voltage_switch(host, (int )ctrl);
    return (tmp___0);
  } else {
    return (0);
  }
}
}
static int sdhci_start_signal_voltage_switch(struct mmc_host *mmc , struct mmc_ios *ios )
{
  struct sdhci_host *host ;
  void *tmp ;
  int err ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  if (host->version <= 1U) {
    return (0);
  } else {
  }
  sdhci_runtime_pm_get(host);
  err = sdhci_do_start_signal_voltage_switch(host, ios);
  sdhci_runtime_pm_put(host);
  return (err);
}
}
static int sdhci_execute_tuning(struct mmc_host *mmc , u32 opcode )
{
  struct sdhci_host *host ;
  u16 ctrl ;
  u32 ier ;
  int tuning_loop_counter ;
  unsigned long timeout ;
  int err ;
  bool requires_tuning_nonuhs ;
  void *tmp ;
  struct mmc_command cmd ;
  struct mmc_request mrq ;
  long __ret ;
  unsigned long tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  unsigned long __ms ;
  unsigned long tmp___4 ;
  {
  tuning_loop_counter = 40;
  err = 0;
  requires_tuning_nonuhs = 0;
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  sdhci_runtime_pm_get(host);
  disable_irq((unsigned int )host->irq);
  spin_lock(& host->lock);
  ctrl = sdhci_readw(host, 62);
  if (((int )ctrl & 7) == 2 && ((host->flags & 16) != 0 || (host->flags & 1024) != 0)) {
    requires_tuning_nonuhs = 1;
  } else {
  }
  if (((int )ctrl & 7) == 3 || (int )requires_tuning_nonuhs) {
    ctrl = (u16 )((unsigned int )ctrl | 64U);
  } else {
    spin_unlock(& host->lock);
    enable_irq((unsigned int )host->irq);
    sdhci_runtime_pm_put(host);
    return (0);
  }
  sdhci_writew(host, (int )ctrl, 62);
  ier = sdhci_readl(host, 52);
  sdhci_clear_set_irqs(host, ier, 32U);
  timeout = 150UL;
  ldv_29463:
  cmd.opcode = 0U;
  cmd.arg = 0U;
  cmd.resp[0] = 0U;
  cmd.resp[1] = 0U;
  cmd.resp[2] = 0U;
  cmd.resp[3] = 0U;
  cmd.flags = 0U;
  cmd.retries = 0U;
  cmd.error = 0U;
  cmd.cmd_timeout_ms = 0U;
  cmd.data = 0;
  cmd.mrq = 0;
  mrq.sbc = 0;
  mrq.cmd = 0;
  mrq.data = 0;
  mrq.stop = 0;
  mrq.completion.done = 0U;
  mrq.completion.wait.lock.ldv_5961.rlock.raw_lock.ldv_2024.head_tail = 0U;
  mrq.completion.wait.lock.ldv_5961.rlock.magic = 0U;
  mrq.completion.wait.lock.ldv_5961.rlock.owner_cpu = 0U;
  mrq.completion.wait.lock.ldv_5961.rlock.owner = 0;
  mrq.completion.wait.lock.ldv_5961.rlock.dep_map.key = 0;
  mrq.completion.wait.lock.ldv_5961.rlock.dep_map.class_cache[0] = 0;
  mrq.completion.wait.lock.ldv_5961.rlock.dep_map.class_cache[1] = 0;
  mrq.completion.wait.lock.ldv_5961.rlock.dep_map.name = 0;
  mrq.completion.wait.lock.ldv_5961.rlock.dep_map.cpu = 0;
  mrq.completion.wait.lock.ldv_5961.rlock.dep_map.ip = 0UL;
  mrq.completion.wait.task_list.next = 0;
  mrq.completion.wait.task_list.prev = 0;
  mrq.done = 0;
  if (tuning_loop_counter == 0 && timeout == 0UL) {
    goto ldv_29451;
  } else {
  }
  cmd.opcode = opcode;
  cmd.arg = 0U;
  cmd.flags = 53U;
  cmd.retries = 0U;
  cmd.data = 0;
  cmd.error = 0U;
  mrq.cmd = & cmd;
  host->mrq = & mrq;
  if (cmd.opcode == 21U) {
    if ((unsigned int )mmc->ios.bus_width == 3U) {
      sdhci_writew(host, 28800, 4);
    } else
    if ((unsigned int )mmc->ios.bus_width == 2U) {
      sdhci_writew(host, 28736, 4);
    } else {
      sdhci_writew(host, 28736, 4);
    }
  } else {
  }
  sdhci_writew(host, 16, 12);
  sdhci_send_command(host, & cmd);
  host->cmd = 0;
  host->mrq = 0;
  spin_unlock(& host->lock);
  enable_irq((unsigned int )host->irq);
  tmp___0 = msecs_to_jiffies(50U);
  __ret = (long )tmp___0;
  if (host->tuning_done != 1U) {
    tmp___1 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___1;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_29456:
    prepare_to_wait(& host->buf_ready_int, & __wait, 1);
    if (host->tuning_done == 1U) {
      goto ldv_29454;
    } else {
    }
    tmp___2 = get_current();
    tmp___3 = signal_pending(tmp___2);
    if (tmp___3 == 0) {
      __ret = schedule_timeout(__ret);
      if (__ret == 0L) {
        goto ldv_29454;
      } else {
      }
      goto ldv_29455;
    } else {
    }
    __ret = -512L;
    goto ldv_29454;
    ldv_29455: ;
    goto ldv_29456;
    ldv_29454:
    finish_wait(& host->buf_ready_int, & __wait);
  } else {
  }
  disable_irq((unsigned int )host->irq);
  spin_lock(& host->lock);
  if (host->tuning_done == 0U) {
    printk("\016sdhci: Timeout waiting for Buffer Read Ready interrupt during tuning procedure, falling back to fixed sampling clock\n");
    ctrl = sdhci_readw(host, 62);
    ctrl = (unsigned int )ctrl & 65407U;
    ctrl = (unsigned int )ctrl & 65471U;
    sdhci_writew(host, (int )ctrl, 62);
    err = -5;
    goto out;
  } else {
  }
  host->tuning_done = 0U;
  ctrl = sdhci_readw(host, 62);
  tuning_loop_counter = tuning_loop_counter - 1;
  timeout = timeout - 1UL;
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_29461;
    ldv_29460:
    __const_udelay(4295000UL);
    ldv_29461:
    tmp___4 = __ms;
    __ms = __ms - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_29460;
    } else {
    }
  }
  if (((int )ctrl & 64) != 0) {
    goto ldv_29463;
  } else {
  }
  ldv_29451: ;
  if (tuning_loop_counter == 0 || timeout == 0UL) {
    ctrl = (unsigned int )ctrl & 65407U;
    sdhci_writew(host, (int )ctrl, 62);
  } else
  if (((int )ctrl & 128) == 0) {
    printk("\016sdhci: Tuning procedure failed, falling back to fixed sampling clock\n");
    err = -5;
  } else {
  }
  out: ;
  if (((host->flags & 32) == 0 && host->tuning_count != 0U) && host->tuning_mode == 0U) {
    host->flags = host->flags | 2048;
    mod_timer(& host->tuning_timer, (unsigned long )(host->tuning_count * 250U) + (unsigned long )jiffies);
    mmc->max_blk_count = 4194304U / mmc->max_blk_size;
  } else {
    host->flags = host->flags & -33;
    if (host->tuning_mode == 0U) {
      mod_timer(& host->tuning_timer, (unsigned long )(host->tuning_count * 250U) + (unsigned long )jiffies);
    } else {
    }
  }
  if (err != 0 && (host->flags & 2048) != 0) {
    err = 0;
  } else {
  }
  sdhci_clear_set_irqs(host, 32U, ier);
  spin_unlock(& host->lock);
  enable_irq((unsigned int )host->irq);
  sdhci_runtime_pm_put(host);
  return (err);
}
}
static void sdhci_do_enable_preset_value(struct sdhci_host *host , bool enable )
{
  u16 ctrl ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if (host->version <= 1U) {
    return;
  } else {
  }
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ctrl = sdhci_readw(host, 62);
  if ((int )enable && (int )((short )ctrl) >= 0) {
    ctrl = (u16 )((unsigned int )ctrl | 32768U);
    sdhci_writew(host, (int )ctrl, 62);
    host->flags = host->flags | 256;
  } else
  if (! enable && (int )((short )ctrl) < 0) {
    ctrl = (unsigned int )ctrl & 32767U;
    sdhci_writew(host, (int )ctrl, 62);
    host->flags = host->flags & -257;
  } else {
  }
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static void sdhci_enable_preset_value(struct mmc_host *mmc , bool enable )
{
  struct sdhci_host *host ;
  void *tmp ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  sdhci_runtime_pm_get(host);
  sdhci_do_enable_preset_value(host, (int )enable);
  sdhci_runtime_pm_put(host);
  return;
}
}
static void sdhci_card_event(struct mmc_host *mmc )
{
  struct sdhci_host *host ;
  void *tmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  u32 tmp___3 ;
  {
  tmp = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp;
  tmp___0 = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if ((unsigned long )host->mrq != (unsigned long )((struct mmc_request *)0)) {
    tmp___3 = sdhci_readl(host, 36);
    if ((tmp___3 & 65536U) == 0U) {
      tmp___1 = dev_name((struct device const *)(& (host->mmc)->class_dev));
      printk("\v%s: Card removed during transfer!\n", tmp___1);
      tmp___2 = dev_name((struct device const *)(& (host->mmc)->class_dev));
      printk("\v%s: Resetting controller.\n", tmp___2);
      sdhci_reset(host, 2);
      sdhci_reset(host, 4);
      ((host->mrq)->cmd)->error = 4294967173U;
      tasklet_schedule(& host->finish_tasklet);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static struct mmc_host_ops const sdhci_ops =
     {0, 0, 0, 0, & sdhci_request, & sdhci_set_ios, & sdhci_get_ro, 0, & sdhci_enable_sdio_irq,
    0, & sdhci_start_signal_voltage_switch, & sdhci_execute_tuning, & sdhci_enable_preset_value,
    0, & sdhci_hw_reset, & sdhci_card_event};
static void sdhci_tasklet_card(unsigned long param )
{
  struct sdhci_host *host ;
  unsigned long tmp ;
  {
  host = (struct sdhci_host *)param;
  sdhci_card_event(host->mmc);
  tmp = msecs_to_jiffies(200U);
  mmc_detect_change(host->mmc, tmp);
  return;
}
}
static void sdhci_tasklet_finish(unsigned long param )
{
  struct sdhci_host *host ;
  unsigned long flags ;
  struct mmc_request *mrq ;
  raw_spinlock_t *tmp ;
  unsigned int clock ;
  {
  host = (struct sdhci_host *)param;
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )host->mrq == (unsigned long )((struct mmc_request *)0)) {
    spin_unlock_irqrestore(& host->lock, flags);
    return;
  } else {
  }
  del_timer(& host->timer);
  mrq = host->mrq;
  if ((host->flags & 8) == 0 && ((((unsigned long )mrq->cmd != (unsigned long )((struct mmc_command *)0) && (mrq->cmd)->error != 0U) || ((unsigned long )mrq->data != (unsigned long )((struct mmc_data *)0) && ((mrq->data)->error != 0U || ((unsigned long )(mrq->data)->stop != (unsigned long )((struct mmc_command *)0) && ((mrq->data)->stop)->error != 0U)))) || (host->quirks & 1024U) != 0U)) {
    if ((int )host->quirks & 1) {
      clock = host->clock;
      host->clock = 0U;
      sdhci_set_clock(host, clock);
    } else {
    }
    sdhci_reset(host, 2);
    sdhci_reset(host, 4);
  } else {
  }
  host->mrq = 0;
  host->cmd = 0;
  host->data = 0;
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& host->lock, flags);
  mmc_request_done(host->mmc, mrq);
  sdhci_runtime_pm_put(host);
  return;
}
}
static void sdhci_timeout_timer(unsigned long data )
{
  struct sdhci_host *host ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  char const *tmp___0 ;
  {
  host = (struct sdhci_host *)data;
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )host->mrq != (unsigned long )((struct mmc_request *)0)) {
    tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Timeout waiting for hardware interrupt.\n", tmp___0);
    sdhci_dumpregs(host);
    if ((unsigned long )host->data != (unsigned long )((struct mmc_data *)0)) {
      (host->data)->error = 4294967186U;
      sdhci_finish_data(host);
    } else {
      if ((unsigned long )host->cmd != (unsigned long )((struct mmc_command *)0)) {
        (host->cmd)->error = 4294967186U;
      } else {
        ((host->mrq)->cmd)->error = 4294967186U;
      }
      tasklet_schedule(& host->finish_tasklet);
    }
  } else {
  }
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static void sdhci_tuning_timer(unsigned long data )
{
  struct sdhci_host *host ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  host = (struct sdhci_host *)data;
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  host->flags = host->flags | 32;
  spin_unlock_irqrestore(& host->lock, flags);
  return;
}
}
static void sdhci_cmd_irq(struct sdhci_host *host , u32 intmask )
{
  long tmp ;
  char const *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect(intmask == 0U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (2198), "i" (12UL));
    ldv_29521: ;
    goto ldv_29521;
  } else {
  }
  if ((unsigned long )host->cmd == (unsigned long )((struct mmc_command *)0)) {
    tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Got command interrupt 0x%08x even though no command operation was in progress.\n",
           tmp___0, intmask);
    sdhci_dumpregs(host);
    return;
  } else {
  }
  if ((intmask & 65536U) != 0U) {
    (host->cmd)->error = 4294967186U;
  } else
  if ((intmask & 917504U) != 0U) {
    (host->cmd)->error = 4294967212U;
  } else {
  }
  if ((host->cmd)->error != 0U) {
    tasklet_schedule(& host->finish_tasklet);
    return;
  } else {
  }
  if (((host->cmd)->flags & 8U) != 0U) {
    if ((unsigned long )(host->cmd)->data != (unsigned long )((struct mmc_data *)0)) {
      descriptor.modname = "sdhci";
      descriptor.function = "sdhci_cmd_irq";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
      descriptor.format = "sdhci [%s()]: Cannot wait for busy signal when also doing a data transfer";
      descriptor.lineno = 2233U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor, "sdhci [%s()]: Cannot wait for busy signal when also doing a data transfer",
                           "sdhci_cmd_irq");
      } else {
      }
    } else
    if ((host->quirks & 16384U) == 0U) {
      return;
    } else {
    }
  } else {
  }
  if ((int )intmask & 1) {
    sdhci_finish_command(host);
  } else {
  }
  return;
}
}
static void sdhci_show_adma_error(struct sdhci_host *host )
{
  char const *name ;
  char const *tmp ;
  u8 *desc ;
  __le32 *dma ;
  __le16 *len ;
  u8 attr ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
  name = tmp;
  desc = host->adma_desc;
  sdhci_dumpregs(host);
  ldv_29535:
  dma = (__le32 *)desc + 4U;
  len = (__le16 *)desc + 2U;
  attr = *desc;
  descriptor.modname = "sdhci";
  descriptor.function = "sdhci_show_adma_error";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor.format = "sdhci [%s()]: %s: %p: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\n";
  descriptor.lineno = 2262U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "sdhci [%s()]: %s: %p: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\n",
                       "sdhci_show_adma_error", name, desc, *dma, (int )*len, (int )attr);
  } else {
  }
  desc = desc + 8UL;
  if (((int )attr & 2) != 0) {
    goto ldv_29534;
  } else {
  }
  goto ldv_29535;
  ldv_29534: ;
  return;
}
}
static void sdhci_data_irq(struct sdhci_host *host , u32 intmask )
{
  u32 command ;
  long tmp ;
  u16 tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  u16 tmp___3 ;
  u32 dmastart ;
  u32 dmanow ;
  struct _ddebug descriptor ;
  char const *tmp___4 ;
  long tmp___5 ;
  {
  tmp = ldv__builtin_expect(intmask == 0U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared"),
                         "i" (2277), "i" (12UL));
    ldv_29541: ;
    goto ldv_29541;
  } else {
  }
  if ((intmask & 32U) != 0U) {
    tmp___0 = sdhci_readw(host, 14);
    command = (u32 )((int )tmp___0 >> 8) & 63U;
    if (command == 19U || command == 21U) {
      host->tuning_done = 1U;
      __wake_up(& host->buf_ready_int, 3U, 1, 0);
      return;
    } else {
    }
  } else {
  }
  if ((unsigned long )host->data == (unsigned long )((struct mmc_data *)0)) {
    if ((unsigned long )host->cmd != (unsigned long )((struct mmc_command *)0) && ((host->cmd)->flags & 8U) != 0U) {
      if ((intmask & 2U) != 0U) {
        sdhci_finish_command(host);
        return;
      } else {
      }
    } else {
    }
    tmp___1 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Got data interrupt 0x%08x even though no data operation was in progress.\n",
           tmp___1, intmask);
    sdhci_dumpregs(host);
    return;
  } else {
  }
  if ((intmask & 1048576U) != 0U) {
    (host->data)->error = 4294967186U;
  } else
  if ((intmask & 4194304U) != 0U) {
    (host->data)->error = 4294967212U;
  } else
  if ((intmask & 2097152U) != 0U) {
    tmp___3 = sdhci_readw(host, 14);
    if ((((int )tmp___3 >> 8) & 63) != 14) {
      (host->data)->error = 4294967212U;
    } else {
      goto _L;
    }
  } else
  _L:
  if ((intmask & 33554432U) != 0U) {
    tmp___2 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: ADMA error\n", tmp___2);
    sdhci_show_adma_error(host);
    (host->data)->error = 4294967291U;
    if ((unsigned long )(host->ops)->adma_workaround != (unsigned long )((void (* )(struct sdhci_host * ,
                                                                                               u32 ))0)) {
      (*((host->ops)->adma_workaround))(host, intmask);
    } else {
    }
  } else {
  }
  if ((host->data)->error != 0U) {
    sdhci_finish_data(host);
  } else {
    if ((intmask & 48U) != 0U) {
      sdhci_transfer_pio(host);
    } else {
    }
    if ((intmask & 8U) != 0U) {
      dmastart = (u32 )((host->data)->sg)->dma_address;
      dmanow = (host->data)->bytes_xfered + dmastart;
      dmanow = (dmanow & 4294443008U) + 524288U;
      (host->data)->bytes_xfered = dmanow - dmastart;
      descriptor.modname = "sdhci";
      descriptor.function = "sdhci_data_irq";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
      descriptor.format = "sdhci [%s()]: %s: DMA base 0x%08x, transferred 0x%06x bytes, next 0x%08x\n";
      descriptor.lineno = 2356U;
      descriptor.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = dev_name((struct device const *)(& (host->mmc)->class_dev));
        __dynamic_pr_debug(& descriptor, "sdhci [%s()]: %s: DMA base 0x%08x, transferred 0x%06x bytes, next 0x%08x\n",
                           "sdhci_data_irq", tmp___4, dmastart, (host->data)->bytes_xfered,
                           dmanow);
      } else {
      }
      sdhci_writel(host, dmanow, 0);
    } else {
    }
    if ((intmask & 2U) != 0U) {
      if ((unsigned long )host->cmd != (unsigned long )((struct mmc_command *)0)) {
        host->data_early = 1U;
      } else {
        sdhci_finish_data(host);
      }
    } else {
    }
  }
  return;
}
}
static irqreturn_t sdhci_irq(int irq , void *dev_id )
{
  irqreturn_t result ;
  struct sdhci_host *host ;
  u32 intmask ;
  u32 unexpected ;
  int cardint ;
  int max_loops ;
  char const *tmp ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  u32 present ;
  u32 tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  {
  host = (struct sdhci_host *)dev_id;
  unexpected = 0U;
  cardint = 0;
  max_loops = 16;
  spin_lock(& host->lock);
  if ((int )host->runtime_suspended) {
    spin_unlock(& host->lock);
    tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\f%s: got irq while runtime suspended\n", tmp);
    return (1);
  } else {
  }
  intmask = sdhci_readl(host, 48);
  if (intmask == 0U || intmask == 4294967295U) {
    result = 0;
    goto out;
  } else {
  }
  again:
  descriptor.modname = "sdhci";
  descriptor.function = "sdhci_irq";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
  descriptor.format = "sdhci [%s()]: *** %s got interrupt: 0x%08x\n";
  descriptor.lineno = 2400U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    __dynamic_pr_debug(& descriptor, "sdhci [%s()]: *** %s got interrupt: 0x%08x\n",
                       "sdhci_irq", tmp___0, intmask);
  } else {
  }
  if ((intmask & 192U) != 0U) {
    tmp___2 = sdhci_readl(host, 36);
    present = tmp___2 & 65536U;
    sdhci_mask_irqs(host, present != 0U ? 64U : 128U);
    sdhci_unmask_irqs(host, present != 0U ? 128U : 64U);
    sdhci_writel(host, intmask & 192U, 48);
    intmask = intmask & 4294967103U;
    tasklet_schedule(& host->card_tasklet);
  } else {
  }
  if ((intmask & 983041U) != 0U) {
    sdhci_writel(host, intmask & 983041U, 48);
    sdhci_cmd_irq(host, intmask & 983041U);
  } else {
  }
  if ((intmask & 40894526U) != 0U) {
    sdhci_writel(host, intmask & 40894526U, 48);
    sdhci_data_irq(host, intmask & 40894526U);
  } else {
  }
  intmask = intmask & 4253089728U;
  intmask = intmask & 4294934527U;
  if ((intmask & 8388608U) != 0U) {
    tmp___3 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Card is consuming too much power!\n", tmp___3);
    sdhci_writel(host, 8388608U, 48);
  } else {
  }
  intmask = intmask & 4286578687U;
  if ((intmask & 256U) != 0U) {
    cardint = 1;
  } else {
  }
  intmask = intmask & 4294967039U;
  if (intmask != 0U) {
    unexpected = unexpected | intmask;
    sdhci_writel(host, intmask, 48);
  } else {
  }
  result = 1;
  intmask = sdhci_readl(host, 48);
  if (intmask != 0U) {
    max_loops = max_loops - 1;
    if (max_loops != 0) {
      goto again;
    } else {
    }
  } else {
  }
  out:
  spin_unlock(& host->lock);
  if (unexpected != 0U) {
    tmp___4 = dev_name((struct device const *)(& (host->mmc)->class_dev));
    printk("\v%s: Unexpected interrupt 0x%08x.\n", tmp___4, unexpected);
    sdhci_dumpregs(host);
  } else {
  }
  if (cardint != 0) {
    mmc_signal_sdio_irq(host->mmc);
  } else {
  }
  return (result);
}
}
int sdhci_suspend_host(struct sdhci_host *host )
{
  int ret ;
  {
  if ((unsigned long )(host->ops)->platform_suspend != (unsigned long )((void (* )(struct sdhci_host * ))0)) {
    (*((host->ops)->platform_suspend))(host);
  } else {
  }
  sdhci_disable_card_detection(host);
  if ((host->flags & 2048) != 0) {
    del_timer_sync(& host->tuning_timer);
    host->flags = host->flags & -33;
  } else {
  }
  ret = mmc_suspend_host(host->mmc);
  if (ret != 0) {
    if ((host->flags & 2048) != 0) {
      host->flags = host->flags | 32;
      mod_timer(& host->tuning_timer, (unsigned long )(host->tuning_count * 250U) + (unsigned long )jiffies);
    } else {
    }
    sdhci_enable_card_detection(host);
    return (ret);
  } else {
  }
  free_irq((unsigned int )host->irq, (void *)host);
  return (ret);
}
}
int sdhci_resume_host(struct sdhci_host *host )
{
  int ret ;
  char const *tmp ;
  {
  if ((host->flags & 3) != 0) {
    if ((unsigned long )(host->ops)->enable_dma != (unsigned long )((int (* )(struct sdhci_host * ))0)) {
      (*((host->ops)->enable_dma))(host);
    } else {
    }
  } else {
  }
  tmp = dev_name((struct device const *)(& (host->mmc)->class_dev));
  ret = request_irq((unsigned int )host->irq, & sdhci_irq, 128UL, tmp, (void *)host);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((int )(host->mmc)->pm_flags & 1 && (int )host->quirks2 & 1) {
    sdhci_init(host, 0);
    host->pwr = 0U;
    host->clock = 0U;
    sdhci_do_set_ios(host, & (host->mmc)->ios);
  } else {
    sdhci_init(host, (int )(host->mmc)->pm_flags & 1);
    __asm__ volatile ("": : : "memory");
  }
  ret = mmc_resume_host(host->mmc);
  sdhci_enable_card_detection(host);
  if ((unsigned long )(host->ops)->platform_resume != (unsigned long )((void (* )(struct sdhci_host * ))0)) {
    (*((host->ops)->platform_resume))(host);
  } else {
  }
  if ((host->flags & 2048) != 0) {
    host->flags = host->flags | 32;
  } else {
  }
  return (ret);
}
}
void sdhci_enable_irq_wakeups(struct sdhci_host *host )
{
  u8 val ;
  {
  val = sdhci_readb(host, 43);
  val = (u8 )((unsigned int )val | 1U);
  sdhci_writeb(host, (int )val, 43);
  return;
}
}
static int sdhci_runtime_pm_get(struct sdhci_host *host )
{
  int tmp ;
  {
  tmp = pm_runtime_get_sync((host->mmc)->parent);
  return (tmp);
}
}
static int sdhci_runtime_pm_put(struct sdhci_host *host )
{
  int tmp ;
  {
  pm_runtime_mark_last_busy((host->mmc)->parent);
  tmp = pm_runtime_put_autosuspend((host->mmc)->parent);
  return (tmp);
}
}
int sdhci_runtime_suspend_host(struct sdhci_host *host )
{
  unsigned long flags ;
  int ret ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  ret = 0;
  if ((host->flags & 2048) != 0) {
    del_timer_sync(& host->tuning_timer);
    host->flags = host->flags & -33;
  } else {
  }
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  sdhci_mask_irqs(host, 4294967295U);
  spin_unlock_irqrestore(& host->lock, flags);
  synchronize_irq((unsigned int )host->irq);
  tmp___0 = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  host->runtime_suspended = 1;
  spin_unlock_irqrestore(& host->lock, flags);
  return (ret);
}
}
int sdhci_runtime_resume_host(struct sdhci_host *host )
{
  unsigned long flags ;
  int ret ;
  int host_flags ;
  raw_spinlock_t *tmp ;
  {
  ret = 0;
  host_flags = host->flags;
  if ((host_flags & 3) != 0) {
    if ((unsigned long )(host->ops)->enable_dma != (unsigned long )((int (* )(struct sdhci_host * ))0)) {
      (*((host->ops)->enable_dma))(host);
    } else {
    }
  } else {
  }
  sdhci_init(host, 0);
  host->pwr = 0U;
  host->clock = 0U;
  sdhci_do_set_ios(host, & (host->mmc)->ios);
  sdhci_do_start_signal_voltage_switch(host, & (host->mmc)->ios);
  if ((host_flags & 256) != 0) {
    sdhci_do_enable_preset_value(host, 1);
  } else {
  }
  if ((host->flags & 2048) != 0) {
    host->flags = host->flags | 32;
  } else {
  }
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  host->runtime_suspended = 0;
  if ((host->flags & 512) != 0) {
    sdhci_enable_sdio_irq_nolock(host, 1);
  } else {
  }
  sdhci_enable_card_detection(host);
  spin_unlock_irqrestore(& host->lock, flags);
  return (ret);
}
}
struct sdhci_host *sdhci_alloc_host(struct device *dev , size_t priv_size )
{
  struct mmc_host *mmc ;
  struct sdhci_host *host ;
  int __ret_warn_on ;
  long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  __ret_warn_on = (unsigned long )dev == (unsigned long )((struct device *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       2673);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  mmc = mmc_alloc_host((int )((unsigned int )priv_size + 1344U), dev);
  if ((unsigned long )mmc == (unsigned long )((struct mmc_host *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct sdhci_host *)tmp___0);
  } else {
  }
  tmp___1 = mmc_priv(mmc);
  host = (struct sdhci_host *)tmp___1;
  host->mmc = mmc;
  return (host);
}
}
int sdhci_add_host(struct sdhci_host *host )
{
  struct mmc_host *mmc ;
  u32 caps[2U] ;
  u32 max_current_caps ;
  unsigned int ocr_avail ;
  int ret ;
  int __ret_warn_on ;
  long tmp ;
  u16 tmp___0 ;
  char const *tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  char const *tmp___7 ;
  int tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  char const *tmp___11 ;
  char const *tmp___12 ;
  char const *tmp___13 ;
  struct _ddebug descriptor___2 ;
  char const *tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___3 ;
  char const *tmp___16 ;
  long tmp___17 ;
  char const *tmp___18 ;
  int tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  char const *tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  u32 curr ;
  int tmp___25 ;
  u32 __min1 ;
  u32 __min2 ;
  char const *tmp___26 ;
  struct lock_class_key __key ;
  char const *tmp___27 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  char const *tmp___28 ;
  char const *tmp___29 ;
  char const *tmp___30 ;
  char const *tmp___31 ;
  char const *tmp___32 ;
  char const *tmp___33 ;
  {
  caps[0] = 0U;
  caps[1] = 0U;
  __ret_warn_on = (unsigned long )host == (unsigned long )((struct sdhci_host *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared",
                       2695);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )host == (unsigned long )((struct sdhci_host *)0)) {
    return (-22);
  } else {
  }
  mmc = host->mmc;
  if (debug_quirks != 0U) {
    host->quirks = debug_quirks;
  } else {
  }
  if (debug_quirks2 != 0U) {
    host->quirks2 = debug_quirks2;
  } else {
  }
  sdhci_reset(host, 1);
  tmp___0 = sdhci_readw(host, 254);
  host->version = (unsigned int )tmp___0;
  host->version = host->version & 255U;
  if (host->version > 2U) {
    tmp___1 = dev_name((struct device const *)(& mmc->class_dev));
    printk("\v%s: Unknown controller version (%d). You may experience problems.\n",
           tmp___1, host->version);
  } else {
  }
  if ((host->quirks & 134217728U) != 0U) {
    caps[0] = host->caps;
  } else {
    tmp___2 = sdhci_readl(host, 64);
    caps[0] = tmp___2;
  }
  if (host->version > 1U) {
    if ((host->quirks & 134217728U) != 0U) {
      caps[1] = host->caps1;
    } else {
      tmp___3 = sdhci_readl(host, 68);
      caps[1] = tmp___3;
    }
  } else {
  }
  if ((host->quirks & 2U) != 0U) {
    host->flags = host->flags | 1;
  } else
  if ((caps[0] & 4194304U) == 0U) {
    descriptor.modname = "sdhci";
    descriptor.function = "sdhci_add_host";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor.format = "sdhci [%s()]: Controller doesn\'t have SDMA capability\n";
    descriptor.lineno = 2728U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor, "sdhci [%s()]: Controller doesn\'t have SDMA capability\n",
                         "sdhci_add_host");
    } else {
    }
  } else {
    host->flags = host->flags | 1;
  }
  if ((host->quirks & 32U) != 0U && host->flags & 1) {
    descriptor___0.modname = "sdhci";
    descriptor___0.function = "sdhci_add_host";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor___0.format = "sdhci [%s()]: Disabling DMA as it is marked broken\n";
    descriptor___0.lineno = 2734U;
    descriptor___0.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "sdhci [%s()]: Disabling DMA as it is marked broken\n",
                         "sdhci_add_host");
    } else {
    }
    host->flags = host->flags & -2;
  } else {
  }
  if (host->version != 0U && (caps[0] & 524288U) != 0U) {
    host->flags = host->flags | 2;
  } else {
  }
  if ((host->quirks & 64U) != 0U && (host->flags & 2) != 0) {
    descriptor___1.modname = "sdhci";
    descriptor___1.function = "sdhci_add_host";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor___1.format = "sdhci [%s()]: Disabling ADMA as it is marked broken\n";
    descriptor___1.lineno = 2744U;
    descriptor___1.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "sdhci [%s()]: Disabling ADMA as it is marked broken\n",
                         "sdhci_add_host");
    } else {
    }
    host->flags = host->flags & -3;
  } else {
  }
  if ((host->flags & 3) != 0) {
    if ((unsigned long )(host->ops)->enable_dma != (unsigned long )((int (* )(struct sdhci_host * ))0)) {
      tmp___8 = (*((host->ops)->enable_dma))(host);
      if (tmp___8 != 0) {
        tmp___7 = dev_name((struct device const *)(& mmc->class_dev));
        printk("\f%s: No suitable DMA available. Falling back to PIO.\n", tmp___7);
        host->flags = host->flags & -4;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((host->flags & 2) != 0) {
    tmp___9 = kmalloc(1028UL, 208U);
    host->adma_desc = (u8 *)tmp___9;
    tmp___10 = kmalloc(512UL, 208U);
    host->align_buffer = (u8 *)tmp___10;
    if ((unsigned long )host->adma_desc == (unsigned long )((u8 *)0) || (unsigned long )host->align_buffer == (unsigned long )((u8 *)0)) {
      kfree((void const *)host->adma_desc);
      kfree((void const *)host->align_buffer);
      tmp___11 = dev_name((struct device const *)(& mmc->class_dev));
      printk("\f%s: Unable to allocate ADMA buffers. Falling back to standard DMA.\n",
             tmp___11);
      host->flags = host->flags & -3;
    } else {
    }
  } else {
  }
  if ((host->flags & 3) == 0) {
    host->dma_mask = 0xffffffffffffffffULL;
    ((host->mmc)->parent)->dma_mask = & host->dma_mask;
  } else {
  }
  if (host->version > 1U) {
    host->max_clk = (caps[0] & 65280U) >> 8;
  } else {
    host->max_clk = (caps[0] & 16128U) >> 8;
  }
  host->max_clk = host->max_clk * 1000000U;
  if (host->max_clk == 0U || (host->quirks & 33554432U) != 0U) {
    if ((unsigned long )(host->ops)->get_max_clock == (unsigned long )((unsigned int (* )(struct sdhci_host * ))0)) {
      tmp___12 = dev_name((struct device const *)(& mmc->class_dev));
      printk("\v%s: Hardware doesn\'t specify base clock frequency.\n", tmp___12);
      return (-19);
    } else {
    }
    host->max_clk = (*((host->ops)->get_max_clock))(host);
  } else {
  }
  host->clk_mul = (caps[1] & 16711680U) >> 16;
  if (host->clk_mul != 0U) {
    host->clk_mul = host->clk_mul + 1U;
  } else {
  }
  mmc->ops = & sdhci_ops;
  mmc->f_max = host->max_clk;
  if ((unsigned long )(host->ops)->get_min_clock != (unsigned long )((unsigned int (* )(struct sdhci_host * ))0)) {
    mmc->f_min = (*((host->ops)->get_min_clock))(host);
  } else
  if (host->version > 1U) {
    if (host->clk_mul != 0U) {
      mmc->f_min = (host->max_clk * host->clk_mul) / 1024U;
      mmc->f_max = host->max_clk * host->clk_mul;
    } else {
      mmc->f_min = host->max_clk / 2046U;
    }
  } else {
    mmc->f_min = host->max_clk / 256U;
  }
  host->timeout_clk = caps[0] & 63U;
  if (host->timeout_clk == 0U) {
    if ((unsigned long )(host->ops)->get_timeout_clock != (unsigned long )((unsigned int (* )(struct sdhci_host * ))0)) {
      host->timeout_clk = (*((host->ops)->get_timeout_clock))(host);
    } else
    if ((host->quirks & 16777216U) == 0U) {
      tmp___13 = dev_name((struct device const *)(& mmc->class_dev));
      printk("\v%s: Hardware doesn\'t specify timeout clock frequency.\n", tmp___13);
      return (-19);
    } else {
    }
  } else {
  }
  if ((caps[0] & 128U) != 0U) {
    host->timeout_clk = host->timeout_clk * 1000U;
  } else {
  }
  if ((host->quirks & 16777216U) != 0U) {
    host->timeout_clk = mmc->f_max / 1000U;
  } else {
  }
  mmc->max_discard_to = 134217728U / host->timeout_clk;
  mmc->caps = mmc->caps | 1073742856U;
  if ((host->quirks & 268435456U) != 0U) {
    host->flags = host->flags | 64;
  } else {
  }
  if (host->version > 1U && ((host->flags & 2) != 0 || (host->flags & 1) == 0)) {
    host->flags = host->flags | 128;
    descriptor___2.modname = "sdhci";
    descriptor___2.function = "sdhci_add_host";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor___2.format = "sdhci [%s()]: %s: Auto-CMD23 available\n";
    descriptor___2.lineno = 2868U;
    descriptor___2.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___15 != 0L) {
      tmp___14 = dev_name((struct device const *)(& mmc->class_dev));
      __dynamic_pr_debug(& descriptor___2, "sdhci [%s()]: %s: Auto-CMD23 available\n",
                         "sdhci_add_host", tmp___14);
    } else {
    }
  } else {
    descriptor___3.modname = "sdhci";
    descriptor___3.function = "sdhci_add_host";
    descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/mmc/host/sdhci.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/mmc/host/sdhci.c.prepared";
    descriptor___3.format = "sdhci [%s()]: %s: Auto-CMD23 unavailable\n";
    descriptor___3.lineno = 2870U;
    descriptor___3.flags = 0U;
    tmp___17 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___17 != 0L) {
      tmp___16 = dev_name((struct device const *)(& mmc->class_dev));
      __dynamic_pr_debug(& descriptor___3, "sdhci [%s()]: %s: Auto-CMD23 unavailable\n",
                         "sdhci_add_host", tmp___16);
    } else {
    }
  }
  if ((host->quirks & 4194304U) == 0U) {
    mmc->caps = mmc->caps | 1U;
  } else {
  }
  if ((host->quirks2 & 2U) != 0U) {
    mmc->caps = mmc->caps & 3221225471U;
  } else {
  }
  if ((caps[0] & 2097152U) != 0U) {
    mmc->caps = mmc->caps | 6U;
  } else {
  }
  if ((host->quirks & 32768U) != 0U && ((host->mmc)->caps & 256U) == 0U) {
    mmc->caps = mmc->caps | 32U;
  } else {
  }
  host->vqmmc = regulator_get(mmc->parent, "vqmmc");
  tmp___21 = IS_ERR_OR_NULL((void const *)host->vqmmc);
  if (tmp___21 != 0L) {
    tmp___20 = PTR_ERR((void const *)host->vqmmc);
    if (tmp___20 < 0L) {
      tmp___18 = dev_name((struct device const *)(& mmc->class_dev));
      printk("\016%s: no vqmmc regulator found\n", tmp___18);
      host->vqmmc = 0;
    } else {
      regulator_enable(host->vqmmc);
      tmp___19 = regulator_is_supported_voltage(host->vqmmc, 1700000, 1950000);
      if (tmp___19 == 0) {
        caps[1] = caps[1] & 4294967288U;
      } else {
      }
    }
  } else {
  }
  if ((host->quirks2 & 4U) != 0U) {
    caps[1] = caps[1] & 4294967288U;
  } else {
  }
  if ((caps[1] & 7U) != 0U) {
    mmc->caps = mmc->caps | 98304U;
  } else {
  }
  if ((caps[1] & 2U) != 0U) {
    mmc->caps = mmc->caps | 393216U;
  } else
  if ((int )caps[1] & 1) {
    mmc->caps = mmc->caps | 131072U;
  } else {
  }
  if ((caps[1] & 4U) != 0U) {
    mmc->caps = mmc->caps | 524288U;
  } else {
  }
  if ((caps[1] & 8192U) != 0U) {
    host->flags = host->flags | 16;
  } else {
  }
  if ((mmc->caps2 & 96U) != 0U) {
    host->flags = host->flags | 1024;
  } else {
  }
  if ((caps[1] & 16U) != 0U) {
    mmc->caps = mmc->caps | 8388608U;
  } else {
  }
  if ((caps[1] & 32U) != 0U) {
    mmc->caps = mmc->caps | 16777216U;
  } else {
  }
  if ((caps[1] & 64U) != 0U) {
    mmc->caps = mmc->caps | 33554432U;
  } else {
  }
  host->tuning_count = (caps[1] & 3840U) >> 8;
  if (host->tuning_count != 0U) {
    host->tuning_count = (unsigned int )(1 << (int )(host->tuning_count - 1U));
  } else {
  }
  host->tuning_mode = (caps[1] & 49152U) >> 14;
  ocr_avail = 0U;
  host->vmmc = regulator_get(mmc->parent, "vmmc");
  tmp___24 = IS_ERR_OR_NULL((void const *)host->vmmc);
  if (tmp___24 != 0L) {
    tmp___23 = PTR_ERR((void const *)host->vmmc);
    if (tmp___23 < 0L) {
      tmp___22 = dev_name((struct device const *)(& mmc->class_dev));
      printk("\016%s: no vmmc regulator found\n", tmp___22);
      host->vmmc = 0;
    } else {
    }
  } else {
  }
  if ((unsigned long )host->vmmc != (unsigned long )((struct regulator *)0)) {
    ret = regulator_is_supported_voltage(host->vmmc, 2700000, 3600000);
    if (ret <= 0 || (caps[0] & 16777216U) == 0U) {
      caps[0] = caps[0] & 4278190079U;
    } else {
    }
    if (ret <= 0 || (caps[0] & 33554432U) == 0U) {
      caps[0] = caps[0] & 4261412863U;
    } else {
    }
    ret = regulator_is_supported_voltage(host->vmmc, 1700000, 1950000);
    if (ret <= 0 || (caps[0] & 67108864U) == 0U) {
      caps[0] = caps[0] & 4227858431U;
    } else {
    }
  } else {
  }
  max_current_caps = sdhci_readl(host, 72);
  if (max_current_caps == 0U && (unsigned long )host->vmmc != (unsigned long )((struct regulator *)0)) {
    tmp___25 = regulator_get_current_limit(host->vmmc);
    curr = (u32 )tmp___25;
    if (curr != 0U) {
      curr = curr / 1000U;
      curr = curr / 4U;
      __min1 = curr;
      __min2 = 255U;
      curr = __min1 < __min2 ? __min1 : __min2;
      max_current_caps = ((curr << 8) | curr) | (curr << 16);
    } else {
    }
  } else {
  }
  if ((caps[0] & 16777216U) != 0U) {
    ocr_avail = ocr_avail | 3145728U;
    mmc->max_current_330 = (max_current_caps & 255U) * 4U;
  } else {
  }
  if ((caps[0] & 33554432U) != 0U) {
    ocr_avail = ocr_avail | 393216U;
    mmc->max_current_300 = ((max_current_caps & 65280U) >> 8) * 4U;
  } else {
  }
  if ((caps[0] & 67108864U) != 0U) {
    ocr_avail = ocr_avail | 128U;
    mmc->max_current_180 = ((max_current_caps & 16711680U) >> 16) * 4U;
  } else {
  }
  mmc->ocr_avail = ocr_avail;
  mmc->ocr_avail_sdio = ocr_avail;
  if (host->ocr_avail_sdio != 0U) {
    mmc->ocr_avail_sdio = mmc->ocr_avail_sdio & host->ocr_avail_sdio;
  } else {
  }
  mmc->ocr_avail_sd = ocr_avail;
  if (host->ocr_avail_sd != 0U) {
    mmc->ocr_avail_sd = mmc->ocr_avail_sd & host->ocr_avail_sd;
  } else {
    mmc->ocr_avail_sd = mmc->ocr_avail_sd & 4294967167U;
  }
  mmc->ocr_avail_mmc = ocr_avail;
  if (host->ocr_avail_mmc != 0U) {
    mmc->ocr_avail_mmc = mmc->ocr_avail_mmc & host->ocr_avail_mmc;
  } else {
  }
  if (mmc->ocr_avail == 0U) {
    tmp___26 = dev_name((struct device const *)(& mmc->class_dev));
    printk("\v%s: Hardware doesn\'t report any support voltages.\n", tmp___26);
    return (-19);
  } else {
  }
  spinlock_check(& host->lock);
  __raw_spin_lock_init(& host->lock.ldv_5961.rlock, "&(&host->lock)->rlock", & __key);
  if ((host->flags & 2) != 0) {
    mmc->max_segs = 128U;
  } else
  if (host->flags & 1) {
    mmc->max_segs = 1U;
  } else {
    mmc->max_segs = 128U;
  }
  mmc->max_req_size = 524288U;
  if ((host->flags & 2) != 0) {
    if ((host->quirks & 1073741824U) != 0U) {
      mmc->max_seg_size = 65535U;
    } else {
      mmc->max_seg_size = 65536U;
    }
  } else {
    mmc->max_seg_size = mmc->max_req_size;
  }
  if ((host->quirks & 1048576U) != 0U) {
    mmc->max_blk_size = 2U;
  } else {
    mmc->max_blk_size = (caps[0] & 196608U) >> 16;
    if (mmc->max_blk_size > 2U) {
      tmp___27 = dev_name((struct device const *)(& mmc->class_dev));
      printk("\f%s: Invalid maximum block size, assuming 512 bytes\n", tmp___27);
      mmc->max_blk_size = 0U;
    } else {
    }
  }
  mmc->max_blk_size = (unsigned int )(512 << (int )mmc->max_blk_size);
  mmc->max_blk_count = (host->quirks & 2097152U) != 0U ? 1U : 65535U;
  tasklet_init(& host->card_tasklet, & sdhci_tasklet_card, (unsigned long )host);
  tasklet_init(& host->finish_tasklet, & sdhci_tasklet_finish, (unsigned long )host);
  init_timer_key(& host->timer, 0U, "((&host->timer))", & __key___0);
  host->timer.function = & sdhci_timeout_timer;
  host->timer.data = (unsigned long )host;
  if (host->version > 1U) {
    __init_waitqueue_head(& host->buf_ready_int, "&host->buf_ready_int", & __key___1);
    init_timer_key(& host->tuning_timer, 0U, "(&host->tuning_timer)", & __key___2);
    host->tuning_timer.data = (unsigned long )host;
    host->tuning_timer.function = & sdhci_tuning_timer;
  } else {
  }
  tmp___28 = dev_name((struct device const *)(& mmc->class_dev));
  ret = request_irq((unsigned int )host->irq, & sdhci_irq, 128UL, tmp___28, (void *)host);
  if (ret != 0) {
    tmp___29 = dev_name((struct device const *)(& mmc->class_dev));
    printk("\v%s: Failed to request IRQ %d: %d\n", tmp___29, host->irq, ret);
    goto untasklet;
  } else {
  }
  sdhci_init(host, 0);
  sdhci_dumpregs(host);
  tmp___30 = dev_name((struct device const *)(& mmc->class_dev));
  snprintf((char *)(& host->led_name), 32UL, "%s::", tmp___30);
  host->led.name = (char const *)(& host->led_name);
  host->led.brightness = 0;
  host->led.default_trigger = dev_name((struct device const *)(& mmc->class_dev));
  host->led.brightness_set = & sdhci_led_control;
  ret = led_classdev_register(mmc->parent, & host->led);
  if (ret != 0) {
    tmp___31 = dev_name((struct device const *)(& mmc->class_dev));
    printk("\v%s: Failed to register LED device: %d\n", tmp___31, ret);
    goto reset;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  mmc_add_host(mmc);
  tmp___32 = dev_name((struct device const *)mmc->parent);
  tmp___33 = dev_name((struct device const *)(& mmc->class_dev));
  printk("\016%s: SDHCI controller on %s [%s] using %s\n", tmp___33, host->hw_name,
         tmp___32, (host->flags & 2) == 0 ? (host->flags & 1 ? (char *)"DMA" : (char *)"PIO") : (char *)"ADMA");
  sdhci_enable_card_detection(host);
  return (0);
  reset:
  sdhci_reset(host, 1);
  free_irq((unsigned int )host->irq, (void *)host);
  untasklet:
  tasklet_kill(& host->card_tasklet);
  tasklet_kill(& host->finish_tasklet);
  return (ret);
}
}
void sdhci_remove_host(struct sdhci_host *host , int dead )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  char const *tmp___0 ;
  {
  if (dead != 0) {
    tmp = spinlock_check(& host->lock);
    flags = _raw_spin_lock_irqsave(tmp);
    host->flags = host->flags | 8;
    if ((unsigned long )host->mrq != (unsigned long )((struct mmc_request *)0)) {
      tmp___0 = dev_name((struct device const *)(& (host->mmc)->class_dev));
      printk("\v%s: Controller removed during  transfer!\n", tmp___0);
      ((host->mrq)->cmd)->error = 4294967173U;
      tasklet_schedule(& host->finish_tasklet);
    } else {
    }
    spin_unlock_irqrestore(& host->lock, flags);
  } else {
  }
  sdhci_disable_card_detection(host);
  mmc_remove_host(host->mmc);
  led_classdev_unregister(& host->led);
  if (dead == 0) {
    sdhci_reset(host, 1);
  } else {
  }
  free_irq((unsigned int )host->irq, (void *)host);
  del_timer_sync(& host->timer);
  tasklet_kill(& host->card_tasklet);
  tasklet_kill(& host->finish_tasklet);
  if ((unsigned long )host->vmmc != (unsigned long )((struct regulator *)0)) {
    regulator_disable(host->vmmc);
    regulator_put(host->vmmc);
  } else {
  }
  if ((unsigned long )host->vqmmc != (unsigned long )((struct regulator *)0)) {
    regulator_disable(host->vqmmc);
    regulator_put(host->vqmmc);
  } else {
  }
  kfree((void const *)host->adma_desc);
  kfree((void const *)host->align_buffer);
  host->adma_desc = 0;
  host->align_buffer = 0;
  return;
}
}
void sdhci_free_host(struct sdhci_host *host )
{
  {
  mmc_free_host(host->mmc);
  return;
}
}
static int sdhci_drv_init(void)
{
  {
  printk("\016sdhci: Secure Digital Host Controller Interface driver\n");
  printk("\016sdhci: Copyright(c) Pierre Ossman\n");
  return (0);
}
}
static void sdhci_drv_exit(void)
{
  {
  return;
}
}
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct mmc_host *var_group1 ;
  struct mmc_request *var_group2 ;
  struct mmc_ios *var_group3 ;
  int var_sdhci_enable_sdio_irq_40_p1 ;
  u32 var_sdhci_execute_tuning_45_p1 ;
  bool var_sdhci_enable_preset_value_47_p1 ;
  int var_sdhci_irq_57_p0 ;
  void *var_sdhci_irq_57_p1 ;
  unsigned long var_sdhci_tuning_timer_52_p0 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = sdhci_drv_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_29783;
  ldv_29782:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  sdhci_request(var_group1, var_group2);
  goto ldv_29770;
  case 1:
  ldv_handler_precall();
  sdhci_set_ios(var_group1, var_group3);
  goto ldv_29770;
  case 2:
  ldv_handler_precall();
  sdhci_get_ro(var_group1);
  goto ldv_29770;
  case 3:
  ldv_handler_precall();
  sdhci_hw_reset(var_group1);
  goto ldv_29770;
  case 4:
  ldv_handler_precall();
  sdhci_enable_sdio_irq(var_group1, var_sdhci_enable_sdio_irq_40_p1);
  goto ldv_29770;
  case 5:
  ldv_handler_precall();
  sdhci_start_signal_voltage_switch(var_group1, var_group3);
  goto ldv_29770;
  case 6:
  ldv_handler_precall();
  sdhci_execute_tuning(var_group1, var_sdhci_execute_tuning_45_p1);
  goto ldv_29770;
  case 7:
  ldv_handler_precall();
  sdhci_enable_preset_value(var_group1, (int )var_sdhci_enable_preset_value_47_p1);
  goto ldv_29770;
  case 8:
  ldv_handler_precall();
  sdhci_card_event(var_group1);
  goto ldv_29770;
  case 9:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  sdhci_irq(var_sdhci_irq_57_p0, var_sdhci_irq_57_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_29770;
  case 10:
  ldv_handler_precall();
  sdhci_tuning_timer(var_sdhci_tuning_timer_52_p0);
  goto ldv_29770;
  default: ;
  goto ldv_29770;
  }
  ldv_29770: ;
  ldv_29783:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_29782;
  } else {
  }
  ldv_handler_precall();
  sdhci_drv_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_resume(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_suspend(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_sg_for_cpu(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void ldv_handler_precall() {
  return;
}
int __VERIFIER_nondet_int(void);
int led_classdev_register(struct device *arg0, struct led_classdev *arg1) {
  return __VERIFIER_nondet_int();
}
void led_classdev_unregister(struct led_classdev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mmc_add_host(struct mmc_host *arg0) {
  return __VERIFIER_nondet_int();
}
struct mmc_host *mmc_alloc_host(int arg0, struct device *arg1) {
  return ldv_malloc(sizeof(struct mmc_host));
}
void mmc_detect_change(struct mmc_host *arg0, unsigned long arg1) {
  return;
}
void mmc_free_host(struct mmc_host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mmc_gpio_get_cd(struct mmc_host *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mmc_regulator_set_ocr(struct mmc_host *arg0, struct regulator *arg1, unsigned short arg2) {
  return __VERIFIER_nondet_int();
}
void mmc_remove_host(struct mmc_host *arg0) {
  return;
}
void mmc_request_done(struct mmc_host *arg0, struct mmc_request *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int mmc_resume_host(struct mmc_host *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mmc_suspend_host(struct mmc_host *arg0) {
  return __VERIFIER_nondet_int();
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
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_disable(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_enable(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
struct regulator *regulator_get(struct device *arg0, const char *arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int regulator_get_current_limit(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_is_supported_voltage(struct regulator *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void regulator_put(struct regulator *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int regulator_set_voltage(struct regulator *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool sg_miter_next(struct sg_mapping_iter *arg0) {
  return __VERIFIER_nondet_bool();
}
void sg_miter_start(struct sg_mapping_iter *arg0, struct scatterlist *arg1, unsigned int arg2, unsigned int arg3) {
  return;
}
void sg_miter_stop(struct sg_mapping_iter *arg0) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
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
