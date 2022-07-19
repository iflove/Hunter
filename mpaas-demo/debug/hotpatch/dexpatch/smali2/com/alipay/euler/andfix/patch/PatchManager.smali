.class public Lcom/alipay/euler/andfix/patch/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# static fields
.field public static final SP_MD5:Ljava/lang/String; = "-md5"

.field public static final SP_NAME:Ljava/lang/String; = "_andfix_"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private e:Lcom/alipay/euler/andfix/a;

.field private final f:Ljava/io/File;

.field private final g:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/alipay/euler/andfix/patch/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/a;->a(Lcom/alipay/euler/andfix/log/Logger;)V

    .line 98
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/alipay/euler/andfix/patch/PatchManager;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/lang/String;

    .line 100
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "apatch"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    .line 101
    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    .line 102
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->h:Ljava/util/Map;

    .line 103
    return-void
.end method

.method private a(Lcom/alipay/euler/andfix/patch/a;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/euler/andfix/patch/a;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 553
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchManager"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fix but patch not run on process:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void

    .line 561
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v0, v3, :cond_2

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    const-string p1, "fix but patch not fix above 27, just return."

    invoke-static {v2, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void

    .line 566
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->f()Z

    move-result v0

    .line 567
    if-eqz v0, :cond_3

    .line 568
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->c()V

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/euler/andfix/a;->a(Lcom/alipay/euler/andfix/patch/a;Ljava/lang/ClassLoader;)[Ldalvik/system/DexFile;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_5

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 575
    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 576
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/alipay/euler/andfix/a;->a(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/util/List;)V

    .line 578
    :cond_4
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/alipay/euler/andfix/a;->a(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 579
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/alipay/euler/andfix/a;->b(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 580
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/alipay/euler/andfix/a;->b(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 581
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/alipay/euler/andfix/a;->c(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 583
    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->k(Ljava/lang/String;)Z

    move-result v6

    .line 584
    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/a;->i(Ljava/lang/String;)Z

    move-result v7

    .line 585
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    const/4 p1, 0x1

    aget-object v8, v0, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/alipay/euler/andfix/a;->a(ZZLdalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/util/List;)V

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " done."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void

    .line 573
    :cond_5
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string p2, "PatchManager.fix() got patchDexFile == null!"

    invoke-direct {p1, p2}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/File;)V
    .locals 5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "preDexOptForPatchFile(file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchManager"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->b()V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    invoke-virtual {v0, p1}, Lcom/alipay/euler/andfix/a;->a(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to preDexOptForPatchFile(File="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 161
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_3
    return v1
.end method

.method private b(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;
    .locals 5

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPatch(file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchManager"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    nop

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->b()V

    .line 259
    :try_start_0
    invoke-static {p1}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    new-instance v2, Lcom/alipay/euler/andfix/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to addPath(File="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0
.end method

.method private b()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    if-eqz v0, :cond_1

    .line 175
    monitor-exit p0

    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/alipay/euler/andfix/a;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->a:Z

    invoke-direct {v0, v1, v2}, Lcom/alipay/euler/andfix/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->e:Lcom/alipay/euler/andfix/a;

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 183
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 184
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->b(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 6

    .line 627
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 628
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 629
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 630
    const-string v4, "getProcessName"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 631
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 632
    :catchall_0
    move-exception v1

    .line 633
    const-string v2, "PatchManager"

    const-string v3, "get process failed"

    invoke-static {v2, v3, v1}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 635
    return-object v0
.end method


# virtual methods
.method public addNewPatch(Ljava/lang/String;Z)I
    .locals 9

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addNewPatch(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", immediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchManager"

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 312
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    return v5

    .line 315
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "patch ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is already loaded."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v5

    .line 319
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/euler/andfix/patch/PatchManager;->containAndFixPatch(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 320
    return v5

    .line 322
    :cond_2
    invoke-static {v0, v3}, Lcom/alipay/euler/andfix/d/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 323
    const/4 p1, 0x0

    if-eqz p2, :cond_e

    .line 324
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->b(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object p2

    .line 325
    if-eqz p2, :cond_d

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "loadPatch(patch="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    nop

    .line 329
    nop

    .line 331
    invoke-virtual {p2}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 335
    invoke-virtual {p2, v6}, Lcom/alipay/euler/andfix/patch/a;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 338
    invoke-virtual {p2, v6}, Lcom/alipay/euler/andfix/patch/a;->m(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 339
    const-string v4, "loadPatch immediately but patch not loadOnAdd"

    invoke-static {v2, v4}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    nop

    .line 341
    const/4 v4, 0x1

    goto :goto_0

    .line 343
    :cond_4
    iget-object v7, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadPatch immediately but patch not run on process:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    goto :goto_0

    .line 347
    :cond_5
    iget-object v7, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->h:Ljava/util/Map;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 348
    iget-object v7, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    goto :goto_1

    .line 350
    :cond_6
    iget-object v7, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->h:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ClassLoader;

    .line 352
    :goto_1
    if-eqz v7, :cond_7

    .line 353
    invoke-virtual {p2, v6}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 354
    invoke-direct {p0, p2, v7, v1, v6}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Lcom/alipay/euler/andfix/patch/a;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x1

    .line 358
    :cond_7
    goto :goto_0

    .line 360
    :cond_8
    if-nez v1, :cond_9

    .line 361
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Ljava/io/File;)V

    .line 364
    :cond_9
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 365
    const/4 p1, 0x2

    return p1

    .line 367
    :cond_a
    if-eqz v1, :cond_b

    .line 368
    return v5

    .line 370
    :cond_b
    if-eqz v4, :cond_c

    .line 371
    return p1

    .line 373
    :cond_c
    return p1

    .line 375
    :cond_d
    return p1

    .line 378
    :cond_e
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Ljava/io/File;)V

    .line 379
    return p1
.end method

.method public addPatch(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/lang/String;Z)V

    .line 407
    return-void
.end method

.method public addPatch(Ljava/lang/String;Z)V
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/patch/PatchManager;->addNewPatch(Ljava/lang/String;Z)I

    .line 395
    return-void
.end method

.method public cleanPatches(Z)V
    .locals 9

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanPatches(force="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PatchManager"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->b()V

    .line 417
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    const-string v2, "_andfix_"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 420
    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 422
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 423
    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/alipay/euler/andfix/a;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 424
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 425
    invoke-static {v5}, Lcom/alipay/euler/andfix/d/a;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " delete success."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-md5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_0
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string v0, "File delete failed"

    invoke-direct {p1, v0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_1
    if-eqz p1, :cond_2

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 437
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    return-void
.end method

.method public declared-synchronized containAndFixPatch(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 190
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "containAndFixPatch(path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const-string v1, "PatchManager"

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    const-string p1, "PatchManager"

    const-string v1, "containAndFixPatch: false"

    invoke-static {p1, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return v0

    .line 198
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    const-string p1, "PatchManager"

    const-string v1, "containAndFixPatch: true"

    invoke-static {p1, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 205
    :cond_1
    goto :goto_0

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    :try_start_2
    const-string v1, "PatchManager"

    const-string v2, "containAndFixPatch: failed "

    invoke-static {v1, v2, p1}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :goto_0
    const-string p1, "PatchManager"

    const-string v1, "containAndFixPatch: false"

    invoke-static {p1, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    monitor-exit p0

    return v0

    .line 189
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPatchConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/euler/andfix/patch/a;

    .line 506
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 507
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/patch/a;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 510
    :cond_0
    goto :goto_0

    .line 511
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getPatchFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 212
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchFromFile(path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const-string v1, "PatchManager"

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    const-string p1, "PatchManager"

    const-string v1, "getPatchFromFile: patch file not exists"

    invoke-static {p1, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-object v0

    .line 220
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->h()Ljava/lang/String;

    move-result-object p1

    .line 222
    const-string v1, "PatchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchFromFile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    monitor-exit p0

    return-object p1

    .line 224
    :catchall_0
    move-exception p1

    .line 225
    :try_start_2
    const-string v1, "PatchManager"

    const-string v2, "getPatchFromFile: failed "

    invoke-static {v1, v2, p1}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    monitor-exit p0

    return-object v0

    .line 211
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPatchNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 520
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/euler/andfix/patch/a;

    .line 521
    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {v2}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 523
    if-eqz v2, :cond_0

    .line 524
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 527
    :cond_0
    goto :goto_0

    .line 528
    :cond_1
    return-object v0
.end method

.method public getPreLoadPatchNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 537
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/euler/andfix/patch/a;

    .line 538
    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {v2}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v3

    .line 540
    if-eqz v3, :cond_1

    .line 541
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 542
    invoke-virtual {v2, v4}, Lcom/alipay/euler/andfix/patch/a;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 543
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    goto :goto_1

    .line 548
    :cond_1
    goto :goto_0

    .line 549
    :cond_2
    return-object v0
.end method

.method public hasInstantPatch(Ljava/lang/String;)Z
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasInstantPatch(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PatchManager"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    invoke-virtual {p1, v2}, Lcom/alipay/euler/andfix/patch/a;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {p1, v2}, Lcom/alipay/euler/andfix/patch/a;->m(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 287
    const/4 p1, 0x1

    return p1

    .line 291
    :cond_1
    goto :goto_0

    .line 289
    :catchall_0
    move-exception p1

    .line 290
    invoke-static {v1, p1}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasPatch(Ljava/lang/String;)Z
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/euler/andfix/patch/a;

    .line 490
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 491
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/patch/a;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasPatch(patchName="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", patch="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 495
    const-string v0, "PatchManager"

    invoke-static {v0, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 p1, 0x1

    return p1

    .line 499
    :cond_1
    goto :goto_0

    .line 500
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 7

    .line 112
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Ljava/lang/String;

    .line 113
    iput-boolean p2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->a:Z

    .line 115
    iget-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, "PatchManager"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    const-string/jumbo p1, "patch dir create error."

    invoke-static {v0, p1}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 120
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->a()Z

    move-result p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->b()V

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    const-string v2, "_andfix_"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    const-string/jumbo v4, "version"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PatchManager.init(ver="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 136
    :cond_3
    if-eqz p1, :cond_6

    .line 137
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->c()V

    goto :goto_1

    .line 131
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 132
    invoke-virtual {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 134
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->b:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    .line 142
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    const-string v1, "alipayAndfixPatch.jar"

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 145
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "load test patch: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 147
    :catch_0
    move-exception p1

    .line 148
    const-string p2, "load test patch error"

    invoke-static {v0, p2, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :cond_7
    return-void
.end method

.method public loadPatch()V
    .locals 7

    .line 594
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "*"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/euler/andfix/patch/a;

    .line 598
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 599
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 600
    invoke-virtual {v1, v3}, Lcom/alipay/euler/andfix/patch/a;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    invoke-virtual {v1, v3}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadPatch().fix(patchName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", patch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PatchManager"

    invoke-static {v6, v5}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Lcom/alipay/euler/andfix/patch/a;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    .line 609
    goto :goto_1

    .line 610
    :cond_1
    goto :goto_0

    .line 611
    :cond_2
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/euler/andfix/patch/a;

    .line 466
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->c()Ljava/util/Set;

    move-result-object v2

    .line 467
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/patch/a;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadPatch().fix(patchName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", patch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", classLoader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    const-string v3, "PatchManager"

    invoke-static {v3, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/patch/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 474
    invoke-direct {p0, v1, p2, v2, p1}, Lcom/alipay/euler/andfix/patch/PatchManager;->a(Lcom/alipay/euler/andfix/patch/a;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    .line 476
    :cond_1
    goto :goto_0

    .line 477
    :cond_2
    return-void
.end method

.method public removeAllPatch()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 449
    return-void
.end method

.method public rollback()V
    .locals 3

    .line 614
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->g:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 619
    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v0

    .line 621
    new-instance v1, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo v2, "rollback exception"

    invoke-direct {v1, v2, v0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
