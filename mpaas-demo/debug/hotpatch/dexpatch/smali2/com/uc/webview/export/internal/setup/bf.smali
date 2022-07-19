.class public Lcom/uc/webview/export/internal/setup/bf;
.super Lcom/uc/webview/export/internal/setup/av;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/bf$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/av;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/bs;
    .locals 1

    .line 43
    new-instance v0, Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/uc/webview/export/internal/setup/bf$a;-><init>(Lcom/uc/webview/export/internal/setup/bf;Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 29
    const/16 v0, 0x119

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 31
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bf;->getUCM()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bf;->getUCM()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bf;->b(Lcom/uc/webview/export/internal/setup/br;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bf;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 35
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bf;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/k;->b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bf;->a(Ljava/util/List;)V

    .line 38
    :goto_0
    const/16 v0, 0x11a

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 39
    return-void
.end method
