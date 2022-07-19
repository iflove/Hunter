.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RealTimeReceiver.java"


# static fields
.field public static final ACTION_CONFIG_CHANGED:Ljava/lang/String; = "com.alipay.mobile.client.CONFIG_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/reflect/Method;)V
    .locals 9
    .param p0, "configService"    # Ljava/lang/Object;
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "getConfigMethod"    # Ljava/lang/reflect/Method;

    .line 111
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hotpatch_isforce"

    aput-object v3, v1, v2

    invoke-virtual {p3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "strIsForce":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "syncIsForce(newIsForce="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "DynamicRelease"

    invoke-interface {v4, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    .local v0, "oldIsForce":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "syncIsForce(oldIsForce="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 119
    .local v2, "newIsForce":Z
    move v2, v4

    if-eq v4, v0, :cond_0

    .line 120
    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    .end local v0    # "oldIsForce":Z
    .end local v2    # "newIsForce":Z
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Object;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/reflect/Method;)V
    .locals 8
    .param p0, "configService"    # Ljava/lang/Object;
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "getConfigMethod"    # Ljava/lang/reflect/Method;

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hotpatch_clean_pattern"

    aput-object v2, v0, v1

    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "newPattern":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncPattern(newPattern="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DynamicRelease"

    invoke-interface {v1, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "oldPattern":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syncPattern(oldPattern="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->setCleanPatchPattern(Ljava/lang/String;)V

    .line 138
    .end local v1    # "oldPattern":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static syncHotpatchConfig()V
    .locals 12

    const-string v0, "DynamicRelease"

    .line 74
    :try_start_0
    const-string v1, "com.alipay.mobile.framework.LauncherApplicationAgent"

    const-string v2, "getInstance"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 77
    .local v3, "launcherAppAgent":Ljava/lang/Object;
    const-string v4, "getMicroApplicationContext"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "microAppContext":Ljava/lang/Object;
    const-string v4, "com.alipay.mobile.base.config.ConfigService"

    .line 80
    .local v4, "interfaceName":Ljava/lang/String;
    const-string v5, "findServiceByInterface"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v8, v6, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v1, v5, v7, v8}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v2

    .line 84
    .local v7, "configService":Ljava/lang/Object;
    move-object v7, v5

    if-nez v5, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "syncDynamicReleaseConfig configService = null"

    invoke-interface {v2, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 90
    const-string v8, "getConfig"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v9

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v8, v2

    .line 91
    .local v8, "getConfigMethod":Ljava/lang/reflect/Method;
    move-object v8, v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
    const-string v5, "getApplicationContext"

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 96
    invoke-virtual {v5, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 97
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    invoke-static {v7, v2, v5, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;->a(Ljava/lang/Object;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/reflect/Method;)V

    .line 101
    invoke-static {v7, v2, v5, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;->b(Ljava/lang/Object;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v6

    .line 103
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    .end local v1    # "microAppContext":Ljava/lang/Object;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "launcherAppAgent":Ljava/lang/Object;
    .end local v4    # "interfaceName":Ljava/lang/String;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "configService":Ljava/lang/Object;
    .end local v8    # "getConfigMethod":Ljava/lang/reflect/Method;
    return-void

    .line 105
    :catchall_1
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hotpatch.RealTimeReceiver.onReceive() action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "com.alipay.mobile.client.CONFIG_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/hotpatch/RealTimeReceiver;)V

    const-string v3, "hotpatch.RealTimeReceiver.syncDynamicReleaseConfig"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    const-string v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/alipay/dexpatch/DexPatchManager;->onClientEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    return-void

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void

    .line 59
    :cond_1
    const-string v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :try_start_1
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/alipay/dexpatch/DexPatchManager;->onClientEvent(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    return-void

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    .restart local v1    # "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
