.class public Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;
.super Ljava/lang/Object;
.source "UcNativeCrashApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UcNativeCrashApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    const-string v0, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v1, "addCrashHeadInfo"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "UcNativeCrashApi"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public static onExit()V
    .locals 2

    .line 52
    :try_start_0
    const-string v0, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "UcNativeCrashApi"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static setForeground(Z)V
    .locals 6
    .param p0, "foreground"    # Z

    .line 40
    :try_start_0
    const-string v0, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v1, "setForeground"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    .line 40
    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "UcNativeCrashApi"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static setLastCodePath(Ljava/lang/String;)V
    .locals 6
    .param p0, "lastCodePath"    # Ljava/lang/String;

    .line 28
    :try_start_0
    const-string v0, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v1, "setLastCodePath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "UcNativeCrashApi"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static setLastRunningProductVersion(Ljava/lang/String;)V
    .locals 6
    .param p0, "lastVersion"    # Ljava/lang/String;

    .line 16
    :try_start_0
    const-string v0, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v1, "setLastRunningProductVersion"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "UcNativeCrashApi"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
