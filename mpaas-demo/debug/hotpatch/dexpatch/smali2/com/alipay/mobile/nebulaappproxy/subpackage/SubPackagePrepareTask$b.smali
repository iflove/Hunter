.class final Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;
.super Ljava/lang/Object;
.source "SubPackagePrepareTask.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;Ljava/lang/String;)V
    .locals 0
    .param p2, "parseCallback"    # Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .param p3, "rootAttrib"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;->a:Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    .line 89
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;->c:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "SubPackagePrepareTask"

    const-string/jumbo v1, "onResult...parseCallback is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 99
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "installStatus"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;->c:Ljava/lang/String;

    const-string/jumbo v2, "rootAttrib"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "downloadUrl"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask$b;->b:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
