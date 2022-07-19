.class public Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;
.super Ljava/lang/Object;
.source "SubPackagePrepareTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;,
        Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

.field private b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "rootAttrib"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "parseCallback"    # Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->c:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->d:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->e:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->e:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->d:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;->d:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;)V

    .line 50
    return-void

    .line 39
    :cond_2
    :goto_0
    const-string v0, "SubPackagePrepareTask"

    const-string/jumbo v1, "prepareTask run...appId or url is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
