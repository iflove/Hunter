.class public Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;
.super Ljava/lang/Object;
.source "TypefaceCache.java"


# static fields
.field private static mInstance:Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;


# instance fields
.field private final mTypefaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mInstance:Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;
    .locals 2

    const-class v0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mInstance:Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    invoke-direct {v1}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;-><init>()V

    sput-object v1, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mInstance:Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    .line 32
    :cond_0
    sget-object v1, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mInstance:Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "ttfFilePath"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getInstance()Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypefaceByCat(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 67
    .local v0, "typeface":Landroid/graphics/Typeface;
    move-object v0, v1

    if-nez v1, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    const-string v1, "ExtConfigManager"

    const-string v2, "getExtTypeface error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getInstance()Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->putTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 76
    :cond_1
    return-object v0

    .line 64
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    return-void
.end method

.method public getTypefaceByCat(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v1

    .line 50
    .local v2, "typefaceRef":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v1

    .line 47
    .end local v2    # "typefaceRef":Ljava/lang/ref/WeakReference;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public putTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void

    .line 41
    :cond_1
    :goto_0
    return-void
.end method
