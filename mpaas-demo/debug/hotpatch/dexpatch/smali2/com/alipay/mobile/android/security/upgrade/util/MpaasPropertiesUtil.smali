.class public Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;
.super Ljava/lang/Object;
.source "MpaasPropertiesUtil.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "ALIPUSH_APPID"

.field private static final APPKEY:Ljava/lang/String; = "appkey"

.field private static final MPAASAPI:Ljava/lang/String; = "mpaasapi"

.field private static final TAG:Ljava/lang/String; = "MpaasPropertiesUtil"

.field private static final WORKSPACEID:Ljava/lang/String; = "WorkspaceId"

.field private static sMap:Ljava/util/Map;
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

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetMpaasProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/mpaas/mpaasadapter/api/MpaasPropertiesUtil;->doGetMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getAppID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "ALIPUSH_APPID"

    invoke-static {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getKeyFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "appkey"

    invoke-static {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getKeyFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKeyFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 54
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object p0, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 58
    :cond_0
    nop

    .line 60
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    move-object p0, v0

    .line 64
    :goto_0
    if-eqz p0, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 65
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    return-object p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MpaasPropertiesUtil"

    invoke-static {p1, p0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_1
    nop

    .line 72
    :goto_1
    return-object v0
.end method

.method private static getKeyFromMpaasProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 86
    const-string v0, "MpaasPropertiesUtil"

    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object p0, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 92
    if-eqz p0, :cond_1

    .line 93
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 95
    :cond_1
    if-nez v1, :cond_2

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "== null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    sget-object p0, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mpaas properties load fail. "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_1
    return-object v1
.end method

.method private static getMpaasProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    const-class v0, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->doGetMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 35
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->sMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    monitor-exit v0

    .line 37
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getMpaasapi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 80
    const-string/jumbo v0, "mpaasapi"

    invoke-static {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getKeyFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProductId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getWorkSpaceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkSpaceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "WorkspaceId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/util/MpaasPropertiesUtil;->getKeyFromMpaasProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
