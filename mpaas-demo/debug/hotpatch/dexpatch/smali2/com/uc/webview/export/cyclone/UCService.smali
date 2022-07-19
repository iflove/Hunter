.class public Lcom/uc/webview/export/cyclone/UCService;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final DEBUG_TOKEN:I

.field private static final LOG_TAG:Ljava/lang/String; = "UCService"

.field private static final MAX_CONFIG_CONTENT_LENGTH:I = 0x1000

.field private static final VERBOSE_TOKEN:I

.field private static final WARNN_TOKEN:I

.field private static s_ctx:Landroid/content/Context;

.field private static final s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/cyclone/UCSingleton<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static final s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/cyclone/UCSingleton<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final s_services:Lcom/uc/webview/export/cyclone/UCSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/cyclone/UCSingleton<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    const-string v0, "v"

    const-string v1, "UCService"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/UCService;->VERBOSE_TOKEN:I

    .line 31
    const-string v0, "d"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    .line 32
    const-string v0, "w"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/uc/webview/export/cyclone/UCSingleton;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCSingleton;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 44
    new-instance v0, Lcom/uc/webview/export/cyclone/UCSingleton;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCSingleton;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 50
    new-instance v0, Lcom/uc/webview/export/cyclone/UCSingleton;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 55
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCDex;

    const-string v1, "com.uc.webview.export.cyclone.service.UCDexImpl"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;

    const-string v1, "com.uc.webview.export.cyclone.service.UCUnSevenZipMultiThreadImpl"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    const-string v1, "com.uc.webview.export.cyclone.service.UCVmsizeImpl"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAsciiContents(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 322
    nop

    .line 324
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    const/16 p0, 0x1000

    :try_start_1
    new-array p0, p0, [B

    .line 326
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 327
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 327
    return-object v0

    .line 329
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;)",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    .line 155
    return-object p0
.end method

.method private static getImplQueue(Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 161
    return-object p0
.end method

.method private static getService(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v0

    .line 173
    if-nez v0, :cond_4

    .line 174
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImplQueue(Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_4

    .line 177
    monitor-enter p0

    .line 178
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    const/4 v2, 0x0

    .line 182
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    .line 184
    :cond_0
    sget-object v5, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 185
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 186
    const-class v2, Lcom/uc/webview/export/cyclone/service/UCDex;

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/uc/webview/export/cyclone/service/UCDex;

    .line 187
    if-nez v6, :cond_1

    .line 188
    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v5, v11, v11, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 191
    :cond_1
    sget-object v7, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 191
    move-object v10, v11

    invoke-interface/range {v6 .. v12}, Lcom/uc/webview/export/cyclone/service/UCDex;->createDexClassLoader(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;

    move-result-object v2

    .line 197
    :cond_2
    :goto_1
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 198
    sget v5, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initImpl "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-static {v5, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    goto/16 :goto_0

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    :try_start_2
    sget v2, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string v5, "initImpl exception"

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v3

    invoke-static {v2, v5, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_3
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v0

    .line 206
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 210
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 309
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->VERBOSE_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerDefaultImpl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 312
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uc/webview/export/cyclone/UCService;->registerService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    return-void

    .line 314
    :catchall_0
    move-exception p0

    .line 315
    const-string p1, "w"

    const-string v0, "UCService"

    invoke-static {p1, v0}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object p1

    .line 316
    if-eqz p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerDefaultImpl register exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Throwable;

    invoke-virtual {p1, p0, v0}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 319
    :cond_0
    return-void
.end method

.method public static registerImpl(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerImpl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 88
    const/16 v0, 0x7e0

    if-eqz p0, :cond_4

    .line 91
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 92
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 93
    if-nez v1, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 97
    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 104
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object p0

    if-nez p0, :cond_2

    .line 108
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 109
    return-void

    .line 105
    :cond_2
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p1, 0x7e2

    const-string p2, "registerImpl: the service has instanced. Please registers service impl before use it"

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 110
    :cond_3
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const-string p1, "registerImpl param null."

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 89
    :cond_4
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const-string p1, "registerImpl param null."

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static registerImpl(Ljava/lang/Class;Lcom/uc/webview/export/cyclone/service/UCServiceInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ")Z"
        }
    .end annotation

    .line 124
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerImpl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 126
    if-eqz p0, :cond_4

    .line 129
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 130
    sget-object p1, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return v0

    .line 133
    :cond_0
    sget-object v1, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    .line 134
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;->getServiceVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;->getServiceVersion()I

    move-result v4

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    return v2

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return v0

    .line 138
    :cond_3
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7de

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerImpl: impl"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not compatible with interface "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 127
    :cond_4
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p1, 0x7dd

    const-string v0, "registerImpl: serviceInterface is null."

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerService "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 65
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 66
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v2, 0x7e1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerService service name \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is registered by \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' but now \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' requested."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static search(Landroid/content/Context;Ljava/io/File;)I
    .locals 14

    .line 222
    const-string v0, "search exception"

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    .line 228
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 231
    :cond_1
    sget v2, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 234
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 235
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    invoke-virtual {p0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    goto/16 :goto_4

    .line 243
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 246
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cyclone.UCService."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    cmp-long v10, v6, v8

    if-gez v10, :cond_9

    .line 251
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 252
    array-length v7, v6

    if-lt v7, v8, :cond_9

    .line 255
    const/4 v7, 0x2

    aget-object v7, v6, v7

    .line 256
    const/4 v8, 0x3

    aget-object v6, v6, v8

    .line 257
    sget v8, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "search config file:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Throwable;

    invoke-static {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 259
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 265
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCService;->getService(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 266
    if-nez v10, :cond_3

    .line 267
    sget v5, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "search service:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not registered."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 268
    goto/16 :goto_4

    .line 271
    :cond_3
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCService;->getAsciiContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 272
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 277
    :cond_4
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 278
    array-length v11, v7

    if-nez v11, :cond_5

    .line 279
    sget v5, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string v7, "search no impl class defined in config."

    new-array v8, v1, [Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 280
    goto :goto_4

    .line 283
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "search config contents:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v11, v1, [Ljava/lang/Throwable;

    invoke-static {v8, v5, v11}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 285
    array-length v5, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_7

    aget-object v11, v7, v8

    .line 286
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 287
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_6

    .line 292
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    goto :goto_2

    .line 293
    :catch_0
    move-exception v11

    .line 294
    :try_start_2
    sget v12, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    new-array v13, v6, [Ljava/lang/Throwable;

    aput-object v11, v13, v1

    invoke-static {v12, v0, v13}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 285
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 299
    :cond_7
    goto :goto_4

    .line 273
    :cond_8
    :goto_3
    sget v5, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string v7, "search config contents is null."

    new-array v8, v1, [Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 274
    goto :goto_4

    .line 297
    :catch_1
    move-exception v5

    .line 298
    sget v7, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v5, v6, v1

    invoke-static {v7, v0, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 234
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 302
    :cond_a
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 303
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    return v1

    .line 223
    :cond_b
    :goto_5
    return v1
.end method
