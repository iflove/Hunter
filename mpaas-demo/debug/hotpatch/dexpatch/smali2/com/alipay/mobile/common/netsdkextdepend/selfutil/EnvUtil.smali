.class public Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;
.super Ljava/lang/Object;
.source "EnvUtil.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 7

    .line 25
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "EnvUtil"

    if-lt v0, v1, :cond_2

    .line 32
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v2

    .line 33
    .local v1, "activityThreadClazz":Ljava/lang/Class;
    const-string v5, "currentApplication"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 34
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 35
    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 36
    return-object v0

    .line 38
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "[getContext] context from ActivityThread is null"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v1    # "activityThreadClazz":Ljava/lang/Class;
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 40
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "[getContext] context from ActivityThread exception"

    invoke-interface {v0, v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v2

    .line 45
    :goto_0
    :try_start_1
    const-string v0, "com.alipay.mobile.quinox.LauncherApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v1, "applicationClazz":Ljava/lang/Class;
    const-string v5, "getInstance"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 48
    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "[getContext] context from LauncherApplication is null"

    invoke-interface {v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .end local v1    # "applicationClazz":Ljava/lang/Class;
    :cond_3
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "[getContext] ccontext from LauncherApplication exception"

    invoke-interface {v1, v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static final setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    sput-object p0, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->a:Landroid/content/Context;

    .line 21
    return-void
.end method
