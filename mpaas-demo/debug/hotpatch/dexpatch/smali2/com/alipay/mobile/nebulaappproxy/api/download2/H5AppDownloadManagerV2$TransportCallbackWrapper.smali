.class Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;
.super Ljava/lang/Object;
.source "H5AppDownloadManagerV2.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportCallbackWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

.field private b:I

.field private c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 0
    .param p2, "request"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p3, "downloadPath"    # Ljava/lang/String;

    .line 297
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 p1, 0x0

    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->b:I

    .line 298
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 299
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->e:Ljava/lang/String;

    .line 301
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p3, "x2"    # Ljava/lang/String;

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->c(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->d(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)V

    .line 382
    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 333
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 334
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v3, "nebulaDownload"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 341
    .local v1, "callbackList":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 342
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 343
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 344
    goto :goto_0

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a()V

    .line 348
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 365
    .local v1, "callbackList":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 367
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v2, v3, p2, p3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 368
    goto :goto_0

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a()V

    .line 372
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 353
    .local v1, "callbackList":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 355
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 356
    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a()V

    .line 360
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 306
    .local v1, "callbackList":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 308
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 309
    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "v"    # D

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->isNeedProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p2

    double-to-int v0, v0

    const/4 v1, 0x0

    .line 317
    .local v1, "percent":I
    move v1, v0

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->b:I

    sub-int/2addr v0, v2

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    if-lez v1, :cond_1

    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 321
    .local v2, "callbackList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 323
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V

    .line 324
    goto :goto_0

    .line 326
    :cond_0
    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;->b:I

    .line 329
    .end local v1    # "percent":I
    .end local v2    # "callbackList":Ljava/util/List;
    :cond_1
    return-void
.end method
