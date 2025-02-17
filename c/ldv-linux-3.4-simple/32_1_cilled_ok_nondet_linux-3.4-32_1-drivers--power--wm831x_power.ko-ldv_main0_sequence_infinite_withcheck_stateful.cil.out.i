extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int gfp_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
} __attribute__((__aligned__(8))) ;
struct device;
struct device;
struct completion;
struct completion;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct page;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_38 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_37 {
   s64 lock ;
   struct __anonstruct____missing_field_name_38 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_37 arch_rwlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_40 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_rwlock_t_40 rwlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct device;
struct device;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
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
   char start_comm[16] ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
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
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct completion;
struct file;
struct task_struct;
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
struct file;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
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
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
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
struct module;
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
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
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
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
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
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
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
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
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
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct platform_device_id {
   char name[20] ;
   kernel_ulong_t driver_data __attribute__((__aligned__(sizeof(kernel_ulong_t )))) ;
};
struct mfd_cell;
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t state ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct device;
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
   void (*brightness_set)(struct led_classdev *led_cdev , enum led_brightness brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev *led_cdev ) ;
   int (*blink_set)(struct led_classdev *led_cdev , unsigned long *delay_on , unsigned long *delay_off ) ;
   struct device *dev ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev *led_cdev ) ;
   void (*deactivate)(struct led_classdev *led_cdev ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct device;
enum power_supply_property {
    POWER_SUPPLY_PROP_STATUS = 0,
    POWER_SUPPLY_PROP_CHARGE_TYPE = 1,
    POWER_SUPPLY_PROP_HEALTH = 2,
    POWER_SUPPLY_PROP_PRESENT = 3,
    POWER_SUPPLY_PROP_ONLINE = 4,
    POWER_SUPPLY_PROP_TECHNOLOGY = 5,
    POWER_SUPPLY_PROP_CYCLE_COUNT = 6,
    POWER_SUPPLY_PROP_VOLTAGE_MAX = 7,
    POWER_SUPPLY_PROP_VOLTAGE_MIN = 8,
    POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN = 9,
    POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN = 10,
    POWER_SUPPLY_PROP_VOLTAGE_NOW = 11,
    POWER_SUPPLY_PROP_VOLTAGE_AVG = 12,
    POWER_SUPPLY_PROP_CURRENT_MAX = 13,
    POWER_SUPPLY_PROP_CURRENT_NOW = 14,
    POWER_SUPPLY_PROP_CURRENT_AVG = 15,
    POWER_SUPPLY_PROP_POWER_NOW = 16,
    POWER_SUPPLY_PROP_POWER_AVG = 17,
    POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN = 18,
    POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN = 19,
    POWER_SUPPLY_PROP_CHARGE_FULL = 20,
    POWER_SUPPLY_PROP_CHARGE_EMPTY = 21,
    POWER_SUPPLY_PROP_CHARGE_NOW = 22,
    POWER_SUPPLY_PROP_CHARGE_AVG = 23,
    POWER_SUPPLY_PROP_CHARGE_COUNTER = 24,
    POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN = 25,
    POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN = 26,
    POWER_SUPPLY_PROP_ENERGY_FULL = 27,
    POWER_SUPPLY_PROP_ENERGY_EMPTY = 28,
    POWER_SUPPLY_PROP_ENERGY_NOW = 29,
    POWER_SUPPLY_PROP_ENERGY_AVG = 30,
    POWER_SUPPLY_PROP_CAPACITY = 31,
    POWER_SUPPLY_PROP_CAPACITY_LEVEL = 32,
    POWER_SUPPLY_PROP_TEMP = 33,
    POWER_SUPPLY_PROP_TEMP_AMBIENT = 34,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW = 35,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG = 36,
    POWER_SUPPLY_PROP_TIME_TO_FULL_NOW = 37,
    POWER_SUPPLY_PROP_TIME_TO_FULL_AVG = 38,
    POWER_SUPPLY_PROP_TYPE = 39,
    POWER_SUPPLY_PROP_SCOPE = 40,
    POWER_SUPPLY_PROP_MODEL_NAME = 41,
    POWER_SUPPLY_PROP_MANUFACTURER = 42,
    POWER_SUPPLY_PROP_SERIAL_NUMBER = 43
} ;
enum power_supply_type {
    POWER_SUPPLY_TYPE_UNKNOWN = 0,
    POWER_SUPPLY_TYPE_BATTERY = 1,
    POWER_SUPPLY_TYPE_UPS = 2,
    POWER_SUPPLY_TYPE_MAINS = 3,
    POWER_SUPPLY_TYPE_USB = 4,
    POWER_SUPPLY_TYPE_USB_DCP = 5,
    POWER_SUPPLY_TYPE_USB_CDP = 6,
    POWER_SUPPLY_TYPE_USB_ACA = 7
} ;
union power_supply_propval {
   int intval ;
   char const *strval ;
};
struct power_supply {
   char const *name ;
   enum power_supply_type type ;
   enum power_supply_property *properties ;
   size_t num_properties ;
   char **supplied_to ;
   size_t num_supplicants ;
   int (*get_property)(struct power_supply *psy , enum power_supply_property psp ,
                       union power_supply_propval *val ) ;
   int (*set_property)(struct power_supply *psy , enum power_supply_property psp ,
                       union power_supply_propval const *val ) ;
   int (*property_is_writeable)(struct power_supply *psy , enum power_supply_property psp ) ;
   void (*external_power_changed)(struct power_supply *psy ) ;
   void (*set_charged)(struct power_supply *psy ) ;
   int use_for_apm ;
   struct device *dev ;
   struct work_struct changed_work ;
   struct led_trigger *charging_full_trig ;
   char *charging_full_trig_name ;
   struct led_trigger *charging_trig ;
   char *charging_trig_name ;
   struct led_trigger *full_trig ;
   char *full_trig_name ;
   struct led_trigger *online_trig ;
   char *online_trig_name ;
   struct led_trigger *charging_blink_full_solid_trig ;
   char *charging_blink_full_solid_trig_name ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
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
   int objsize ;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct module;
struct module;
struct task_struct;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct task_struct;
struct device;
struct module;
struct device;
struct regmap;
struct regmap;
struct wm831x;
struct wm831x;
enum wm831x_auxadc;
enum wm831x_auxadc;
struct wm831x {
   struct mutex io_lock ;
   struct device *dev ;
   struct regmap *regmap ;
   int irq ;
   struct mutex irq_lock ;
   int irq_base ;
   int irq_masks_cur[5] ;
   int irq_masks_cache[5] ;
   bool soft_shutdown ;
   unsigned int has_gpio_ena : 1 ;
   unsigned int has_cs_sts : 1 ;
   unsigned int charger_irq_wake : 1 ;
   int num_gpio ;
   int gpio_update[16] ;
   bool gpio_level[16] ;
   struct mutex auxadc_lock ;
   struct list_head auxadc_pending ;
   u16 auxadc_active ;
   int (*auxadc_read)(struct wm831x *wm831x , enum wm831x_auxadc input ) ;
   struct mutex key_lock ;
   unsigned int locked : 1 ;
};
enum wm831x_auxadc {
    WM831X_AUX_CAL = 15,
    WM831X_AUX_BKUP_BATT = 10,
    WM831X_AUX_WALL = 9,
    WM831X_AUX_BATT = 8,
    WM831X_AUX_USB = 7,
    WM831X_AUX_SYSVDD = 6,
    WM831X_AUX_BATT_TEMP = 5,
    WM831X_AUX_CHIP_TEMP = 4,
    WM831X_AUX_AUX4 = 3,
    WM831X_AUX_AUX3 = 2,
    WM831X_AUX_AUX2 = 1,
    WM831X_AUX_AUX1 = 0
} ;
struct wm831x;
struct regulator_init_data;
struct regulator_init_data;
struct wm831x_backlight_pdata {
   int isink ;
   int max_uA ;
};
struct wm831x_backup_pdata {
   int charger_enable ;
   int no_constant_voltage ;
   int vlim ;
   int ilim ;
};
struct wm831x_battery_pdata {
   int enable ;
   int fast_enable ;
   int off_mask ;
   int trickle_ilim ;
   int vsel ;
   int eoc_iterm ;
   int fast_ilim ;
   int timeout ;
};
enum wm831x_status_src {
    WM831X_STATUS_PRESERVE = 0,
    WM831X_STATUS_OTP = 1,
    WM831X_STATUS_POWER = 2,
    WM831X_STATUS_CHARGER = 3,
    WM831X_STATUS_MANUAL = 4
} ;
struct wm831x_status_pdata {
   enum wm831x_status_src default_src ;
   char const *name ;
   char const *default_trigger ;
};
struct wm831x_touch_pdata {
   int fivewire ;
   int isel ;
   int rpu ;
   int pressure ;
   unsigned int data_irq ;
   int data_irqf ;
   unsigned int pd_irq ;
   int pd_irqf ;
};
enum wm831x_watchdog_action {
    WM831X_WDOG_NONE = 0,
    WM831X_WDOG_INTERRUPT = 1,
    WM831X_WDOG_RESET = 2,
    WM831X_WDOG_WAKE = 3
} ;
struct wm831x_watchdog_pdata {
   enum wm831x_watchdog_action primary ;
   enum wm831x_watchdog_action secondary ;
   int update_gpio ;
   unsigned int software : 1 ;
};
struct wm831x_pdata {
   int wm831x_num ;
   int (*pre_init)(struct wm831x *wm831x ) ;
   int (*post_init)(struct wm831x *wm831x ) ;
   bool irq_cmos ;
   bool disable_touch ;
   bool soft_shutdown ;
   int irq_base ;
   int gpio_base ;
   int gpio_defaults[16] ;
   struct wm831x_backlight_pdata *backlight ;
   struct wm831x_backup_pdata *backup ;
   struct wm831x_battery_pdata *battery ;
   struct wm831x_touch_pdata *touch ;
   struct wm831x_watchdog_pdata *watchdog ;
   struct wm831x_status_pdata *status[2] ;
   struct regulator_init_data *dcdc[4] ;
   struct regulator_init_data *epe[2] ;
   struct regulator_init_data *ldo[11] ;
   struct regulator_init_data *isink[2] ;
};
struct wm831x_power {
   struct wm831x *wm831x ;
   struct power_supply wall ;
   struct power_supply usb ;
   struct power_supply battery ;
   char wall_name[20] ;
   char usb_name[20] ;
   char battery_name[20] ;
   bool have_battery ;
};
struct chg_map {
   int val ;
   int reg_val ;
};
struct __anonstruct_216 {
   int : 0 ;
};
struct __anonstruct_217 {
   int : 0 ;
};
struct __anonstruct_218 {
   int : 0 ;
};
struct __anonstruct_219 {
   int : 0 ;
};
struct __anonstruct_220 {
   int : 0 ;
};
struct __anonstruct_221 {
   int : 0 ;
};
struct __anonstruct_222 {
   int : 0 ;
};
struct __anonstruct_223 {
   int : 0 ;
};
struct __anonstruct_224 {
   int : 0 ;
};
struct __anonstruct_225 {
   int : 0 ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( __dynamic_dev_dbg)(struct _ddebug *descriptor ,
                                                        struct device const *dev ,
                                                        char const *fmt , ...) ;
extern int ( snprintf)(char *buf , size_t size , char const *fmt
                                               , ...) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
int init_module(void) ;
void cleanup_module(void) ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern int ( dev_crit)(struct device const *dev , char const *fmt
                                               , ...) ;
extern int ( dev_err)(struct device const *dev , char const *fmt
                                              , ...) ;
extern int ( dev_warn)(struct device const *dev , char const *fmt
                                               , ...) ;
extern int ( _dev_info)(struct device const *dev , char const *fmt
                                                , ...) ;
extern int platform_get_irq_byname(struct platform_device * , char const * ) ;
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev ) __attribute__((__no_instrument_function__)) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device const *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device const *)__cil_tmp4;
  tmp = dev_get_drvdata(__cil_tmp5);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern void power_supply_changed(struct power_supply *psy ) ;
extern int power_supply_register(struct device *parent , struct power_supply *psy ) ;
extern void power_supply_unregister(struct power_supply *psy ) ;
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
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
extern int __attribute__((__warn_unused_result__)) request_threaded_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         irqreturn_t (*thread_fn)(int ,
                                                                                                  void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
extern int wm831x_reg_read(struct wm831x *wm831x , unsigned short reg ) ;
extern void wm831x_reg_lock(struct wm831x *wm831x ) ;
extern int wm831x_reg_unlock(struct wm831x *wm831x ) ;
extern int wm831x_set_bits(struct wm831x *wm831x , unsigned short reg , unsigned short mask ,
                           unsigned short val ) ;
extern int wm831x_auxadc_read_uv(struct wm831x *wm831x , enum wm831x_auxadc input ) ;
static int wm831x_power_check_online(struct wm831x *wm831x , int supply , union power_supply_propval *val )
{ int ret ;
  {
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16397);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret & supply) {
    *((int *)val) = 1;
  } else {
    *((int *)val) = 0;
  }
  return (0);
}
}
static int wm831x_power_read_voltage(struct wm831x *wm831x , enum wm831x_auxadc src ,
                                     union power_supply_propval *val )
{ int ret ;
  {
  {
  ret = wm831x_auxadc_read_uv(wm831x, src);
  }
  if (ret >= 0) {
    *((int *)val) = ret;
  } else {
  }
  return (ret);
}
}
static int wm831x_wall_get_prop(struct power_supply *psy , enum power_supply_property psp ,
                                union power_supply_propval *val )
{ struct wm831x_power *wm831x_power ;
  void *tmp ;
  struct wm831x *wm831x ;
  int ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  struct device *__cil_tmp11 ;
  struct device const *__cil_tmp12 ;
  enum wm831x_auxadc __cil_tmp13 ;
  {
  {
  __cil_tmp8 = (unsigned long )psy;
  __cil_tmp9 = __cil_tmp8 + 96;
  __cil_tmp10 = *((struct device **)__cil_tmp9);
  __cil_tmp11 = *((struct device **)__cil_tmp10);
  __cil_tmp12 = (struct device const *)__cil_tmp11;
  tmp = dev_get_drvdata(__cil_tmp12);
  wm831x_power = (struct wm831x_power *)tmp;
  wm831x = *((struct wm831x **)wm831x_power);
  ret = 0;
  }
  if ((int )psp == 4) {
    goto case_4;
  } else
  if ((int )psp == 11) {
    goto case_11;
  } else {
    {
    goto switch_default;
    if (0) {
      case_4:
      {
      ret = wm831x_power_check_online(wm831x, 512, val);
      }
      goto switch_break;
      case_11:
      {
      __cil_tmp13 = (enum wm831x_auxadc )9;
      ret = wm831x_power_read_voltage(wm831x, __cil_tmp13, val);
      }
      goto switch_break;
      switch_default:
      ret = -22;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (ret);
}
}
static enum power_supply_property wm831x_wall_props[2] = { (enum power_supply_property )4, (enum power_supply_property )11};
static int wm831x_usb_get_prop(struct power_supply *psy , enum power_supply_property psp ,
                               union power_supply_propval *val )
{ struct wm831x_power *wm831x_power ;
  void *tmp ;
  struct wm831x *wm831x ;
  int ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  struct device *__cil_tmp11 ;
  struct device const *__cil_tmp12 ;
  enum wm831x_auxadc __cil_tmp13 ;
  {
  {
  __cil_tmp8 = (unsigned long )psy;
  __cil_tmp9 = __cil_tmp8 + 96;
  __cil_tmp10 = *((struct device **)__cil_tmp9);
  __cil_tmp11 = *((struct device **)__cil_tmp10);
  __cil_tmp12 = (struct device const *)__cil_tmp11;
  tmp = dev_get_drvdata(__cil_tmp12);
  wm831x_power = (struct wm831x_power *)tmp;
  wm831x = *((struct wm831x **)wm831x_power);
  ret = 0;
  }
  if ((int )psp == 4) {
    goto case_4;
  } else
  if ((int )psp == 11) {
    goto case_11;
  } else {
    {
    goto switch_default;
    if (0) {
      case_4:
      {
      ret = wm831x_power_check_online(wm831x, 256, val);
      }
      goto switch_break;
      case_11:
      {
      __cil_tmp13 = (enum wm831x_auxadc )7;
      ret = wm831x_power_read_voltage(wm831x, __cil_tmp13, val);
      }
      goto switch_break;
      switch_default:
      ret = -22;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (ret);
}
}
static enum power_supply_property wm831x_usb_props[2] = { (enum power_supply_property )4, (enum power_supply_property )11};
static struct chg_map trickle_ilims[4] = { {50, 0},
        {100, 1 << 6},
        {150, 2 << 6},
        {200, 3 << 6}};
static struct chg_map vsels[4] = { {4050, 0},
        {4100, 1 << 4},
        {4150, 2 << 4},
        {4200, 3 << 4}};
static struct chg_map fast_ilims[16] =
  { {0, 0},
        {50, 1},
        {100, 2},
        {150, 3},
        {200, 4},
        {250, 5},
        {300, 6},
        {350, 7},
        {400, 8},
        {450, 9},
        {500, 10},
        {600, 11},
        {700, 12},
        {800, 13},
        {900, 14},
        {1000, 15}};
static struct chg_map eoc_iterms[8] =
  { {20, 0},
        {30, 1 << 10},
        {40, 2 << 10},
        {50, 3 << 10},
        {60, 4 << 10},
        {70, 5 << 10},
        {80, 6 << 10},
        {90, 7 << 10}};
static struct chg_map chg_times[16] =
  { {60, 0},
        {90, 1 << 8},
        {120, 2 << 8},
        {150, 3 << 8},
        {180, 4 << 8},
        {210, 5 << 8},
        {240, 6 << 8},
        {270, 7 << 8},
        {300, 8 << 8},
        {330, 9 << 8},
        {360, 10 << 8},
        {390, 11 << 8},
        {420, 12 << 8},
        {450, 13 << 8},
        {480, 14 << 8},
        {510, 15 << 8}};
static void wm831x_battey_apply_config(struct wm831x *wm831x , struct chg_map *map ,
                                       int count , int val , int *reg , char const *name ,
                                       char const *units ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor __attribute__((__used__,
__section__("__verbose"))) = {"wm831x_power", "wm831x_battey_apply_config", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/1060/dscv_tempdir/dscv/ri/32_1/drivers/power/wm831x_power.c.common.c",
    "Set %s of %d%s\n", 213U, 1U};
static void wm831x_battey_apply_config(struct wm831x *wm831x , struct chg_map *map ,
                                       int count , int val , int *reg , char const *name ,
                                       char const *units )
{ int i ;
  long tmp ;
  struct chg_map *__cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct device *__cil_tmp14 ;
  struct device const *__cil_tmp15 ;
  struct chg_map *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct device *__cil_tmp29 ;
  struct device const *__cil_tmp30 ;
  {
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < count) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp10 = map + i;
    __cil_tmp11 = *((int *)__cil_tmp10);
    if (val == __cil_tmp11) {
      goto while_break;
    } else {
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  if (i == count) {
    {
    __cil_tmp12 = (unsigned long )wm831x;
    __cil_tmp13 = __cil_tmp12 + 72;
    __cil_tmp14 = *((struct device **)__cil_tmp13);
    __cil_tmp15 = (struct device const *)__cil_tmp14;
    dev_err(__cil_tmp15, "Invalid %s %d%s\n", name, val, units);
    }
  } else {
    __cil_tmp16 = map + i;
    __cil_tmp17 = (unsigned long )__cil_tmp16;
    __cil_tmp18 = __cil_tmp17 + 4;
    __cil_tmp19 = *((int *)__cil_tmp18);
    __cil_tmp20 = *reg;
    *reg = __cil_tmp20 | __cil_tmp19;
    {
    while (1) {
      while_continue___0: ;
      {
      while (1) {
        while_continue___1: ;
        {
        __cil_tmp21 = & descriptor;
        __cil_tmp22 = __cil_tmp21->flags;
        __cil_tmp23 = __cil_tmp22 & 1U;
        __cil_tmp24 = ! __cil_tmp23;
        __cil_tmp25 = ! __cil_tmp24;
        __cil_tmp26 = (long )__cil_tmp25;
        tmp = ldv__builtin_expect(__cil_tmp26, 0L);
        }
        if (tmp) {
          {
          __cil_tmp27 = (unsigned long )wm831x;
          __cil_tmp28 = __cil_tmp27 + 72;
          __cil_tmp29 = *((struct device **)__cil_tmp28);
          __cil_tmp30 = (struct device const *)__cil_tmp29;
          __dynamic_dev_dbg(& descriptor, __cil_tmp30, "Set %s of %d%s\n", name, val,
                            units);
          }
        } else {
        }
        goto while_break___1;
      }
      while_break___1: ;
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
  }
  return;
}
}
static void wm831x_config_battery(struct wm831x *wm831x )
{ struct wm831x_pdata *wm831x_pdata ;
  struct wm831x_battery_pdata *pdata ;
  int ret ;
  int reg1 ;
  int reg2 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct device *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct device *__cil_tmp15 ;
  struct device const *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct wm831x_battery_pdata *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct device *__cil_tmp22 ;
  struct device const *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int *__cil_tmp26 ;
  int *__cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct device *__cil_tmp31 ;
  struct device const *__cil_tmp32 ;
  int *__cil_tmp33 ;
  int *__cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  int *__cil_tmp38 ;
  int *__cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  int *__cil_tmp43 ;
  int *__cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct chg_map *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  struct chg_map *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct chg_map *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  int __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  struct chg_map *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  struct chg_map *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  int __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  struct device *__cil_tmp93 ;
  struct device const *__cil_tmp94 ;
  int *__cil_tmp95 ;
  int __cil_tmp96 ;
  unsigned short __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  struct device *__cil_tmp100 ;
  struct device const *__cil_tmp101 ;
  int *__cil_tmp102 ;
  int __cil_tmp103 ;
  unsigned short __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  struct device *__cil_tmp107 ;
  struct device const *__cil_tmp108 ;
  {
  __cil_tmp7 = (unsigned long )wm831x;
  __cil_tmp8 = __cil_tmp7 + 72;
  __cil_tmp9 = *((struct device **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 184;
  __cil_tmp12 = *((void **)__cil_tmp11);
  wm831x_pdata = (struct wm831x_pdata *)__cil_tmp12;
  if (! wm831x_pdata) {
    {
    __cil_tmp13 = (unsigned long )wm831x;
    __cil_tmp14 = __cil_tmp13 + 72;
    __cil_tmp15 = *((struct device **)__cil_tmp14);
    __cil_tmp16 = (struct device const *)__cil_tmp15;
    dev_warn(__cil_tmp16, "No battery charger configuration\n");
    }
    return;
  } else {
    {
    __cil_tmp17 = (unsigned long )wm831x_pdata;
    __cil_tmp18 = __cil_tmp17 + 120;
    __cil_tmp19 = *((struct wm831x_battery_pdata **)__cil_tmp18);
    if (! __cil_tmp19) {
      {
      __cil_tmp20 = (unsigned long )wm831x;
      __cil_tmp21 = __cil_tmp20 + 72;
      __cil_tmp22 = *((struct device **)__cil_tmp21);
      __cil_tmp23 = (struct device const *)__cil_tmp22;
      dev_warn(__cil_tmp23, "No battery charger configuration\n");
      }
      return;
    } else {
    }
    }
  }
  __cil_tmp24 = (unsigned long )wm831x_pdata;
  __cil_tmp25 = __cil_tmp24 + 120;
  pdata = *((struct wm831x_battery_pdata **)__cil_tmp25);
  __cil_tmp26 = & reg1;
  *__cil_tmp26 = 0;
  __cil_tmp27 = & reg2;
  *__cil_tmp27 = 0;
  {
  __cil_tmp28 = *((int *)pdata);
  if (! __cil_tmp28) {
    {
    __cil_tmp29 = (unsigned long )wm831x;
    __cil_tmp30 = __cil_tmp29 + 72;
    __cil_tmp31 = *((struct device **)__cil_tmp30);
    __cil_tmp32 = (struct device const *)__cil_tmp31;
    _dev_info(__cil_tmp32, "Battery charger disabled\n");
    }
    return;
  } else {
  }
  }
  __cil_tmp33 = & reg1;
  __cil_tmp34 = & reg1;
  __cil_tmp35 = *__cil_tmp34;
  *__cil_tmp33 = __cil_tmp35 | 32768;
  {
  __cil_tmp36 = (unsigned long )pdata;
  __cil_tmp37 = __cil_tmp36 + 8;
  if (*((int *)__cil_tmp37)) {
    __cil_tmp38 = & reg2;
    __cil_tmp39 = & reg2;
    __cil_tmp40 = *__cil_tmp39;
    *__cil_tmp38 = __cil_tmp40 | 16384;
  } else {
  }
  }
  {
  __cil_tmp41 = (unsigned long )pdata;
  __cil_tmp42 = __cil_tmp41 + 4;
  if (*((int *)__cil_tmp42)) {
    __cil_tmp43 = & reg1;
    __cil_tmp44 = & reg1;
    __cil_tmp45 = *__cil_tmp44;
    *__cil_tmp43 = __cil_tmp45 | 32;
  } else {
  }
  }
  {
  __cil_tmp46 = 0 * 8UL;
  __cil_tmp47 = (unsigned long )(trickle_ilims) + __cil_tmp46;
  __cil_tmp48 = (struct chg_map *)__cil_tmp47;
  __cil_tmp49 = 32UL / 8UL;
  __cil_tmp50 = __cil_tmp49 + 0UL;
  __cil_tmp51 = (int )__cil_tmp50;
  __cil_tmp52 = (unsigned long )pdata;
  __cil_tmp53 = __cil_tmp52 + 12;
  __cil_tmp54 = *((int *)__cil_tmp53);
  wm831x_battey_apply_config(wm831x, __cil_tmp48, __cil_tmp51, __cil_tmp54, & reg2,
                             "trickle charge current limit", "mA");
  __cil_tmp55 = 0 * 8UL;
  __cil_tmp56 = (unsigned long )(vsels) + __cil_tmp55;
  __cil_tmp57 = (struct chg_map *)__cil_tmp56;
  __cil_tmp58 = 32UL / 8UL;
  __cil_tmp59 = __cil_tmp58 + 0UL;
  __cil_tmp60 = (int )__cil_tmp59;
  __cil_tmp61 = (unsigned long )pdata;
  __cil_tmp62 = __cil_tmp61 + 16;
  __cil_tmp63 = *((int *)__cil_tmp62);
  wm831x_battey_apply_config(wm831x, __cil_tmp57, __cil_tmp60, __cil_tmp63, & reg2,
                             "target voltage", "mV");
  __cil_tmp64 = 0 * 8UL;
  __cil_tmp65 = (unsigned long )(fast_ilims) + __cil_tmp64;
  __cil_tmp66 = (struct chg_map *)__cil_tmp65;
  __cil_tmp67 = 128UL / 8UL;
  __cil_tmp68 = __cil_tmp67 + 0UL;
  __cil_tmp69 = (int )__cil_tmp68;
  __cil_tmp70 = (unsigned long )pdata;
  __cil_tmp71 = __cil_tmp70 + 24;
  __cil_tmp72 = *((int *)__cil_tmp71);
  wm831x_battey_apply_config(wm831x, __cil_tmp66, __cil_tmp69, __cil_tmp72, & reg2,
                             "fast charge current limit", "mA");
  __cil_tmp73 = 0 * 8UL;
  __cil_tmp74 = (unsigned long )(eoc_iterms) + __cil_tmp73;
  __cil_tmp75 = (struct chg_map *)__cil_tmp74;
  __cil_tmp76 = 64UL / 8UL;
  __cil_tmp77 = __cil_tmp76 + 0UL;
  __cil_tmp78 = (int )__cil_tmp77;
  __cil_tmp79 = (unsigned long )pdata;
  __cil_tmp80 = __cil_tmp79 + 20;
  __cil_tmp81 = *((int *)__cil_tmp80);
  wm831x_battey_apply_config(wm831x, __cil_tmp75, __cil_tmp78, __cil_tmp81, & reg1,
                             "end of charge current threshold", "mA");
  __cil_tmp82 = 0 * 8UL;
  __cil_tmp83 = (unsigned long )(chg_times) + __cil_tmp82;
  __cil_tmp84 = (struct chg_map *)__cil_tmp83;
  __cil_tmp85 = 128UL / 8UL;
  __cil_tmp86 = __cil_tmp85 + 0UL;
  __cil_tmp87 = (int )__cil_tmp86;
  __cil_tmp88 = (unsigned long )pdata;
  __cil_tmp89 = __cil_tmp88 + 28;
  __cil_tmp90 = *((int *)__cil_tmp89);
  wm831x_battey_apply_config(wm831x, __cil_tmp84, __cil_tmp87, __cil_tmp90, & reg2,
                             "charger timeout", "min");
  ret = wm831x_reg_unlock(wm831x);
  }
  if (ret != 0) {
    {
    __cil_tmp91 = (unsigned long )wm831x;
    __cil_tmp92 = __cil_tmp91 + 72;
    __cil_tmp93 = *((struct device **)__cil_tmp92);
    __cil_tmp94 = (struct device const *)__cil_tmp93;
    dev_err(__cil_tmp94, "Failed to unlock registers: %d\n", ret);
    }
    return;
  } else {
  }
  {
  __cil_tmp95 = & reg1;
  __cil_tmp96 = *__cil_tmp95;
  __cil_tmp97 = (unsigned short )__cil_tmp96;
  ret = wm831x_set_bits(wm831x, (unsigned short)16456, (unsigned short)39968, __cil_tmp97);
  }
  if (ret != 0) {
    {
    __cil_tmp98 = (unsigned long )wm831x;
    __cil_tmp99 = __cil_tmp98 + 72;
    __cil_tmp100 = *((struct device **)__cil_tmp99);
    __cil_tmp101 = (struct device const *)__cil_tmp100;
    dev_err(__cil_tmp101, "Failed to set charger control 1: %d\n", ret);
    }
  } else {
  }
  {
  __cil_tmp102 = & reg2;
  __cil_tmp103 = *__cil_tmp102;
  __cil_tmp104 = (unsigned short )__cil_tmp103;
  ret = wm831x_set_bits(wm831x, (unsigned short)16457, (unsigned short)20479, __cil_tmp104);
  }
  if (ret != 0) {
    {
    __cil_tmp105 = (unsigned long )wm831x;
    __cil_tmp106 = __cil_tmp105 + 72;
    __cil_tmp107 = *((struct device **)__cil_tmp106);
    __cil_tmp108 = (struct device const *)__cil_tmp107;
    dev_err(__cil_tmp108, "Failed to set charger control 2: %d\n", ret);
    }
  } else {
  }
  {
  wm831x_reg_lock(wm831x);
  }
  return;
}
}
static int wm831x_bat_check_status(struct wm831x *wm831x , int *status )
{ int ret ;
  {
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16397);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret & 1024) {
    *status = 2;
    return (0);
  } else {
  }
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16458);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 28672) == 0) {
    goto case_0;
  } else
  if ((ret & 28672) == 1 << 12) {
    goto case_exp;
  } else
  if ((ret & 28672) == 2 << 12) {
    goto case_exp;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      *status = 3;
      goto switch_break;
      case_exp:
      case_exp___0:
      *status = 1;
      goto switch_break;
      switch_default:
      *status = 0;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (0);
}
}
static int wm831x_bat_check_type(struct wm831x *wm831x , int *type )
{ int ret ;
  {
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16458);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 28672) == 1 << 12) {
    goto case_exp;
  } else
  if ((ret & 28672) == 3 << 12) {
    goto case_exp;
  } else
  if ((ret & 28672) == 2 << 12) {
    goto case_exp___1;
  } else
  if ((ret & 28672) == 4 << 12) {
    goto case_exp___1;
  } else {
    {
    goto switch_default;
    if (0) {
      case_exp:
      case_exp___0:
      *type = 2;
      goto switch_break;
      case_exp___1:
      case_exp___2:
      *type = 3;
      goto switch_break;
      switch_default:
      *type = 1;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (0);
}
}
static int wm831x_bat_check_health(struct wm831x *wm831x , int *health )
{ int ret ;
  {
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16458);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret & 2048) {
    *health = 2;
    return (0);
  } else {
  }
  if (ret & 1024) {
    *health = 6;
    return (0);
  } else {
  }
  if (ret & 32768) {
    *health = 4;
    return (0);
  } else {
  }
  if ((ret & 28672) == 3 << 12) {
    goto case_exp;
  } else
  if ((ret & 28672) == 4 << 12) {
    goto case_exp;
  } else
  if ((ret & 28672) == 5 << 12) {
    goto case_exp___1;
  } else {
    {
    goto switch_default;
    if (0) {
      case_exp:
      case_exp___0:
      *health = 2;
      goto switch_break;
      case_exp___1:
      *health = 5;
      goto switch_break;
      switch_default:
      *health = 1;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (0);
}
}
static int wm831x_bat_get_prop(struct power_supply *psy , enum power_supply_property psp ,
                               union power_supply_propval *val )
{ struct wm831x_power *wm831x_power ;
  void *tmp ;
  struct wm831x *wm831x ;
  int ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  struct device *__cil_tmp11 ;
  struct device const *__cil_tmp12 ;
  int *__cil_tmp13 ;
  enum wm831x_auxadc __cil_tmp14 ;
  int *__cil_tmp15 ;
  int *__cil_tmp16 ;
  {
  {
  __cil_tmp8 = (unsigned long )psy;
  __cil_tmp9 = __cil_tmp8 + 96;
  __cil_tmp10 = *((struct device **)__cil_tmp9);
  __cil_tmp11 = *((struct device **)__cil_tmp10);
  __cil_tmp12 = (struct device const *)__cil_tmp11;
  tmp = dev_get_drvdata(__cil_tmp12);
  wm831x_power = (struct wm831x_power *)tmp;
  wm831x = *((struct wm831x **)wm831x_power);
  ret = 0;
  }
  if ((int )psp == 0) {
    goto case_0;
  } else
  if ((int )psp == 4) {
    goto case_4;
  } else
  if ((int )psp == 11) {
    goto case_11;
  } else
  if ((int )psp == 2) {
    goto case_2;
  } else
  if ((int )psp == 1) {
    goto case_1;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      __cil_tmp13 = (int *)val;
      ret = wm831x_bat_check_status(wm831x, __cil_tmp13);
      }
      goto switch_break;
      case_4:
      {
      ret = wm831x_power_check_online(wm831x, 1024, val);
      }
      goto switch_break;
      case_11:
      {
      __cil_tmp14 = (enum wm831x_auxadc )8;
      ret = wm831x_power_read_voltage(wm831x, __cil_tmp14, val);
      }
      goto switch_break;
      case_2:
      {
      __cil_tmp15 = (int *)val;
      ret = wm831x_bat_check_health(wm831x, __cil_tmp15);
      }
      goto switch_break;
      case_1:
      {
      __cil_tmp16 = (int *)val;
      ret = wm831x_bat_check_type(wm831x, __cil_tmp16);
      }
      goto switch_break;
      switch_default:
      ret = -22;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (ret);
}
}
static enum power_supply_property wm831x_bat_props[5] = { (enum power_supply_property )0, (enum power_supply_property )4, (enum power_supply_property )11, (enum power_supply_property )2,
        (enum power_supply_property )1};
static char const *wm831x_bat_irqs[8] =
  { "BATT HOT", "BATT COLD", "BATT FAIL", "OV",
        "END", "TO", "MODE", "START"};
static irqreturn_t wm831x_bat_irq(int irq , void *data ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___0 __attribute__((__used__,
__section__("__verbose"))) = {"wm831x_power", "wm831x_bat_irq", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/1060/dscv_tempdir/dscv/ri/32_1/drivers/power/wm831x_power.c.common.c",
    "Battery status changed: %d\n", 450U, 1U};
static irqreturn_t wm831x_bat_irq(int irq , void *data )
{ struct wm831x_power *wm831x_power ;
  struct wm831x *wm831x ;
  long tmp ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct device *__cil_tmp14 ;
  struct device const *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct power_supply *__cil_tmp20 ;
  {
  wm831x_power = (struct wm831x_power *)data;
  wm831x = *((struct wm831x **)wm831x_power);
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp6 = & descriptor___0;
      __cil_tmp7 = __cil_tmp6->flags;
      __cil_tmp8 = __cil_tmp7 & 1U;
      __cil_tmp9 = ! __cil_tmp8;
      __cil_tmp10 = ! __cil_tmp9;
      __cil_tmp11 = (long )__cil_tmp10;
      tmp = ldv__builtin_expect(__cil_tmp11, 0L);
      }
      if (tmp) {
        {
        __cil_tmp12 = (unsigned long )wm831x;
        __cil_tmp13 = __cil_tmp12 + 72;
        __cil_tmp14 = *((struct device **)__cil_tmp13);
        __cil_tmp15 = (struct device const *)__cil_tmp14;
        __dynamic_dev_dbg(& descriptor___0, __cil_tmp15, "Battery status changed: %d\n",
                          irq);
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp16 = (unsigned long )wm831x_power;
  __cil_tmp17 = __cil_tmp16 + 716;
  if (*((bool *)__cil_tmp17)) {
    {
    __cil_tmp18 = (unsigned long )wm831x_power;
    __cil_tmp19 = __cil_tmp18 + 440;
    __cil_tmp20 = (struct power_supply *)__cil_tmp19;
    power_supply_changed(__cil_tmp20);
    }
  } else {
  }
  }
  return ((irqreturn_t )1);
}
}
static irqreturn_t wm831x_syslo_irq(int irq , void *data )
{ struct wm831x_power *wm831x_power ;
  struct wm831x *wm831x ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct device *__cil_tmp7 ;
  struct device const *__cil_tmp8 ;
  {
  {
  wm831x_power = (struct wm831x_power *)data;
  wm831x = *((struct wm831x **)wm831x_power);
  __cil_tmp5 = (unsigned long )wm831x;
  __cil_tmp6 = __cil_tmp5 + 72;
  __cil_tmp7 = *((struct device **)__cil_tmp6);
  __cil_tmp8 = (struct device const *)__cil_tmp7;
  dev_crit(__cil_tmp8, "SYSVDD under voltage\n");
  }
  return ((irqreturn_t )1);
}
}
static irqreturn_t wm831x_pwr_src_irq(int irq , void *data ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___1 __attribute__((__used__,
__section__("__verbose"))) = {"wm831x_power", "wm831x_pwr_src_irq", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/1060/dscv_tempdir/dscv/ri/32_1/drivers/power/wm831x_power.c.common.c",
    "Power source changed\n", 482U, 1U};
static irqreturn_t wm831x_pwr_src_irq(int irq , void *data )
{ struct wm831x_power *wm831x_power ;
  struct wm831x *wm831x ;
  long tmp ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct device *__cil_tmp14 ;
  struct device const *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct power_supply *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct power_supply *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct power_supply *__cil_tmp26 ;
  {
  wm831x_power = (struct wm831x_power *)data;
  wm831x = *((struct wm831x **)wm831x_power);
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp6 = & descriptor___1;
      __cil_tmp7 = __cil_tmp6->flags;
      __cil_tmp8 = __cil_tmp7 & 1U;
      __cil_tmp9 = ! __cil_tmp8;
      __cil_tmp10 = ! __cil_tmp9;
      __cil_tmp11 = (long )__cil_tmp10;
      tmp = ldv__builtin_expect(__cil_tmp11, 0L);
      }
      if (tmp) {
        {
        __cil_tmp12 = (unsigned long )wm831x;
        __cil_tmp13 = __cil_tmp12 + 72;
        __cil_tmp14 = *((struct device **)__cil_tmp13);
        __cil_tmp15 = (struct device const *)__cil_tmp14;
        __dynamic_dev_dbg(& descriptor___1, __cil_tmp15, "Power source changed\n");
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp16 = (unsigned long )wm831x_power;
  __cil_tmp17 = __cil_tmp16 + 716;
  if (*((bool *)__cil_tmp17)) {
    {
    __cil_tmp18 = (unsigned long )wm831x_power;
    __cil_tmp19 = __cil_tmp18 + 440;
    __cil_tmp20 = (struct power_supply *)__cil_tmp19;
    power_supply_changed(__cil_tmp20);
    }
  } else {
  }
  }
  {
  __cil_tmp21 = (unsigned long )wm831x_power;
  __cil_tmp22 = __cil_tmp21 + 224;
  __cil_tmp23 = (struct power_supply *)__cil_tmp22;
  power_supply_changed(__cil_tmp23);
  __cil_tmp24 = (unsigned long )wm831x_power;
  __cil_tmp25 = __cil_tmp24 + 8;
  __cil_tmp26 = (struct power_supply *)__cil_tmp25;
  power_supply_changed(__cil_tmp26);
  }
  return ((irqreturn_t )1);
}
}
static int wm831x_power_probe(struct platform_device *pdev ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int wm831x_power_probe(struct platform_device *pdev )
{ struct wm831x *wm831x ;
  void *tmp ;
  struct wm831x_pdata *wm831x_pdata ;
  struct wm831x_power *power ;
  struct power_supply *usb ;
  struct power_supply *battery ;
  struct power_supply *wall ;
  int ret ;
  int irq ;
  int i ;
  void *tmp___0 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct device *__cil_tmp15 ;
  struct device const *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  void *__cil_tmp22 ;
  void *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  void *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  char *__cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  char *__cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  char *__cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  char *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  char *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  char *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  char *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  char *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  char *__cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  char *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  struct device *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  char *__cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  struct device *__cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  int __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  char *__cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  struct device *__cil_tmp142 ;
  unsigned int __cil_tmp143 ;
  void *__cil_tmp144 ;
  irqreturn_t (*__cil_tmp145)(int , void * ) ;
  void *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  struct device *__cil_tmp149 ;
  struct device const *__cil_tmp150 ;
  unsigned int __cil_tmp151 ;
  void *__cil_tmp152 ;
  irqreturn_t (*__cil_tmp153)(int , void * ) ;
  void *__cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  struct device *__cil_tmp157 ;
  struct device const *__cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  char const *__cil_tmp164 ;
  unsigned int __cil_tmp165 ;
  void *__cil_tmp166 ;
  irqreturn_t (*__cil_tmp167)(int , void * ) ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  char const *__cil_tmp170 ;
  void *__cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  struct device *__cil_tmp174 ;
  struct device const *__cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  char const *__cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  char const *__cil_tmp181 ;
  unsigned int __cil_tmp182 ;
  void *__cil_tmp183 ;
  unsigned int __cil_tmp184 ;
  void *__cil_tmp185 ;
  unsigned int __cil_tmp186 ;
  void *__cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  void const *__cil_tmp190 ;
  {
  {
  __cil_tmp13 = (unsigned long )pdev;
  __cil_tmp14 = __cil_tmp13 + 16;
  __cil_tmp15 = *((struct device **)__cil_tmp14);
  __cil_tmp16 = (struct device const *)__cil_tmp15;
  tmp = dev_get_drvdata(__cil_tmp16);
  wm831x = (struct wm831x *)tmp;
  __cil_tmp17 = (unsigned long )wm831x;
  __cil_tmp18 = __cil_tmp17 + 72;
  __cil_tmp19 = *((struct device **)__cil_tmp18);
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 + 184;
  __cil_tmp22 = *((void **)__cil_tmp21);
  wm831x_pdata = (struct wm831x_pdata *)__cil_tmp22;
  tmp___0 = kzalloc(720UL, 208U);
  power = (struct wm831x_power *)tmp___0;
  }
  {
  __cil_tmp23 = (void *)0;
  __cil_tmp24 = (unsigned long )__cil_tmp23;
  __cil_tmp25 = (unsigned long )power;
  if (__cil_tmp25 == __cil_tmp24) {
    return (-12);
  } else {
  }
  }
  {
  *((struct wm831x **)power) = wm831x;
  __cil_tmp26 = (void *)power;
  platform_set_drvdata(pdev, __cil_tmp26);
  __cil_tmp27 = (unsigned long )power;
  __cil_tmp28 = __cil_tmp27 + 224;
  usb = (struct power_supply *)__cil_tmp28;
  __cil_tmp29 = (unsigned long )power;
  __cil_tmp30 = __cil_tmp29 + 440;
  battery = (struct power_supply *)__cil_tmp30;
  __cil_tmp31 = (unsigned long )power;
  __cil_tmp32 = __cil_tmp31 + 8;
  wall = (struct power_supply *)__cil_tmp32;
  }
  if (wm831x_pdata) {
    if (*((int *)wm831x_pdata)) {
      {
      __cil_tmp33 = 0 * 1UL;
      __cil_tmp34 = 656 + __cil_tmp33;
      __cil_tmp35 = (unsigned long )power;
      __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
      __cil_tmp37 = (char *)__cil_tmp36;
      __cil_tmp38 = *((int *)wm831x_pdata);
      snprintf(__cil_tmp37, 20UL, "wm831x-wall.%d", __cil_tmp38);
      __cil_tmp39 = 0 * 1UL;
      __cil_tmp40 = 696 + __cil_tmp39;
      __cil_tmp41 = (unsigned long )power;
      __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
      __cil_tmp43 = (char *)__cil_tmp42;
      __cil_tmp44 = *((int *)wm831x_pdata);
      snprintf(__cil_tmp43, 20UL, "wm831x-battery.%d", __cil_tmp44);
      __cil_tmp45 = 0 * 1UL;
      __cil_tmp46 = 676 + __cil_tmp45;
      __cil_tmp47 = (unsigned long )power;
      __cil_tmp48 = __cil_tmp47 + __cil_tmp46;
      __cil_tmp49 = (char *)__cil_tmp48;
      __cil_tmp50 = *((int *)wm831x_pdata);
      snprintf(__cil_tmp49, 20UL, "wm831x-usb.%d", __cil_tmp50);
      }
    } else {
      {
      __cil_tmp51 = 0 * 1UL;
      __cil_tmp52 = 656 + __cil_tmp51;
      __cil_tmp53 = (unsigned long )power;
      __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
      __cil_tmp55 = (char *)__cil_tmp54;
      snprintf(__cil_tmp55, 20UL, "wm831x-wall");
      __cil_tmp56 = 0 * 1UL;
      __cil_tmp57 = 696 + __cil_tmp56;
      __cil_tmp58 = (unsigned long )power;
      __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
      __cil_tmp60 = (char *)__cil_tmp59;
      snprintf(__cil_tmp60, 20UL, "wm831x-battery");
      __cil_tmp61 = 0 * 1UL;
      __cil_tmp62 = 676 + __cil_tmp61;
      __cil_tmp63 = (unsigned long )power;
      __cil_tmp64 = __cil_tmp63 + __cil_tmp62;
      __cil_tmp65 = (char *)__cil_tmp64;
      snprintf(__cil_tmp65, 20UL, "wm831x-usb");
      }
    }
  } else {
    {
    __cil_tmp66 = 0 * 1UL;
    __cil_tmp67 = 656 + __cil_tmp66;
    __cil_tmp68 = (unsigned long )power;
    __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
    __cil_tmp70 = (char *)__cil_tmp69;
    snprintf(__cil_tmp70, 20UL, "wm831x-wall");
    __cil_tmp71 = 0 * 1UL;
    __cil_tmp72 = 696 + __cil_tmp71;
    __cil_tmp73 = (unsigned long )power;
    __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
    __cil_tmp75 = (char *)__cil_tmp74;
    snprintf(__cil_tmp75, 20UL, "wm831x-battery");
    __cil_tmp76 = 0 * 1UL;
    __cil_tmp77 = 676 + __cil_tmp76;
    __cil_tmp78 = (unsigned long )power;
    __cil_tmp79 = __cil_tmp78 + __cil_tmp77;
    __cil_tmp80 = (char *)__cil_tmp79;
    snprintf(__cil_tmp80, 20UL, "wm831x-usb");
    }
  }
  {
  wm831x_config_battery(wm831x);
  __cil_tmp81 = 0 * 1UL;
  __cil_tmp82 = 656 + __cil_tmp81;
  __cil_tmp83 = (unsigned long )power;
  __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
  __cil_tmp85 = (char *)__cil_tmp84;
  *((char const **)wall) = (char const *)__cil_tmp85;
  __cil_tmp86 = (unsigned long )wall;
  __cil_tmp87 = __cil_tmp86 + 8;
  *((enum power_supply_type *)__cil_tmp87) = (enum power_supply_type )3;
  __cil_tmp88 = (unsigned long )wall;
  __cil_tmp89 = __cil_tmp88 + 16;
  __cil_tmp90 = 0 * 4UL;
  __cil_tmp91 = (unsigned long )(wm831x_wall_props) + __cil_tmp90;
  *((enum power_supply_property **)__cil_tmp89) = (enum power_supply_property *)__cil_tmp91;
  __cil_tmp92 = (unsigned long )wall;
  __cil_tmp93 = __cil_tmp92 + 24;
  __cil_tmp94 = 8UL / 4UL;
  *((size_t *)__cil_tmp93) = __cil_tmp94 + 0UL;
  __cil_tmp95 = (unsigned long )wall;
  __cil_tmp96 = __cil_tmp95 + 48;
  *((int (**)(struct power_supply *psy , enum power_supply_property psp , union power_supply_propval *val ))__cil_tmp96) = & wm831x_wall_get_prop;
  __cil_tmp97 = (unsigned long )pdev;
  __cil_tmp98 = __cil_tmp97 + 16;
  __cil_tmp99 = (struct device *)__cil_tmp98;
  ret = power_supply_register(__cil_tmp99, wall);
  }
  if (ret) {
    goto err_kmalloc;
  } else {
  }
  {
  __cil_tmp100 = 0 * 1UL;
  __cil_tmp101 = 676 + __cil_tmp100;
  __cil_tmp102 = (unsigned long )power;
  __cil_tmp103 = __cil_tmp102 + __cil_tmp101;
  __cil_tmp104 = (char *)__cil_tmp103;
  *((char const **)usb) = (char const *)__cil_tmp104;
  __cil_tmp105 = (unsigned long )usb;
  __cil_tmp106 = __cil_tmp105 + 8;
  *((enum power_supply_type *)__cil_tmp106) = (enum power_supply_type )4;
  __cil_tmp107 = (unsigned long )usb;
  __cil_tmp108 = __cil_tmp107 + 16;
  __cil_tmp109 = 0 * 4UL;
  __cil_tmp110 = (unsigned long )(wm831x_usb_props) + __cil_tmp109;
  *((enum power_supply_property **)__cil_tmp108) = (enum power_supply_property *)__cil_tmp110;
  __cil_tmp111 = (unsigned long )usb;
  __cil_tmp112 = __cil_tmp111 + 24;
  __cil_tmp113 = 8UL / 4UL;
  *((size_t *)__cil_tmp112) = __cil_tmp113 + 0UL;
  __cil_tmp114 = (unsigned long )usb;
  __cil_tmp115 = __cil_tmp114 + 48;
  *((int (**)(struct power_supply *psy , enum power_supply_property psp , union power_supply_propval *val ))__cil_tmp115) = & wm831x_usb_get_prop;
  __cil_tmp116 = (unsigned long )pdev;
  __cil_tmp117 = __cil_tmp116 + 16;
  __cil_tmp118 = (struct device *)__cil_tmp117;
  ret = power_supply_register(__cil_tmp118, usb);
  }
  if (ret) {
    goto err_wall;
  } else {
  }
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16456);
  }
  if (ret < 0) {
    goto err_wall;
  } else {
  }
  __cil_tmp119 = (unsigned long )power;
  __cil_tmp120 = __cil_tmp119 + 716;
  __cil_tmp121 = ret & 32768;
  *((bool *)__cil_tmp120) = (bool )__cil_tmp121;
  {
  __cil_tmp122 = (unsigned long )power;
  __cil_tmp123 = __cil_tmp122 + 716;
  if (*((bool *)__cil_tmp123)) {
    {
    __cil_tmp124 = 0 * 1UL;
    __cil_tmp125 = 696 + __cil_tmp124;
    __cil_tmp126 = (unsigned long )power;
    __cil_tmp127 = __cil_tmp126 + __cil_tmp125;
    __cil_tmp128 = (char *)__cil_tmp127;
    *((char const **)battery) = (char const *)__cil_tmp128;
    __cil_tmp129 = (unsigned long )battery;
    __cil_tmp130 = __cil_tmp129 + 16;
    __cil_tmp131 = 0 * 4UL;
    __cil_tmp132 = (unsigned long )(wm831x_bat_props) + __cil_tmp131;
    *((enum power_supply_property **)__cil_tmp130) = (enum power_supply_property *)__cil_tmp132;
    __cil_tmp133 = (unsigned long )battery;
    __cil_tmp134 = __cil_tmp133 + 24;
    __cil_tmp135 = 20UL / 4UL;
    *((size_t *)__cil_tmp134) = __cil_tmp135 + 0UL;
    __cil_tmp136 = (unsigned long )battery;
    __cil_tmp137 = __cil_tmp136 + 48;
    *((int (**)(struct power_supply *psy , enum power_supply_property psp , union power_supply_propval *val ))__cil_tmp137) = & wm831x_bat_get_prop;
    __cil_tmp138 = (unsigned long )battery;
    __cil_tmp139 = __cil_tmp138 + 88;
    *((int *)__cil_tmp139) = 1;
    __cil_tmp140 = (unsigned long )pdev;
    __cil_tmp141 = __cil_tmp140 + 16;
    __cil_tmp142 = (struct device *)__cil_tmp141;
    ret = power_supply_register(__cil_tmp142, battery);
    }
    if (ret) {
      goto err_usb;
    } else {
    }
  } else {
  }
  }
  {
  irq = platform_get_irq_byname(pdev, "SYSLO");
  __cil_tmp143 = (unsigned int )irq;
  __cil_tmp144 = (void *)0;
  __cil_tmp145 = (irqreturn_t (*)(int , void * ))__cil_tmp144;
  __cil_tmp146 = (void *)power;
  ret = (int )request_threaded_irq(__cil_tmp143, __cil_tmp145, & wm831x_syslo_irq,
                                   1UL, "System power low", __cil_tmp146);
  }
  if (ret != 0) {
    {
    __cil_tmp147 = (unsigned long )pdev;
    __cil_tmp148 = __cil_tmp147 + 16;
    __cil_tmp149 = (struct device *)__cil_tmp148;
    __cil_tmp150 = (struct device const *)__cil_tmp149;
    dev_err(__cil_tmp150, "Failed to request SYSLO IRQ %d: %d\n", irq, ret);
    }
    goto err_battery;
  } else {
  }
  {
  irq = platform_get_irq_byname(pdev, "PWR SRC");
  __cil_tmp151 = (unsigned int )irq;
  __cil_tmp152 = (void *)0;
  __cil_tmp153 = (irqreturn_t (*)(int , void * ))__cil_tmp152;
  __cil_tmp154 = (void *)power;
  ret = (int )request_threaded_irq(__cil_tmp151, __cil_tmp153, & wm831x_pwr_src_irq,
                                   1UL, "Power source", __cil_tmp154);
  }
  if (ret != 0) {
    {
    __cil_tmp155 = (unsigned long )pdev;
    __cil_tmp156 = __cil_tmp155 + 16;
    __cil_tmp157 = (struct device *)__cil_tmp156;
    __cil_tmp158 = (struct device const *)__cil_tmp157;
    dev_err(__cil_tmp158, "Failed to request PWR SRC IRQ %d: %d\n", irq, ret);
    }
    goto err_syslo;
  } else {
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp159 = 64UL / 8UL;
    __cil_tmp160 = __cil_tmp159 + 0UL;
    __cil_tmp161 = (unsigned long )i;
    if (__cil_tmp161 < __cil_tmp160) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp162 = i * 8UL;
    __cil_tmp163 = (unsigned long )(wm831x_bat_irqs) + __cil_tmp162;
    __cil_tmp164 = *((char const **)__cil_tmp163);
    irq = platform_get_irq_byname(pdev, __cil_tmp164);
    __cil_tmp165 = (unsigned int )irq;
    __cil_tmp166 = (void *)0;
    __cil_tmp167 = (irqreturn_t (*)(int , void * ))__cil_tmp166;
    __cil_tmp168 = i * 8UL;
    __cil_tmp169 = (unsigned long )(wm831x_bat_irqs) + __cil_tmp168;
    __cil_tmp170 = *((char const **)__cil_tmp169);
    __cil_tmp171 = (void *)power;
    ret = (int )request_threaded_irq(__cil_tmp165, __cil_tmp167, & wm831x_bat_irq,
                                     1UL, __cil_tmp170, __cil_tmp171);
    }
    if (ret != 0) {
      {
      __cil_tmp172 = (unsigned long )pdev;
      __cil_tmp173 = __cil_tmp172 + 16;
      __cil_tmp174 = (struct device *)__cil_tmp173;
      __cil_tmp175 = (struct device const *)__cil_tmp174;
      __cil_tmp176 = i * 8UL;
      __cil_tmp177 = (unsigned long )(wm831x_bat_irqs) + __cil_tmp176;
      __cil_tmp178 = *((char const **)__cil_tmp177);
      dev_err(__cil_tmp175, "Failed to request %s IRQ %d: %d\n", __cil_tmp178, irq,
              ret);
      }
      goto err_bat_irq;
    } else {
    }
    i = i + 1;
  }
  while_break: ;
  }
  return (ret);
  err_bat_irq:
  {
  while (1) {
    while_continue___0: ;
    if (i >= 0) {
    } else {
      goto while_break___0;
    }
    {
    __cil_tmp179 = i * 8UL;
    __cil_tmp180 = (unsigned long )(wm831x_bat_irqs) + __cil_tmp179;
    __cil_tmp181 = *((char const **)__cil_tmp180);
    irq = platform_get_irq_byname(pdev, __cil_tmp181);
    __cil_tmp182 = (unsigned int )irq;
    __cil_tmp183 = (void *)power;
    free_irq(__cil_tmp182, __cil_tmp183);
    i = i - 1;
    }
  }
  while_break___0: ;
  }
  {
  irq = platform_get_irq_byname(pdev, "PWR SRC");
  __cil_tmp184 = (unsigned int )irq;
  __cil_tmp185 = (void *)power;
  free_irq(__cil_tmp184, __cil_tmp185);
  }
  err_syslo:
  {
  irq = platform_get_irq_byname(pdev, "SYSLO");
  __cil_tmp186 = (unsigned int )irq;
  __cil_tmp187 = (void *)power;
  free_irq(__cil_tmp186, __cil_tmp187);
  }
  err_battery:
  {
  __cil_tmp188 = (unsigned long )power;
  __cil_tmp189 = __cil_tmp188 + 716;
  if (*((bool *)__cil_tmp189)) {
    {
    power_supply_unregister(battery);
    }
  } else {
  }
  }
  err_usb:
  {
  power_supply_unregister(usb);
  }
  err_wall:
  {
  power_supply_unregister(wall);
  }
  err_kmalloc:
  {
  __cil_tmp190 = (void const *)power;
  kfree(__cil_tmp190);
  }
  return (ret);
}
}
static int wm831x_power_remove(struct platform_device *pdev ) __attribute__((__section__(".devexit.text"),
__no_instrument_function__)) ;
static int wm831x_power_remove(struct platform_device *pdev )
{ struct wm831x_power *wm831x_power ;
  void *tmp ;
  int irq ;
  int i ;
  struct platform_device const *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  char const *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  void *__cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct power_supply *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct power_supply *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct power_supply *__cil_tmp29 ;
  void const *__cil_tmp30 ;
  {
  {
  __cil_tmp6 = (struct platform_device const *)pdev;
  tmp = platform_get_drvdata(__cil_tmp6);
  wm831x_power = (struct wm831x_power *)tmp;
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp7 = 64UL / 8UL;
    __cil_tmp8 = __cil_tmp7 + 0UL;
    __cil_tmp9 = (unsigned long )i;
    if (__cil_tmp9 < __cil_tmp8) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp10 = i * 8UL;
    __cil_tmp11 = (unsigned long )(wm831x_bat_irqs) + __cil_tmp10;
    __cil_tmp12 = *((char const **)__cil_tmp11);
    irq = platform_get_irq_byname(pdev, __cil_tmp12);
    __cil_tmp13 = (unsigned int )irq;
    __cil_tmp14 = (void *)wm831x_power;
    free_irq(__cil_tmp13, __cil_tmp14);
    i = i + 1;
    }
  }
  while_break: ;
  }
  {
  irq = platform_get_irq_byname(pdev, "PWR SRC");
  __cil_tmp15 = (unsigned int )irq;
  __cil_tmp16 = (void *)wm831x_power;
  free_irq(__cil_tmp15, __cil_tmp16);
  irq = platform_get_irq_byname(pdev, "SYSLO");
  __cil_tmp17 = (unsigned int )irq;
  __cil_tmp18 = (void *)wm831x_power;
  free_irq(__cil_tmp17, __cil_tmp18);
  }
  {
  __cil_tmp19 = (unsigned long )wm831x_power;
  __cil_tmp20 = __cil_tmp19 + 716;
  if (*((bool *)__cil_tmp20)) {
    {
    __cil_tmp21 = (unsigned long )wm831x_power;
    __cil_tmp22 = __cil_tmp21 + 440;
    __cil_tmp23 = (struct power_supply *)__cil_tmp22;
    power_supply_unregister(__cil_tmp23);
    }
  } else {
  }
  }
  {
  __cil_tmp24 = (unsigned long )wm831x_power;
  __cil_tmp25 = __cil_tmp24 + 8;
  __cil_tmp26 = (struct power_supply *)__cil_tmp25;
  power_supply_unregister(__cil_tmp26);
  __cil_tmp27 = (unsigned long )wm831x_power;
  __cil_tmp28 = __cil_tmp27 + 224;
  __cil_tmp29 = (struct power_supply *)__cil_tmp28;
  power_supply_unregister(__cil_tmp29);
  __cil_tmp30 = (void const *)wm831x_power;
  kfree(__cil_tmp30);
  }
  return (0);
}
}
static struct platform_driver wm831x_power_driver = {& wm831x_power_probe, & wm831x_power_remove, (void (*)(struct platform_device * ))0,
    (int (*)(struct platform_device * , pm_message_t state ))0, (int (*)(struct platform_device * ))0,
    {"wm831x-power", (struct bus_type *)0, (struct module *)0, (char const *)0,
     (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device *dev ))0,
     (int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                 pm_message_t state ))0,
     (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct platform_device_id const *)0};
static int wm831x_power_driver_init(void) __attribute__((__section__(".init.text"),
__no_instrument_function__)) ;
static int wm831x_power_driver_init(void)
{ int tmp ;
  {
  {
  tmp = platform_driver_register(& wm831x_power_driver);
  }
  return (tmp);
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = wm831x_power_driver_init();
  }
  return (tmp);
}
}
static void wm831x_power_driver_exit(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void wm831x_power_driver_exit(void)
{
  {
  {
  platform_driver_unregister(& wm831x_power_driver);
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  wm831x_power_driver_exit();
  }
  return;
}
}
static char const __mod_description661[49] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'P', (char const )'o', (char const )'w', (char const )'e',
        (char const )'r', (char const )' ', (char const )'s', (char const )'u',
        (char const )'p', (char const )'p', (char const )'l', (char const )'y',
        (char const )' ', (char const )'d', (char const )'r', (char const )'i',
        (char const )'v', (char const )'e', (char const )'r', (char const )' ',
        (char const )'f', (char const )'o', (char const )'r', (char const )' ',
        (char const )'W', (char const )'M', (char const )'8', (char const )'3',
        (char const )'1', (char const )'x', (char const )' ', (char const )'P',
        (char const )'M', (char const )'I', (char const )'C', (char const )'s',
        (char const )'\000'};
static char const __mod_author662[56] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'M',
        (char const )'a', (char const )'r', (char const )'k', (char const )' ',
        (char const )'B', (char const )'r', (char const )'o', (char const )'w',
        (char const )'n', (char const )' ', (char const )'<', (char const )'b',
        (char const )'r', (char const )'o', (char const )'o', (char const )'n',
        (char const )'i', (char const )'e', (char const )'@', (char const )'o',
        (char const )'p', (char const )'e', (char const )'n', (char const )'s',
        (char const )'o', (char const )'u', (char const )'r', (char const )'c',
        (char const )'e', (char const )'.', (char const )'w', (char const )'o',
        (char const )'l', (char const )'f', (char const )'s', (char const )'o',
        (char const )'n', (char const )'m', (char const )'i', (char const )'c',
        (char const )'r', (char const )'o', (char const )'.', (char const )'c',
        (char const )'o', (char const )'m', (char const )'>', (char const )'\000'};
static char const __mod_license663[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_alias664[28] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'l', (char const )'i', (char const )'a',
        (char const )'s', (char const )'=', (char const )'p', (char const )'l',
        (char const )'a', (char const )'t', (char const )'f', (char const )'o',
        (char const )'r', (char const )'m', (char const )':', (char const )'w',
        (char const )'m', (char const )'8', (char const )'3', (char const )'1',
        (char const )'x', (char const )'-', (char const )'p', (char const )'o',
        (char const )'w', (char const )'e', (char const )'r', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_wm831x_power_probe_13 ;
void main(void)
{ struct platform_device *var_group1 ;
  int var_wm831x_bat_irq_10_p0 ;
  void *var_wm831x_bat_irq_10_p1 ;
  int var_wm831x_pwr_src_irq_12_p0 ;
  void *var_wm831x_pwr_src_irq_12_p1 ;
  int var_wm831x_syslo_irq_11_p0 ;
  void *var_wm831x_syslo_irq_11_p1 ;
  int ldv_s_wm831x_power_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int __cil_tmp11 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_wm831x_power_driver_platform_driver = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0) {
    } else {
      {
      __cil_tmp11 = ldv_s_wm831x_power_driver_platform_driver == 0;
      if (! __cil_tmp11) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp = __VERIFIER_nondet_int();
    }
    if (tmp == 0) {
      goto case_0;
    } else
    if (tmp == 1) {
      goto case_1;
    } else
    if (tmp == 2) {
      goto case_2;
    } else
    if (tmp == 3) {
      goto case_3;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_wm831x_power_driver_platform_driver == 0) {
          {
          res_wm831x_power_probe_13 = wm831x_power_probe(var_group1);
          ldv_check_return_value(res_wm831x_power_probe_13);
          }
          if (res_wm831x_power_probe_13) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_wm831x_power_driver_platform_driver = 0;
        } else {
        }
        goto switch_break;
        case_1:
        {
        LDV_IN_INTERRUPT = 2;
        wm831x_bat_irq(var_wm831x_bat_irq_10_p0, var_wm831x_bat_irq_10_p1);
        LDV_IN_INTERRUPT = 1;
        }
        goto switch_break;
        case_2:
        {
        LDV_IN_INTERRUPT = 2;
        wm831x_pwr_src_irq(var_wm831x_pwr_src_irq_12_p0, var_wm831x_pwr_src_irq_12_p1);
        LDV_IN_INTERRUPT = 1;
        }
        goto switch_break;
        case_3:
        {
        LDV_IN_INTERRUPT = 2;
        wm831x_syslo_irq(var_wm831x_syslo_irq_11_p0, var_wm831x_syslo_irq_11_p1);
        LDV_IN_INTERRUPT = 1;
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_crit(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_get_irq_byname(struct platform_device *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void power_supply_changed(struct power_supply *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int power_supply_register(struct device *arg0, struct power_supply *arg1) {
  return __VERIFIER_nondet_int();
}
void power_supply_unregister(struct power_supply *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_auxadc_read_uv(struct wm831x *arg0, enum wm831x_auxadc arg1) {
  return __VERIFIER_nondet_int();
}
void wm831x_reg_lock(struct wm831x *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wm831x_reg_read(struct wm831x *arg0, unsigned short arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_reg_unlock(struct wm831x *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_set_bits(struct wm831x *arg0, unsigned short arg1, unsigned short arg2, unsigned short arg3) {
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
