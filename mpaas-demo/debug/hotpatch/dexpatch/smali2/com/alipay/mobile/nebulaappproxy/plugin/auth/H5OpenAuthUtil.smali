.class public Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;
.super Ljava/lang/Object;
.source "H5OpenAuthUtil.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOpenAuthHelper(Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "h5OpenAuthHelper"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    .line 20
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static startOpenAuthApp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "startParam"    # Landroid/os/Bundle;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public static triggerOpenAuthCallback(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    const/4 v1, 0x0

    .line 28
    .local v1, "h5OpenAuthHelper":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->setOpenAuthGrantFlag()V

    .line 30
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->sendResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 32
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
