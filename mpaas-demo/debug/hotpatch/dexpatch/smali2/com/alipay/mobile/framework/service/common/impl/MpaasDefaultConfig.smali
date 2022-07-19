.class public Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;
.super Lcom/alipay/mobile/common/rpc/RpcDefaultConfig;
.source "MpaasDefaultConfig.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/RpcDefaultConfig;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;->context:Landroid/content/Context;

    .line 29
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context parameter can\'t be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 5

    const-string v0, "DefaultConfig"

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 45
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "appkey"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v2, "appkey":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Get appkey=["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] from metaData."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v2

    .line 50
    :cond_0
    const-string v1, "Not exist appkey in metaData."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "header"    # Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    .line 60
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcDefaultConfig;->giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V

    .line 61
    return-void
.end method
