.class public Lcom/uc/webview/export/cyclone/UCVmsize;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UCVmsize"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCVmsize;->mCtx:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 20
    const-string v0, "UCVmsize"

    const-class v1, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/uc/webview/export/cyclone/UCVmsize;->mCtx:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/uc/webview/export/cyclone/service/UCVmsize;->saveChromiumReservedSpace(Landroid/content/Context;)J

    move-result-wide v3

    .line 24
    const-string v1, "i"

    invoke-static {v1, v0}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveChromiumReservedSpace ok with bytes:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    return-void

    .line 27
    :catch_0
    move-exception v1

    .line 28
    const-string v3, "w"

    invoke-static {v3, v0}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v1, v3, v2

    const-string v1, "saveChromiumReservedSpace error"

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 33
    :cond_1
    return-void
.end method
