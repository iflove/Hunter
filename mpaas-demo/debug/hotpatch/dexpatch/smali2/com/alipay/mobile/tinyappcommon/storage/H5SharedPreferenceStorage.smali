.class public Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;
.super Ljava/lang/Object;
.source "H5SharedPreferenceStorage.java"

# interfaces
.implements Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;,
        Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$H5SharedPreferenceStorageInner;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "tiny_app_common_storage"

.field private static final PERFORMANCE_KEY:Ljava/lang/String; = "performance_key"

.field private static final TAG:Ljava/lang/String;

.field private static final VCONSOLE_KEY:Ljava/lang/String; = "vconsole_key"


# instance fields
.field private mCacheDataBundle:Landroid/os/Bundle;

.field private mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tiny_app_common_storage"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;-><init>()V

    return-void
.end method

.method private buildPerformanceStorageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_performance_key"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildVConsoleStorageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_vconsole_key"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;
    .locals 1

    .line 45
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$H5SharedPreferenceStorageInner;->INSTANCE:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    return-object v0
.end method

.method private isInLiteProcess()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized getAllCacheData()Landroid/os/Bundle;
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mCacheDataBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 101
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mCacheDataBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAssistantPanelSwitch()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;->getAssistantPanelSwitch()Z

    move-result v0

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentStorageSize()I
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    if-eqz v0, :cond_0

    .line 305
    nop

    .line 306
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getCurrentAppId()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-interface {v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;->getDefaultCurrentStorageSize(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 310
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getDefaultCurrentStorageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultCurrentStorageSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->getCurrentStorageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 315
    :cond_1
    :goto_0
    sget-object p1, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    const-string p2, "getDefaultCurrentStorageSize...no reality"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 p1, -0x1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 193
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public getPerformancePanelVisible(Ljava/lang/String;)Z
    .locals 1

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->buildPerformanceStorageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 218
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public getVConsoleVisible(Ljava/lang/String;)Z
    .locals 1

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->buildVConsoleStorageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized initLoadStorage()V
    .locals 5

    monitor-enter p0

    .line 62
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    const-string v1, "initLoadStorage..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->initLoadStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->resetCache()V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 78
    invoke-virtual {p0, v3, v2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->updateCacheData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 80
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 82
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    :cond_3
    goto :goto_0

    .line 85
    :cond_4
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 87
    iput-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mCacheDataBundle:Landroid/os/Bundle;

    .line 89
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLoadStorage...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 93
    monitor-exit p0

    return-void

    .line 61
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putInt(Ljava/lang/String;IZ)V
    .locals 2

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;->putInt(Ljava/lang/String;IZ)V

    .line 177
    return-void

    .line 181
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object p3, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    sget-object p2, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "putInt...e="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->isInLiteProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 148
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    sget-object p2, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "putString...e="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public registerMainProcProxyListener(Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    .line 55
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;->remove(Ljava/lang/String;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return-void
.end method

.method public removeCacheData(Ljava/lang/String;)V
    .locals 1

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public resetCache()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 107
    return-void
.end method

.method public setPerformancePanelVisible(Ljava/lang/String;Z)V
    .locals 4

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->buildPerformanceStorageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;->setPerformancePanelVisible(Ljava/lang/String;Z)V

    .line 285
    return-void

    .line 288
    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 290
    :goto_1
    iget-object p2, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p0, p1, v0, v2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setVConsoleVisible(Ljava/lang/String;Z)V
    .locals 4

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->buildVConsoleStorageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mMainProcProxyListener:Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage$MainProcProxyListener;->setVConsoleVisible(Ljava/lang/String;Z)V

    .line 246
    return-void

    .line 249
    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 250
    :goto_1
    iget-object p2, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p0, p1, v0, v2}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public updateCacheData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateCacheData...key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 120
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->mIntStorageCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    return-void
.end method
