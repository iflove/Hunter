.class public Lcom/alipay/dexpatch/patch/PatchInfoFactory;
.super Ljava/lang/Object;
.source "PatchInfoFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/dexpatch/patch/PatchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/dexpatch/patch/PatchInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-direct {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->setPatchFile(Ljava/io/File;)V

    .line 3
    invoke-virtual {v0}, Lcom/alipay/dexpatch/patch/PatchInfo;->init()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    sget-object p0, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "createPatch: put patch to cache map, md5:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexP.PatchInfoFactory"

    invoke-static {p1, p0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getPatchInfo(Ljava/io/File;)Lcom/alipay/dexpatch/patch/PatchInfo;
    .locals 5

    const-class v0, Lcom/alipay/dexpatch/patch/PatchInfoFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/dexpatch/patch/PatchInfo;

    if-eqz v2, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createPatch: hit cache, do copy, md5:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DexP.PatchInfoFactory"

    invoke-static {v3, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/alipay/dexpatch/patch/PatchInfo;

    invoke-direct {v1}, Lcom/alipay/dexpatch/patch/PatchInfo;-><init>()V

    .line 9
    invoke-virtual {v1, p0}, Lcom/alipay/dexpatch/patch/PatchInfo;->setPatchFile(Ljava/io/File;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/alipay/dexpatch/patch/PatchInfo;->copyInfo(Lcom/alipay/dexpatch/patch/PatchInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 13
    :cond_1
    :try_start_2
    invoke-static {p0, v1}, Lcom/alipay/dexpatch/patch/PatchInfoFactory;->a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/dexpatch/patch/PatchInfo;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
