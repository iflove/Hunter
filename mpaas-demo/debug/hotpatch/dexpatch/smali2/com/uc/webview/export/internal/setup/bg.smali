.class final Lcom/uc/webview/export/internal/setup/bg;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bf$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bf$a;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bg;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "task observer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThinSetupTask"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bf$a;->d()I

    move-result v0

    sget v1, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    if-eq v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bg;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    return-void

    .line 66
    :cond_0
    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    throw p1

    .line 70
    :cond_1
    instance-of v0, p1, Lcom/uc/webview/export/internal/setup/ae$c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/uc/webview/export/internal/setup/ae$c;

    iget v0, p1, Lcom/uc/webview/export/internal/setup/ae$c;->c:I

    sget v1, Lcom/uc/webview/export/internal/setup/ae$f;->c:I

    if-ne v0, v1, :cond_3

    .line 72
    sget-object v0, Lcom/uc/webview/export/internal/setup/ae$b;->e:Lcom/uc/webview/export/internal/setup/ae$b;

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/ae$c;->a:Lcom/uc/webview/export/internal/setup/ae$b;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ae$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bg;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/bf$a;->a(Lcom/uc/webview/export/internal/setup/bf$a;)V

    .line 74
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bg;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/bf$a;->b(Lcom/uc/webview/export/internal/setup/bf$a;)V

    .line 75
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bg;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/bf$a;->c(Lcom/uc/webview/export/internal/setup/bf$a;)V

    return-void

    .line 76
    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/setup/ae$b;->d:Lcom/uc/webview/export/internal/setup/ae$b;

    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/ae$c;->a:Lcom/uc/webview/export/internal/setup/ae$b;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/ae$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bg;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/bf$a;->b()V

    .line 80
    :cond_3
    return-void
.end method
