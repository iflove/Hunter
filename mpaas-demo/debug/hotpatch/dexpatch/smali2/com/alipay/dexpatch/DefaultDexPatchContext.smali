.class public Lcom/alipay/dexpatch/DefaultDexPatchContext;
.super Ljava/lang/Object;
.source "DefaultDexPatchContext.java"

# interfaces
.implements Lcom/alipay/dexpatch/DexPatchContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeModulePatchLoad(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fake beforeModulePatchLoad, moduleName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultDexPatchContext"

    invoke-static {v0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public classesLoadByOriginClassLoader()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public customPatch(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string p1, "DefaultDexPatchContext"

    const-string p2, "fake customPatch, return true"

    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getClassLoaderType(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string p1, "DefaultDexPatchContext"

    const-string v0, "fake getClassLoaderType, return CL_TYPE_SYSTEM"

    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fake getModuleName, return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDexPatchContext"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getOriginDexFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p1, "DefaultDexPatchContext"

    const-string v0, "fake getOriginDexFilePath, return null"

    invoke-static {p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isPureProcess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadByOriginClassLoader(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const-string p1, "DefaultDexPatchContext"

    const-string p2, "fake loadByOriginClassLoader, return false"

    invoke-static {p1, p2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPatchPrepared(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fake onPatchPrepared, patchName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultDexPatchContext"

    invoke-static {v0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerKillProcess()V
    .locals 2

    .line 1
    const-string v0, "DefaultDexPatchContext"

    const-string v1, "fake triggerKillProcess"

    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerKillPureProcesses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
