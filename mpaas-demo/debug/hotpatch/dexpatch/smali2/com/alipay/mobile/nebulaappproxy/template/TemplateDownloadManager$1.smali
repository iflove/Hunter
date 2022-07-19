.class final Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;
.super Ljava/lang/Object;
.source "TemplateDownloadManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCancelled...url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a(Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFailed...url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a(Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 122
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPostExecute...url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a(Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 117
    return-void
.end method

.method public final onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 129
    return-void
.end method
