.class public Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
.super Ljava/lang/Object;
.source "DexPatchExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/io/File;

.field private i:Ljava/io/File;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->d:Z

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->e:Z

    .line 24
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->f:Z

    .line 26
    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->g:Z

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    .line 29
    iput-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    .line 30
    iput-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;

    .line 40
    const-string v2, "DexPatchExceptionHandler"

    const-string v3, "DexPatchExceptionHandler <init>"

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->b:Landroid/content/Context;

    .line 43
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v5, "dexpatch/safeguard"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 44
    .local v4, "safeguardDir":Ljava/io/File;
    move-object v4, v3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    const-string/jumbo v0, "safeguardDir invalid"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    const-string/jumbo v0, "safeguardDir invalid 2"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 52
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "safeguard.info"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    .line 53
    new-instance v3, Ljava/io/File;

    const-string v5, "lastCrash.info"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    .line 55
    iget-object v3, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->b:Landroid/content/Context;

    .line 56
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v4    # "safeguardDir":Ljava/io/File;
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "tr":Ljava/lang/Throwable;
    iput-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    .line 59
    iput-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    .line 60
    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static a()V
    .locals 9

    const-string v0, "DexPatchExceptionHandler"

    .line 217
    :try_start_0
    const-string v1, "cleanPatch in"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "com.alipay.dexpatch.DexPatchManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 219
    .local v3, "clazz_DexPatchManager":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 220
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "dexPatchManager":Ljava/lang/Object;
    const-string v2, "cleanPatches"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 222
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    nop

    .end local v1    # "dexPatchManager":Ljava/lang/Object;
    .end local v3    # "clazz_DexPatchManager":Ljava/lang/Class;
    return-void

    .line 223
    :catchall_0
    move-exception v1

    .line 224
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a:Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    invoke-direct {v1, p0}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a:Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    .line 36
    :cond_0
    sget-object v1, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a:Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 32
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    .locals 1

    .line 65
    sget-object v0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a:Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getLastCrashInfo()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 176
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DexPatchExceptionHandler"

    const-string v2, "getLastCrashInfo in"

    invoke-static {v1, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    invoke-static {v1}, Lcom/alipay/dexpatch/m/FileUtil;->readFileStringFully(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 179
    .local v2, "lastCrash":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const-string v1, "DexPatchExceptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLastCrashInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-object v2

    .line 186
    .end local v2    # "lastCrash":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v1

    .line 185
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "DexPatchExceptionHandler"

    invoke-static {v2, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 175
    .end local p0    # "this":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDoRecordCrash(Z)V
    .locals 3
    .param p1, "doRecordCrash"    # Z

    monitor-enter p0

    .line 69
    :try_start_0
    const-string v0, "DexPatchExceptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setDoRecordCrash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-boolean p1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    .end local p1    # "doRecordCrash":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setup()V
    .locals 3

    monitor-enter p0

    .line 122
    :try_start_0
    const-string v0, "DexPatchExceptionHandler"

    const-string/jumbo v1, "setup in"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->d:Z

    .line 128
    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->e:Z

    .line 129
    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->f:Z

    .line 131
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 132
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :try_start_2
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/dexpatch/m/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 138
    const-string v0, "DexPatchExceptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "record a safeguard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "DexPatchExceptionHandler"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    nop

    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldFuse()Z
    .locals 5

    monitor-enter p0

    .line 74
    :try_start_0
    const-string v0, "DexPatchExceptionHandler"

    const-string/jumbo v1, "shouldFuse in"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_4

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/dexpatch/m/FileUtil;->readFileStringFully(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "storedVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 86
    const/4 v2, 0x1

    .line 88
    .local v2, "doFuse":Z
    :try_start_2
    iget-object v3, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "dexp_do_fuse"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 91
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v3

    .line 90
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "DexPatchExceptionHandler"

    invoke-static {v4, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_1

    .line 93
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a()V

    .line 94
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->g:Z

    .line 95
    const-string v3, "DexPatchExceptionHandler"

    const-string/jumbo v4, "shouldFuse true"

    invoke-static {v3, v4}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    monitor-exit p0

    return v1

    .line 99
    .end local v2    # "doFuse":Z
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 100
    :try_start_4
    iget-object v3, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const-string v3, "DexPatchExceptionHandler"

    const-string/jumbo v4, "shouldFuse mSafeguardFile.delete() success"

    invoke-static {v3, v4}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    goto :goto_2

    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "storedVersion":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a()V

    .line 107
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->g:Z

    .line 108
    const-string v2, "DexPatchExceptionHandler"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const-string v2, "DexPatchExceptionHandler"

    const-string/jumbo v3, "shouldFuse true"

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    monitor-exit p0

    return v1

    .line 113
    .end local v0    # "tr":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :cond_4
    :goto_2
    :try_start_6
    const-string v0, "DexPatchExceptionHandler"

    const-string/jumbo v1, "shouldFuse false"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 114
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 76
    :cond_5
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a()V

    .line 77
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->g:Z

    .line 78
    const-string v0, "DexPatchExceptionHandler"

    const-string/jumbo v2, "shouldFuse true"

    invoke-static {v0, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 79
    monitor-exit p0

    return v1

    .line 73
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldReportFuse()Z
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 118
    .end local p0    # "this":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeDown()V
    .locals 4

    monitor-enter p0

    .line 146
    :try_start_0
    const-string v0, "DexPatchExceptionHandler"

    const-string/jumbo v1, "takeDown in"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->e:Z

    .line 148
    iput-boolean v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 154
    iget-object v2, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "DexPatchExceptionHandler"

    const-string/jumbo v3, "takeDown mSafeguardFile.delete() success"

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    goto :goto_1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 162
    iget-object v2, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    const-string v1, "DexPatchExceptionHandler"

    const-string/jumbo v2, "takeDown mLastCrashFile.delete() success"

    invoke-static {v1, v2}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "DexPatchExceptionHandler"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    nop

    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 192
    const-string v0, "DexPatchExceptionHandler"

    const-string/jumbo v1, "uncaughtException in"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->e:Z

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->a()V

    .line 196
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->f:Z

    if-eqz v1, :cond_1

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->i:Ljava/io/File;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/dexpatch/m/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 200
    const-string/jumbo v1, "save crash info"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v1

    .line 202
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/dexpatch/m/DexPatchExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 208
    :try_start_1
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    return-void

    .line 209
    :catchall_1
    move-exception v1

    .line 210
    .restart local v1    # "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
