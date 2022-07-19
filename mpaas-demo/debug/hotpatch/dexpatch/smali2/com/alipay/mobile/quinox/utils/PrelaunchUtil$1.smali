.class final Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;
.super Ljava/lang/Object;
.source "PrelaunchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/utils/PrelaunchUtil;->preloadMisc(Landroid/app/Application;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/app/Application;

.field final synthetic val$processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "preload config failed."

    const-string v1, "preload security guard failed."

    const-string v2, "PrelaunchUtil"

    .line 87
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    const-string v5, "CommonConfigEncrypt_Cache"

    invoke-virtual {v4, v5, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 88
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    const-string v5, "CommonConfigEncrypt"

    invoke-virtual {v4, v5, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->loadSTLSosInQuinoxProcess(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupParam;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/startup/StartupParam;->isPreloadSg()Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    const-string v0, "!isPreloadSg return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_0
    const-string v4, "needPreload sg"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "mytest"

    const-string v5, "preloadsg start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v5, "preloadsg step 0.1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v5, 0x0

    .line 107
    .local v5, "pauseDex2Oat":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_1
    iget-object v8, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    invoke-static {v8}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v8

    move-object v9, v6

    .line 108
    .local v9, "upgrade":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    sget-object v10, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v8, v10, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move v5, v8

    .line 110
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ne v8, v10, :cond_2

    .line 111
    const/4 v5, 0x0

    .line 114
    :cond_2
    if-eqz v5, :cond_3

    .line 115
    const-string v8, "preload sg, pause dex2oat for speed."

    invoke-static {v2, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseDex2Oat(I)V

    .line 120
    :cond_3
    const/16 v8, -0x14

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 122
    iget-object v8, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v8, :cond_5

    .line 125
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 126
    const-string v4, "com.alipay.mobile.base.config.impl.ConfigServiceLite"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v8, v6

    .line 127
    .local v8, "clazz":Ljava/lang/Class;
    const-string v10, "getIpcConfigCache"

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v3

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 128
    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    aput-object v11, v10, v3

    invoke-virtual {v4, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    .end local v8    # "clazz":Ljava/lang/Class;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_2

    .line 129
    :catchall_1
    move-exception v4

    move-object v8, v4

    .line 130
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v2, v0, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 132
    .end local v8    # "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 133
    nop

    .line 153
    if-eqz v5, :cond_4

    .line 155
    :try_start_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeDex2Oat(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 158
    return-void

    .line 156
    :catchall_2
    move-exception v0

    .line 157
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_4
    return-void

    .line 132
    :catchall_3
    move-exception v0

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/Thread;->setPriority(I)V

    .end local v5    # "pauseDex2Oat":Z
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 150
    .end local v9    # "upgrade":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .restart local v5    # "pauseDex2Oat":Z
    :catchall_4
    move-exception v0

    goto :goto_3

    .line 138
    .restart local v9    # "upgrade":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    :cond_5
    :try_start_8
    const-string v0, "preloadsg step 1"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v8, v6

    .line 142
    .local v8, "clazz":Ljava/lang/Class;
    move-object v8, v0

    :try_start_9
    const-string v10, "getInstance"

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v3

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    aput-object v11, v10, v3

    invoke-virtual {v0, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "instance":Ljava/lang/Object;
    const-string v10, "getSecureSignatureComp"

    new-array v11, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 145
    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v10, "preloadsg step 3"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 153
    nop

    .end local v0    # "instance":Ljava/lang/Object;
    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v9    # "upgrade":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    if-eqz v5, :cond_6

    .line 155
    :try_start_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeDex2Oat(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_4

    .line 150
    :catchall_5
    move-exception v0

    move-object v8, v6

    :goto_3
    move-object v9, v0

    .line 151
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_b
    invoke-static {v2, v1, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 153
    .end local v9    # "e":Ljava/lang/Throwable;
    if-eqz v5, :cond_6

    .line 155
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeDex2Oat(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_4

    .line 156
    :catchall_6
    move-exception v0

    move-object v9, v0

    .line 157
    .local v9, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v1, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v9    # "tr":Ljava/lang/Throwable;
    :goto_4
    nop

    .line 165
    :cond_6
    :try_start_d
    const-string v0, "com.alipay.android.phone.mobilesdk.storage.encryption.TaobaoSecurityEncryptor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v9

    .line 166
    .local v1, "encrypt":Ljava/lang/Class;
    const-string v4, "encrypt"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/content/ContextWrapper;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-virtual {v0, v4, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v4, v8

    .line 167
    .local v4, "encryptMethod":Ljava/lang/reflect/Method;
    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$1;->val$applicationContext:Landroid/app/Application;

    aput-object v9, v8, v3

    const-string v3, "init"

    aput-object v3, v8, v7

    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "preload security encryptor end."

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 171
    .end local v1    # "encrypt":Ljava/lang/Class;
    .end local v4    # "encryptMethod":Ljava/lang/reflect/Method;
    return-void

    .line 169
    :catchall_7
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "preload security encryptor failed."

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 153
    :catchall_8
    move-exception v0

    if-eqz v5, :cond_7

    .line 155
    :try_start_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeDex2Oat(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 158
    goto :goto_5

    .line 156
    :catchall_9
    move-exception v3

    .line 157
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_7
    :goto_5
    throw v0
.end method
