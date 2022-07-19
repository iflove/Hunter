.class public Lcom/alipay/dexpatch/compat/MonitorImpl;
.super Ljava/lang/Object;
.source "MonitorImpl.java"

# interfaces
.implements Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/dexpatch/compat/MonitorImpl;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "param3"    # Ljava/lang/String;
    .param p5, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/dexpatch/compat/MonitorImpl;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-boolean v1, Lcom/alipay/dexpatch/compat/MonitorImpl;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;-><init>(Lcom/alipay/dexpatch/compat/MonitorImpl$1;)V

    .line 91
    .local v3, "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    move-object v3, v1

    iput v2, v1, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->type:I

    .line 92
    iput-object p0, v3, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p0:Ljava/lang/String;

    .line 93
    iput-object p1, v3, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p1:Ljava/lang/String;

    .line 94
    iput-object p2, v3, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p2:Ljava/lang/String;

    .line 95
    iput-object p3, v3, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p3:Ljava/lang/String;

    .line 96
    iput-object p4, v3, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p4:Ljava/lang/String;

    .line 97
    iput-object p5, v3, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->m1:Ljava/util/Map;

    .line 98
    sget-object v1, Lcom/alipay/dexpatch/compat/MonitorImpl;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_0

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    .end local v3    # "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    :cond_0
    monitor-exit v0

    return-void

    .line 104
    :cond_1
    const/4 v1, 0x4

    :try_start_1
    sget-object v3, Lcom/alipay/dexpatch/compat/MonitorImpl;->c:Ljava/lang/Object;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/alipay/dexpatch/compat/MonitorImpl;->b:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 105
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    aput-object p2, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    const/4 v2, 0x5

    aput-object p5, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_2
    monitor-exit v0

    return-void

    .line 107
    :catchall_0
    move-exception v2

    .line 108
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "DexP.MonitorImpl"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    nop

    .end local v2    # "tr":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 88
    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "param1":Ljava/lang/String;
    .end local p3    # "param2":Ljava/lang/String;
    .end local p4    # "param3":Ljava/lang/String;
    .end local p5    # "extParams":Ljava/util/Map;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "subName"    # Ljava/lang/String;
    .param p2, "failCode"    # Ljava/lang/String;
    .param p3, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/dexpatch/compat/MonitorImpl;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-boolean v1, Lcom/alipay/dexpatch/compat/MonitorImpl;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;-><init>(Lcom/alipay/dexpatch/compat/MonitorImpl$1;)V

    .line 116
    .local v4, "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    move-object v4, v1

    iput v3, v1, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->type:I

    .line 117
    iput-object p0, v4, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p0:Ljava/lang/String;

    .line 118
    iput-object p1, v4, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p1:Ljava/lang/String;

    .line 119
    iput-object p2, v4, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p2:Ljava/lang/String;

    .line 120
    iput-object p3, v4, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->m1:Ljava/util/Map;

    .line 121
    sget-object v1, Lcom/alipay/dexpatch/compat/MonitorImpl;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x3e8

    if-le v3, v5, :cond_0

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    .end local v4    # "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    :cond_0
    monitor-exit v0

    return-void

    .line 127
    :cond_1
    const/4 v1, 0x4

    :try_start_1
    sget-object v4, Lcom/alipay/dexpatch/compat/MonitorImpl;->c:Ljava/lang/Object;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/alipay/dexpatch/compat/MonitorImpl;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    .line 128
    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v2

    aput-object p1, v6, v3

    const/4 v2, 0x2

    aput-object p2, v6, v2

    const/4 v2, 0x3

    aput-object p3, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_2
    monitor-exit v0

    return-void

    .line 130
    :catchall_0
    move-exception v2

    .line 131
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "DexP.MonitorImpl"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    nop

    .end local v2    # "tr":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 113
    .end local p0    # "bizName":Ljava/lang/String;
    .end local p1    # "subName":Ljava/lang/String;
    .end local p2    # "failCode":Ljava/lang/String;
    .end local p3    # "extParams":Ljava/util/Map;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized noteLoggerInited()V
    .locals 14

    const-class v0, Lcom/alipay/dexpatch/compat/MonitorImpl;

    monitor-enter v0

    .line 45
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v2

    .line 48
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v6, "com.alipay.mobile.common.logging.api.LoggerFactory"

    .line 49
    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v2

    .line 51
    .local v6, "clazz":Ljava/lang/Class;
    move-object v6, v4

    :try_start_1
    const-string v7, "getMonitorLogger"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 52
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    sput-object v4, Lcom/alipay/dexpatch/compat/MonitorImpl;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 58
    move-object v6, v4

    const-string v7, "footprint"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v8

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v10, v9, v12

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v1

    const/4 v10, 0x5

    const-class v13, Ljava/util/Map;

    aput-object v13, v9, v10

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 59
    sput-object v4, Lcom/alipay/dexpatch/compat/MonitorImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    const-string/jumbo v4, "mtBizReport"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v11

    const-class v8, Ljava/util/Map;

    aput-object v8, v7, v12

    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 62
    sput-object v4, Lcom/alipay/dexpatch/compat/MonitorImpl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v6, v2

    move-object v2, v4

    .line 64
    .local v2, "tr":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    const-string v4, "DexP.MonitorImpl"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alipay/dexpatch/compat/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_1
    sput-boolean v3, Lcom/alipay/dexpatch/compat/MonitorImpl;->d:Z

    .line 68
    sget-object v1, Lcom/alipay/dexpatch/compat/MonitorImpl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;

    move-object v4, v6

    .line 69
    .local v4, "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    move-object v6, v2

    .end local v4    # "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    .local v6, "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    iget v2, v2, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->type:I

    if-nez v2, :cond_0

    .line 70
    iget-object v7, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p0:Ljava/lang/String;

    iget-object v8, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p1:Ljava/lang/String;

    iget-object v9, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p2:Ljava/lang/String;

    iget-object v10, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p3:Ljava/lang/String;

    iget-object v11, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p4:Ljava/lang/String;

    iget-object v12, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->m1:Ljava/util/Map;

    invoke-static/range {v7 .. v12}, Lcom/alipay/dexpatch/compat/MonitorImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 71
    :cond_0
    iget v2, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->type:I

    if-ne v2, v3, :cond_1

    .line 72
    iget-object v2, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p0:Ljava/lang/String;

    iget-object v4, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p1:Ljava/lang/String;

    iget-object v5, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->p2:Ljava/lang/String;

    iget-object v7, v6, Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;->m1:Ljava/util/Map;

    invoke-static {v2, v4, v5, v7}, Lcom/alipay/dexpatch/compat/MonitorImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    .end local v6    # "monitorInfo":Lcom/alipay/dexpatch/compat/MonitorImpl$MonitorInfo;
    :cond_1
    goto :goto_2

    .line 75
    :cond_2
    sget-object v1, Lcom/alipay/dexpatch/compat/MonitorImpl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 76
    monitor-exit v0

    return-void

    .line 44
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-static/range {p1 .. p6}, Lcom/alipay/dexpatch/compat/MonitorImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failCode"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/dexpatch/compat/MonitorImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void
.end method
