.class public Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;
.super Ljava/lang/Object;
.source "H5WifiDownloadList.java"


# static fields
.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiDownloadMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->map:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->map:Ljava/util/Map;

    .line 20
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->map:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    .line 16
    .end local p0    # "appId":Ljava/lang/String;
    .end local p1    # "version":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/wifidownload/H5WifiDownloadList;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method
