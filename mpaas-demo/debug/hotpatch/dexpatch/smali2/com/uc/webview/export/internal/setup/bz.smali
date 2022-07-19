.class final Lcom/uc/webview/export/internal/setup/bz;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bo;

.field final synthetic b:Landroid/webkit/ValueCallback;

.field final synthetic c:Landroid/util/Pair;

.field final synthetic d:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;Landroid/webkit/ValueCallback;Landroid/util/Pair;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Landroid/webkit/ValueCallback;

    iput-object p4, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 409
    const-string v0, " isWaitting:"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/bw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".shareCoreWaitTimeout localDir:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v5}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/bw;->b(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Landroid/webkit/ValueCallback;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    .line 416
    return-void

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/bw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".shareCoreWaitTimeout decFile:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/bw;->c(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Landroid/webkit/ValueCallback;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->d:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    .line 426
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 430
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_2
    return-void

    .line 433
    :catchall_0
    move-exception v0

    .line 434
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".shareCoreWaitTimeout Thread "

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 436
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Lcom/uc/webview/export/internal/setup/bo;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    .line 439
    :cond_3
    return-void
.end method
