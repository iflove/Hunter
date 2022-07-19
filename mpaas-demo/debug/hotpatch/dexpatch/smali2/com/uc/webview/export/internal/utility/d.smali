.class public final Lcom/uc/webview/export/internal/utility/d;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static c:Lcom/uc/webview/export/internal/utility/d;


# instance fields
.field private final a:I

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/utility/d;->c:Lcom/uc/webview/export/internal/utility/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x80

    iput v0, p0, Lcom/uc/webview/export/internal/utility/d;->a:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/d;->b:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/d;->b:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public static a()Lcom/uc/webview/export/internal/utility/d;
    .locals 2

    .line 33
    sget-object v0, Lcom/uc/webview/export/internal/utility/d;->c:Lcom/uc/webview/export/internal/utility/d;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/uc/webview/export/internal/utility/d;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/d;->c:Lcom/uc/webview/export/internal/utility/d;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/uc/webview/export/internal/utility/d;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/utility/d;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/utility/d;->c:Lcom/uc/webview/export/internal/utility/d;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/d;->c:Lcom/uc/webview/export/internal/utility/d;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 p1, 0x1

    return p1

    .line 57
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    const/4 p1, 0x1

    return p1

    .line 72
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
