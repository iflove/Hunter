.class Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;
.super Ljava/lang/Object;
.source "H5WalletDevDebugProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->screenshot(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    .line 253
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->c:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 256
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 257
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v1

    .line 259
    .local v3, "snapshot":Landroid/graphics/Bitmap;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    move-object v0, v4

    .line 264
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 266
    .local v1, "byteArray":[B
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "encoded":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "img"

    invoke-virtual {v5, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    nop

    .end local v1    # "byteArray":[B
    .end local v4    # "encoded":Ljava/lang/String;
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "H5WalletDevDebugProvider"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 272
    goto :goto_2

    .line 271
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 275
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "snapshot":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->c:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 276
    return-void
.end method
