.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;
.super Ljava/lang/Object;
.source "H5WalletDevDebugProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WalletDevDebugProvider"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/dev/H5BugMeManager;)V
    .locals 7
    .param p1, "manager"    # Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a:Ljava/util/Set;

    .line 53
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    .line 59
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    .line 63
    new-instance v2, Landroidx/collection/LruCache;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    const-string v4, "url"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    new-instance v2, Landroidx/collection/LruCache;

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    const-string v4, "ua"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    new-instance v2, Landroidx/collection/LruCache;

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    const-string v4, "title"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    new-instance v2, Landroidx/collection/LruCache;

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    const-string v4, "deviceModel"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    new-instance v2, Landroidx/collection/LruCache;

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    const-string v4, "session"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    new-instance v2, Landroidx/collection/LruCache;

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    const-string v3, "pkgInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v2, v0

    .line 71
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "h5_bugmeIgnoreConsole"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "configStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 76
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v0, v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 77
    .local v3, "size":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a:Ljava/util/Set;

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 79
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a:Ljava/util/Set;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "H5WalletDevDebugProvider"

    const-string v4, "parse config error"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "configStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LruCache;

    const/4 v1, 0x0

    move-object v2, v1

    .line 124
    .local v2, "lru":Landroidx/collection/LruCache;
    move-object v2, v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 125
    invoke-virtual {v2, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;

    move-object v3, v1

    .line 126
    .local v3, "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 127
    if-eqz p3, :cond_0

    .line 128
    iget-object v0, v3, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->a:Ljava/lang/Object;

    return-object v0

    .line 130
    :cond_0
    iget-boolean v0, v3, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->b:Z

    if-eqz v0, :cond_1

    .line 131
    return-object v1

    .line 133
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->b:Z

    .line 134
    iget-object v0, v3, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->a:Ljava/lang/Object;

    return-object v0

    .line 137
    .end local v3    # "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "viewId"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LruCache;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 94
    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    const-string v0, "pkgInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LruCache;

    const/4 v1, 0x0

    move-object v2, v1

    .line 103
    .local v2, "lru":Landroidx/collection/LruCache;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v2, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;

    .line 105
    .local v1, "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    move-object v1, v0

    const-string v3, " viewid "

    const-string v4, "] "

    const-string v5, "put OneShotValue["

    const-string v6, "H5WalletDevDebugProvider"

    const/4 v7, 0x0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;

    invoke-direct {v0, p0, p3, v7}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/Object;Z)V

    invoke-virtual {v2, p2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_2
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    iput-object p3, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->a:Ljava/lang/Object;

    .line 110
    iput-boolean v7, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->b:Z

    .line 111
    invoke-virtual {v2, p2, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "oneShotValue":Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
    :cond_3
    return-void

    .line 95
    .end local v2    # "lru":Landroidx/collection/LruCache;
    :cond_4
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 4
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 327
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "url"

    invoke-direct {p0, v1, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    .local v2, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->d:Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v1

    .local v1, "haveAccess":Z
    goto :goto_0

    .line 330
    .end local v1    # "haveAccess":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .line 333
    .restart local v1    # "haveAccess":Z
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 334
    return v2

    .line 338
    :cond_1
    const-string v3, "h5_bug_me_debug_switch"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    return v0

    .line 343
    :cond_2
    const-string v0, "h5_trace_debug_switch"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "page"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 347
    :cond_3
    return v2
.end method

.method private b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    if-nez v0, :cond_0

    .line 352
    return-void

    .line 355
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 357
    .local v2, "bugmeSwitchOpen":Z
    move v2, v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {p2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "ts"

    invoke-virtual {p2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "bugmeSwitchOpen"

    invoke-virtual {p2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "url"

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "oneShotVal":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 364
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_2
    const-string v0, "title"

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_3

    .line 367
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_3
    const-string v0, "ua"

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .end local v4    # "oneShotVal":Ljava/lang/Object;
    .local v3, "oneShotVal":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 370
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "userAgent"

    invoke-virtual {p2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_4
    const-string v0, "deviceModel"

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_5

    .line 373
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_5
    const-string v0, "session"

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    if-eqz v0, :cond_6

    .line 376
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sessionId"

    invoke-virtual {p2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_6
    const-string v0, "pkgInfo"

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .end local v3    # "oneShotVal":Ljava/lang/Object;
    .local v1, "oneShotVal":Ljava/lang/Object;
    if-eqz v0, :cond_7

    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app"

    invoke-virtual {p2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->post(Ljava/lang/Object;)V

    .line 384
    .end local v1    # "oneShotVal":Ljava/lang/Object;
    :cond_8
    return-void
.end method


# virtual methods
.method public consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "func"    # Ljava/lang/String;

    .line 204
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 209
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "console"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "subType"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "content"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 214
    return-void
.end method

.method public eventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 195
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "event"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "subType"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "data"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 200
    return-void
.end method

.method public getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    return-object v0
.end method

.method public jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "request"    # Ljava/lang/String;
    .param p5, "response"    # Ljava/lang/String;

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 183
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "jsapi"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "subType"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "eventId"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "request"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "response"

    invoke-virtual {v1, v0, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 190
    return-void
.end method

.method public netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 19
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 218
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "reqUrl"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "reqUrl":Ljava/lang/String;
    const-string v4, "method"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "method":Ljava/lang/String;
    const-string v6, "protocol"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "protocol":Ljava/lang/String;
    const-string v8, "reqId"

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v9

    .line 222
    .local v9, "reqId":I
    const-string v10, "statusCode"

    invoke-static {v1, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, "statusCode":Ljava/lang/String;
    const-string v12, "fromLocalPkg"

    const/4 v13, 0x0

    invoke-static {v1, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v13

    .line 224
    .local v13, "fromLocalPkg":Z
    const-string v14, "trimmedResponse"

    invoke-static {v1, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 226
    .local v15, "trimmedResponse":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/16 v16, 0x0

    .line 227
    .local v16, "jobj":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v17, v1

    move-object/from16 v16, v12

    .end local v16    # "jobj":Lcom/alibaba/fastjson/JSONObject;
    .local v17, "jobj":Lcom/alibaba/fastjson/JSONObject;
    const-string v12, "type"

    move/from16 v18, v13

    .end local v13    # "fromLocalPkg":Z
    .local v18, "fromLocalPkg":Z
    const-string v13, "network"

    invoke-virtual {v1, v12, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "subType"

    move-object/from16 v12, p1

    move-object/from16 v13, v17

    .end local v17    # "jobj":Lcom/alibaba/fastjson/JSONObject;
    .local v13, "jobj":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v13, v1, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "viewId"

    invoke-virtual {v13, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v8, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v13, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {v13, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    invoke-virtual {v13, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    invoke-virtual {v13, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v13, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 244
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->shutdown()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;

    .line 321
    :cond_0
    return-void
.end method

.method public pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "ua"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "extraObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 148
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 149
    .local v1, "bundle":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "page"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "subType"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "url"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string v0, "title"

    invoke-virtual {v1, v0, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    if-eqz p6, :cond_2

    .line 159
    const-string v0, "extra"

    invoke-virtual {v1, v0, p6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    const-string v0, "ua"

    invoke-direct {p0, v0, p2, p3}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "deviceModel"

    invoke-direct {p0, v2, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 170
    const-string v0, "destroy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;)V

    .line 173
    :cond_4
    return-void
.end method

.method public screenshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    .line 248
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 249
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "screenshot"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "subType"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 302
    const-string v0, "url"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/alibaba/fastjson/JSONObject;

    .line 312
    const-string v0, "pkgInfo"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method public setSessionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 307
    const-string v0, "session"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 297
    const-string v0, "title"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "ua"    # Ljava/lang/String;

    .line 292
    const-string v0, "ua"

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public welcome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "hello"    # Ljava/lang/String;

    .line 282
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 283
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "subType"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "hello"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-direct {p0, p3, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->b(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 288
    return-void
.end method
