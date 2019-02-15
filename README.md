# Adonis_20190215_Timer

-------
常见NSTimer的消毁方法。
用一种优雅的方式销毁NSTimer。
1. 在合适的时机销毁

```
- (void)didMoveToParentViewController:(UIViewController *)parent {
    if (!parent) {
        [self.timer invalidate];
        self.timer = nil;
    }
}
```
2. 使用中介者销毁

```
    _target = [NSObject new];
    
    class_addMethod([_target class], @selector(startMethod), class_getMethodImplementation([self class], @selector(startMethod)), "v@:");
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:_target selector:@selector(startMethod) userInfo:nil repeats:YES];
    
#pragma mark - 析构
- (void)dealloc {
    [self.timer invalidate];
    self.timer = nil;
}
```
3. 用一个继承于NSProxy的子类,在它内部实现一些方法

```
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.target];
}


//控制器中
    self.proxy = [HYProxy alloc];
    
    self.proxy.target = self;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self.proxy selector:@selector(startMethod) userInfo:nil repeats:YES];
```
4. 自定义NSTimer方法
 
```
+ (NSTimer *)hy_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block {
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(hy_blockHandle:) userInfo:block repeats:repeats];
}

+ (void)hy_blockHandle:(NSTimer *)timer {
    void(^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}

//控制器中
    __weak typeof(self) weakSelf = self;
    
    self.timer = [NSTimer hy_scheduledTimerWithTimeInterval:1.0f repeats:YES block:^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf startMethod];
    }];
```

#Author

>[HYAdonisCoding]

#Licenses

>All source code is licensed under the [MIT License].