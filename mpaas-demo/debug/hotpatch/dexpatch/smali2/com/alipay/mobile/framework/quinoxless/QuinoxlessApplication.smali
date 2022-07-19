.class public final Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;
.super Landroid/app/Application;
.source "QuinoxlessApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 116
    :try_start_0
    const-string v0, "com.alipay.mobile.framework.quinoxless.QuinoxlessFramework"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->a:Ljava/lang/Class;

    .line 117
    const-string v0, "com.alipay.mobile.framework.quinoxless.QuinoxlessApplicationLike"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find Quinoxless framework"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 6

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->a:Ljava/lang/Class;

    const-string/jumbo v1, "setup"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Application;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 127
    .local v3, "setupMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .end local v3    # "setupMethod":Ljava/lang/reflect/Method;
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A problem occurred during framework setup."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()V
    .locals 4

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->a:Ljava/lang/Class;

    const-string v1, "init"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 136
    .local v3, "initMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .end local v3    # "initMethod":Ljava/lang/reflect/Method;
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A problem occurred during framework initialization."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d()V
    .locals 9

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 145
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    move-object v2, v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "mpaas.quinoxless.extern.application"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v1, "appName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    iput-object v4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    .line 150
    iget-object v4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->b:Ljava/lang/Class;

    const-string/jumbo v5, "setApp"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/Application;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 151
    iget-object v5, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to instantiate user application"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private e()V
    .locals 13

    const-string v0, "load host DexPatch cost time:"

    const-string v1, "ensureInit DexPatchManager cost time:"

    const-string v2, "init DexPatchExceptionHandler cost time:"

    const-string v3, "check DexPatchManager.hasPatchFile cost time:"

    const-string v4, "check process cost time:"

    const-string v5, "QuinoxlessApplication"

    .line 169
    new-instance v6, Lcom/alipay/dexpatch/m/ProcessInfo;

    invoke-direct {v6, p0}, Lcom/alipay/dexpatch/m/ProcessInfo;-><init>(Landroid/content/Context;)V

    .line 170
    .local v6, "processInfo":Lcom/alipay/dexpatch/m/ProcessInfo;
    const-wide/16 v7, 0x0

    .line 172
    .local v7, "timeStart":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-wide v7, v9

    .line 173
    const-string v9, "check process"

    invoke-static {v5, v9}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v6}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Lcom/alipay/dexpatch/m/ProcessInfo;->isLiteProcess()Z

    move-result v9

    if-nez v9, :cond_0

    .line 175
    const-string/jumbo v0, "not patching process, just create a instance"

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 184
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    nop

    .line 190
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->f()Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    return-void

    .line 197
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-wide v7, v9

    .line 199
    iget-object v4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v9, "hasPatchFile"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v9, 0x0

    .line 200
    .local v9, "method_hasPatchFile":Ljava/lang/reflect/Method;
    iget-object v11, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 201
    .local v4, "hasPatchFile":Ljava/lang/Boolean;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "check DexPatchManager.hasPatchFile: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v11, :cond_2

    goto/16 :goto_1

    .line 210
    .end local v4    # "hasPatchFile":Ljava/lang/Boolean;
    .end local v9    # "method_hasPatchFile":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    nop

    .line 217
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-wide v7, v3

    .line 219
    invoke-virtual {v6}, Lcom/alipay/dexpatch/m/ProcessInfo;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    invoke-static {p0}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->createInstance(Landroid/content/Context;)Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    .line 221
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->getInstance()Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->shouldFuse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    const-string v0, "fuse return"

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 225
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->getInstance()Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->setup()V

    .line 226
    const-string v3, "init DexPatchExceptionHandler"

    invoke-static {v5, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 233
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    nop

    .line 239
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v7, v2

    .line 241
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ensureInit"

    new-array v4, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v9

    .line 242
    .local v3, "method_init":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v2, "ensureInit DexPatchManager"

    invoke-static {v5, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    nop

    .end local v3    # "method_init":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    nop

    .line 255
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v7, v1

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "loadModulePatch"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const-class v11, Ljava/lang/ClassLoader;

    const/4 v12, 0x1

    aput-object v11, v9, v12

    invoke-virtual {v1, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v3

    .line 258
    .local v2, "method_loadModulePatch":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v9, "host"

    aput-object v9, v4, v10

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    aput-object v9, v4, v12

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "load host DexPatch"

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    nop

    .end local v2    # "method_loadModulePatch":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 260
    :catchall_0
    move-exception v1

    .line 261
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 263
    nop

    .end local v1    # "tr":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 244
    :catchall_2
    move-exception v0

    .line 246
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 249
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 228
    :catchall_4
    move-exception v0

    .line 230
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_8
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 233
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 210
    .restart local v4    # "hasPatchFile":Ljava/lang/Boolean;
    .restart local v9    # "method_hasPatchFile":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 205
    .end local v4    # "hasPatchFile":Ljava/lang/Boolean;
    .end local v9    # "method_hasPatchFile":Ljava/lang/reflect/Method;
    :catchall_6
    move-exception v0

    .line 207
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 210
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 179
    :catchall_8
    move-exception v0

    .line 181
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_a
    invoke-static {v5, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 184
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private f()Z
    .locals 14

    const-string v0, "createDexPatchManager cost time:"

    const-string v1, "QuinoxlessApplication"

    .line 269
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 270
    return v3

    .line 272
    :cond_0
    const-wide/16 v4, 0x0

    .line 274
    .local v4, "timeStart":J
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v4, v6

    .line 276
    const/4 v6, 0x0

    .line 278
    .local v6, "isDebug":Z
    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4000

    .line 278
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    move-object v10, v7

    .line 280
    .local v10, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v9, v8

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    move v6, v9

    .line 284
    .end local v10    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 281
    :catchall_0
    move-exception v9

    move-object v10, v9

    .line 283
    .local v10, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1, v10}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v10    # "tr":Ljava/lang/Throwable;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "check debug: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v9, "create DexPatchManager"

    invoke-static {v1, v9}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v9, "com.alipay.dexpatch.DexPatchManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 289
    .local v10, "clazz_DexPatchManager":Ljava/lang/Class;
    move-object v10, v9

    const-string v11, "getInstance"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v2

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 290
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v3

    invoke-virtual {v9, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 292
    .local v7, "temp_dexPatchManager":Ljava/lang/Object;
    const-string/jumbo v8, "setDPContext"

    new-array v9, v3, [Ljava/lang/Class;

    const-string v11, "com.alipay.dexpatch.DexPatchContext"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 293
    new-array v9, v3, [Ljava/lang/Object;

    const-string v11, "com.alipay.dexpatch.compat.ContextImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v8, "setDPLogger"

    new-array v9, v3, [Ljava/lang/Class;

    const-string v11, "com.alipay.dexpatch.util.DPLogger$DPLoggerImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 296
    new-array v9, v3, [Ljava/lang/Object;

    const-string v11, "com.alipay.dexpatch.compat.LoggerImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v8, "setDPMonitor"

    new-array v9, v3, [Ljava/lang/Class;

    const-string v11, "com.alipay.dexpatch.util.DPMonitor$DPMonitorImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 299
    new-array v9, v3, [Ljava/lang/Object;

    const-string v11, "com.alipay.dexpatch.compat.MonitorImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v2

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {v7}, Lcom/alipay/dexpatch/m/DexPatchBridge;->setDexPatchManager(Ljava/lang/Object;)V

    .line 302
    iput-object v7, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v3

    .line 304
    .end local v6    # "isDebug":Z
    .end local v7    # "temp_dexPatchManager":Ljava/lang/Object;
    .end local v10    # "clazz_DexPatchManager":Ljava/lang/Class;
    :catchall_1
    move-exception v3

    .line 306
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v1, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 308
    nop

    .end local v3    # "tr":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    nop

    .line 310
    return v2

    .line 308
    :catchall_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 8
    .param p1, "base"    # Landroid/content/Context;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 50
    .local v0, "l":J
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->e()V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->a()V

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->b()V

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->d()V

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->b:Ljava/lang/Class;

    const-string v3, "attach"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unable to attach. exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attachBaseContext costs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuinoxlessApplication"

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 78
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->a:Ljava/lang/Class;

    const-string/jumbo v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 5

    .line 67
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 69
    .local v0, "l":J
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c()V

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v2}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;->onCreate()V

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate costs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuinoxlessApplication"

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;->onLowMemory()V

    .line 96
    :cond_0
    return-void
.end method

.method public final onPostInit()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;->onMPaaSFrameworkInitFinished()V

    .line 318
    :cond_0
    return-void
.end method

.method public final onTerminate()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;->onTerminate()V

    .line 104
    :cond_0
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 108
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication;->c:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessApplication$IApplicationWrapper;->onTrimMemory(I)V

    .line 112
    :cond_0
    return-void
.end method
