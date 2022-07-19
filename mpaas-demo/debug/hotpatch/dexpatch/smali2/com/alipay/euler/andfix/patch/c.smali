.class public Lcom/alipay/euler/andfix/patch/c;
.super Ljava/lang/Object;
.source "PatchFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/euler/andfix/patch/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/euler/andfix/patch/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;
    .locals 6

    const-class v0, Lcom/alipay/euler/andfix/patch/c;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/alipay/euler/andfix/d/a;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 28
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/euler/andfix/patch/c;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/euler/andfix/patch/a;

    .line 29
    if-eqz v2, :cond_1

    .line 30
    const-string v3, "PatchFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createPatch: hit cache, do copy, md5:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/alipay/euler/andfix/patch/a;

    invoke-direct {v1}, Lcom/alipay/euler/andfix/patch/a;-><init>()V

    .line 32
    invoke-virtual {v1, p0}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/io/File;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/alipay/euler/andfix/patch/a;->a(Lcom/alipay/euler/andfix/patch/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    monitor-exit v0

    return-object v1

    .line 36
    :cond_1
    :try_start_2
    invoke-static {p0, v1}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Lcom/alipay/euler/andfix/patch/a;
    .locals 2

    .line 46
    new-instance v0, Lcom/alipay/euler/andfix/patch/a;

    invoke-direct {v0}, Lcom/alipay/euler/andfix/patch/a;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/io/File;)V

    .line 48
    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/a;->a()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p0}, Lcom/alipay/euler/andfix/d/a;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 53
    sget-object p0, Lcom/alipay/euler/andfix/patch/c;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "createPatch: put patch to cache map, md5:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PatchFactory"

    invoke-static {p1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    return-object v0
.end method
