.class public Lcom/alipay/dexpatch/compat/LoggerImpl;
.super Ljava/lang/Object;
.source "LoggerImpl.java"

# interfaces
.implements Lcom/alipay/dexpatch/util/DPLogger$DPLoggerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;
    }
.end annotation


# static fields
.field public static final TRACE_LEVEL_DEBUG_INT:I = 0x1

.field public static final TRACE_LEVEL_ERROR_INT:I = 0x4

.field public static final TRACE_LEVEL_INFO_INT:I = 0x2

.field public static final TRACE_LEVEL_VERBOSE_INT:I = 0x0

.field public static final TRACE_LEVEL_WARN_INT:I = 0x3

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;",
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

    sput-object v0, Lcom/alipay/dexpatch/compat/LoggerImpl;->a:Ljava/util/List;

    .line 73
    const-string/jumbo v0, "verbose"

    const-string v1, "debug"

    const-string v2, "info"

    const-string/jumbo v3, "warn"

    const-string v4, "error"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 81
    sput-object v0, Lcom/alipay/dexpatch/compat/LoggerImpl;->b:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/reflect/Method;

    sput-object v0, Lcom/alipay/dexpatch/compat/LoggerImpl;->c:[Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized noteLoggerInited()V
    .locals 6

    const-class v0, Lcom/alipay/dexpatch/compat/LoggerImpl;

    monitor-enter v0

    .line 59
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/dexpatch/compat/LoggerImpl;->d:Z

    .line 61
    sget-object v1, Lcom/alipay/dexpatch/compat/LoggerImpl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;

    .line 62
    .local v2, "logInfo":Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;
    move-object v2, v3

    iget v3, v3, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;->level:I

    iget-object v4, v2, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;->tag:Ljava/lang/String;

    iget-object v5, v2, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;->msg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    .end local v2    # "logInfo":Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;
    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Lcom/alipay/dexpatch/compat/LoggerImpl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized trace(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/dexpatch/compat/LoggerImpl;

    monitor-enter v0

    .line 94
    const/4 v1, -0x1

    .line 95
    .local v1, "iRet":I
    :try_start_0
    sget-boolean v2, Lcom/alipay/dexpatch/compat/LoggerImpl;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;

    invoke-direct {v2}, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;-><init>()V

    .line 97
    .local v3, "logInfo":Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;
    move-object v3, v2

    iput p0, v2, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;->level:I

    .line 98
    iput-object p1, v3, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;->tag:Ljava/lang/String;

    .line 99
    iput-object p2, v3, Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;->msg:Ljava/lang/String;

    .line 100
    sget-object v2, Lcom/alipay/dexpatch/compat/LoggerImpl;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_0

    .line 102
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 104
    :cond_0
    monitor-exit v0

    return v4

    .line 106
    .end local v3    # "logInfo":Lcom/alipay/dexpatch/compat/LoggerImpl$LogInfo;
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/alipay/dexpatch/compat/LoggerImpl;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_3

    .line 108
    :try_start_2
    const-string v2, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

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

    .line 110
    sput-object v2, Lcom/alipay/dexpatch/compat/LoggerImpl;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 112
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x4

    if-gt v3, v7, :cond_2

    .line 113
    sget-object v7, Lcom/alipay/dexpatch/compat/LoggerImpl;->c:[Ljava/lang/reflect/Method;

    sget-object v8, Lcom/alipay/dexpatch/compat/LoggerImpl;->b:[Ljava/lang/String;

    aget-object v8, v8, v3

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v7, v3

    .line 114
    aget-object v7, v7, v3

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v2

    .line 120
    :goto_1
    :try_start_3
    sget-object v2, Lcom/alipay/dexpatch/compat/LoggerImpl;->f:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string v3, "com.alipay.mobile.common.logging.api.LoggerFactory$NullTraceLogger"

    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    sput-boolean v6, Lcom/alipay/dexpatch/compat/LoggerImpl;->e:Z

    .line 127
    :cond_3
    sget-object v2, Lcom/alipay/dexpatch/compat/LoggerImpl;->f:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_4

    .line 129
    :try_start_4
    sget-object v3, Lcom/alipay/dexpatch/compat/LoggerImpl;->c:[Ljava/lang/reflect/Method;

    aget-object v3, v3, p0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    const/4 v1, 0x0

    .line 133
    goto :goto_2

    .line 131
    :catchall_1
    move-exception v2

    .line 135
    :cond_4
    :goto_2
    monitor-exit v0

    return v1

    .line 93
    .end local v1    # "iRet":I
    .end local p0    # "level":I
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "log"    # Ljava/lang/String;

    .line 51
    if-nez p3, :cond_0

    .line 52
    const-string p3, ""

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 55
    const/4 v0, 0x4

    invoke-static {v0, p1, p3}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
