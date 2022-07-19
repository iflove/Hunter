.class final Lcom/alipay/mobile/quinox/classloader/a$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/classloader/a;

.field private final b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private final c:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

.field private final d:Lcom/alipay/mobile/quinox/classloader/a$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/a;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/a$a;Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;)V
    .locals 0
    .param p2, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p3, "createBundleClassLoaderRunnable"    # Lcom/alipay/mobile/quinox/classloader/a$a;
    .param p4, "bundleClassLoader"    # Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 275
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p3, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->d:Lcom/alipay/mobile/quinox/classloader/a$a;

    .line 277
    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 278
    iput-object p4, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->c:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 279
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->c:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a()Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 284
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 288
    .local v3, "threadId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/classloader/a;->c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 289
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/classloader/a;->c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 290
    .local v1, "cache":Ljava/util/HashSet;
    move-object v1, v5

    if-nez v5, :cond_0

    .line 291
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v1, v5

    .line 292
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/classloader/a;->c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 298
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->c:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    goto :goto_0

    .line 299
    :catchall_0
    move-exception v4

    .line 300
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "BundleClassLoader"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->isDisable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 305
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->c:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->a:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/classloader/a;->e(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->d:Lcom/alipay/mobile/quinox/classloader/a$a;

    monitor-enter v5

    .line 310
    :try_start_2
    const-string v4, "BundleClassLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createBundleClassLoaderAsync.notifyAll("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a$b;->d:Lcom/alipay/mobile/quinox/classloader/a$a;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 295
    .end local v1    # "cache":Ljava/util/HashSet;
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
