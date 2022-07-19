.class public Lcom/alipay/mobile/nebulaappcenter/app/H5App;
.super Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.source "H5App.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;


# static fields
.field private static m:Z


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

.field private d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field private e:Landroid/content/Context;

.field private f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

.field private g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

.field private h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    .line 49
    const-string v0, "H5NebulaApp"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->e:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->j:Z

    .line 69
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->k:Z

    .line 72
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->l:Z

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->n:Ljava/lang/String;

    .line 629
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->o:Ljava/lang/String;

    .line 81
    const-string v0, "/nebulaInstallApps/"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 83
    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v1, "h5ExternalDownloadManager == null use H5AppDownLoadImpl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 515
    nop

    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    .line 521
    :goto_0
    return-object p1
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    .line 506
    if-eqz p1, :cond_0

    .line 507
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception p1

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 510
    :cond_0
    :goto_0
    nop

    .line 511
    :goto_1
    return-void
.end method

.method private a()Z
    .locals 4

    .line 99
    nop

    .line 100
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    .line 101
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "H5PatchProvider ==null not use patch"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 109
    :goto_0
    if-nez v1, :cond_2

    .line 111
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 112
    if-eqz v0, :cond_2

    .line 113
    const-string v2, "h5_clear_patch"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->i()V

    .line 120
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->l:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 974
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 978
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_patch/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 982
    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 983
    if-eqz p1, :cond_5

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/patch"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/md5.json"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 990
    nop

    .line 991
    nop

    .line 992
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 993
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 994
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 995
    const-string/jumbo v0, "old"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    const-string/jumbo v3, "patch"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v9, p1

    move-object v8, v0

    goto :goto_0

    .line 998
    :cond_1
    move-object v8, v0

    move-object v9, v8

    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldMd5 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", patchMd5: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 1003
    :cond_2
    nop

    .line 1004
    const-class p1, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;

    .line 1005
    if-eqz v3, :cond_3

    .line 1006
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v5

    move-object v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/alipay/mobile/nebula/provider/H5PatchProvider;->patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 1009
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string p3, "h5PatchProvider==null , setProvider for H5PatchProvider"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "patcherResult :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " appId:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " version:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object p2, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 1016
    return v1

    .line 1000
    :cond_4
    :goto_2
    return v1

    .line 984
    :cond_5
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 985
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 986
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 975
    :cond_6
    :goto_3
    return v1
.end method

.method private varargs declared-synchronized a([Ljava/lang/String;)Z
    .locals 11

    monitor-enter p0

    .line 652
    nop

    .line 655
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 656
    monitor-exit p0

    return v1

    .line 659
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v2, p1

    if-lez v2, :cond_1

    .line 660
    aget-object p1, p1, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installApp filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 665
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 667
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "installApp !file.exists()"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    monitor-exit p0

    return v1

    .line 671
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 672
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "is install return"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    monitor-exit p0

    return v4

    .line 678
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 680
    const-string/jumbo v3, "step"

    const-string/jumbo v5, "start"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v3, "isPatch"

    const-string/jumbo v5, "no"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v3, "H5_APP_UNZIP"

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v6, "^step=start^isPatch=no"

    invoke-static {v3, v5, v6, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 688
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " installApp spend unzip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 706
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 707
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 709
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v2, "isPatch"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v2, "H5_APP_UNZIP"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v5, "^step=success^isPatch=no"

    invoke-static {v2, v3, v5, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 713
    monitor-exit p0

    return v4

    .line 691
    :cond_5
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v3, "H5_APP_UNZIP fail"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 694
    const-string/jumbo v2, "step"

    const-string v3, "fail"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v2, "isPatch"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v2, "H5_APP_UNZIP"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v4, "^step=fail^isPatch=no"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 700
    nop

    .line 701
    :try_start_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "installApp !unZipResult || !isInstalled() return false"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 702
    monitor-exit p0

    return v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    :try_start_7
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v3, "installApp delete exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 699
    monitor-exit p0

    return v1

    .line 715
    :cond_6
    :try_start_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 716
    const-string/jumbo v5, "step"

    const-string/jumbo v6, "start"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v5, "isPatch"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v5, "H5_APP_UNZIP"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v7, "^step=start^isPatch=yes"

    invoke-static {v5, v6, v7, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 720
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "h5App patcher update. appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; filePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " patch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " patchInstalling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->m:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    sget-boolean v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->m:Z

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string/jumbo v2, "patchInstalling return;"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 726
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "patchInstalling"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v2, "isPatch"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v2, "H5_APP_UNZIP"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v4, "^step=patchInstalling^isPatch=yes"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 729
    monitor-exit p0

    return v1

    .line 731
    :cond_7
    :try_start_9
    sput-boolean v4, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->m:Z

    .line 734
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 736
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 738
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->j:Z

    .line 741
    sput-boolean v1, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->m:Z

    .line 742
    const-string v6, "h5_nebulaApp_installApp_patch"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 743
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 744
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v6, "success"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 747
    if-nez v5, :cond_a

    .line 749
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b(Ljava/lang/String;)V

    .line 751
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 753
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->i()V

    .line 755
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->l:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 758
    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b()V

    .line 761
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "installApp !patcherResult return false"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    const-string/jumbo v2, "step"

    const-string v3, "fail"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string v2, "isPatch"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string v2, "H5_APP_UNZIP"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v4, "^step=fail^isPatch=yes"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 766
    monitor-exit p0

    return v1

    .line 769
    :cond_a
    :try_start_a
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 771
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 772
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 774
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 775
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v2, "isPatch"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v2, "H5_APP_UNZIP"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v5, "^step=success^isPatch=yes"

    invoke-static {v2, v3, v5, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 778
    monitor-exit p0

    return v4

    .line 798
    :cond_b
    goto :goto_3

    .line 782
    :catch_1
    move-exception v0

    goto :goto_2

    .line 651
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 782
    :catch_2
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 783
    :goto_2
    :try_start_b
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 785
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 786
    sput-boolean v1, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->m:Z

    .line 788
    :cond_c
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 789
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 790
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 792
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v0, "h5App patcher fail And downloadAll start."

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->i()V

    .line 794
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp()V

    goto :goto_3

    .line 796
    :cond_d
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 799
    :goto_3
    monitor-exit p0

    return v1

    .line 651
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 158
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c()Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-eqz v1, :cond_2

    .line 165
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5App$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    const-string v2, "IO"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    invoke-interface {v1, v0, p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 176
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->isFromPreDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :cond_1
    :goto_0
    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v1, "doDownloadApp h5ExternalDownloadManager is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_3
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldPkgByFullInstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 909
    :cond_0
    return-void
.end method

.method private c()Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setVersion(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setScene(Ljava/lang/String;)V

    .line 202
    return-object v1
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 912
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object p1

    .line 917
    if-eqz p1, :cond_1

    .line 918
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 919
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 920
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastInstallPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lastVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-object v0

    .line 927
    :cond_1
    return-object v2

    .line 914
    :cond_2
    :goto_0
    return-object v2
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1024
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1026
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 1027
    nop

    .line 1028
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    .line 1029
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1032
    nop

    .line 1034
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1037
    goto :goto_1

    .line 1035
    :catch_0
    move-exception p1

    .line 1036
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1041
    :catch_1
    move-exception p1

    .line 1042
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1039
    :catch_2
    move-exception p1

    .line 1040
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :goto_1
    nop

    .line 1044
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 213
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v1, " has downloadCallback not cacel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 221
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 244
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 245
    return-void
.end method

.method private e()Z
    .locals 2

    .line 413
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 414
    if-eqz v0, :cond_0

    .line 415
    const-string v1, "h5_enableAllPreInstall"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->j:Z

    return p0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized g()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 638
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->o:Ljava/lang/String;

    .line 639
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->p:Ljava/lang/String;

    goto :goto_0

    .line 642
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    iput-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->p:Ljava/lang/String;

    .line 644
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->n:Ljava/lang/String;

    .line 645
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 647
    :goto_0
    monitor-exit p0

    return-object v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .locals 2

    .line 804
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 805
    if-eqz v0, :cond_0

    .line 806
    const-string v1, "h5_controlConcurrentPatch"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x0

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v1, "clearPatchDBInfo "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    if-eqz v0, :cond_0

    .line 818
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V

    .line 820
    :cond_0
    return-void
.end method

.method private j()V
    .locals 7

    .line 858
    const-string v0, " "

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 859
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 860
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 863
    :try_start_0
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    move-result-object v1

    .line 864
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 865
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    .line 870
    iget-object v3, v2, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->appId:Ljava/lang/String;

    .line 871
    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->version:Ljava/lang/String;

    .line 872
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWalletPreset getPreSetInfo  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 874
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->e:Landroid/content/Context;

    .line 876
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPresetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 877
    if-eqz v1, :cond_1

    .line 878
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWalletPreset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetAppPackage(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_1
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string/jumbo v2, "setWalletPreset not exist"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 890
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final downloadApp()V
    .locals 3

    .line 825
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->j()V

    .line 827
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c()Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v1

    .line 830
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 831
    return-void

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 840
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b()V

    .line 841
    return-void

    .line 835
    :cond_3
    :goto_0
    return-void
.end method

.method public downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 1

    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 851
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->i:Ljava/lang/String;

    .line 852
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->downloadApp()V

    .line 854
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadLocalPath()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadedFilePath()Ljava/lang/String;
    .locals 4

    .line 531
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadedFilePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-object v0

    .line 537
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-nez v0, :cond_0

    .line 619
    const-string v0, ""

    return-object v0

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstalledPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-object v0
.end method

.method public installApp()Z
    .locals 5

    .line 420
    nop

    .line 422
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installApp appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-nez v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    const-string v4, "4"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1
    return v0
.end method

.method public installApp(Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)Z
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    move-result v0

    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->j:Z

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;->onResult(ZZ)V

    .line 445
    :cond_0
    return v0
.end method

.method public installApp(Z)Z
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->k:Z

    .line 451
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 1049
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isPkgAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDownloading()Z
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v1, "isDownloading h5ExternalDownloadManager==null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0
.end method

.method public isInstalled()Z
    .locals 12

    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 557
    return v1

    .line 559
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInstalled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 565
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 566
    if-eqz v2, :cond_6

    array-length v3, v2

    if-lez v3, :cond_6

    .line 568
    array-length v3, v2

    .line 569
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInstalled length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    .line 574
    const-string v3, ""

    .line 575
    nop

    .line 576
    array-length v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v8, v2, v6

    .line 577
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 578
    iget-object v9, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "install dir file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    const-string/jumbo v9, "tar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 581
    const/4 v7, 0x1

    .line 576
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 584
    :cond_2
    const-string v2, "h5_nebulaApp_intallApp_exception"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 585
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 587
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 584
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 589
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v2

    if-nez v2, :cond_4

    .line 590
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 591
    if-eqz v2, :cond_3

    .line 592
    const-string v3, "h5_delete_installAppFile"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5AppPkg(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v7, :cond_3

    .line 595
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->deleteNebulaInstallFileAndDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "install file is broken delete return notInstall"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return v1

    .line 600
    :cond_3
    goto :goto_1

    .line 601
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v2, "in Main thread not delete"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_5
    :goto_1
    return v5

    .line 609
    :cond_6
    goto :goto_2

    .line 607
    :catch_0
    move-exception v0

    .line 608
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    :cond_7
    :goto_2
    return v1
.end method

.method public isPkgAvailable()Z
    .locals 5

    .line 545
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v0

    .line 546
    nop

    .line 547
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x1

    goto :goto_0

    .line 547
    :cond_0
    const/4 v1, 0x0

    .line 550
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPkgAvailable: path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isAvailable:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return v1
.end method

.method public onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v1, "H5_APP_DOWNLOAD"

    const-string v2, "^step=cancel"

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string v1, "download onCancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 270
    :cond_1
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^step=fail^err=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5_APP_DOWNLOAD"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download onFailed, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    const-string v2, "IO"

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App$3;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$3;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v0, :cond_2

    .line 296
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 304
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance p2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 312
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz p1, :cond_4

    .line 313
    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object p2, p2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_4
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NebulaApp\u79bb\u7ebf\u5305\u4e0b\u8f7d\u5b8c\u6210\uff1aappName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " savePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    if-eqz v0, :cond_1

    .line 338
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->g:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 345
    return-void

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    if-eqz p1, :cond_7

    .line 352
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 353
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    const-string p2, "disableAllPreInstall true, not pre install"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 358
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 359
    const-string p2, "H5NebulaApp"

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const-string/jumbo v1, "preset"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 360
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->isInStrategy(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 361
    :cond_5
    new-instance p1, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 369
    return-void

    .line 373
    :cond_6
    new-instance p1, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 410
    :cond_7
    return-void
.end method

.method public declared-synchronized onInstallComplete(Z)V
    .locals 3

    monitor-enter p0

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 932
    monitor-exit p0

    return-void

    .line 934
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 937
    if-eqz p1, :cond_4

    .line 939
    :try_start_2
    iget-boolean p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->k:Z

    if-eqz p1, :cond_3

    .line 940
    const-class p1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 941
    if-eqz p1, :cond_2

    .line 942
    const-string v0, "H5_async_install"

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 943
    const-string/jumbo v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 944
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_1
    const-string p1, "IO"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 956
    :cond_2
    :goto_0
    goto :goto_1

    .line 957
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->f:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 960
    :catchall_0
    move-exception p1

    .line 961
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 962
    :cond_4
    :goto_1
    nop

    .line 964
    :goto_2
    monitor-exit p0

    return-void

    .line 930
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->h:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V

    .line 324
    :cond_0
    return-void
.end method

.method public presetApp(Ljava/io/InputStream;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    .locals 4

    .line 463
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetH5pkg(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    .line 465
    if-eqz p2, :cond_1

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presetApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-eqz p1, :cond_0

    .line 468
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 469
    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;->getPresetPath(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;->getPresetPath(Ljava/lang/String;)V

    .line 474
    :cond_1
    :goto_0
    return-void
.end method

.method public presetAppPackage(Ljava/io/InputStream;Z)V
    .locals 0

    .line 455
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object p2

    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->presetH5pkg(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    .line 457
    if-eqz p1, :cond_0

    .line 458
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V

    .line 460
    :cond_0
    return-void
.end method

.method public presetH5pkg(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 5

    .line 479
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " presetAppPackage has exits,not to unzip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    nop

    .line 493
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/io/Closeable;)V

    .line 482
    return v2

    .line 484
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    if-nez p2, :cond_1

    .line 486
    nop

    .line 493
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/io/Closeable;)V

    .line 486
    return v0

    .line 488
    :cond_1
    nop

    .line 493
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/io/Closeable;)V

    .line 488
    return v2

    .line 493
    :catchall_0
    move-exception p2

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/io/Closeable;)V

    .line 494
    nop

    .line 495
    return v0

    .line 493
    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a(Ljava/io/Closeable;)V

    throw p2
.end method

.method public setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 3

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->d:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->a:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method
