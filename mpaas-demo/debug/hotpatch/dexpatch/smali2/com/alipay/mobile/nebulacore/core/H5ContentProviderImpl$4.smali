.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 800
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->c:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->a:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->a:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->c:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 806
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->a:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    return-void

    .line 809
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->c:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 810
    .local v1, "netInput":Ljava/io/InputStream;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 811
    .local v0, "bytes":[B
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 812
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 813
    .local v3, "stream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->a:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->c:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;->b:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .end local v0    # "bytes":[B
    .end local v1    # "netInput":Ljava/io/InputStream;
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_1
    return-void

    .line 816
    :catchall_0
    move-exception v0

    .line 817
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5ContentProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 819
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
