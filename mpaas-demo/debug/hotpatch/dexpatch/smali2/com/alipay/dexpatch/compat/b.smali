.class public final Lcom/alipay/dexpatch/compat/b;
.super Ljava/lang/Object;
.source "DexPatchLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/compat/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/compat/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/reflect/Method;

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/dexpatch/compat/b;->a:Ljava/util/List;

    .line 71
    const-string/jumbo v0, "verbose"

    const-string v1, "debug"

    const-string v2, "info"

    const-string/jumbo v3, "warn"

    const-string v4, "error"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/alipay/dexpatch/compat/b;->b:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/reflect/Method;

    sput-object v0, Lcom/alipay/dexpatch/compat/b;->c:[Ljava/lang/reflect/Method;

    return-void
.end method

.method private static declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/dexpatch/compat/b;

    monitor-enter v0

    .line 92
    const/4 v1, -0x1

    .line 93
    .local v1, "iRet":I
    :try_start_0
    sget-boolean v2, Lcom/alipay/dexpatch/compat/b;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Lcom/alipay/dexpatch/compat/b$a;

    invoke-direct {v2}, Lcom/alipay/dexpatch/compat/b$a;-><init>()V

    .line 95
    .local v3, "logInfo":Lcom/alipay/dexpatch/compat/b$a;
    move-object v3, v2

    iput p0, v2, Lcom/alipay/dexpatch/compat/b$a;->a:I

    .line 96
    iput-object p1, v3, Lcom/alipay/dexpatch/compat/b$a;->b:Ljava/lang/String;

    .line 97
    iput-object p2, v3, Lcom/alipay/dexpatch/compat/b$a;->c:Ljava/lang/String;

    .line 98
    sget-object v2, Lcom/alipay/dexpatch/compat/b;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_0

    .line 100
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :cond_0
    monitor-exit v0

    return v4

    .line 104
    .end local v3    # "logInfo":Lcom/alipay/dexpatch/compat/b$a;
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/alipay/dexpatch/compat/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_3

    .line 106
    :try_start_2
    const-string v2, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v2, v4, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v7, "getTraceLogger"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    sput-object v2, Lcom/alipay/dexpatch/compat/b;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 110
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x4

    if-gt v3, v7, :cond_2

    .line 111
    sget-object v7, Lcom/alipay/dexpatch/compat/b;->c:[Ljava/lang/reflect/Method;

    sget-object v8, Lcom/alipay/dexpatch/compat/b;->b:[Ljava/lang/String;

    aget-object v8, v8, v3

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v7, v3

    .line 112
    aget-object v7, v7, v3

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v2

    .line 118
    :goto_1
    :try_start_3
    sget-object v2, Lcom/alipay/dexpatch/compat/b;->f:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string v3, "com.alipay.mobile.common.logging.api.LoggerFactory$NullTraceLogger"

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    sput-boolean v6, Lcom/alipay/dexpatch/compat/b;->e:Z

    .line 125
    :cond_3
    sget-object v2, Lcom/alipay/dexpatch/compat/b;->f:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_4

    .line 127
    :try_start_4
    sget-object v3, Lcom/alipay/dexpatch/compat/b;->c:[Ljava/lang/reflect/Method;

    aget-object v3, v3, p0

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DexP."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p2, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    const/4 v1, 0x0

    .line 131
    goto :goto_2

    .line 129
    :catchall_1
    move-exception v2

    .line 133
    :cond_4
    :goto_2
    monitor-exit v0

    return v1

    .line 91
    .end local v1    # "iRet":I
    .end local p0    # "level":I
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/dexpatch/compat/b;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 41
    invoke-static {p1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/alipay/dexpatch/compat/b;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 53
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 6

    const-class v0, Lcom/alipay/dexpatch/compat/b;

    monitor-enter v0

    .line 57
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/dexpatch/compat/b;->d:Z

    .line 59
    sget-object v1, Lcom/alipay/dexpatch/compat/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/dexpatch/compat/b$a;

    .line 60
    .local v2, "logInfo":Lcom/alipay/dexpatch/compat/b$a;
    move-object v2, v3

    iget v3, v3, Lcom/alipay/dexpatch/compat/b$a;->a:I

    iget-object v4, v2, Lcom/alipay/dexpatch/compat/b$a;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/alipay/dexpatch/compat/b$a;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alipay/dexpatch/compat/b;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 61
    nop

    .end local v2    # "logInfo":Lcom/alipay/dexpatch/compat/b$a;
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lcom/alipay/dexpatch/compat/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/alipay/dexpatch/compat/b;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 49
    invoke-static {p1}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p0, v0}, Lcom/alipay/dexpatch/compat/b;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
