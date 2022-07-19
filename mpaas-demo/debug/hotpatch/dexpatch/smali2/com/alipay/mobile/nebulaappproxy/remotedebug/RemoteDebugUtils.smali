.class public Lcom/alipay/mobile/nebulaappproxy/remotedebug/RemoteDebugUtils;
.super Ljava/lang/Object;
.source "RemoteDebugUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/RemoteDebugUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/RemoteDebugUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 20
    .local v3, "connMgr":Landroid/net/ConnectivityManager;
    move-object v3, v1

    if-nez v1, :cond_0

    return v0

    .line 22
    :cond_0
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object v4, v2

    .line 24
    .local v4, "info":Landroid/net/NetworkInfo;
    move-object v4, v1

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    return v5

    .line 29
    :cond_1
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 30
    .local v1, "mobNetInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 32
    .local v2, "wifiNetInfo":Landroid/net/NetworkInfo;
    move-object v2, v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 33
    return v5

    .line 36
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    .line 37
    return v5

    .line 41
    .end local v1    # "mobNetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "wifiNetInfo":Landroid/net/NetworkInfo;
    .end local v3    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_3
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/remotedebug/RemoteDebugUtils;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNetAvailable: [ Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
