.class final Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;
.super Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
.source "SubPackagePrepareTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;

.field private b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;Ljava/lang/String;)V
    .locals 0
    .param p2, "installCallback"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;
    .param p3, "parseCallback"    # Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .param p4, "rootAttrib"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;",
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;

    .line 61
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;)V

    .line 62
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    .line 63
    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;->c:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public final onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 4
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "SubPackagePrepareTask"

    const-string/jumbo v1, "onFailed...callback is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 73
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "downloadStatus"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;->c:Ljava/lang/String;

    const-string/jumbo v2, "rootAttrib"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$a;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
