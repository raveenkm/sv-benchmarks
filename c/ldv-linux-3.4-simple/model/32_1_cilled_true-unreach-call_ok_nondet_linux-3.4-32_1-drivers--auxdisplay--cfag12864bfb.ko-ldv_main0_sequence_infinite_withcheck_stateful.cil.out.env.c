// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Function: __phys_addr
// with type: unsigned long int __phys_addr(unsigned long)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: cfag12864b_disable
// with type: void cfag12864b_disable()
// with return type: void
void cfag12864b_disable() {
  // Void type
  return;
}

// Function: cfag12864b_enable
// with type: unsigned char cfag12864b_enable()
// with return type: unsigned char
unsigned char __VERIFIER_nondet_uchar(void);
unsigned char cfag12864b_enable() {
  // Simple type
  return __VERIFIER_nondet_uchar();
}

// Function: cfag12864b_isinited
// with type: unsigned char cfag12864b_isinited()
// with return type: unsigned char
unsigned char __VERIFIER_nondet_uchar(void);
unsigned char cfag12864b_isinited() {
  // Simple type
  return __VERIFIER_nondet_uchar();
}

// Function: dev_get_drvdata
// with type: void *dev_get_drvdata(const struct device *dev)
// with return type: (void)*
void *dev_get_drvdata(const struct device *arg0) {
  // Pointer type
  return ldv_malloc(0UL);
}

// Function: dev_set_drvdata
// with type: int dev_set_drvdata(struct device *dev, void *data)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: framebuffer_alloc
// with type: struct fb_info *framebuffer_alloc(size_t size, struct device *dev)
// with return type: (struct fb_info)*
struct fb_info *framebuffer_alloc(size_t arg0, struct device *arg1) {
  // Pointer type
  return ldv_malloc(sizeof(struct fb_info));
}

// Function: framebuffer_release
// with type: void framebuffer_release(struct fb_info *info)
// with return type: void
void framebuffer_release(struct fb_info *arg0) {
  // Void type
  return;
}

// Function: ldv_check_return_value
// with type: void ldv_check_return_value(int res)
// with return type: void
void ldv_check_return_value(int arg0) {
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

// Function: platform_device_add
// with type: int platform_device_add(struct platform_device *pdev)
// with return type: int
int __VERIFIER_nondet_int(void);
int platform_device_add(struct platform_device *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: platform_device_alloc
// with type: struct platform_device *platform_device_alloc(const char *name, int id)
// with return type: (struct platform_device)*
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  // Pointer type
  return ldv_malloc(sizeof(struct platform_device));
}

// Function: platform_device_put
// with type: void platform_device_put(struct platform_device *pdev)
// with return type: void
void platform_device_put(struct platform_device *arg0) {
  // Void type
  return;
}

// Function: platform_device_unregister
// with type: void platform_device_unregister(struct platform_device *)
// with return type: void
void platform_device_unregister(struct platform_device *arg0) {
  // Void type
  return;
}

// Function: platform_driver_register
// with type: int platform_driver_register(struct platform_driver *)
// with return type: int
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: platform_driver_unregister
// with type: void platform_driver_unregister(struct platform_driver *)
// with return type: void
void platform_driver_unregister(struct platform_driver *arg0) {
  // Void type
  return;
}

// Function: printk
// with type: int printk(const char *fmt, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: register_framebuffer
// with type: int register_framebuffer(struct fb_info *fb_info)
// with return type: int
int __VERIFIER_nondet_int(void);
int register_framebuffer(struct fb_info *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: unregister_framebuffer
// with type: int unregister_framebuffer(struct fb_info *fb_info)
// with return type: int
int __VERIFIER_nondet_int(void);
int unregister_framebuffer(struct fb_info *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: vm_insert_page
// with type: int vm_insert_page(struct vm_area_struct *, unsigned long addr, struct page *)
// with return type: int
int __VERIFIER_nondet_int(void);
int vm_insert_page(struct vm_area_struct *arg0, unsigned long arg1, struct page *arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

