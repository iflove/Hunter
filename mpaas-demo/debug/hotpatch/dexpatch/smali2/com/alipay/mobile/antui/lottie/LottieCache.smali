.class public Lcom/alipay/mobile/antui/lottie/LottieCache;
.super Ljava/lang/Object;
.source "LottieCache.java"


# static fields
.field private static mInstance:Lcom/alipay/mobile/antui/lottie/LottieCache;


# instance fields
.field private final mLottieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/antui/lottie/LottieCache;->mInstance:Lcom/alipay/mobile/antui/lottie/LottieCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/lottie/LottieCache;->mLottieMap:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 76
    const-string v0, ""

    .line 78
    .local v0, "lottieString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    .local v2, "stream":Ljava/io/InputStream;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 81
    .local v1, "b":[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 82
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    .line 83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "b":[B
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_0
    nop

    .line 88
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "var5":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getFileJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getInstance()Lcom/alipay/mobile/antui/lottie/LottieCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getFileJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v0, "lottieString":Ljava/lang/String;
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/lottie/LottieCache;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    const-string v1, "ExtConfigManager"

    const-string v2, "getExtTypeface error"

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-static {}, Lcom/alipay/mobile/antui/lottie/LottieCache;->getInstance()Lcom/alipay/mobile/antui/lottie/LottieCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/lottie/LottieCache;->putFileJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    return-object v0

    .line 60
    .end local v0    # "lottieString":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/antui/lottie/LottieCache;
    .locals 2

    const-class v0, Lcom/alipay/mobile/antui/lottie/LottieCache;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/lottie/LottieCache;->mInstance:Lcom/alipay/mobile/antui/lottie/LottieCache;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alipay/mobile/antui/lottie/LottieCache;

    invoke-direct {v1}, Lcom/alipay/mobile/antui/lottie/LottieCache;-><init>()V

    sput-object v1, Lcom/alipay/mobile/antui/lottie/LottieCache;->mInstance:Lcom/alipay/mobile/antui/lottie/LottieCache;

    .line 28
    :cond_0
    sget-object v1, Lcom/alipay/mobile/antui/lottie/LottieCache;->mInstance:Lcom/alipay/mobile/antui/lottie/LottieCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/LottieCache;->mLottieMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    return-void
.end method

.method public getFileJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    return-object v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/LottieCache;->mLottieMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v1

    .line 46
    .local v2, "jsonObjectWeakReference":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/LottieCache;->mLottieMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v1
.end method

.method public putFileJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/lottie/LottieCache;->mLottieMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void

    .line 37
    :cond_1
    :goto_0
    return-void
.end method
