.class public Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;
.super Ljava/lang/Object;
.source "TinyAppInitService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$a;
    }
.end annotation


# instance fields
.field private volatile a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->a:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;
    .locals 1

    .line 45
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$a;->a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->a:Z

    return v0
.end method

.method static synthetic c()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->d()V

    return-void
.end method

.method private static d()V
    .locals 3

    .line 95
    const/4 v0, 0x0

    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 97
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v2, 0x0

    .line 99
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setUserId(Ljava/lang/String;)V

    .line 107
    .end local v2    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 50
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->get()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->injectRemoteDebugInterceptor(Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init..e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyAppInitService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
