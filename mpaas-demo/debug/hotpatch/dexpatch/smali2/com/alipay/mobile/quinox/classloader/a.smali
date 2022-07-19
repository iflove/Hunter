.class final Lcom/alipay/mobile/quinox/classloader/a;
.super Ljava/lang/Object;
.source "BundleClassLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/classloader/a$b;,
        Lcom/alipay/mobile/quinox/classloader/a$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private final b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private final c:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/classloader/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/classloader/a;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V
    .locals 1
    .param p1, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p2, "hostClassLoader"    # Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 56
    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 57
    iget-object v0, p2, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 5
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "justWait"    # Z

    .line 135
    const-string v0, "BundleClassLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doCreateBundleClassLoader("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") start : justWait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/classloader/a$a;

    .line 138
    .local v1, "runnable":Lcom/alipay/mobile/quinox/classloader/a$a;
    if-eqz p3, :cond_0

    if-nez v1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 142
    :cond_0
    if-nez v0, :cond_3

    .line 143
    if-nez v1, :cond_1

    .line 144
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/a$a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/quinox/classloader/a$a;-><init>(Lcom/alipay/mobile/quinox/classloader/a;Lcom/alipay/mobile/quinox/bundle/Bundle;)V

    move-object v1, v2

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v2

    const-string v3, "Cls_Ldr_Fty"

    invoke-virtual {v2, v3, v1, p2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->executeSerially(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 148
    :cond_1
    const-string v2, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BundleClassLoader("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is already in the creating queue, just wait."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 151
    .end local v1    # "runnable":Lcom/alipay/mobile/quinox/classloader/a$a;
    .local v2, "runnable":Lcom/alipay/mobile/quinox/classloader/a$a;
    :goto_0
    monitor-enter v2

    .line 152
    :try_start_0
    const-string v1, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCreateBundleClassLoader.synchronized("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 155
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 156
    const-string v1, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCreateBundleClassLoader.wait("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") finish."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "BundleClassLoader"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_2

    .line 162
    :cond_2
    const-string v1, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BundleClassLoader("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") isn\'t in the creating queue any more. so fast ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-object v1, v2

    goto :goto_3

    .line 164
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 168
    .end local v2    # "runnable":Lcom/alipay/mobile/quinox/classloader/a$a;
    .local v1, "runnable":Lcom/alipay/mobile/quinox/classloader/a$a;
    :cond_3
    :goto_3
    const-string v2, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCreateBundleClassLoader("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") end : bundleClassLoader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/a;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/util/HashSet;)V
    .locals 4
    .param p1, "allCache"    # Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 114
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 117
    .local v2, "threadId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 118
    .local v1, "_cache":Ljava/util/HashSet;
    move-object v1, v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 126
    nop

    .end local v1    # "_cache":Ljava/util/HashSet;
    .end local v2    # "threadId":Ljava/lang/Long;
    goto :goto_0

    .line 119
    .restart local v1    # "_cache":Ljava/util/HashSet;
    .restart local v2    # "threadId":Ljava/lang/Long;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    .end local v1    # "_cache":Ljava/util/HashSet;
    .end local v2    # "threadId":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "BundleClassLoader"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/alipay/mobile/quinox/classloader/a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/a;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/classloader/a;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/a;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/a;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/quinox/classloader/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/a;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 8
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "bundleName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 73
    move-object v0, v2

    if-nez v2, :cond_3

    .line 74
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v2, "allCache":Ljava/util/HashSet;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 77
    .local v3, "currentThreadId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    monitor-enter v4

    .line 78
    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/classloader/a;->a(Ljava/util/HashSet;)V

    .line 80
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    const/4 v6, 0x0

    .line 81
    .local v6, "cache":Ljava/util/HashSet;
    move-object v6, v5

    if-nez v5, :cond_0

    .line 82
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v6, v5

    .line 83
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const-string v4, "BundleClassLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "BundleClassLoader("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is loading in current thread, avoid recursion: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    .line 88
    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v4}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v4, 0x0

    invoke-direct {p0, p1, v1, v4}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    .line 98
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "allCache":Ljava/util/HashSet;
    .end local v3    # "currentThreadId":Ljava/lang/Long;
    .end local v6    # "cache":Ljava/util/HashSet;
    goto :goto_0

    .line 85
    .restart local v2    # "allCache":Ljava/util/HashSet;
    .restart local v3    # "currentThreadId":Ljava/lang/Long;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 102
    .end local v2    # "allCache":Ljava/util/HashSet;
    .end local v3    # "currentThreadId":Ljava/lang/Long;
    :cond_3
    const-string v2, "BundleClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BundleClassLoader("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is already exist, no need to create again."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v1    # "bundleName":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0
.end method
