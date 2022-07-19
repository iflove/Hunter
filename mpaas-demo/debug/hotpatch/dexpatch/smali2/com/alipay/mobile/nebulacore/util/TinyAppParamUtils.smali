.class public final Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;
.super Ljava/lang/Object;
.source "TinyAppParamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appIsMiniService(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "startParams"    # Landroid/os/Bundle;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    const-string v0, "tinySource"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "tinySource":Ljava/lang/String;
    const-string v1, "miniservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 1
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->appIsMiniService(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static getAppId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;

    .line 34
    const-string v0, "appId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    .local v1, "appId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_0
    return-object v1
.end method

.method public static getAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 20
    if-nez p0, :cond_0

    .line 21
    const-string v0, ""

    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 1
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, ""

    return-object v0

    .line 30
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 76
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getApplication(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplication(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    .local v1, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    .line 72
    :cond_0
    return-object v1
.end method

.method public static getHostAppId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;

    .line 56
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->appIsMiniService(Landroid/os/Bundle;)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    const-string v0, "parentAppId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    .local v1, "parentAppId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 61
    .end local v1    # "parentAppId":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v0, ""

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 1
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const-string v0, ""

    return-object v0

    .line 52
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
