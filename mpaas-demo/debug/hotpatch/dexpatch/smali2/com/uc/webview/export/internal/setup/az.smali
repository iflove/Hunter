.class public final Lcom/uc/webview/export/internal/setup/az;
.super Lcom/uc/webview/export/internal/setup/av;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/az$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/av;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/bs;
    .locals 1

    .line 45
    new-instance v0, Lcom/uc/webview/export/internal/setup/az$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/uc/webview/export/internal/setup/az$a;-><init>(Lcom/uc/webview/export/internal/setup/az;Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 50
    nop

    .line 1054
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    const/16 v0, 0xfbf

    :try_start_0
    check-cast p2, Lcom/uc/webview/export/extension/UCCore$Callable;

    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/UCCore$Callable;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1064
    return-void

    .line 1060
    :cond_1
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string p2, "inject failed."

    invoke-direct {p1, v0, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :catch_0
    move-exception p1

    .line 1063
    new-instance p2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {p2, v0, p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 1055
    :cond_2
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 2

    .line 26
    const/16 v0, 0x117

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 29
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/az;->getUCM()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/az;->getUCM()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/az;->b(Lcom/uc/webview/export/internal/setup/br;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/az;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 34
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/az;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/az;->a(Ljava/util/List;)V

    .line 40
    :goto_0
    const/16 v0, 0x118

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 41
    return-void
.end method
