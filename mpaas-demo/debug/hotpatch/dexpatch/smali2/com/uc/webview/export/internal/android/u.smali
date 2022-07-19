.class public final Lcom/uc/webview/export/internal/android/u;
.super Lcom/uc/webview/export/internal/a;
.source "U4Source"


# instance fields
.field f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/uc/webview/export/internal/a;-><init>()V

    .line 22
    new-instance v0, Lcom/uc/webview/export/internal/android/v;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/android/v;-><init>(Lcom/uc/webview/export/internal/android/u;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/u;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Ljava/util/LinkedHashSet;
    .locals 1

    .line 20
    sget-object v0, Lcom/uc/webview/export/internal/android/u;->a:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .line 20
    sget v0, Lcom/uc/webview/export/internal/android/u;->d:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/android/u;->d:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V
    .locals 0

    .line 49
    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 50
    sget p2, Lcom/uc/webview/export/internal/android/u;->d:I

    if-eq p2, p1, :cond_1

    .line 52
    sput p1, Lcom/uc/webview/export/internal/android/u;->d:I

    return-void

    .line 56
    :cond_0
    sget p2, Lcom/uc/webview/export/internal/android/u;->d:I

    if-ne p2, p1, :cond_1

    .line 57
    sget-object p1, Lcom/uc/webview/export/internal/android/u;->e:Landroid/os/Handler;

    iget-object p2, p0, Lcom/uc/webview/export/internal/android/u;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    sget-object p1, Lcom/uc/webview/export/internal/android/u;->e:Landroid/os/Handler;

    iget-object p2, p0, Lcom/uc/webview/export/internal/android/u;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_1
    return-void
.end method

.method public final b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/uc/webview/export/internal/android/u;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 68
    sget-object p1, Lcom/uc/webview/export/internal/android/u;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->getPrintLogEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    const-string p1, "SDKWaStat"

    const-string v0, "WebViewDetector:destroy"

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData(Z)V

    .line 75
    :cond_1
    return-void
.end method
