.class public Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;
.super Landroid/webkit/CookieManager;
.source "EmptyAndroidCookieManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/webkit/CookieManager;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Landroid/webkit/CookieManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;->a:Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;

    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 19
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;->a:Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;

    if-eqz v1, :cond_1

    .line 21
    monitor-exit v0

    return-object v1

    .line 23
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;->a:Lcom/alipay/mobile/common/transport/http/EmptyAndroidCookieManager;

    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public acceptThirdPartyCookies(Landroid/webkit/WebView;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public flush()V
    .locals 0

    .line 109
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCookies()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllCookie()V
    .locals 0

    .line 86
    return-void
.end method

.method public removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 91
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 0

    .line 104
    return-void
.end method

.method public removeSessionCookie()V
    .locals 0

    .line 73
    return-void
.end method

.method public removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 78
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 35
    return-void
.end method

.method public setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "b"    # Z

    .line 45
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 60
    return-void
.end method
