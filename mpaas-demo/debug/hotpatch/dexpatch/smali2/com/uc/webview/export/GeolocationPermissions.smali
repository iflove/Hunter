.class public Lcom/uc/webview/export/GeolocationPermissions;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/GeolocationPermissions$Callback;
    }
.end annotation


# static fields
.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/uc/webview/export/GeolocationPermissions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    .line 64
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/GeolocationPermissions;
    .locals 3

    const-class v0, Lcom/uc/webview/export/GeolocationPermissions;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/GeolocationPermissions;->b:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uc/webview/export/GeolocationPermissions;->b:Ljava/util/HashMap;

    .line 93
    :cond_0
    sget-object v1, Lcom/uc/webview/export/GeolocationPermissions;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/GeolocationPermissions;

    .line 94
    if-nez v1, :cond_1

    .line 95
    new-instance v1, Lcom/uc/webview/export/GeolocationPermissions;

    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->d(I)Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uc/webview/export/GeolocationPermissions;-><init>(Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;)V

    .line 96
    sget-object v2, Lcom/uc/webview/export/GeolocationPermissions;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/uc/webview/export/GeolocationPermissions;
    .locals 1

    .line 74
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/GeolocationPermissions;->a(I)Lcom/uc/webview/export/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/GeolocationPermissions;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result p0

    invoke-static {p0}, Lcom/uc/webview/export/GeolocationPermissions;->a(I)Lcom/uc/webview/export/GeolocationPermissions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;->allow(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;->clearAll()V

    .line 165
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 135
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeolocationPermissions@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/webview/export/GeolocationPermissions;->a:Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
