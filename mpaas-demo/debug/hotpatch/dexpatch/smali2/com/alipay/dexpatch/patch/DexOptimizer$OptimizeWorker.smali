.class Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;
.super Ljava/lang/Object;
.source "DexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/dexpatch/patch/DexOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptimizeWorker"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Lcom/alipay/dexpatch/patch/DexOptimizeParam;

.field private final i:Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;ZZZZLjava/lang/String;Lcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c:Ljava/io/File;

    .line 4
    iput-boolean p3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->d:Z

    .line 5
    iput-boolean p4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->e:Z

    .line 6
    iput-boolean p5, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->f:Z

    .line 7
    iput-boolean p6, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->g:Z

    .line 8
    iput-object p9, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->i:Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;

    .line 9
    iput-object p8, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->h:Lcom/alipay/dexpatch/patch/DexOptimizeParam;

    .line 10
    sput-object p7, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "--runtime-arg"

    const-string v1, "interpretDex2Oat: release interpret Lock error"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->h:Lcom/alipay/dexpatch/patch/DexOptimizeParam;

    iget-boolean v4, v2, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->forceEnableQSecondDex:Z

    if-nez v4, :cond_1

    iget-boolean v2, v2, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->enableQImage:Z

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isDex2Oat10Exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_2

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "interpretDex2Oat for: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DexP.DexOptimizer"

    invoke-static {v4, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 14
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v6, "interpret.lock"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 17
    :try_start_0
    invoke-static {v5}, Lcom/alipay/dexpatch/util/DPFileLock;->getFileLock(Ljava/io/File;)Lcom/alipay/dexpatch/util/DPFileLock;

    move-result-object v2

    .line 19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v6, Ljava/lang/ProcessBuilder;

    invoke-direct {v6, v5}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_5

    iget-object v7, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->h:Lcom/alipay/dexpatch/patch/DexOptimizeParam;

    iget-boolean v7, v7, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->forceEnableQDex2Oat:Z

    if-nez v7, :cond_4

    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v7, v3, :cond_5

    .line 24
    :cond_4
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v3

    const-string v7, "LD_LIBRARY_PATH"

    const-string v8, "/apex/com.android.runtime/lib"

    .line 25
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v7, Ljava/io/File;

    const-string v8, "libdex2oat10.so"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "interpretDex2Oat with libdex2oat10.so"

    .line 29
    invoke-static {v4, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "dex2oat"

    .line 31
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "interpretDex2Oat with dex2oat"

    .line 32
    invoke-static {v4, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v3, v7, :cond_6

    .line 37
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "-classpath"

    .line 38
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "&"

    .line 40
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--dex-file="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--oat-file="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--instruction-set="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-le p1, p2, :cond_7

    const-string p1, "--compiler-filter=quicken"

    .line 46
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string p1, "--compiler-filter=interpret-only"

    .line 48
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 55
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8

    const-string p1, "--debuggable"

    .line 56
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    .line 61
    :try_start_2
    invoke-virtual {v6, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 62
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;->printInputStream(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;->printInputStream(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_a

    if-eqz v2, :cond_9

    .line 76
    :try_start_4
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    invoke-static {v4, p1, v1}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 80
    :cond_a
    :try_start_5
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "dex2oat works unsuccessfully, exit code: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p1

    .line 83
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "dex2oat is interrupted, msg: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_b

    .line 88
    :try_start_7
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 91
    invoke-static {v4, p2, v1}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    :cond_b
    :goto_3
    throw p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "secondaryDex: release interpret Lock error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "secondaryDex for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexP.DexOptimizer"

    invoke-static {v2, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v3, "interpret.lock"

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileLock;->getFileLock(Ljava/io/File;)Lcom/alipay/dexpatch/util/DPFileLock;

    move-result-object v1

    .line 15
    new-instance p1, Ldalvik/system/PathClassLoader;

    const-class v3, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance p1, Ljava/lang/ProcessBuilder;

    invoke-direct {p1, p0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const-string v3, "cmd"

    .line 21
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "package"

    .line 22
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "compile"

    .line 23
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "-r"

    .line 24
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "bg-dexopt"

    .line 25
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "--secondary-dex"

    .line 26
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;->printInputStream(Ljava/io/InputStream;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;->printInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    if-eqz v1, :cond_1

    .line 44
    :try_start_2
    invoke-virtual {v1}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 48
    invoke-static {v2, p0, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 49
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "secondaryDex works unsuccessfully, exit code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception p0

    .line 52
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "secondaryDex is interrupted, msg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 57
    :try_start_5
    invoke-virtual {v1}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 61
    invoke-static {v2, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 62
    :cond_3
    :goto_0
    throw p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "--runtime-arg"

    const-string/jumbo v1, "speedCompile: release speed Lock error"

    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isAfterAndroidO()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    return-void

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "speedCompile for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexP.DexOptimizer"

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v5, "speed.lock"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 16
    :try_start_0
    invoke-static {v4}, Lcom/alipay/dexpatch/util/DPFileLock;->getFileLock(Ljava/io/File;)Lcom/alipay/dexpatch/util/DPFileLock;

    move-result-object v2

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "dex2oat"

    .line 19
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "-classpath"

    .line 21
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "&"

    .line 23
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "--dex-file="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "--oat-file="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "--instruction-set="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "--compiler-filter=speed"

    .line 27
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance p0, Ljava/lang/ProcessBuilder;

    invoke-direct {p0, v4}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;->consumeInputStream(Ljava/io/InputStream;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/dexpatch/patch/DexOptimizer$StreamConsumer;->consumeInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_3

    if-eqz v2, :cond_2

    .line 45
    :try_start_2
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 48
    invoke-static {v3, p0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 49
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "dex2oat works unsuccessfully, exit code: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception p0

    .line 52
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "dex2oat is interrupted, msg: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_4

    .line 57
    :try_start_5
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 60
    invoke-static {v3, p1, v1}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 61
    :cond_4
    :goto_0
    throw p0
.end method


# virtual methods
.method public run()Z
    .locals 10

    .line 1
    const-string v0, "DexP.DexOptimizer"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->i:Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;

    if-eqz v2, :cond_0

    .line 3
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c:Ljava/io/File;

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dex file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    .line 4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not exist!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;->onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V

    :cond_0
    return v1

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->i:Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;

    if-eqz v2, :cond_2

    .line 11
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;->onStart(Ljava/io/File;Ljava/io/File;)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/util/DPFileUtil;->getOptimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-boolean v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->d:Z

    if-eqz v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :cond_3
    iget-boolean v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->e:Z

    if-eqz v3, :cond_4

    .line 17
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_4
    iget-boolean v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "new PathClassLoader for: "

    const-string v5, "DexFile.loadDex for: "

    const/16 v6, 0x1a

    if-eqz v3, :cond_7

    .line 20
    :try_start_1
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/dexpatch/DexPatchManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "dalvik.system.PathClassLoader"

    :try_start_2
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/dexpatch/DexPatchContext;->classesLoadByOriginClassLoader()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v7, v8, v9}, Lcom/alipay/dexpatch/util/DPDexImage;->registerDexImageForDexPatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v3, v7, :cond_5

    .line 22
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_6

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto/16 :goto_0

    :cond_6
    nop

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    goto :goto_0

    .line 30
    :cond_7
    iget-boolean v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->f:Z

    if-nez v3, :cond_9

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_9

    .line 31
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isAfterAndroidQ()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 32
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    nop

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 38
    :cond_9
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isAfterAndroidQ()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 39
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    nop

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->i:Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;

    if-eqz v3, :cond_b

    .line 46
    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;->onSuccess(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to optimize dex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->i:Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;

    if-eqz v0, :cond_c

    .line 51
    iget-object v3, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->b:Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/dexpatch/patch/DexOptimizer$OptimizeWorker;->c:Ljava/io/File;

    invoke-interface {v0, v3, v4, v2}, Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;->onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V

    :cond_c
    return v1
.end method
