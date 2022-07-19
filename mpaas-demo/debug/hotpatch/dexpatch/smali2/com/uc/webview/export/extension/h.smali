.class final Lcom/uc/webview/export/extension/h;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/Callable;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Lcom/uc/webview/export/extension/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/webview/export/extension/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/webview/export/extension/h;->c:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/uc/webview/export/extension/h;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1367
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_1
    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1374
    :cond_0
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ucmedia.UCCore"

    if-eqz v0, :cond_1

    .line 1375
    const-string v0, "force system webview, don\'t download uc player"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    return-void

    .line 1378
    :cond_1
    const-wide/32 v2, 0x80000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1379
    const-string v0, "use ucmobile apollo, don\'t download uc player"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    return-void

    .line 1382
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v2, "ucPlayer"

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1383
    const-string v0, "sUseUCPlayer is false, don\'t download uc player"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    return-void

    .line 1387
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/extension/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/extension/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/extension/h;->c:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lcom/uc/webview/export/extension/h;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/extension/UCCore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1391
    return-void
.end method
