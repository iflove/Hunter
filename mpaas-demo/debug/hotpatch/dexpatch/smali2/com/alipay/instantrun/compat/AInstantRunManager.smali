.class public Lcom/alipay/instantrun/compat/AInstantRunManager;
.super Ljava/lang/Object;
.source "AInstantRunManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.AInstantRunManager"

.field private static sAInstantRunManager:Lcom/alipay/instantrun/compat/AInstantRunManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstantRunManager:Lcom/alipay/instantrun/InstantRunManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "IR.AInstantRunManager"

    const-string v2, "AInstantRunManager()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    .line 34
    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    .line 38
    :cond_0
    new-instance v0, Lcom/alipay/instantrun/compat/InstantRunLogger;

    invoke-direct {v0}, Lcom/alipay/instantrun/compat/InstantRunLogger;-><init>()V

    invoke-static {v0}, Lcom/alipay/instantrun/log/Log;->setLogger(Lcom/alipay/instantrun/log/Logger;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mInstantRunManager:Lcom/alipay/instantrun/InstantRunManager;

    .line 40
    new-instance v1, Lcom/alipay/instantrun/compat/IRContextImpl;

    invoke-direct {v1}, Lcom/alipay/instantrun/compat/IRContextImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/instantrun/InstantRunManager;->setIRContext(Lcom/alipay/instantrun/IRContext;)V

    .line 41
    return-void
.end method

.method private addDemoPatchFromSD()V
    .locals 4

    .line 64
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    .local v1, "startupStrategy":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "add_instantrun_patch_from_sd"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/instantrun/InstantRunManager;->getInstance()Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "alipayInstantRunDemoPatch.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/instantrun/InstantRunManager;->addNewPatch(Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v1    # "startupStrategy":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.AInstantRunManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/alipay/instantrun/compat/AInstantRunManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/alipay/instantrun/compat/AInstantRunManager;->sAInstantRunManager:Lcom/alipay/instantrun/compat/AInstantRunManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/alipay/instantrun/compat/AInstantRunManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alipay/instantrun/compat/AInstantRunManager;->sAInstantRunManager:Lcom/alipay/instantrun/compat/AInstantRunManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/alipay/instantrun/compat/AInstantRunManager;

    invoke-direct {v1, p0}, Lcom/alipay/instantrun/compat/AInstantRunManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/instantrun/compat/AInstantRunManager;->sAInstantRunManager:Lcom/alipay/instantrun/compat/AInstantRunManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/instantrun/compat/AInstantRunManager;->sAInstantRunManager:Lcom/alipay/instantrun/compat/AInstantRunManager;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;
    .locals 1

    .line 55
    sget-object v0, Lcom/alipay/instantrun/compat/AInstantRunManager;->sAInstantRunManager:Lcom/alipay/instantrun/compat/AInstantRunManager;

    return-object v0
.end method


# virtual methods
.method public addNewPatch(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "patchPath"    # Ljava/lang/String;
    .param p2, "immediately"    # Z

    .line 100
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/instantrun/InstantRunManager;->addNewPatch(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkPatchStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "patchPath"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/instantrun/InstantRunManager;->checkPatchStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cleanPatches(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 96
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/instantrun/InstantRunManager;->cleanPatches(Z)V

    .line 97
    return-void
.end method

.method public containInstantRunPatch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patchPath"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/instantrun/InstantRunManager;->containInstantRunPatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInstantRunManager()Lcom/alipay/instantrun/InstantRunManager;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mInstantRunManager:Lcom/alipay/instantrun/InstantRunManager;

    return-object v0
.end method

.method public getPatchNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/instantrun/InstantRunManager;->getPatchNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreLoadPatchNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/instantrun/InstantRunManager;->getPreLoadPatchNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasInstantPatch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patchPath"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/instantrun/InstantRunManager;->hasInstantPatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPatch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/instantrun/InstantRunManager;->hasPatch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "debuggable"    # Z

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    .local v0, "start":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InstantRunManager.init(versionName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", debuggable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IR.AInstantRunManager"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mInstantRunManager:Lcom/alipay/instantrun/InstantRunManager;

    invoke-virtual {v2, p1, p2}, Lcom/alipay/instantrun/InstantRunManager;->init(Ljava/lang/String;Z)V

    .line 85
    invoke-direct {p0}, Lcom/alipay/instantrun/compat/AInstantRunManager;->addDemoPatchFromSD()V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "InstantRunManager.init() cost "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "patchName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 129
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/instantrun/InstantRunManager;->loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    .line 130
    return-void
.end method

.method public needRestartProcess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "patchPath"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/alipay/instantrun/compat/AInstantRunManager;->checkPatchStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 117
    .local v2, "status":I
    move v2, v0

    and-int/lit8 v0, v0, 0x10

    if-gtz v0, :cond_1

    and-int/lit16 v0, v2, 0x100

    if-lez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    return v1

    .line 119
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public rollback()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/instantrun/compat/AInstantRunManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/InstantRunManager;->getInstance(Landroid/content/Context;)Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/instantrun/InstantRunManager;->rollback()V

    .line 93
    return-void
.end method
