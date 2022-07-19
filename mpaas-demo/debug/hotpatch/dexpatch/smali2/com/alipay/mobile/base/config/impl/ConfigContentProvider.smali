.class public Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;
.super Landroid/content/ContentProvider;
.source "ConfigContentProvider.java"


# static fields
.field private static final LITE_PROCESS_CONFIG_CACHE_KEY:[Ljava/lang/String;

.field private static sCachedLiteProcessConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 62
    const-string v0, "KEY_TINYAPP_PAGE_FLUENCY"

    const-string v1, "KEY_LITE_PIPELINE"

    const-string/jumbo v2, "reserveConfigKeyUserId"

    const-string v3, "feedbackItemData"

    const-string v4, "KEY_NEED_PRELOAD_TINY_SERVICE"

    const-string v5, "lite_config_load_local_sp"

    const-string v6, "KEY_PRELOAD_TINY_APP_CLASS"

    const-string v7, "KEY_CHECK_STOP_FROM_DELAY"

    const-string v8, "ANTUI_AP_WHITELIST"

    const-string v9, "KEY_ADD_IS_LITE_MOVE_TASK"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->LITE_PROCESS_CONFIG_CACHE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static loadCache()V
    .locals 10

    .line 70
    const-string/jumbo v0, "reserveConfigKeyUserId"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/base/config/ConfigService;

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->LITE_PROCESS_CONFIG_CACHE_KEY:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 74
    invoke-virtual {v2, v8}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 75
    if-nez v9, :cond_0

    const-string v9, ""

    :cond_0
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    const-string v0, "com.alibaba.fastjson.JSON"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    const-string/jumbo v2, "toJSONString"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->sCachedLiteProcessConfig:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    sput-object v1, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->sCachedLiteProcessConfig:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 27
    .local v0, "service":Lcom/alipay/mobile/base/config/ConfigService;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 28
    .local v1, "cursor":Landroid/database/MatrixCursor;
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .local v2, "value":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v4, p2, v3

    const-string v5, "load_cached_liteprocess_config"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->sCachedLiteProcessConfig:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->loadCache()V

    .line 33
    :cond_0
    sget-object v4, Lcom/alipay/mobile/base/config/impl/ConfigContentProvider;->sCachedLiteProcessConfig:Ljava/lang/String;

    aput-object v4, v2, v3

    goto :goto_0

    .line 35
    :cond_1
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 37
    :goto_0
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 39
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    return v0
.end method
