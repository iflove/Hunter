.class final Lcom/alipay/mobile/quinox/classloader/a$a;
.super Ljava/lang/Object;
.source "BundleClassLoaderFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/classloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/classloader/a;

.field private final b:Lcom/alipay/mobile/quinox/bundle/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/a;Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 0
    .param p2, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 178
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "bundleName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 186
    .local v1, "notify":Z
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->isDisable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    const/4 v3, 0x0

    move-object v4, v3

    .line 188
    .local v4, "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    if-nez v2, :cond_3

    move-object v2, v3

    .line 192
    .local v2, "_bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    invoke-static {}, Lcom/alipay/mobile/quinox/classloader/a;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/classloader/a;->b(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->c()V

    .line 197
    invoke-static {}, Lcom/alipay/mobile/quinox/classloader/a;->b()Z

    .line 201
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 202
    .local v5, "threadId":Ljava/lang/Long;
    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v6}, Lcom/alipay/mobile/quinox/classloader/a;->c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v7}, Lcom/alipay/mobile/quinox/classloader/a;->c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 204
    .local v3, "cache":Ljava/util/HashSet;
    move-object v3, v7

    if-nez v7, :cond_1

    .line 205
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v3, v7

    .line 206
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v7}, Lcom/alipay/mobile/quinox/classloader/a;->c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 212
    .local v6, "startTime":J
    new-instance v8, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    iget-object v11, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    .line 213
    invoke-static {v11}, Lcom/alipay/mobile/quinox/classloader/a;->b(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v12}, Lcom/alipay/mobile/quinox/classloader/a;->d(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;-><init>(Ljava/lang/ClassLoader;Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V

    move-object v2, v8

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 215
    .local v8, "end":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "new BundleClassloader: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v11}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 216
    invoke-virtual {v11}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v8, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "msg":Ljava/lang/String;
    const-string v11, "mytest"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v11, "BundleClassLoader"

    invoke-static {v11, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v11, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v11}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 222
    if-nez v11, :cond_2

    .line 230
    const/4 v1, 0x0

    .line 231
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v11

    new-instance v12, Lcom/alipay/mobile/quinox/classloader/a$b;

    iget-object v13, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    .line 232
    invoke-static {v13}, Lcom/alipay/mobile/quinox/classloader/a;->b(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v14

    invoke-direct {v12, v13, v14, p0, v2}, Lcom/alipay/mobile/quinox/classloader/a$b;-><init>(Lcom/alipay/mobile/quinox/classloader/a;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/a$a;Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onBundleLoad_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 231
    invoke-virtual {v11, v12, v13}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    const-string v11, "BundleClassLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "The bundle is already exist: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    nop

    .end local v3    # "cache":Ljava/util/HashSet;
    .end local v5    # "threadId":Ljava/lang/Long;
    .end local v6    # "startTime":J
    .end local v8    # "end":J
    .end local v10    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 209
    .restart local v5    # "threadId":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "notify":Z
    .end local v2    # "_bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .end local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    .end local v5    # "threadId":Ljava/lang/Long;
    .restart local v0    # "bundleName":Ljava/lang/String;
    .restart local v1    # "notify":Z
    .restart local v2    # "_bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .restart local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :catchall_1
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/Throwable;
    const-string v5, "BundleClassLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to new BundleClassLoader("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .end local v2    # "_bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :cond_3
    goto :goto_1

    .line 244
    :cond_4
    const-string v2, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The bundle is disable : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->b:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_1
    if-eqz v1, :cond_5

    .line 248
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a$a;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/classloader/a;->e(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-enter p0

    .line 251
    :try_start_5
    const-string v2, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createBundleClassLoaderAsync.notifyAll("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 256
    :cond_5
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 257
    return-void
.end method
