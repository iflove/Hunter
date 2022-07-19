.class public Lcom/uc/webview/export/ServiceWorkerController;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/uc/webview/export/ServiceWorkerController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/uc/webview/export/ServiceWorkerController;->b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    .line 32
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/ServiceWorkerController;
    .locals 3

    const-class v0, Lcom/uc/webview/export/ServiceWorkerController;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    .line 68
    :cond_0
    sget-object v1, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/ServiceWorkerController;

    .line 69
    if-nez v1, :cond_1

    .line 70
    new-instance v1, Lcom/uc/webview/export/ServiceWorkerController;

    .line 71
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->c(I)Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uc/webview/export/ServiceWorkerController;-><init>(Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;)V

    .line 72
    sget-object v2, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/uc/webview/export/ServiceWorkerController;
    .locals 1

    .line 47
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/ServiceWorkerController;->a(I)Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/ServiceWorkerController;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result p0

    invoke-static {p0}, Lcom/uc/webview/export/ServiceWorkerController;->a(I)Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceWorkerWebSettings()Lcom/uc/webview/export/ServiceWorkerWebSettings;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/uc/webview/export/ServiceWorkerController;->b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;->getServiceWorkerWebSettings()Lcom/uc/webview/export/ServiceWorkerWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/uc/webview/export/ServiceWorkerController;->b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;->setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V

    .line 83
    return-void
.end method
