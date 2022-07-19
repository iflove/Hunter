.class public final Lcom/uc/webview/export/internal/setup/ae$a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Landroid/webkit/ValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ae$a;->c:Lcom/uc/webview/export/internal/setup/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/ae$a;->a:Landroid/webkit/ValueCallback;

    .line 280
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ae$a;->b:Ljava/util/concurrent/Callable;

    .line 281
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 284
    nop

    .line 285
    nop

    .line 287
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae$a;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    .line 291
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbbb

    invoke-direct {v2, v3, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 292
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 293
    :goto_0
    if-eqz v0, :cond_1

    .line 295
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ae$a;->a:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 296
    :cond_0
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 298
    :cond_1
    return-object v1
.end method
