.class public Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;
.super Ljava/lang/Object;
.source "InsideAppAuthBridge.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge$TinyAppAuthBridgeInner;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->b:Ljava/util/Map;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;-><init>()V

    return-void
.end method

.method public static get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;
    .locals 1

    .line 25
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge$TinyAppAuthBridgeInner;->a()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public executeSkipIdentifyAuth(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "requestParams"    # Landroid/os/Bundle;

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-void
.end method

.method public getMCAuthLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;)V
    .locals 6
    .param p1, "needRefreshToken"    # Ljava/lang/String;
    .param p2, "needAuth"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "iAccountOAuthCallback"    # Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;

    .line 64
    const-string v1, "NO"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->getMCAuthLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;)V

    .line 65
    return-void
.end method

.method public getMCAuthLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;)V
    .locals 6
    .param p1, "needReAuth"    # Ljava/lang/String;
    .param p2, "needRefreshToken"    # Ljava/lang/String;
    .param p3, "needOpenAuth"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "iAccountOAuthCallback"    # Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;

    const-string/jumbo v0, "yes"

    .line 42
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthManager;->getAuthCallback()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 43
    .local v3, "callback":Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    const-string/jumbo v1, "third party don\'t inject auth callback"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 47
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needReAuth "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needRefreshToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needOpenAuth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 51
    .local v0, "requireAuth":Z
    :goto_1
    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->b:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 52
    .local v2, "params":Landroid/os/Bundle;
    :goto_2
    move-object v2, v1

    const-string v4, "YES"

    const-string v5, "NO"

    if-eqz v1, :cond_5

    .line 53
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v5

    :goto_3
    :try_start_1
    invoke-interface {v3, v4, v2, p5}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;->getMCAuthLoginInfo(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;)V

    return-void

    .line 55
    :cond_5
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v5

    :goto_4
    invoke-interface {v3, v4, p5}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;->getMCAuthLoginInfo(Ljava/lang/String;Lcom/alipay/android/phone/inside/api/accountopenauth/IAccountOAuthCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v0    # "requireAuth":Z
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "callback":Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthCallback;
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    const-string v2, "auth callback has some problems"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public openH5Page(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 70
    if-nez p1, :cond_0

    .line 71
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    const-string/jumbo v1, "openH5Page bundle is null ..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 75
    .local v0, "ref":Ljava/lang/ref/WeakReference;
    const/4 v1, 0x0

    .line 76
    .local v1, "topActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v1, v2

    .line 79
    :cond_1
    if-eqz v1, :cond_3

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 81
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    const/4 v4, 0x0

    .line 82
    .local v4, "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    move-object v4, v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 83
    if-eqz v2, :cond_2

    .line 84
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "openH5Page..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v1, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->startPageFromActivity(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 87
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v4    # "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    :cond_2
    return-void

    .line 88
    :cond_3
    const-string v2, "START_APP_IN_CURRENT_PROCESS"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-string v3, ""

    const-string v4, "20000067"

    invoke-interface {v2, v3, v4, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;
    .end local v1    # "topActivity":Landroid/app/Activity;
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->a:Ljava/lang/String;

    const-string/jumbo v2, "open auth h5 web failed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
