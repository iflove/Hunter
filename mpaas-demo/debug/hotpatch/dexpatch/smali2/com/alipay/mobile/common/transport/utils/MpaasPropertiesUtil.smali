.class public Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;
.super Ljava/lang/Object;
.source "MpaasPropertiesUtil.java"


# static fields
.field public static final APP_KEY_DEBUG:Ljava/lang/String; = "rpc-sdk"

.field public static final APP_KEY_ONLINE:Ljava/lang/String; = "rpc-sdk-online"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->a:Ljava/util/Map;

    .line 28
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->b:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->c:Z

    .line 151
    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->d:Z

    .line 172
    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->e:Z

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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

    .line 147
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/MpaasPropertiesUtil;->doGetMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppKeyFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppIdFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    .local v1, "appIdFromMetaData":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-object v1

    .line 62
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    return-object p1

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getProductId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getAppIdFromMetaData(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "]"

    const-string v1, "MpaasPropertiesUtil"

    .line 70
    const-string v2, ""

    if-nez p0, :cond_0

    .line 71
    return-object v2

    .line 73
    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 74
    return-object v3

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 78
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "mobilegw.appid"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v4

    .line 79
    .local v6, "appidObj":Ljava/lang/Object;
    move-object v6, v3

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 81
    .local v4, "mobilegwAppId":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const-string v0, "getAppIdFromMetaData. mobilegw.appid is empty."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sput-object v2, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->b:Ljava/lang/String;

    .line 84
    return-object v2

    .line 86
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "getAppIdFromMetaData. config appId=["

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "[product_id]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getProductId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "getAppIdFromMetaData. getAppIdFromProductID appId=["

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_4
    sput-object v4, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    return-object v4

    .line 96
    .end local v4    # "mobilegwAppId":Ljava/lang/String;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "appidObj":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "getAppIdFromMetaData get mobilegw.appid fail"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v2
.end method

.method public static getAppKeyFromMetaData(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "pContext"    # Landroid/content/Context;

    const-string v0, "MpaasPropertiesUtil"

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 124
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "appkey"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    .line 125
    .local v4, "appkeyObj":Ljava/lang/Object;
    move-object v4, v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 126
    .local v2, "appkey":Ljava/lang/String;
    :goto_0
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getAppKeyFromMetaData. appkey=["

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    return-object v2

    .line 132
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appkeyObj":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "getAppKeyFromMetaData get appkey fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static final getAppkey(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "externalAppKey"    # Ljava/lang/String;
    .param p1, "isReq2Online"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 103
    const-string v0, "[getAppkey] appKey:"

    const-string v1, "MpaasPropertiesUtil"

    const-string v2, ""

    .line 105
    .local v2, "appKey":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 106
    move-object v2, p0

    .line 114
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-object p0

    .line 108
    :cond_1
    if-eqz p1, :cond_3

    .line 109
    const-string/jumbo v3, "rpc-sdk-online"

    move-object v2, v3

    .line 114
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    return-object v3

    .line 111
    :cond_3
    const-string/jumbo v3, "rpc-sdk"

    move-object v2, v3

    .line 114
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_4
    return-object v3

    .line 114
    :catchall_0
    move-exception v3

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v3
.end method

.method public static final getMpaasProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
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

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 32
    return-object v0

    .line 34
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->a:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 36
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->a:Ljava/util/Map;

    .line 38
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->a:Ljava/util/Map;

    return-object v0

    .line 38
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getProductId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    .local v1, "httpContextExtend":Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getWorkspaceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, ""

    .line 44
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "WorkspaceId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 45
    .local v2, "wsid":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    return-object v0

    .line 46
    .end local v2    # "wsid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWorkspaceId. error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MpaasPropertiesUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static isCloseLbsDbInsert(Landroid/content/Context;)Z
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;

    const-string v0, "MpaasPropertiesUtil"

    .line 154
    sget-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->c:Z

    if-eqz v1, :cond_0

    .line 155
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->d:Z

    return v0

    .line 158
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 159
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "close_lbs_db_insert"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v3

    .line 160
    .local v5, "isCloseLbsDbInsertObj":Ljava/lang/Object;
    move-object v5, v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v2, v3

    .line 161
    .local v2, "isCloseLbsDbInsertString":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->d:Z

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "isCloseLbsDbInsert done: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v2    # "isCloseLbsDbInsertString":Ljava/lang/String;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "isCloseLbsDbInsertObj":Ljava/lang/Object;
    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->c:Z

    .line 168
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->d:Z

    return v0

    .line 163
    :catchall_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "isCloseLbsDbInsert error"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    .end local v2    # "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->c:Z

    .line 168
    return v0

    .line 167
    :catchall_1
    move-exception v0

    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->c:Z

    .line 168
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->d:Z

    return v0
.end method

.method public static isUseSelfEncryptWhenDataIsNull(Landroid/content/Context;)Z
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;

    const-string v0, "MpaasPropertiesUtil"

    .line 176
    sget-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->e:Z

    if-eqz v1, :cond_0

    .line 177
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->f:Z

    return v0

    .line 180
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 181
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "is_use_self_encrypt_when_data_is_null"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v3

    .line 182
    .local v5, "isUseSelfEncryptWhenDataIsNullObj":Ljava/lang/Object;
    move-object v5, v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v2, v3

    .line 183
    .local v2, "isUseSelfEncryptWhenDataIsNullString":Ljava/lang/String;
    const-string v3, "NO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->f:Z

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "isUseSelfEncryptWhenDataIsNull done: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v2    # "isUseSelfEncryptWhenDataIsNullString":Ljava/lang/String;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "isUseSelfEncryptWhenDataIsNullObj":Ljava/lang/Object;
    :goto_1
    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->e:Z

    .line 190
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->f:Z

    return v0

    .line 185
    :catchall_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "isUseSelfEncryptWhenDataIsNull error"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    .end local v2    # "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->e:Z

    .line 190
    return v1

    .line 189
    :catchall_1
    move-exception v0

    goto :goto_1
.end method
