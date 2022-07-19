.class public final Lcom/uc/webview/export/internal/setup/ae$c;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/uc/webview/export/internal/setup/ae$b;

.field public b:I

.field public volatile c:I

.field public volatile d:Ljava/lang/Object;

.field public e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/ae;ILcom/uc/webview/export/internal/setup/ae$b;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->g:Lcom/uc/webview/export/internal/setup/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Lcom/uc/webview/export/internal/setup/ae$c;->b:I

    .line 77
    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/ae$c;->a:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 78
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->e:Ljava/util/concurrent/Future;

    .line 79
    iput-object p4, p0, Lcom/uc/webview/export/internal/setup/ae$c;->f:Landroid/webkit/ValueCallback;

    .line 80
    sget p1, Lcom/uc/webview/export/internal/setup/ae$f;->a:I

    iput p1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->c:I

    .line 81
    sget p1, Lcom/uc/webview/export/internal/setup/ae$e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->d:Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->a:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 87
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/ae$b;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->d:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae$c;->e:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 86
    const-string v1, "Task name: %s, policy: %d, status: %d, result: %s, future: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
