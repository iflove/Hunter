.class final Lcom/uc/webview/export/internal/setup/by;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/download/UpdateTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;Landroid/content/Context;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/by;->c:Lcom/uc/webview/export/internal/setup/bw;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/by;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/by;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 219
    nop

    .line 1224
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/by;->a:Landroid/content/Context;

    const-string v1, "updates"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1226
    nop

    .line 1227
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v2, :cond_0

    .line 1229
    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    .line 1230
    if-eqz v1, :cond_0

    .line 1231
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1233
    if-nez v1, :cond_1

    .line 1234
    move-object v2, p1

    goto :goto_0

    .line 1238
    :cond_0
    move-object v2, p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/by;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/bw;->c(Lcom/uc/webview/export/internal/setup/bw;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateDir()Ljava/io/File;

    move-result-object v2

    :cond_2
    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    goto :goto_1

    .line 1240
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1245
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/by;->b:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1246
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Update should be in wifi network."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1248
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/by;->c:Lcom/uc/webview/export/internal/setup/bw;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "sdk_ucm_wifi"

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bw;->callbackStat(Landroid/util/Pair;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1251
    return-void

    .line 1249
    :catch_0
    move-exception p1

    .line 1250
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
