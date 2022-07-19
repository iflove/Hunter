.class final Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;
.super Ljava/lang/Object;
.source "DownloadProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;->b:Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFailed delete : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subpackage.DownloadProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 219
    :cond_0
    return-void
.end method
