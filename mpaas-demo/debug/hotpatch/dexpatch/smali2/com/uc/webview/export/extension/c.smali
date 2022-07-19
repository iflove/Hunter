.class final Lcom/uc/webview/export/extension/c;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/concurrent/Callable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1246
    iput-object p1, p0, Lcom/uc/webview/export/extension/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/webview/export/extension/c;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/uc/webview/export/extension/c;->c:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/uc/webview/export/extension/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/uc/webview/export/extension/c;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1249
    const/16 v0, 0xa

    .line 1250
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 1253
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :goto_1
    goto :goto_2

    .line 1255
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1250
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1258
    :cond_1
    if-lez v0, :cond_5

    .line 1263
    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;)V

    .line 1265
    new-instance v1, Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bw;-><init>()V

    .line 1266
    const-string v2, "CONTEXT"

    iget-object v3, p0, Lcom/uc/webview/export/extension/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    .line 1267
    invoke-virtual {v2, v0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "ucmZipDir"

    .line 1268
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "ucmZipFile"

    .line 1269
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "sdk_setup"

    .line 1270
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "chkMultiCore"

    .line 1271
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "downloadException"

    new-instance v4, Lcom/uc/webview/export/extension/e;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/extension/e;-><init>(Lcom/uc/webview/export/extension/c;)V

    .line 1272
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "updateProgress"

    new-instance v4, Lcom/uc/webview/export/extension/d;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/extension/d;-><init>(Lcom/uc/webview/export/extension/c;)V

    .line 1278
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1284
    iget-object v2, p0, Lcom/uc/webview/export/extension/c;->c:Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_2

    .line 1285
    const-string v3, "dlChecker"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1286
    :cond_2
    iget-object v2, p0, Lcom/uc/webview/export/extension/c;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1287
    const-string v2, "ucmUpdUrl"

    iget-object v3, p0, Lcom/uc/webview/export/extension/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1288
    :cond_3
    iget-object v2, p0, Lcom/uc/webview/export/extension/c;->e:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1289
    iget-object v2, p0, Lcom/uc/webview/export/extension/c;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1290
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    goto :goto_3

    .line 1293
    :cond_4
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bw;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 1294
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    return-void

    .line 1296
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1298
    return-void

    .line 1259
    :cond_5
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string v1, "Waiting timeout for UCCore initialization finish!"

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
