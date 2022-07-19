.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;
.super Ljava/lang/Object;
.source "H5PatchProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PatchProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 3

    .line 39
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 40
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "h5_patcherDirSync"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x0

    return v2

    .line 46
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFileFolder"    # Ljava/lang/String;
    .param p3, "oldFileFolder"    # Ljava/lang/String;
    .param p4, "patchFilePath"    # Ljava/lang/String;
    .param p5, "oldFileMD5"    # Ljava/lang/String;
    .param p6, "patchFileMD5"    # Ljava/lang/String;

    monitor-enter p0

    .line 30
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "H5PatchProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "newFileFolder : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 34
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p6}, Lcom/alipay/mobile/common/patch/BasePatcher;->patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 29
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "newFileFolder":Ljava/lang/String;
    .end local p3    # "oldFileFolder":Ljava/lang/String;
    .end local p4    # "patchFilePath":Ljava/lang/String;
    .end local p5    # "oldFileMD5":Ljava/lang/String;
    .end local p6    # "patchFileMD5":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static b()Z
    .locals 3

    .line 50
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 51
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "h5_enableCheckNewFileExists"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v2, 0x0

    return v2

    .line 57
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFileFolder"    # Ljava/lang/String;
    .param p3, "oldFileFolder"    # Ljava/lang/String;
    .param p4, "patchFilePath"    # Ljava/lang/String;
    .param p5, "oldFileMD5"    # Ljava/lang/String;
    .param p6, "patchFileMD5"    # Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 23
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/alipay/mobile/common/patch/BasePatcher;->patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
