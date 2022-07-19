.class public Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;
.super Lcom/alipay/mobile/liteprocess/advice/StartActivityWithoutMicroAppAdvice;
.source "PhoneCashierStartActivityAdvice.java"


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/advice/StartActivityWithoutMicroAppAdvice;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 8

    .line 20
    sget-object v0, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;

    if-eqz v0, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 26
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;

    .line 27
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "com.alipay.android.app.helper.MspStartActivityInjector"

    .line 28
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/PhoneCashierStartActivityAdvice;

    .line 27
    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "injector":Ljava/lang/Object;
    const-string v3, "com.alipay.android.app.helper.MspStartActivityInjectorUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setStartActivityInjector"

    new-array v6, v2, [Ljava/lang/Class;

    const-string v7, "com.alipay.android.app.helper.MspStartActivityInjector"

    .line 31
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v5

    .line 30
    invoke-static {v3, v4, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    .line 32
    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcessInfo"

    const-string/jumbo v4, "register PhoneCashierStartActivityAdvice"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .end local v1    # "injector":Ljava/lang/Object;
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LiteProcessInfo"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Config;->needHookPhoneCashier()Z

    move-result v0

    return v0
.end method
