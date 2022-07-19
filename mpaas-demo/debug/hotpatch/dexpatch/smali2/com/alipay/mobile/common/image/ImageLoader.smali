.class public Lcom/alipay/mobile/common/image/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field private b:Lcom/alipay/mobile/common/cache/mem/MemCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/cache/mem/MemCache<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/cache/disk/DiskCache;Lcom/alipay/mobile/common/cache/mem/MemCache;)V
    .locals 1
    .param p1, "transport"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "diskCache"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;
    .param p3, "memCache"    # Lcom/alipay/mobile/common/cache/mem/MemCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/http/HttpManager;",
            "Lcom/alipay/mobile/common/cache/disk/DiskCache;",
            "Lcom/alipay/mobile/common/cache/mem/MemCache<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->c:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)V
    .locals 10
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v9, Lcom/alipay/mobile/common/image/ImageLoader$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move v5, p5

    move/from16 v6, p6

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/image/ImageLoader$1;-><init>(Lcom/alipay/mobile/common/image/ImageLoader;Lcom/alipay/mobile/common/image/ImageLoaderListener;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 14
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "imageCacheListener"    # Lcom/alipay/mobile/common/image/ImageCacheListener;

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v11, 0x0

    .line 133
    .local v11, "httpCallback":Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;
    iget-object v12, v8, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    monitor-enter v12

    .line 134
    :try_start_0
    iget-object v0, v8, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, v8, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    .line 136
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v0, v9}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    new-instance v13, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;-><init>(Lcom/alipay/mobile/common/image/ImageLoader;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    .line 140
    move-object v11, v13

    invoke-virtual {v13, v10}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    .line 141
    invoke-virtual {v0, v11}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 142
    iget-object v1, v8, Lcom/alipay/mobile/common/image/ImageLoader;->c:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 143
    .local v1, "future":Ljava/util/concurrent/Future;
    iget-object v2, v8, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, v8, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v0    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v1    # "future":Ljava/util/concurrent/Future;
    :goto_0
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)Z
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 187
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-interface {p3, p2, v1}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 189
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p3, p2, v2, v3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/mem/MemCache;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/image/ImageLoader;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/image/ImageLoader;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/disk/DiskCache;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/image/ImageLoader;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/image/ImageLoader;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)Z
    .locals 6
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .param p5, "width"    # I
    .param p6, "height"    # I

    const/4 v0, 0x0

    .line 209
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->open()V

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1, p1, p3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 212
    .local v2, "data":[B
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {p4, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v2, p5, p6}, Lcom/alipay/mobile/common/image/ImageLoader;->createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 216
    invoke-interface {p4, p3, v0}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    .line 218
    const/4 v1, 0x1

    return v1

    .line 220
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1, p3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v2    # "data":[B
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    .line 227
    goto :goto_1

    .line 226
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lcom/alipay/mobile/common/cache/disk/CacheException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getCode()Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Lcom/alipay/mobile/common/cache/disk/CacheException;
    goto :goto_0

    .line 228
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 226
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    throw v1
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    const/4 v2, 0x0

    .line 109
    .local v2, "httpCallback":Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 110
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->removeListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    .line 112
    invoke-virtual {v2}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->getListenerSize()I

    move-result v1

    if-gtz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 114
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 116
    .end local v2    # "httpCallback":Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 238
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 239
    nop

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 242
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 243
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 244
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 246
    :cond_0
    move-object v3, p1

    check-cast v3, [B

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 248
    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, p2

    .line 249
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p2, p3

    .line 250
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 252
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto :goto_1

    .line 255
    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alipay/mobile/common/info/AppInfo;->getDensity()I

    move-result p3

    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 256
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 257
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 258
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 261
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 262
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 264
    :cond_2
    check-cast p1, [B

    check-cast p1, [B

    array-length p2, p1

    invoke-static {p1, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 267
    :goto_2
    return-object p1
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)V
    .locals 8
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 66
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    .line 67
    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alipay/mobile/common/image/ImageLoaderListener;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "imageCacheListener"    # Lcom/alipay/mobile/common/image/ImageCacheListener;

    .line 81
    if-nez p3, :cond_0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ImageLoader"

    const-string/jumbo v2, "path must be set."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    return-void

    .line 89
    :cond_1
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)V

    .line 98
    return-void

    .line 91
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/image/ImageLoader;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    return-void

    .line 94
    :cond_4
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    return-void
.end method
