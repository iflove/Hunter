.class public abstract Lcom/uc/webview/export/internal/setup/a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/Throwable;

.field private e:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/webview/export/internal/setup/a;->c:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->d:Ljava/lang/Throwable;

    .line 26
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->e:Landroid/webkit/ValueCallback;

    .line 28
    const-class v1, Lcom/uc/webview/export/internal/setup/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->b:Landroid/util/Pair;

    .line 32
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->e:Landroid/webkit/ValueCallback;

    .line 33
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyStatusChange status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput p1, p0, Lcom/uc/webview/export/internal/setup/a;->c:I

    .line 84
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/a;->e:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .locals 6

    .line 56
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 57
    nop

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".run"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/uc/webview/export/internal/setup/a;->a(I)V

    .line 1069
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/a;->b:Landroid/util/Pair;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/a;->a()V

    .line 61
    nop

    .line 1073
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/uc/webview/export/internal/setup/a;->a(I)V

    .line 1075
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/a;->b:Landroid/util/Pair;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1077
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "execute cost:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
