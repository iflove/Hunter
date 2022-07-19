.class public Lcom/alipay/mobile/h5container/api/H5ImageLoader;
.super Ljava/lang/Object;
.source "H5ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ImageLoader"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private listener:Lcom/alipay/mobile/h5container/api/H5ImageListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->url:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->listener:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5container/api/H5ImageLoader;)Lcom/alipay/mobile/h5container/api/H5ImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->listener:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->listener:Lcom/alipay/mobile/h5container/api/H5ImageListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load image "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ImageLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5ImageLoader;->url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 38
    .local v3, "urlPattern":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 39
    .local v2, "conn":Ljava/net/URLConnection;
    move-object v2, v0

    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "load image length "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v2}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/h5container/api/H5ImageLoader$1;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageLoader;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v3    # "urlPattern":Ljava/net/URL;
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "load image exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5ImageLoader$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/h5container/api/H5ImageLoader$2;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageLoader;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 62
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 32
    :cond_1
    :goto_0
    return-void
.end method
