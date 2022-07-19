.class public Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;
.super Ljava/lang/Object;
.source "TransportEnvUtil.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 7

    .line 24
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    return-object v0

    .line 29
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "TransportEnvUtil"

    if-lt v0, v1, :cond_2

    .line 31
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v2

    .line 32
    .local v1, "activityThreadClazz":Ljava/lang/Class;
    const-string v5, "currentApplication"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 33
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 34
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 35
    return-object v0

    .line 37
    :cond_1
    const-string v0, "context from ActivityThread is null"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v1    # "activityThreadClazz":Ljava/lang/Class;
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 39
    .local v1, "e":Ljava/lang/Throwable;
    const-string v0, "context from ActivityThread exception"

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v2

    .line 44
    :goto_0
    :try_start_1
    const-string v0, "com.alipay.mobile.quinox.LauncherApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v1, "applicationClazz":Ljava/lang/Class;
    const-string v5, "getInstance"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 47
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 48
    const-string v0, "context from LauncherApplication is null"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .end local v1    # "applicationClazz":Ljava/lang/Class;
    :cond_3
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "context from LauncherApplication exception"

    invoke-static {v4, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static final isRunningJunitEnv()Z
    .locals 2

    .line 58
    const-string v0, "OS_ENV"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "OS_ENV_JUNIT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final isRunningWalletEnv()Z
    .locals 2

    .line 63
    const/4 v0, 0x0

    .local v0, "osEnv":Ljava/lang/String;
    const-string v1, "OS_ENV"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    return v1

    .line 67
    :cond_0
    const-string v1, "OS_ENV_WALLET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static final setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    sput-object p0, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->a:Landroid/content/Context;

    .line 20
    return-void
.end method
