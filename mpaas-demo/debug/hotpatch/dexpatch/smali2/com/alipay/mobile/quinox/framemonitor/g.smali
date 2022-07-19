.class final Lcom/alipay/mobile/quinox/framemonitor/g;
.super Ljava/lang/Object;
.source "MainLooperLoggerProxy.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 10

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "instance":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 21
    .local v1, "addMessageLogging":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 23
    .local v2, "removeMessageLogging":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.alipay.android.phone.mobilesdk.apm.base.MainLooperLogger"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v5, v3

    .line 24
    .local v5, "clazz":Ljava/lang/Class;
    move-object v5, v4

    const-string v6, "getInstance"

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 25
    const-string v4, "addMessageLogging"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/util/Printer;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v4, v7}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 26
    const-string v4, "removeMessageLogging"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/util/Printer;

    aput-object v7, v6, v9

    invoke-static {v5, v4, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 29
    .end local v5    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v4

    .line 28
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "MainLooperLoggerProxy"

    const-string v6, "fail get MainLooperLogger"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->a:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->b:Ljava/lang/reflect/Method;

    .line 33
    iput-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->c:Ljava/lang/reflect/Method;

    return-void

    .line 35
    :cond_0
    iput-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->a:Ljava/lang/Object;

    .line 36
    iput-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->b:Ljava/lang/reflect/Method;

    .line 37
    iput-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->c:Ljava/lang/reflect/Method;

    .line 39
    return-void
.end method


# virtual methods
.method final a(Landroid/util/Printer;)V
    .locals 5
    .param p1, "logger"    # Landroid/util/Printer;

    .line 43
    const-string v0, "MainLooperLoggerProxy"

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail addMessageLogging "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addMessageLogging() called with: logger = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 44
    :cond_1
    :goto_1
    return-void
.end method

.method final b(Landroid/util/Printer;)V
    .locals 5
    .param p1, "logger"    # Landroid/util/Printer;

    .line 56
    const-string v0, "MainLooperLoggerProxy"

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/g;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail addMessageLogging "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeMessageLogging() called with: logger = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 57
    :cond_1
    :goto_1
    return-void
.end method
