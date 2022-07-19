.class public Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;
.super Ljava/lang/Object;
.source "ReadSettingServerUrl.java"


# static fields
.field public static final OFF_SWITCH:Ljava/lang/String; = "0"

.field public static final ON_SWITCH:Ljava/lang/String; = "1"

.field private static a:Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->b:Ljava/lang/String;

    .line 19
    const-string v0, "http://amdc.alipay.com/query"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->c:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->e:Ljava/lang/Boolean;

    .line 173
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->f:Ljava/lang/Boolean;

    .line 198
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->g:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    .line 25
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 110
    const-string v0, "ReadSettingServerUrl"

    const-string v1, "getValue start."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "ret":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getValue.  cursor exist.  uri=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]  ret=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    return-object p2

    .line 121
    :cond_0
    return-object v1

    .line 123
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_2
    return-object p2
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    return v0

    .line 49
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDebug exception.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReadSettingServerUrl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public final getAmnetDnsSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 202
    const-string v0, ""

    const-string v1, "ReadSettingServerUrl"

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    const-string v2, "getAmnetDnsSetting. debug is true"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->g:Ljava/lang/String;

    return-object v0

    .line 209
    :cond_0
    const-string v2, "content://com.alipay.setting/amnet_dns_conf"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "amnetDns":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAmnetDnsSetting.  amnetDns=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " is null "

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    iput-object v2, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->g:Ljava/lang/String;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->g:Ljava/lang/String;

    return-object v0

    .line 216
    .end local v2    # "amnetDns":Ljava/lang/String;
    :cond_3
    const-string v2, "getAmnetDnsSetting.  debug is false"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    return-object v0

    .line 218
    :catchall_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAmnetDnsSetting exception. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public final getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;

    return-object v0

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 70
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "mobilegw.url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v1, "mobilegwUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v1

    .line 77
    .end local v1    # "mobilegwUrl":Ljava/lang/String;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    const-string v0, "getGWFURL"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->b:Ljava/lang/String;

    const-string v1, "content://com.alipay.setting/GWFServerUrl"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 82
    .local v1, "tmpGwf":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;

    return-object v0

    .line 87
    .end local v1    # "tmpGwf":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->d:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public final getHttpdnsServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "content://com.alipay.setting/httpdns_url"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getRpcNameOfRpcNetworkLimit(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 342
    const-string v0, ""

    const-string v1, "ReadSettingServerUrl"

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    const-string v2, "getRpcNameOfRpcNetworkLimit. debug is true"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v2, "content://com.alipay.setting/network_limit_rpc_name"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "rpcName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRpcNameOfRpcNetworkLimit.  rpcName=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " is null "

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-object v2

    .line 348
    .end local v2    # "rpcName":Ljava/lang/String;
    :cond_1
    const-string v2, "getRpcNameOfRpcNetworkLimit.  debug is false"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    return-object v0

    .line 350
    :catchall_0
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRpcNameOfRpcNetworkLimit exception. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ReadSettingServerUrl"

    if-eqz v0, :cond_3

    .line 155
    const-string v0, "isEnableAmnetSetting.  debug is true"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 158
    return-object v0

    .line 161
    :cond_0
    const-string v0, "content://com.alipay.setting/XmppUseMmtp"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "val":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->e:Ljava/lang/Boolean;

    .line 167
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->e:Ljava/lang/Boolean;

    return-object v1

    .line 169
    .end local v0    # "val":Ljava/lang/String;
    :cond_3
    const-string v0, "isEnableAmnetSetting.  debug is false"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v1
.end method

.method public final isEnableGlobalNetworkLimit(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 300
    const-string v0, "ReadSettingServerUrl"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, "isEnableGlobalNetworkLimit. debug is true"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "content://com.alipay.setting/global_network_limit"

    const-string v3, "0"

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "enable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableGlobalNetworkLimit.  enable=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " is null "

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 306
    .end local v2    # "enable":Ljava/lang/String;
    :cond_1
    const-string v2, "isEnableGlobalNetworkLimit.  debug is false, return false."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    return v1

    .line 308
    :catchall_0
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableGlobalNetworkLimit exception. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public final isEnableRpcNetworkLimit(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    const-string v0, "ReadSettingServerUrl"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    const-string v2, "isEnableRpcNetworkLimit. debug is true"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "content://com.alipay.setting/rpc_network_limit"

    const-string v3, "0"

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "enable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableRpcNetworkLimit.  enable=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " is null "

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 327
    .end local v2    # "enable":Ljava/lang/String;
    :cond_1
    const-string v2, "isEnableRpcNetworkLimit.  debug is false, return false."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    return v1

    .line 329
    :catchall_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnableRpcNetworkLimit exception. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public final isEnableSpdySetting(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ReadSettingServerUrl"

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 183
    return-object v0

    .line 185
    :cond_0
    const-string v0, "isEnableSpdySetting.  debug is true"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "content://com.alipay.setting/XmppUseSpdy"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "val":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 189
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->f:Ljava/lang/Boolean;

    .line 192
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->f:Ljava/lang/Boolean;

    return-object v1

    .line 194
    .end local v0    # "val":Ljava/lang/String;
    :cond_3
    const-string v0, "isEnableSpdySetting.  debug is false"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v1
.end method

.method public final isEnabledNbnetDownloadSwitch(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 232
    const-string v0, "ReadSettingServerUrl"

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const-string v1, "isEnabledNbnetDownloadSwitch.  debug is false, return false."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 237
    :cond_0
    const-string v1, "isEnabledNbnetDownloadSwitch. debug is true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "content://com.alipay.setting/nbnet_download_switch"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "enable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledNbnetDownloadSwitch.  enable=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " is null "

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-nez v1, :cond_2

    .line 241
    return-object v2

    .line 243
    :cond_2
    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 244
    .end local v1    # "enable":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isEnabledNbnetDownloadSwitch exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabledNbnetUpSwitch(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    const-string v0, "ReadSettingServerUrl"

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "isEnabledNbnetUpSwitch.  debug is false, return false."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 262
    :cond_0
    const-string v1, "isEnabledNbnetUpSwitch. debug is true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "content://com.alipay.setting/nbnet_up_switch"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "enable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledNbnetUpSwitch.  enable=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " is null "

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-nez v1, :cond_2

    .line 267
    return-object v2

    .line 269
    :cond_2
    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 270
    .end local v1    # "enable":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isEnabledNbnetUpSwitch exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabledShadowSwitch(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 279
    const-string v0, "ReadSettingServerUrl"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    const-string v2, "isEnabledShadowSwitch. debug is true"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "content://com.alipay.setting/shadow"

    const-string v3, "0"

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "enable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledShadowSwitch.  enable=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " is null "

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 285
    .end local v2    # "enable":Ljava/lang/String;
    :cond_1
    const-string v2, "isEnabledShadowSwitch.  debug is false, return false."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    return v1

    .line 287
    :catchall_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEnabledShadowSwitch exception. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public final isOnline(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, ".alipay.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->b:Ljava/lang/String;

    .line 34
    return-void
.end method
