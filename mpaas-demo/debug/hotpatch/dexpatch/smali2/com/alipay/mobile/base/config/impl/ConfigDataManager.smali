.class public Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
.super Ljava/lang/Object;
.source "ConfigDataManager.java"


# static fields
.field public static final ASSIST_PLAIN:Ljava/lang/String; = "pla_"

.field private static final KEY_ALL_LOGIN_USER:Ljava/lang/String; = "key_all_user"

.field public static final KEY_LAST_NOT_INCREMENT_SUCCESS:Ljava/lang/String; = "last_not_increment"

.field public static final KEY_LAST_OS_VERSION:Ljava/lang/String; = "last_not_increment"

.field private static final KEY_PERSIST_KEYS:Ljava/lang/String; = "persist_keys"

.field private static final KEY_REPLACE:Ljava/lang/String; = "key_replace"

.field public static final RESERVE_CONFIG_KEY_UPGRADE_LOAD:Ljava/lang/String; = "upgradeLoadVersion"

.field private static final SP_CONFIG_ASSIST:Ljava/lang/String; = "CommonConfigAssist"

.field public static final SP_CONFIG_NAME:Ljava/lang/String; = "CommonConfig_"

.field private static final SP_ENCRYPT_CONFIG_NAME:Ljava/lang/String; = "CommonConfigEncrypt"

.field private static final TAG:Ljava/lang/String; = "ConfigDataManager"

.field public static final blackList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

.field private static mContextWrapper:Landroid/content/ContextWrapper;


# instance fields
.field private isFullUpdating:Z

.field private mAssistSP:Landroid/content/SharedPreferences;

.field private mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

.field private mEncryptSP:Landroid/content/SharedPreferences;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUpgradeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;

    invoke-direct {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->blackList:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUserSps:Ljava/util/Map;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->isFullUpdating:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUpgradeCache:Ljava/util/HashMap;

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mEncryptSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private clearSp(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    :cond_0
    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "ConfigDataManager"

    .line 218
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v2, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    .line 219
    .local v3, "decrypt":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decrypt value error!! value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    return-object v3

    .line 223
    .end local v3    # "decrypt":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "ConfigDataManager"

    .line 237
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-static {v2, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    .line 239
    .local v3, "encrypt":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "encrypt value error!! value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    return-object v3

    .line 243
    .end local v3    # "encrypt":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private filterKeys(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "keyList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 551
    .local v1, "sets":Ljava/util/Set;
    move-object v1, v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 552
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 553
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 554
    return-object p1
.end method

.method public static getInstance(Landroid/content/ContextWrapper;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .line 63
    if-eqz p0, :cond_0

    .line 64
    sput-object p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    .line 66
    :cond_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    if-nez v0, :cond_2

    .line 67
    const-class v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-direct {v1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 71
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    return-object v0
.end method

.method private getKeyWithTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersistKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "persist_keys"

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 528
    .local v2, "keys":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v1, "ret":Ljava/util/List;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 532
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 533
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 535
    .end local v4    # "i":I
    :cond_0
    return-object v1

    .line 539
    .end local v1    # "ret":Ljava/util/List;
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    goto :goto_1

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPersistKeys Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConfigDataManager"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 189
    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pla_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ne v1, p3, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    return-object v1

    .line 194
    :cond_2
    :goto_0
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-ne v0, p3, :cond_3

    goto :goto_1

    .line 202
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 200
    :cond_4
    :goto_1
    return-object p3

    .line 203
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->logException(Ljava/lang/Exception;)V

    .line 205
    return-object p3

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-object p3
.end method

.method private init()V
    .locals 3

    .line 351
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    const-string v1, "CommonConfigEncrypt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mEncryptSP:Landroid/content/SharedPreferences;

    .line 352
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    const-string v1, "CommonConfigAssist"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    .line 353
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->migrateEncryptPersistKey()V

    .line 354
    const-string/jumbo v0, "upgradeLoadVersion"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/lang/String;)V

    .line 355
    const-string v0, "key_all_user"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->addPersistKey(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mEncryptSP:Landroid/content/SharedPreferences;

    const-string v1, "key_replace"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    if-nez v0, :cond_0

    .line 360
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    const-string v1, "CommonConfig_"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mSharedPref:Landroid/content/SharedPreferences;

    .line 363
    :cond_0
    new-instance v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mEncryptSP:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    .line 392
    return-void
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 313
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private migrateEncryptPersistKey()V
    .locals 5

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "persist_keys"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 455
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v2, "persist_keys":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    return-void

    .line 462
    :cond_1
    invoke-direct {p0, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "pla_persist_keys"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    .end local v2    # "persist_keys":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method private saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 173
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void

    .line 174
    :cond_1
    :goto_0
    return-void
.end method

.method public static unload()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mConfigDataManager:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    .line 79
    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    .line 80
    return-void
.end method

.method private updateAllUserConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 697
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAllLoginUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 698
    .local v2, "allLoginUsers":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 701
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 702
    .local v3, "uid":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 703
    .local v1, "spByUser":Landroid/content/SharedPreferences;
    move-object v1, v4

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 704
    if-eqz v4, :cond_1

    .line 705
    invoke-direct {p0, v1, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .end local v1    # "spByUser":Landroid/content/SharedPreferences;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 708
    :cond_2
    return-void

    .line 699
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addLoginUser(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .line 767
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAllLoginUsers()Ljava/util/List;

    move-result-object v0

    .line 768
    .local v0, "users":Ljava/util/List;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 770
    .local v2, "hashSet":Ljava/util/HashSet;
    move-object v2, v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 771
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 776
    move-object v0, v1

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 777
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "key_all_user"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v0    # "users":Ljava/util/List;
    .end local v2    # "hashSet":Ljava/util/HashSet;
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->logException(Ljava/lang/Exception;)V

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public addPersistKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    const-string/jumbo v0, "persist_keys"

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    return-void

    .line 478
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getPersistKeys()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 479
    .local v3, "keyList":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 482
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    return-void

    .line 485
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-direct {p0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->filterKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 487
    .end local v3    # "keyList":Ljava/util/List;
    .local v1, "keyList":Ljava/util/List;
    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 488
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v2, v3

    const-string/jumbo v4, "pla_persist_keys"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 490
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v1    # "keyList":Ljava/util/List;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPersistKey Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigDataManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public declared-synchronized addPersistKey(Ljava/util/List;)V
    .locals 5
    .param p1, "keys"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 505
    if-eqz p1, :cond_2

    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getPersistKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 507
    .local v2, "keyList":Ljava/util/List;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 510
    .end local p0    # "this":Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 511
    invoke-direct {p0, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->filterKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 512
    .end local v2    # "keyList":Ljava/util/List;
    .local v0, "keyList":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 513
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v1, v2

    const-string/jumbo v3, "pla_persist_keys"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "persist_keys"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    const-string/jumbo v2, "persist_keys"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 504
    .end local v0    # "keyList":Ljava/util/List;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "keys":Ljava/util/List;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 519
    .restart local p1    # "keys":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addPersistKey Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return-void

    .line 504
    .end local p1    # "keys":Ljava/util/List;
    :goto_0
    monitor-exit p0

    throw p1

    .line 521
    .restart local p1    # "keys":Ljava/util/List;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public clearAssistSp()V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 572
    return-void
.end method

.method public clearCommonConfig()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->clear()V

    .line 576
    return-void
.end method

.method public containsInCommonConfig(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->logException(Ljava/lang/Exception;)V

    .line 330
    const/4 v1, 0x0

    return v1
.end method

.method public containsInUserSp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 318
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->logException(Ljava/lang/Exception;)V

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public getAllLoginUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_all_user"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 753
    .local v1, "string":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "users":Ljava/util/List;
    goto :goto_0

    .line 757
    .end local v0    # "users":Ljava/util/List;
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .restart local v0    # "users":Ljava/util/List;
    goto :goto_0

    .line 758
    .end local v0    # "users":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .restart local v0    # "users":Ljava/util/List;
    :goto_0
    return-object v0
.end method

.method public getAssistSp()Landroid/content/SharedPreferences;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->isFullUpdating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUpgradeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 118
    .local v1, "val":Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 119
    return-object p2

    .line 121
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUpgradeCache val = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigDataManager"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v1

    .line 125
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 131
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    .local v0, "spByUser":Landroid/content/SharedPreferences;
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    return-object v1

    .line 136
    .end local v0    # "spByUser":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpBySpName(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 6
    .param p1, "spName"    # Ljava/lang/String;

    const-string v0, "ConfigDataManager"

    .line 148
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    .line 149
    move-object v2, p1

    .line 150
    .local v2, "old":Ljava/lang/String;
    :try_start_1
    const-string v3, "[/\\\\:*?|\"<>]"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sp name replace: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v2    # "old":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-virtual {v3, p1, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v3

    goto :goto_0

    .line 156
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "sp name is null."

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    const-string v3, "CommonConfig_Null"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 159
    :catch_1
    move-exception v2

    const/4 v2, 0x0

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create sp failed, sp = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mContextWrapper:Landroid/content/ContextWrapper;

    const-string v3, "CommonConfig_CreateSpFailed"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUserSps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUserSps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommonConfig_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpBySpName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUserSps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 395
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 100
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "spByUser":Landroid/content/SharedPreferences;
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    return-object v1

    .line 105
    .end local v0    # "spByUser":Landroid/content/SharedPreferences;
    :cond_0
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpgradeCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUpgradeCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public isFullUpdating()Z
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->isFullUpdating:Z

    return v0
.end method

.method public migrateCommonConfigPersistKeys()V
    .locals 7

    .line 586
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getPersistKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 587
    .local v2, "persistKeys":Ljava/util/List;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 588
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 591
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 592
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v6, v5, v1}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v4, "value":Ljava/lang/String;
    move-object v4, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 594
    invoke-direct {p0, v4}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 596
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 597
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    return-void
.end method

.method public putMap(Ljava/util/Map;)V
    .locals 1
    .param p1, "configs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public putMap(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "configs"    # Ljava/util/Map;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public putMap(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .param p1, "configs"    # Ljava/util/Map;
    .param p2, "abconfigs"    # Ljava/util/Map;
    .param p3, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 425
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ConfigDataManager"

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "putMap userId is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->putMap(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .line 429
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "putMap userId is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    .line 434
    .local v3, "sb":Ljava/lang/StringBuffer;
    move-object v3, v2

    const-string/jumbo v4, "putMap_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 436
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 437
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#r#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 439
    invoke-direct {p0, v5}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 443
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    return-void
.end method

.method public putSpliteData(Lcom/alipay/mobile/base/config/model/PLData;Ljava/lang/String;)Z
    .locals 6
    .param p1, "plData"    # Lcom/alipay/mobile/base/config/model/PLData;
    .param p2, "userId"    # Ljava/lang/String;

    .line 732
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->num:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->total:I

    if-ge v0, v3, :cond_1

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->containsInCommonConfig(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    return v1

    .line 734
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 740
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->num:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v3, p1, Lcom/alipay/mobile/base/config/model/PLData;->total:I

    if-ge v0, v3, :cond_4

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/alipay/mobile/base/config/model/PLData;->uniqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/alipay/mobile/base/config/model/PLData;->updateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->containsInUserSp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 743
    return v1

    .line 741
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    .end local v0    # "i":I
    :cond_4
    :goto_2
    return v2
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 405
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public reMigrateCommonConfigPersistKeys()V
    .locals 8

    .line 601
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getPersistKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 602
    .local v2, "persistKeys":Ljava/util/List;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 603
    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v0, "map":Ljava/util/Map;
    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 607
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 608
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mAssistSP:Landroid/content/SharedPreferences;

    invoke-direct {p0, v7, v6, v1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 609
    .local v5, "value":Ljava/lang/String;
    move-object v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 610
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 615
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 616
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->putMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 617
    return-void
.end method

.method public removeKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .line 559
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->removeKey(Ljava/lang/String;)V

    return-void

    .line 562
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getSpByUser(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 563
    .local v1, "spByUser":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v1    # "spByUser":Landroid/content/SharedPreferences;
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigDataManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public removeKeys(Ljava/util/List;)V
    .locals 1
    .param p1, "deleteKeys"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mCommonConfigAdapter:Lcom/alipay/mobile/base/config/impl/SPAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/impl/SPAdapter;->removeKeys(Ljava/util/List;)V

    .line 580
    return-void
.end method

.method public saveKeyValueToCommon(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 681
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getKeyWithTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 684
    invoke-virtual {p0, p1, p2, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uiniqId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",updateTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ,save"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveKeyValueWithTime(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "onlyUser"    # Z
    .param p6, "userId"    # Ljava/lang/String;

    .line 629
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v0

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    move-object v3, p6

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getKeyWithTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 631
    .local v3, "aLong":J
    cmp-long v1, p3, v3

    if-lez v1, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p5, :cond_1

    move-object v2, p6

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getKeyWithTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 633
    if-nez p5, :cond_2

    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->updateAllUserConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 641
    :cond_2
    invoke-virtual {p0, p1, p2, p6}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uiniqId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",updateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",onlyUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,save"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 650
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uiniqId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",updateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,time <= aLong do not save"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 652
    .end local v3    # "aLong":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveKeyValueWithTimeToCommon(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 657
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getKeyWithTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 659
    .local v3, "aLong":J
    cmp-long v1, p3, v3

    if-lez v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getAssistSp()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->getKeyWithTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 662
    invoke-virtual {p0, p1, p2, v2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uiniqId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",updateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,save"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 666
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uiniqId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",updateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,time <= aLong do not save"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 668
    .end local v3    # "aLong":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveMapConfig(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 291
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$2;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->logException(Ljava/lang/Exception;)V

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 292
    :cond_1
    :goto_0
    return-void
.end method

.method public setFullUpdating(Z)V
    .locals 0
    .param p1, "fullUpdating"    # Z

    .line 789
    iput-boolean p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->isFullUpdating:Z

    .line 790
    return-void
.end method

.method public setUpgradeCache(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "upgradeCache"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 797
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mUpgradeCache:Ljava/util/HashMap;

    .line 798
    return-void
.end method
