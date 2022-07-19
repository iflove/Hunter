.class final Lcom/uc/webview/export/internal/setup/cg;
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
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;)V
    .locals 1

    .line 271
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const-string v0, "downloadException"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cg;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    .line 271
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1275
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_DOWNLOAD_EXCEPTION"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    monitor-enter v0

    .line 1277
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/bw;->b(Lcom/uc/webview/export/internal/setup/bw;)Z

    .line 1278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1281
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bw;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1282
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1283
    const-string v1, ""

    .line 1284
    const-string v2, ""

    .line 1285
    const-string v3, ""

    .line 1286
    const-string v4, ""

    .line 1288
    instance-of v5, v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v5, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 1290
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1292
    :try_start_2
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1294
    goto :goto_1

    .line 1293
    :catchall_0
    move-exception v5

    .line 1296
    :goto_1
    :try_start_3
    const-string v5, "httpcode:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1298
    goto :goto_2

    .line 1297
    :catchall_1
    move-exception v5

    .line 1300
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1302
    goto :goto_3

    .line 1301
    :catchall_2
    move-exception v0

    .line 1304
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "sdk_upd"

    new-instance v7, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v7}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v8, "cnt"

    const-string v9, "1"

    .line 1307
    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string v8, "code"

    .line 1308
    invoke-virtual {v7, v8, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "err"

    .line 1309
    invoke-virtual {v4, v7, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string v4, "cls"

    .line 1310
    invoke-virtual {v1, v4, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string v2, "msg"

    .line 1311
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1304
    invoke-virtual {v0, v5}, Lcom/uc/webview/export/internal/setup/bw;->callbackStat(Landroid/util/Pair;)V

    .line 1315
    :cond_1
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1316
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/setup/bw;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_4

    .line 1319
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bw;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 1323
    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/cg;->a:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_4

    .line 1324
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1329
    :cond_4
    return-void

    .line 1328
    :catchall_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    return-void

    .line 1278
    :catchall_4
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1
.end method
