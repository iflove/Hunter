.class Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/image/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpCallback"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/image/ImageLoaderListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/alipay/mobile/common/image/ImageCacheListener;

.field final synthetic this$0:Lcom/alipay/mobile/common/image/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/image/ImageLoader;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 0
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "imageCacheListener"    # Lcom/alipay/mobile/common/image/ImageCacheListener;

    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->a:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->b:Ljava/lang/String;

    .line 281
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    .line 282
    iput p4, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->d:I

    .line 283
    iput p5, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->e:I

    .line 284
    iput-object p6, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->f:Lcom/alipay/mobile/common/image/ImageCacheListener;

    .line 285
    return-void
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public getListenerSize()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 362
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 363
    .local v0, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 365
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onCancelled(Ljava/lang/String;)V

    .line 366
    goto :goto_0

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/common/image/ImageLoader;->access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 350
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 351
    .local v0, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 353
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    goto :goto_0

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/common/image/ImageLoader;->access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 18
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 316
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 317
    .local v2, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    iget-object v0, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 318
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 319
    move-object/from16 v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 320
    .local v0, "httpUrlResponse":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v4

    .line 321
    .local v4, "data":[B
    iget-object v5, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    iget v6, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->d:I

    iget v7, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->e:I

    invoke-virtual {v5, v4, v6, v7}, Lcom/alipay/mobile/common/image/ImageLoader;->createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 322
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    move-object v15, v5

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    .line 323
    iget-object v5, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 324
    .local v6, "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v15}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 325
    .end local v6    # "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    goto :goto_0

    .line 326
    :cond_0
    iget-object v6, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;
    invoke-static {v6}, Lcom/alipay/mobile/common/image/ImageLoader;->access$000(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/mem/MemCache;

    move-result-object v6

    iget-object v7, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v15}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    .local v5, "period":J
    iget-object v6, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->f:Lcom/alipay/mobile/common/image/ImageCacheListener;

    if-eqz v6, :cond_1

    .line 330
    invoke-interface {v6, v2, v0}, Lcom/alipay/mobile/common/image/ImageCacheListener;->getCachePeriod(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)J

    move-result-wide v6

    move-wide v5, v6

    move-wide/from16 v16, v5

    goto :goto_1

    .line 332
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getPeriod()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v5, v6, v8

    move-wide/from16 v16, v5

    .line 334
    .end local v5    # "period":J
    .local v16, "period":J
    :goto_1
    iget-object v5, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;
    invoke-static {v5}, Lcom/alipay/mobile/common/image/ImageLoader;->access$200(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/disk/DiskCache;

    move-result-object v5

    iget-object v6, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 335
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getCreateTime()J

    move-result-wide v10

    .line 336
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getContentType()Ljava/lang/String;

    move-result-object v14

    .line 334
    move-object v9, v4

    move-wide/from16 v12, v16

    invoke-virtual/range {v5 .. v14}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 337
    .end local v16    # "period":J
    goto :goto_3

    .line 338
    :cond_2
    iget-object v5, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 339
    .restart local v6    # "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e7

    const-string/jumbo v10, "\u7f51\u7edc\u8bf7\u6c42\u8fd4\u56de\u7684\u4e0d\u662f\u56fe\u7247"

    invoke-interface {v7, v8, v9, v10}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    .end local v6    # "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    goto :goto_2

    .line 343
    .end local v0    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .end local v4    # "data":[B
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    iget-object v0, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 309
    .local v1, "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 310
    .local v2, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    .line 311
    .end local v1    # "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .end local v2    # "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 301
    .local v1, "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 302
    .local v2, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    .line 303
    .end local v1    # "listener":Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .end local v2    # "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method
