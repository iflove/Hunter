.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    .line 885
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 888
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->b:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    if-eqz v0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getContentOnUi form getContent 2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iget-wide v3, v3, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ContentProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->b:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->d:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->b:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;->a:Ljava/io/InputStream;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    .line 892
    :cond_0
    return-void
.end method
