.class public Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
.super Ljava/lang/Object;
.source "H5ApiBizPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;
    }
.end annotation


# static fields
.field public static final PERMISSION_KEY_ALBUM:Ljava/lang/String; = "album"

.field public static final PERMISSION_KEY_AUDIORECORD:Ljava/lang/String; = "audioRecord"

.field public static final PERMISSION_KEY_CAMERA:Ljava/lang/String; = "camera"

.field public static final PERMISSION_KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    const-string v2, "getLocation"

    const-string v3, "\"%s\" \u60f3\u4f7f\u7528\u60a8\u7684\u5f53\u524d\u4f4d\u7f6e"

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v4, "getCurrentLocation"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v3, "scan"

    const-string v5, "\"%s\" \u60f3\u4f7f\u7528\u60a8\u7684\u76f8\u673a"

    invoke-virtual {v0, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v5, "chooseImage"

    const-string v6, "\"%s\" \u60f3\u4f7f\u7528\u60a8\u7684%s"

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v5, "chooseVideo"

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v5, "saveImage"

    const-string v6, "\"%s\" \u60f3\u4f7f\u7528\u60a8\u7684\u76f8\u518c"

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v7, "startAudioRecord"

    const-string v8, "\"%s\" \u60f3\u4f7f\u7528\u60a8\u7684\u9ea6\u514b\u98ce"

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v9, "stopAudioRecord"

    invoke-virtual {v0, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v10, "cancelAudioRecord"

    invoke-virtual {v0, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v8, "saveVideoToPhotosAlbum"

    invoke-virtual {v0, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v11, "shareTokenImageSilent"

    invoke-virtual {v0, v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "camera"

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "album"

    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v1, v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v1, v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "location"

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "audioRecord"

    invoke-virtual {v1, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v1, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v1, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->e()V

    .line 158
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c()I

    move-result v0

    return v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 655
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 656
    .local v2, "dialogContent":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    return-object v1

    .line 661
    :cond_0
    const/4 v0, 0x0

    .line 662
    .local v0, "paramBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 664
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 665
    .local v4, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 666
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 667
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .end local v5    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 672
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_2
    move-object v4, v1

    :goto_1
    invoke-static {p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v4, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 674
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 676
    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    if-nez v0, :cond_4

    goto :goto_2

    .line 677
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v5, v3

    .line 676
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;

    .line 49
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;
    .param p2, "x3"    # Ljava/lang/String;

    .line 49
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 438
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;

    const/4 v1, 0x0

    .line 439
    .local v1, "h5TinyAppLogProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;->isRemoteOutputConnected(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$4;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 455
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "opened"    # Z

    .line 806
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$9;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->submitTask(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 7
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "behavorId"    # Ljava/lang/String;
    .param p2, "AppId"    # Ljava/lang/String;
    .param p3, "pass"    # Z
    .param p4, "authMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 597
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 600
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 601
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    const/4 v1, 0x0

    .line 602
    .local v1, "seedId":Ljava/lang/String;
    const-string v2, "TINYAPP"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 603
    const-string v2, "camera"

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "album"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 604
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 606
    if-eqz p3, :cond_1

    .line 607
    const-string v1, "a192.b10827.c25949.d48846"

    goto :goto_0

    .line 609
    :cond_1
    const-string v1, "a192.b10827.c25949.d48847"

    .line 613
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v4, :cond_4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 615
    if-eqz p3, :cond_3

    .line 616
    const-string v1, "a192.b10827.c25949.d48844"

    goto :goto_1

    .line 618
    :cond_3
    const-string v1, "a192.b10827.c25949.d48845"

    .line 621
    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 622
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x656c867c

    if-eq v5, v6, :cond_8

    const v6, -0x30f411fb

    if-eq v5, v6, :cond_7

    const v6, -0x23fcf5e8

    if-eq v5, v6, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    const-string v5, "getCurrentLocation"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :cond_7
    const-string/jumbo v5, "startAudioRecord"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const-string v5, "chooseImage"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_d

    if-eq v2, v4, :cond_b

    if-eq v2, v3, :cond_9

    goto :goto_3

    .line 638
    :cond_9
    if-eqz p3, :cond_a

    .line 639
    const-string v1, "a192.b10827.c25949.d48838"

    goto :goto_3

    .line 641
    :cond_a
    const-string v1, "a192.b10827.c25949.d48839"

    goto :goto_3

    .line 631
    :cond_b
    if-eqz p3, :cond_c

    .line 632
    const-string v1, "a192.b10827.c25949.d48840"

    goto :goto_3

    .line 634
    :cond_c
    const-string v1, "a192.b10827.c25949.d48841"

    .line 636
    goto :goto_3

    .line 624
    :cond_d
    if-eqz p3, :cond_e

    .line 625
    const-string v1, "a192.b10827.c25949.d48842"

    goto :goto_3

    .line 627
    :cond_e
    const-string v1, "a192.b10827.c25949.d48843"

    .line 646
    :cond_f
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 647
    return-void

    .line 649
    :cond_10
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 652
    return-void

    .line 598
    .end local v0    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .end local v1    # "seedId":Ljava/lang/String;
    :cond_11
    :goto_4
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "authMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v0, "putString,key: "

    const-string v1, "H5ApiBizPermissionManager"

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 463
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 465
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p2, v5, v2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p2, v6}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 468
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 469
    :cond_1
    invoke-direct {p0, p2, p1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v0, "clicked"

    invoke-static {p1, v0, p2, v2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 474
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "opened"    # Z

    .line 835
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$10;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->submitTask(Ljava/lang/Runnable;)V

    .line 854
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p4, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 250
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "action":Ljava/lang/String;
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    return v1

    .line 257
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getPermissionDialogSwitch()Z

    move-result v0

    .line 258
    const-string v2, "H5ApiBizPermissionManager"

    if-nez v0, :cond_1

    .line 260
    const-string v0, "checkShowPermissionDialog...dialogSwitch closed"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return v1

    .line 264
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getPermissionDialogWhitelist()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 265
    .local v4, "whiteList":Ljava/util/List;
    move-object v10, v0

    .end local v4    # "whiteList":Ljava/util/List;
    .local v10, "whiteList":Ljava/util/List;
    if-eqz v0, :cond_4

    .line 266
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 267
    .local v4, "whiteAppId":Ljava/lang/String;
    const-string v5, "all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    const-string v0, "checkShowPermissionDialog... all in white list"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return v1

    .line 272
    :cond_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    const-string v0, "checkShowPermissionDialog...in white list"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v1

    .line 277
    .end local v4    # "whiteAppId":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 265
    :cond_4
    move-object v0, v3

    .line 280
    :cond_5
    iget-object v1, v7, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 281
    .local v0, "objectList":Ljava/util/List;
    move-object v11, v1

    .end local v0    # "objectList":Ljava/util/List;
    .local v11, "objectList":Ljava/util/List;
    if-eqz v1, :cond_6

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkShowPermissionDialog...already has dialog..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct {v0, v7, v12, v13}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_6
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    const/4 v0, 0x0

    .line 290
    .local v0, "alreadyAuthed":Ljava/lang/String;
    const/4 v1, 0x0

    .line 291
    .local v1, "authMap":Ljava/util/HashMap;
    invoke-virtual/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 292
    .local v14, "params":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v15, v2

    .line 293
    .local v15, "paramMap":Ljava/util/HashMap;
    const-string v2, "chooseImage"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "chooseVideo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 335
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    .line 336
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    goto/16 :goto_6

    .line 294
    :cond_8
    :goto_1
    if-eqz v14, :cond_11

    .line 295
    const-string/jumbo v2, "sourceType"

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    move-object v4, v3

    .line 296
    .local v4, "paramArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v2

    const-string/jumbo v5, "\u76f8\u673a"

    const-string/jumbo v6, "\u76f8\u518c"

    const-string v3, "camera"

    move-object/from16 v17, v0

    .end local v0    # "alreadyAuthed":Ljava/lang/String;
    .local v17, "alreadyAuthed":Ljava/lang/String;
    const-string v0, "album"

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 300
    :cond_9
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 301
    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_a
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 304
    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 297
    :cond_b
    :goto_2
    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v15, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_c
    :goto_3
    const/4 v0, 0x1

    .line 309
    .local v0, "hasAuthed":Z
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 310
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 311
    .local v2, "iter":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 313
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 314
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 315
    .local v6, "val":Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "iter":Ljava/util/Iterator;
    .local v16, "iter":Ljava/util/Iterator;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    .line 316
    move-object/from16 v18, v3

    .end local v3    # "entry":Ljava/util/Map$Entry;
    .local v18, "entry":Ljava/util/Map$Entry;
    invoke-static {v8, v5}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "authed":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 319
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v0, 0x0

    .line 322
    if-nez v17, :cond_d

    .line 323
    move-object/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_4

    .line 324
    :cond_d
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 325
    move-object v3, v2

    move-object/from16 v17, v3

    .line 328
    .end local v2    # "authed":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    .end local v18    # "entry":Ljava/util/Map$Entry;
    :cond_e
    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_4

    .line 329
    .end local v16    # "iter":Ljava/util/Iterator;
    .local v2, "iter":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v16, v2

    .end local v2    # "iter":Ljava/util/Iterator;
    .restart local v16    # "iter":Ljava/util/Iterator;
    if-eqz v0, :cond_10

    .line 331
    const-string v2, "1"

    move-object v0, v2

    .end local v17    # "alreadyAuthed":Ljava/lang/String;
    .local v2, "alreadyAuthed":Ljava/lang/String;
    goto :goto_5

    .line 329
    .end local v2    # "alreadyAuthed":Ljava/lang/String;
    .restart local v17    # "alreadyAuthed":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v17

    .line 333
    .end local v4    # "paramArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "iter":Ljava/util/Iterator;
    .end local v17    # "alreadyAuthed":Ljava/lang/String;
    .local v0, "alreadyAuthed":Ljava/lang/String;
    :goto_5
    move-object/from16 v17, v0

    move-object/from16 v16, v1

    goto :goto_6

    .line 294
    :cond_11
    move-object/from16 v17, v0

    .end local v0    # "alreadyAuthed":Ljava/lang/String;
    .restart local v17    # "alreadyAuthed":Ljava/lang/String;
    move-object/from16 v16, v1

    .line 339
    .end local v1    # "authMap":Ljava/util/HashMap;
    .local v16, "authMap":Ljava/util/HashMap;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Map;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p4, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p5, "authMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "action":Ljava/lang/String;
    invoke-direct {v0, v2, v4, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 511
    .local v7, "dialogContent":Ljava/lang/String;
    move-object v7, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v14, 0x0

    if-eqz v5, :cond_0

    .line 513
    return v14

    .line 516
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "doShowPermissionDialog...action:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",appId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "H5ApiBizPermissionManager"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-class v5, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;

    move-object v8, v6

    .line 519
    .local v8, "provider":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;
    move-object v15, v5

    .end local v8    # "provider":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;
    .local v15, "provider":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;
    if-eqz v5, :cond_1

    invoke-virtual {v15}, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;->shouldHandlePermissionDialog()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    new-instance v5, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;

    invoke-direct {v5}, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;-><init>()V

    .line 521
    .local v6, "config":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;
    move-object v6, v5

    iput-object v4, v5, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->action:Ljava/lang/String;

    .line 522
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->key:Ljava/lang/String;

    .line 523
    iput-object v7, v6, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->desc:Ljava/lang/String;

    .line 524
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$5;

    invoke-direct {v5, v0, v4, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v13, p1

    invoke-virtual {v15, v13, v1, v6, v5}, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;->showPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionCheckCallback;)V

    .line 535
    .end local v6    # "config":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;
    goto :goto_0

    .line 519
    :cond_1
    move-object/from16 v13, p1

    .line 536
    new-instance v5, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    const/4 v10, 0x0

    const-string/jumbo v12, "\u5141\u8bb8"

    const-string/jumbo v16, "\u4e0d\u5141\u8bb8"

    move-object v8, v5

    move-object/from16 v9, p1

    move-object v11, v7

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .local v6, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v6, v5

    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$6;

    invoke-direct {v8, v0, v4, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$6;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 545
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$7;

    invoke-direct {v5, v0, v4, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$7;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 551
    invoke-virtual {v6, v14}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCanceledOnTouchOutside(Z)V

    .line 552
    invoke-virtual {v6, v14}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCancelable(Z)V

    .line 553
    invoke-virtual {v6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 557
    .end local v6    # "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    :goto_0
    const-string v5, "exposure"

    invoke-static {v4, v5, v1, v14, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 559
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v6, "resultObjects":Ljava/util/List;
    move-object v6, v5

    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;

    move-object/from16 v9, p4

    invoke-direct {v8, v0, v2, v9}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const/4 v5, 0x1

    return v5
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p4, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p5, "authMap"    # Ljava/util/Map;
    .param p6, "authed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 429
    const-string v0, "1"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 432
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 7
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 191
    const-string/jumbo v0, "orderStr"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 192
    .local v2, "orderInfo":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    return v3

    .line 194
    :cond_0
    const-string v0, "app_id="

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    move-object v2, v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "index":I
    const/4 v4, 0x7

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "bizAppId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkBizPermission...bizAppId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H5ApiBizPermissionManager"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    new-instance v5, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 202
    .local v1, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    move-object v1, v5

    const-string v6, "TINY_APP"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 205
    const-string v5, "bizAppId"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 210
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->tradePayCheck()Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3

    .line 213
    .end local v0    # "index":I
    .end local v1    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .end local v4    # "bizAppId":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .line 688
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 689
    .local v2, "userId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "key":Ljava/lang/String;
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 690
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 718
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;

    const/4 v1, 0x0

    .line 719
    .local v1, "h5TinyAppLogProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppRemoteLogProvider;->isRemoteOutputConnected(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$8;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$8;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 735
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 570
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    .line 571
    .local v2, "resultList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 572
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;

    .line 573
    .local v1, "resultObject":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;
    move-object v1, v3

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v3, :cond_0

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cancelAuth...action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5ApiBizPermissionManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v4, 0x7d1

    const-string/jumbo v5, "\u7528\u6237\u4e0d\u5141\u8bb8\u6388\u6743"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 577
    .end local v1    # "resultObject":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;
    :cond_0
    goto :goto_0

    .line 579
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "authMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 477
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;)V

    .line 480
    const-string v0, "H5ApiBizPermissionManager"

    const-string v1, "checkShowPermissionDialog...cancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 483
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 485
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p2, v4, v1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "putString,key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 488
    .end local v2    # "iter":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 489
    :cond_1
    invoke-direct {p0, p2, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 491
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v0, "clicked"

    invoke-static {p1, v0, p2, v1, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .line 493
    return-void
.end method

.method private static c()I
    .locals 2

    .line 879
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;

    .line 582
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v1, 0x0

    move-object v2, v1

    .line 583
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 586
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 587
    .local v1, "resultList":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 588
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;

    .line 589
    .local v3, "resultObject":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendResult...action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5ApiBizPermissionManager"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 591
    .end local v3    # "resultObject":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$ResultObject;
    goto :goto_0

    .line 594
    .end local v1    # "resultList":Ljava/util/List;
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "innerKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v1

    .line 770
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPermissionByKey,key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ApiBizPermissionManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    const/4 v2, 0x1

    return v2

    .line 775
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .line 888
    const/4 v0, 0x0

    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 889
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    const/4 v1, 0x0

    return-object v1

    .line 892
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .line 699
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 700
    .local v1, "key":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "innerKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v1

    .line 782
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isThePermissionApplied,key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ApiBizPermissionManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .line 714
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppNameByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()V
    .locals 8

    .line 988
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;

    .line 989
    move-object v0, v1

    if-eqz v1, :cond_4

    .line 990
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider;->loadPermissionCheckConfig()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 991
    .local v3, "configs":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 992
    return-void

    .line 995
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;

    .line 996
    .local v2, "config":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;
    move-object v2, v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->action:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "H5ApiBizPermissionManager"

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1000
    :cond_1
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->action:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1001
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Override existing permission action "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->action:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_2
    iget-object v5, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->action:Ljava/lang/String;

    iget-object v6, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->action:Ljava/lang/String;

    iget-object v6, v2, Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .end local v2    # "config":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;
    goto :goto_0

    .line 997
    .restart local v2    # "config":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;
    :cond_3
    :goto_1
    const-string v4, "ignore invalid config."

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    goto :goto_0

    .line 1007
    .end local v2    # "config":Lcom/alipay/mobile/nebula/provider/TinyAppPermissionExternProvider$PermissionConfig;
    .end local v3    # "configs":Ljava/util/List;
    :cond_4
    return-void
.end method


# virtual methods
.method public changePermissionByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "opened"    # Z

    .line 797
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    const-string v0, "H5ApiBizPermissionManager"

    const-string/jumbo v1, "the permission has never been applied, so you can\'t change it"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void

    .line 802
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 803
    return-void
.end method

.method public checkBizParamPermission(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 176
    :try_start_0
    const-string/jumbo v0, "tradePay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 181
    :cond_0
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkBizPermission...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ApiBizPermissionManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkShowPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p4, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 228
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    const/4 v1, 0x0

    .line 229
    .local v1, "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v1, p2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isInner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return v2

    .line 235
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 238
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public checkWebARCameraPermission(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h5PermissionCallBack"    # Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;

    .line 950
    if-nez p3, :cond_0

    return-void

    .line 952
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkWebARCameraPermission...appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ApiBizPermissionManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "scan"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 955
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 954
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "dialogContent":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "cameraKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "opened":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 959
    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;->allow()V

    return-void

    .line 962
    :cond_1
    new-instance v3, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    const/4 v7, 0x0

    const-string/jumbo v9, "\u5141\u8bb8"

    const-string/jumbo v10, "\u4e0d\u5141\u8bb8"

    move-object v5, v3

    move-object v6, p2

    move-object v8, v0

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 964
    .local v5, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v5, v3

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$12;

    invoke-direct {v6, p0, p3, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$12;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 972
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;

    invoke-direct {v3, p0, p3, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager$13;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 981
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCanceledOnTouchOutside(Z)V

    .line 982
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCancelable(Z)V

    .line 983
    invoke-virtual {v5}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 985
    .end local v5    # "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    return-void
.end method

.method public getAllPermissions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 741
    .local v0, "result":Ljava/util/Map;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 742
    .local v1, "permissionKeys":Ljava/util/Set;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 743
    .local v2, "iterator":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 745
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 747
    :cond_0
    const-string v3, "album"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 748
    const-string v3, "camera"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 751
    .local v4, "key":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 752
    invoke-static {p1, p2, v4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 756
    :cond_2
    return-object v0
.end method

.method public removeAllPermissionInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 912
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 914
    :cond_0
    const-string v0, "location"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "addressKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->remove(Ljava/lang/String;)V

    .line 918
    const-string v1, "camera"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "cameraKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->remove(Ljava/lang/String;)V

    .line 922
    const-string v2, "album"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "albumKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->remove(Ljava/lang/String;)V

    .line 926
    const-string v3, "audioRecord"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, "recordKey":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->remove(Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 932
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    .line 933
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v5, v4

    invoke-virtual {v4, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v5, v1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v5, v2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {v5, v3, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v4, 0x2

    invoke-static {v4, p1, v5}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToLiteProcess(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 940
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
