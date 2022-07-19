.class public Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;
.super Ljava/lang/Object;
.source "WifiChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;
    }
.end annotation


# static fields
.field private static final CACHE_DIR:Ljava/lang/String; = "download.service.cache"

.field private static final CACHE_MAGIC:Ljava/lang/String; = "wifi.cache"

.field private static final CACHE_NAME:Ljava/lang/String; = "wificache"

.field private static final CACHE_VERSION:Ljava/lang/String; = "1.0"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final EXPIRED_TIME:J = 0xa4cb800L

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final LF:B = 0xat

.field private static final MAX_CACHE_NUM:I = 0xa

.field private static final ONE_DAY:I = 0x5265c00

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static mInstance:Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;


# instance fields
.field private final mCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckWifiFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/CheckWifiFacade;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCaches:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCaches:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v1, "wificache"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->readCaches(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 150
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "true"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;

    .line 156
    const-string v4, "checkWifi,has cached"

    invoke-static {v4}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWifi,mac id:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is expired!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->getFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    return v1

    .line 164
    :cond_2
    return v3

    .line 170
    :cond_3
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->checkWifiFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    nop

    .line 172
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 173
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 176
    :cond_4
    goto :goto_2

    .line 174
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 179
    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 181
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;-><init>()V

    .line 182
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->setWifiID(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->setWifiMacAddr(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->setWifiName(Ljava/lang/String;)V

    .line 185
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "false"

    :goto_3
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->setFlag(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCaches:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->syncCaches(Landroid/content/Context;Ljava/util/Map;Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;)V

    .line 190
    :cond_7
    return v1
.end method

.method private checkWifiFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 195
    nop

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWifi,check from server ssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 197
    const-string v0, ""

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiReq;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiReq;-><init>()V

    .line 201
    iput-object p2, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    .line 202
    iput-object p1, v1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    const-class p2, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 206
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 207
    const-class p2, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/CheckWifiFacade;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/CheckWifiFacade;

    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mCheckWifiFacade:Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/CheckWifiFacade;

    .line 208
    invoke-interface {p1, v1}, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/CheckWifiFacade;->checkWIFI(Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiReq;)Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;

    move-result-object p1

    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkWifiFromServer,result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception p1

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWifiFromServer,ex:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-object v0

    .line 198
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 2

    .line 354
    if-eqz p0, :cond_0

    .line 355
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception p0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeStream,ex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_0
    :goto_0
    nop

    .line 359
    :goto_1
    return-void
.end method

.method private static getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 363
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "download.service.cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 367
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return-object p0

    .line 369
    :catch_0
    move-exception p0

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCachePath,ex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 372
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;
    .locals 2

    .line 61
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mInstance:Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;

    if-eqz v0, :cond_0

    .line 62
    return-object v0

    .line 63
    :cond_0
    const-class v0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mInstance:Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mInstance:Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;

    .line 66
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mInstance:Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;

    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getWifiId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 223
    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string p0, ""

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    :try_start_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 229
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 230
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_1
    goto :goto_1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiId,bssid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",ex:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 234
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 477
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "WifiChecker"

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private static readCaches(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 247
    invoke-static {p0, p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 248
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 252
    :cond_0
    const/4 p2, 0x0

    .line 254
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    .line 256
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 259
    :cond_1
    const-string/jumbo v1, "wifi.cache"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    .line 272
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    .line 260
    return-void

    .line 262
    :cond_2
    nop

    .line 263
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 264
    invoke-static {p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->readLine(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readCaches,map:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    .line 258
    return-void

    .line 272
    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_4

    .line 268
    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_2

    .line 272
    :catchall_1
    move-exception p0

    goto :goto_4

    .line 268
    :catch_1
    move-exception p1

    .line 269
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "readCaches,ex:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    .line 273
    :goto_3
    nop

    .line 274
    return-void

    .line 272
    :goto_4
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    throw p0

    .line 249
    :cond_5
    :goto_5
    return-void
.end method

.method private static readLine(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 278
    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;-><init>()V

    .line 281
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->fromString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->getWifiID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_1
    return-void

    .line 279
    :cond_2
    :goto_0
    return-void
.end method

.method private static syncCaches(Landroid/content/Context;Ljava/util/Map;Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;",
            ">;",
            "Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;",
            ")V"
        }
    .end annotation

    .line 287
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->getWifiID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncCaches,map:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",wifiId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->getWifiID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncCaches,map.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clear!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 298
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 301
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->getWifiID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo p2, "wificache"

    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->writeCaches(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 305
    return-void

    .line 288
    :cond_3
    :goto_0
    return-void
.end method

.method private static validSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 239
    const-string v0, ""

    if-nez p0, :cond_0

    .line 240
    return-object v0

    .line 241
    :cond_0
    const-string v1, "\""

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeCaches(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 309
    nop

    .line 310
    invoke-static {p0, p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 316
    if-nez p0, :cond_1

    .line 317
    return-void

    .line 320
    :cond_1
    const/4 p2, 0x0

    .line 322
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    :try_start_1
    const-string/jumbo p2, "wifi.cache"

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 324
    const/16 p2, 0xa

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(I)V

    .line 325
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(I)V

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 329
    nop

    .line 330
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;

    .line 332
    invoke-virtual {v4}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 336
    const/4 v1, 0x1

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeCaches,map:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-static {v2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v2

    goto :goto_3

    .line 339
    :catch_0
    move-exception p1

    move-object p2, v2

    goto :goto_1

    .line 343
    :catchall_1
    move-exception p0

    goto :goto_3

    .line 339
    :catch_1
    move-exception p1

    .line 340
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeCaches,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    .line 344
    :goto_2
    nop

    .line 345
    nop

    .line 347
    if-eqz v1, :cond_3

    .line 348
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 350
    :cond_3
    return-void

    .line 343
    :goto_3
    invoke-static {p2}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->closeStream(Ljava/io/Closeable;)V

    .line 344
    throw p0

    .line 312
    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public checkWifi()Z
    .locals 7

    .line 85
    nop

    .line 89
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isWifiConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 90
    return v2

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    .line 93
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 94
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v3}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->getWifiId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWifi,bssid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ssid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",macId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    .line 103
    invoke-static {v4}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->validSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-direct {p0, v4, v1, v3}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->checkWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWifi,isTrueWifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifi,macId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , just return true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return v2

    .line 117
    :cond_3
    :goto_1
    goto :goto_2

    .line 116
    :catch_0
    move-exception v1

    .line 119
    :goto_2
    return v0
.end method

.method isWifiConnected()Z
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    return v1

    .line 138
    :cond_0
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 140
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method test(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 483
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 485
    const/16 v0, 0xb

    const-string v1, "F8A45F"

    const-string v2, "D4970B"

    const-string v3, "C46AB7"

    const-string v4, "ACF7F3"

    const-string v5, "8CBEBE"

    const-string v6, "68DFDD"

    const-string v7, "64B473"

    const-string v8, "640980"

    const-string v9, "28E31F"

    const-string v10, "14F65A"

    const-string v11, "009EC8"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 488
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 489
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    return p2

    .line 488
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "771A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 496
    return p2

    .line 500
    :cond_2
    if-eqz p3, :cond_4

    .line 501
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 502
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "iphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 503
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 504
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sumsung"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 505
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p3, "coolpad"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 506
    :cond_3
    return p2

    .line 508
    :cond_4
    const/4 p1, 0x1

    return p1
.end method
