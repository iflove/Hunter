.class public Lcom/alipay/mobile/nebula/util/H5CookieUtil;
.super Ljava/lang/Object;
.source "H5CookieUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "url"    # Ljava/lang/String;

    .line 63
    const-string v0, "isTinyApp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    const/4 v1, 0x0

    .line 65
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    move-object v2, v0

    .local v2, "cookieStr":Ljava/lang/String;
    move-object v3, v0

    .line 24
    .local v3, "cookieManager":Landroid/webkit/CookieManager;
    move-object v3, v1

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 27
    .local v1, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 29
    .local v4, "domain":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 32
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 37
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "domain":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 38
    .end local v2    # "cookieStr":Ljava/lang/String;
    .end local v3    # "cookieManager":Landroid/webkit/CookieManager;
    :catchall_0
    move-exception v1

    .line 39
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5CookieUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookieValue"    # Ljava/lang/String;

    .line 76
    const-string v0, "isTinyApp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    const/4 v1, 0x0

    .line 78
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v1, p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    return-void

    .line 84
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    .local v1, "manager":Landroid/webkit/CookieManager;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 51
    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v1    # "manager":Landroid/webkit/CookieManager;
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5CookieUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
