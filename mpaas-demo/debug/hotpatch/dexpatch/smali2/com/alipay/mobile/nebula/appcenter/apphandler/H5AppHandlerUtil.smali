.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil;
.super Ljava/lang/Object;
.source "H5AppHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppHandlerUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canFallback(Ljava/lang/String;)Z
    .locals 1
    .param p0, "errorReason"    # Ljava/lang/String;

    .line 47
    const-string v0, "10009"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string v0, "10003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "10008"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "10007"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    return v0

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static httpExceptionToError(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .line 29
    packed-switch p0, :pswitch_data_0

    .line 40
    const-string v0, "10009"

    .local v0, "reason":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string v0, "10008"

    .line 38
    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 32
    .end local v0    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v0, "10007"

    .line 33
    .restart local v0    # "reason":Ljava/lang/String;
    nop

    .line 43
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static tryFallback(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;)V
    .locals 11
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p1, "fallbackResult"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;

    .line 55
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 57
    .local v2, "h5FallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 58
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 60
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v7, v0

    .end local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v7, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 61
    const-string v0, "h5_tiny_app_fallback"

    invoke-interface {v7, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "configIsClose"

    invoke-interface {p1, v3, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;->onResult(ZLjava/lang/String;)V

    .line 64
    return-void

    .line 69
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 70
    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;->onResult(ZLjava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api_permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "api_permission":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "appConfig.json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "appConfigUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "api_permission "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " appConfigUrl:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "H5AppHandlerUtil"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const-string v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v9

    new-instance v10, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;

    move-object v1, v10

    move-object v3, v0

    move-object v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$1;-><init>(Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void

    .line 114
    .end local v0    # "api_permission":Ljava/lang/String;
    .end local v7    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v8    # "appConfigUrl":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 115
    const-string v0, "fallbackAppInfoIsEmpty"

    invoke-interface {p1, v3, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;->onResult(ZLjava/lang/String;)V

    .line 117
    :cond_3
    return-void
.end method
