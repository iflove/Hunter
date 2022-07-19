.class public Lcom/alipay/dexpatch/patch/DexOptimizer;
.super Ljava/lang/Object;
.source "DexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;,
        Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;,
        Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/io/File;ZZZLjava/lang/String;Lcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lcom/alipay/dexpatch/patch/DexOptimizeParam;",
            "Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v1, Lcom/alipay/dexpatch/patch/DexOptimizer$1;

    invoke-direct {v1}, Lcom/alipay/dexpatch/patch/DexOptimizer$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/io/File;

    .line 18
    new-instance v1, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v4, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;-><init>(Ljava/io/File;Ljava/io/File;ZZZZLjava/lang/String;Lcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)V

    .line 19
    invoke-virtual {v1}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->run()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static optimizeAll(Ljava/util/Collection;Ljava/io/File;ZZZLcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "ZZZ",
            "Lcom/alipay/dexpatch/patch/DexOptimizeParam;",
            "Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    const-string v1, "DexP.DexOptimizer"

    const-string v2, "Failed to get instruction set"

    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v6, v0

    .line 5
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/alipay/dexpatch/patch/DexOptimizer;->a(Ljava/util/Collection;Ljava/io/File;ZZZLjava/lang/String;Lcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)Z

    move-result p0

    return p0
.end method
