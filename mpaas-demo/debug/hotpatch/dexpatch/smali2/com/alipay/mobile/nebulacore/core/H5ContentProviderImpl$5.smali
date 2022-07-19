.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContentOnUi(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

.field final synthetic c:J

.field final synthetic d:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 863
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->d:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->b:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    iput-wide p4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 867
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->d:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    move-object v2, v0

    .line 868
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 869
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$1;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;Landroid/webkit/WebResourceResponse;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 881
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->d:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    move-object v3, v0

    .line 882
    .local v3, "netInput":Ljava/io/InputStream;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 883
    .local v1, "bytes":[B
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 884
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 885
    .local v4, "stream":Ljava/io/InputStream;
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;

    invoke-direct {v5, p0, v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;Ljava/io/InputStream;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    .end local v1    # "bytes":[B
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .end local v3    # "netInput":Ljava/io/InputStream;
    .end local v4    # "stream":Ljava/io/InputStream;
    return-void

    .line 896
    :catchall_0
    move-exception v1

    .line 897
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5ContentProviderImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 898
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;->b:Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    if-eqz v2, :cond_1

    .line 899
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    .line 902
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
