.class public Lcom/uc/webview/export/business/setup/a;
.super Lcom/uc/webview/export/utility/SetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/business/setup/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/uc/webview/export/business/a;

.field private c:Lcom/uc/webview/export/business/a;

.field private d:Lcom/uc/webview/export/business/a;

.field private e:Lcom/uc/webview/export/business/a;

.field private f:Lcom/uc/webview/export/business/a;

.field private g:Lcom/uc/webview/export/business/setup/a$a;

.field private h:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/uc/webview/export/business/setup/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    .line 38
    new-instance v0, Lcom/uc/webview/export/business/a;

    invoke-direct {v0}, Lcom/uc/webview/export/business/a;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 39
    new-instance v0, Lcom/uc/webview/export/business/a;

    invoke-direct {v0}, Lcom/uc/webview/export/business/a;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->c:Lcom/uc/webview/export/business/a;

    .line 40
    new-instance v0, Lcom/uc/webview/export/business/a;

    invoke-direct {v0}, Lcom/uc/webview/export/business/a;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    .line 41
    new-instance v0, Lcom/uc/webview/export/business/a;

    invoke-direct {v0}, Lcom/uc/webview/export/business/a;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->e:Lcom/uc/webview/export/business/a;

    .line 42
    new-instance v0, Lcom/uc/webview/export/business/a;

    invoke-direct {v0}, Lcom/uc/webview/export/business/a;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->f:Lcom/uc/webview/export/business/a;

    .line 79
    new-instance v0, Lcom/uc/webview/export/business/setup/h;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/h;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->h:Landroid/webkit/ValueCallback;

    .line 102
    new-instance v0, Lcom/uc/webview/export/business/setup/i;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/i;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->i:Landroid/webkit/ValueCallback;

    .line 115
    new-instance v0, Lcom/uc/webview/export/business/setup/j;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/j;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->j:Landroid/webkit/ValueCallback;

    .line 131
    new-instance v0, Lcom/uc/webview/export/business/setup/k;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/k;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->k:Landroid/webkit/ValueCallback;

    .line 144
    new-instance v0, Lcom/uc/webview/export/business/setup/l;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/l;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->l:Ljava/util/Map;

    .line 169
    new-instance v0, Lcom/uc/webview/export/business/setup/m;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/m;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/a;->m:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/io/File;Ldalvik/system/DexClassLoader;)J
    .locals 0

    .line 494
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/ClassLoader;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/io/File;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Ljava/io/File;[Ljava/lang/String;)J
    .locals 9

    .line 421
    const-string v0, ".checkFilesExistsAndPermissions failure, because "

    .line 424
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 425
    const-string v1, "so file array is empty."

    .line 426
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    return-wide p0

    .line 428
    :cond_1
    :try_start_1
    invoke-static {p0, p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    const-string v1, "root dir modifyFilePermissionsDirFromTo failure."

    .line 430
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_2
    return-wide p0

    .line 432
    :cond_3
    nop

    .line 433
    :try_start_2
    const-string v2, "core.jar"

    const-string v3, "sdk_shell.jar"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const-string v6, " not exists or setReadable failure."

    if-ge v4, v5, :cond_7

    :try_start_3
    aget-object v5, v2, v4

    .line 435
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 434
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->m:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_6
    return-wide p0

    .line 442
    :cond_7
    :try_start_4
    new-instance v2, Ljava/io/File;

    const-string v4, "assets"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 443
    invoke-static {v2, p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 444
    const-string v1, "resource dir modifyFilePermissionsDirFromTo failure."

    .line 445
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->n:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_8
    return-wide p0

    .line 447
    :cond_9
    :try_start_5
    const-string v4, "paks"

    invoke-static {v2, v4}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 449
    array-length v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_d

    aget-object v7, v2, v5

    .line 450
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_3

    .line 449
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 451
    :cond_b
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->o:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_c
    return-wide p0

    .line 456
    :cond_d
    :try_start_6
    new-instance v2, Ljava/io/File;

    aget-object v4, p1, v3

    invoke-static {p0, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 458
    invoke-static {v2, p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 459
    const-string v1, "so dir modifyFilePermissionsDirFromTo failure."

    .line 460
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->p:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_e
    return-wide p0

    .line 462
    :cond_f
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_5

    .line 466
    :cond_10
    array-length p0, p1

    :goto_4
    if-ge v3, p0, :cond_17

    aget-object v4, p1, v3

    .line 467
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exists."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->r:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_11
    return-wide p0

    .line 472
    :cond_12
    :try_start_8
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " setExecutable failure."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->s:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_13
    return-wide p0

    .line 476
    :cond_14
    :try_start_9
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 477
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " setReadable failure."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->t:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_15
    return-wide p0

    .line 466
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 487
    :cond_17
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 488
    sget-object p0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_18
    const-wide/16 p0, 0x0

    return-wide p0

    .line 463
    :cond_19
    :goto_5
    :try_start_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->q:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1a
    return-wide p0

    .line 483
    :catchall_0
    move-exception p0

    .line 484
    :try_start_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "exception "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    sget-wide p0, Lcom/uc/webview/export/business/a$a;->u:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 487
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 488
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_1b
    return-wide p0

    .line 487
    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 488
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    throw p0
.end method

.method static synthetic a(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    return-object p0
.end method

.method static synthetic a(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;Lcom/uc/webview/export/internal/setup/BaseSetupTask;)V
    .locals 5

    .line 35
    nop

    .line 11189
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/ValueCallback;

    .line 11192
    if-eqz v1, :cond_1

    .line 11194
    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_1

    :cond_0
    move-object v2, p0

    :goto_1
    :try_start_0
    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11197
    goto :goto_0

    .line 11195
    :catchall_0
    move-exception v1

    .line 11196
    sget-object v2, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11200
    :cond_1
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method private a(Lcom/uc/webview/export/internal/setup/BaseSetupTask;)V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1177
    iget-object v3, p0, Lcom/uc/webview/export/business/setup/a;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1178
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 1181
    :cond_0
    goto :goto_1

    .line 1182
    :cond_1
    nop

    .line 220
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {p1, v2, v1}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 221
    goto :goto_0

    .line 222
    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 263
    nop

    .line 1226
    :try_start_0
    const-string v0, "bo_s_i_uc_core"

    .line 1227
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 1228
    if-eqz v0, :cond_3

    .line 1229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1230
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1231
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1232
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 1234
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1235
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1234
    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    goto :goto_0

    .line 1238
    :cond_2
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :cond_3
    goto :goto_2

    .line 1240
    :catchall_0
    move-exception v0

    .line 1241
    sget-object v1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    const-string v2, "init core callback"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    :goto_2
    sget-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initCore options: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->c()V

    .line 268
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->e()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/utility/SetupTask;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 270
    invoke-virtual {v1, p0}, Lcom/uc/webview/export/utility/SetupTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 271
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    const-string v3, "bo_dec_r_p"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 272
    const-string v3, "bo_dec_root_dir"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 274
    invoke-virtual {v1}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    .line 276
    invoke-direct {p0, v0}, Lcom/uc/webview/export/business/setup/a;->a(Lcom/uc/webview/export/internal/setup/BaseSetupTask;)V

    .line 278
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 280
    goto :goto_3

    .line 281
    :cond_4
    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 282
    return-void
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 371
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdk\u7248\u672c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdk\u652f\u6301\u7684\u6700\u5c0f\u5185\u6838\u7248\u672c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5185\u6838\u7248\u672c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5185\u6838\u652f\u6301\u7684\u6700\u5c0fsdk\u7248\u672c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {p2}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/lang/String;)[I

    move-result-object p2

    .line 378
    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/lang/String;)[I

    move-result-object p1

    .line 379
    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 382
    :cond_0
    aget v2, p2, v0

    aget v3, p1, v0

    if-lt v2, v3, :cond_6

    aget v2, p2, v0

    aget v3, p1, v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    aget v2, p2, v6

    aget v3, p1, v6

    if-lt v2, v3, :cond_6

    aget v2, p2, v6

    aget v3, p1, v6

    if-ne v2, v3, :cond_1

    aget v2, p2, v5

    aget v3, p1, v5

    if-lt v2, v3, :cond_6

    aget v2, p2, v5

    aget v3, p1, v5

    if-ne v2, v3, :cond_1

    aget p2, p2, v4

    aget p1, p1, v4

    if-ge p2, p1, :cond_1

    goto :goto_2

    .line 394
    :cond_1
    invoke-static {p0}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/lang/String;)[I

    move-result-object p0

    .line 395
    invoke-static {p3}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/lang/String;)[I

    move-result-object p1

    .line 396
    if-eqz p0, :cond_5

    if-nez p1, :cond_2

    goto :goto_1

    .line 399
    :cond_2
    aget p2, p0, v0

    aget p3, p1, v0

    if-lt p2, p3, :cond_4

    aget p2, p0, v0

    aget p3, p1, v0

    if-ne p2, p3, :cond_3

    aget p2, p0, v6

    aget p3, p1, v6

    if-lt p2, p3, :cond_4

    aget p2, p0, v6

    aget p3, p1, v6

    if-ne p2, p3, :cond_3

    aget p2, p0, v5

    aget p3, p1, v5

    if-lt p2, p3, :cond_4

    aget p2, p0, v5

    aget p3, p1, v5

    if-ne p2, p3, :cond_3

    aget p0, p0, v4

    aget p1, p1, v4

    if-ge p0, p1, :cond_3

    goto :goto_0

    .line 409
    :cond_3
    return v6

    .line 406
    :cond_4
    :goto_0
    const-string p0, "\u6700\u5c0fSDK\u7248\u672c\u4e0d\u901a\u8fc7"

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return v0

    .line 397
    :cond_5
    :goto_1
    return v0

    .line 389
    :cond_6
    :goto_2
    const-string p0, "\u6700\u5c0f\u5185\u6838\u7248\u672c\u4e0d\u901a\u8fc7"

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    return v0

    .line 380
    :cond_7
    :goto_3
    return v0

    .line 411
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    return v0
.end method

.method private static final a(Ljava/lang/String;)[I
    .locals 4

    .line 350
    if-eqz p0, :cond_0

    .line 351
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 352
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v2, 0x0

    aget-object v3, p0, v2

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    aget-object v3, p0, v2

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    aget-object v3, p0, v2

    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    aget-object p0, p0, v1

    .line 357
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    .line 353
    return-object v0

    .line 361
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 4

    .line 498
    const-string v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 499
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    :try_start_0
    new-instance p1, Ljava/io/File;

    const-string v2, "sdk_shell.jar"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 504
    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "VERIFY_POLICY"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 505
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 506
    invoke-static {v0, v2, p1}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 510
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCCore;->getODexDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Ldalvik/system/DexClassLoader;

    const-string v2, ""

    const-class v3, Lcom/uc/webview/export/business/setup/a;

    .line 515
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    return-object v1

    .line 517
    :catchall_0
    move-exception p1

    .line 518
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    const-string v0, "create sdk_shell dexLoader failure!"

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()V
    .locals 0

    .line 35
    return-void
.end method

.method private c(Ljava/lang/String;)J
    .locals 8

    .line 524
    sget-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".checkCoreCompatibleAndFileExistsPermissions "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    nop

    .line 527
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check new core files, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exists!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    sget-wide v3, Lcom/uc/webview/export/business/a$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_0
    return-wide v3

    .line 533
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/uc/webview/export/business/setup/a;->b(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    .line 534
    if-nez p1, :cond_3

    .line 535
    const-string v1, "check old core files, create sdk_shell dexLoader failure!"

    .line 536
    sget-wide v3, Lcom/uc/webview/export/business/a$a;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_2
    return-wide v3

    .line 539
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 541
    const-string v1, "check old core files, get core version failure!"

    .line 542
    sget-wide v3, Lcom/uc/webview/export/business/a$a;->g:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_4
    return-wide v3

    .line 544
    :cond_5
    :try_start_3
    const-string v5, "bo_prom_sp_v_c_i"

    .line 545
    invoke-virtual {p0, v5}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/extension/UCCore$Callable;

    .line 547
    if-eqz v5, :cond_c

    invoke-interface {v5, v4}, Lcom/uc/webview/export/extension/UCCore$Callable;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    .line 552
    :cond_6
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->c(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v5

    .line 553
    nop

    .line 1416
    sget-object v6, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    sget-object v7, Lcom/uc/webview/export/Build$Version;->SUPPORT_U4_MIN:Ljava/lang/String;

    invoke-static {v6, v7, v4, v5}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 553
    if-nez v4, :cond_8

    .line 554
    const-string v1, "check old core files, version compatible failure!"

    .line 555
    sget-wide v3, Lcom/uc/webview/export/business/a$a;->i:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_7
    return-wide v3

    .line 557
    :cond_8
    :try_start_4
    const-string v4, "bo_skip_io_dc"

    invoke-virtual {p0, v4}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_a

    .line 558
    invoke-static {v3, p1}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/io/File;Ldalvik/system/DexClassLoader;)J

    move-result-wide v3

    .line 559
    cmp-long p1, v5, v3

    if-eqz p1, :cond_a

    .line 560
    const-string p1, "check old core files, file exists and permission failure!"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 561
    nop

    .line 570
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_9
    return-wide v3

    .line 570
    :cond_a
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_b
    return-wide v5

    .line 548
    :cond_c
    :goto_0
    :try_start_5
    const-string v1, "check callable permission failure!"

    .line 549
    sget-wide v3, Lcom/uc/webview/export/business/a$a;->h:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 570
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_d
    return-wide v3

    .line 565
    :catchall_0
    move-exception p1

    .line 566
    :try_start_6
    const-string v1, "check old core files exception!"

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    sget-wide v3, Lcom/uc/webview/export/business/a$a;->j:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 570
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 571
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_e
    return-wide v3

    .line 570
    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 571
    sget-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    throw p1
.end method

.method static synthetic c(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->e:Lcom/uc/webview/export/business/a;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    nop

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_0

    .line 210
    new-instance v3, Landroid/util/Pair;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)V
    .locals 2

    .line 13063
    new-instance v0, Lcom/uc/webview/export/business/setup/g;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/business/setup/g;-><init>(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)V

    .line 13074
    new-instance p0, Landroid/util/Pair;

    const-string p1, "bs_ek"

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    .line 13077
    sget-object p0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "elapseStatMaps: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private d(Ljava/lang/String;)J
    .locals 5

    .line 577
    nop

    .line 579
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check new core files, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exists!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    sget-wide v1, Lcom/uc/webview/export/business/a$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 603
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    return-wide v1

    .line 585
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/uc/webview/export/business/setup/a;->b(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    .line 586
    if-nez p1, :cond_3

    .line 587
    const-string v0, "check new core files, create sdk_shell dexLoader failure!"

    .line 588
    sget-wide v1, Lcom/uc/webview/export/business/a$a;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 603
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_2
    return-wide v1

    .line 591
    :cond_3
    :try_start_2
    invoke-static {v1, p1}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/io/File;Ldalvik/system/DexClassLoader;)J

    move-result-wide v1

    .line 592
    const-wide/16 v3, 0x0

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 593
    const-string p1, "check new core files, file exists and permission failure!"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    nop

    .line 602
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 603
    sget-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_4
    return-wide v1

    .line 602
    :cond_5
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 603
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_6
    return-wide v3

    .line 597
    :catchall_0
    move-exception p1

    .line 598
    :try_start_3
    const-string v0, "check new core files exception!"

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    sget-wide v1, Lcom/uc/webview/export/business/a$a;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 602
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 603
    sget-object p1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_7
    return-wide v1

    .line 602
    :catchall_1
    move-exception p1

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 603
    sget-object v1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw p1
.end method

.method static synthetic d(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->f:Lcom/uc/webview/export/business/a;

    return-object p0
.end method

.method static synthetic d(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->c:Lcom/uc/webview/export/business/a;

    return-object p0
.end method

.method private e()Lcom/uc/webview/export/utility/SetupTask;
    .locals 9

    .line 247
    const-string v0, "bo_ucm_init"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v0

    const-string v1, "CONTEXT"

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.uc.webview.browser.BrowserCore"

    .line 250
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setup"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    iget-object v6, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 252
    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v8

    .line 249
    invoke-static {v0, v2, v3, v5, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0
.end method

.method static synthetic f(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/setup/a$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 286
    const-string v2, "bo_dec_r_p"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 287
    const-string v3, "bo_new_ucm_zf"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    invoke-static {v1, v2}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    new-instance v0, Ljava/io/File;

    .line 290
    invoke-virtual {p0}, Lcom/uc/webview/export/business/setup/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "decompresses2"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 291
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-static {v1, v2}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .line 298
    new-instance v0, Lcom/uc/webview/export/business/setup/n;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/n;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/util/Map;)V

    .line 306
    return-void
.end method

.method static synthetic g(Lcom/uc/webview/export/business/setup/a;)V
    .locals 4

    .line 35
    nop

    .line 11800
    const-string v0, "bo_dec_odex_wm"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11801
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    .line 11802
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .line 11803
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xbb8

    .line 11801
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 11806
    invoke-virtual {p0}, Lcom/uc/webview/export/business/setup/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CONTEXT"

    invoke-static {v2, v1}, Lcom/uc/webview/export/business/BusinessWrapper;->decompressAndODex(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v1

    const/4 v2, 0x1

    .line 11807
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "o_flag_odex_done"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11808
    const-string v2, "bo_new_ucm_zf"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ucmZipFile"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11809
    const-string v2, "bo_new_ucm_z_type"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "o_zio_file_type"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11810
    const-string v2, "bo_dec_r_p"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bo_dec_root_dir"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    const/4 v2, 0x0

    .line 11811
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "bo_del_aft_extract"

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11812
    const-string v2, "provided_keys"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11813
    const-string v2, "bo_dec_cl"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11814
    const-string v2, "bo_dec_odex_cb"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 11815
    const-string v2, "VERIFY_POLICY"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    .line 11816
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/utility/SetupTask;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 35
    return-void
.end method

.method private h()V
    .locals 1

    .line 320
    new-instance v0, Lcom/uc/webview/export/business/setup/d;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/d;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/util/Map;)V

    .line 328
    return-void
.end method

.method static synthetic h(Lcom/uc/webview/export/business/setup/a;)V
    .locals 3

    .line 35
    nop

    .line 12046
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->c:Lcom/uc/webview/export/business/a;

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 13012
    iget-wide v1, v1, Lcom/uc/webview/export/business/a;->a:J

    .line 12046
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 12047
    new-instance v0, Lcom/uc/webview/export/business/setup/b;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/b;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    .line 12056
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12057
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 12058
    goto :goto_0

    .line 12059
    :cond_0
    sget-object p0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processStatMaps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic i(Lcom/uc/webview/export/business/setup/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 331
    new-instance v0, Lcom/uc/webview/export/business/setup/e;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/e;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method static synthetic j(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->i:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 341
    new-instance v0, Lcom/uc/webview/export/business/setup/f;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/business/setup/f;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/util/Map;)V

    .line 347
    return-void
.end method

.method static synthetic k(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->j:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic l(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->h:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic m(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->k:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic n(Lcom/uc/webview/export/business/setup/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic o(Lcom/uc/webview/export/business/setup/a;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/uc/webview/export/business/setup/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 735
    const-string v0, "OPTION_CONTEXT is null."

    const-string v1, "CONTEXT"

    const-string v2, "checkMillis\uff1a"

    const-string v3, "mInitStat\uff1a"

    sget-object v4, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    const-string v5, ".run begin."

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v5, Lcom/uc/webview/export/business/setup/a$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/uc/webview/export/business/setup/a$a;-><init>(Lcom/uc/webview/export/business/setup/a;B)V

    iput-object v5, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    .line 738
    :try_start_0
    iget-object v5, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    sget-wide v7, Lcom/uc/webview/export/business/a$d;->a:J

    invoke-virtual {v5, v7, v8}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    nop

    .line 1692
    nop

    .line 1694
    const/16 v5, 0x1b59

    const/4 v7, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v9, Lcom/uc/webview/export/business/a$b;->a:J

    invoke-virtual {v8, v9, v10}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1695
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "bo_old_dex_dp"

    const-string v10, "bo_dec_r_p"

    const-string v11, "bo_new_ucm_zf"

    if-eqz v8, :cond_0

    .line 1696
    :try_start_2
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$b;->e:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1697
    nop

    .line 1698
    move-object v8, v0

    goto/16 :goto_0

    .line 1700
    :cond_0
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1701
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$b;->b:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1702
    const-string v8, "OPTION_NEW_UCM_ZIP_FILE is empty."

    .line 1703
    goto/16 :goto_0

    .line 1705
    :cond_1
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1706
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$b;->c:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1707
    const-string v8, "OPTION_BUSINESS_DECOMPRESS_ROOT_PATH is empty."

    .line 1708
    goto :goto_0

    .line 1710
    :cond_2
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "bo_f_u_dec_r_p"

    invoke-virtual {v8, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1711
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$b;->d:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1712
    const-string v8, "OPTION_FORCE_USE_BUSINESS_DECOMPRESS_ROOT_PATH is null."

    .line 1713
    goto :goto_0

    .line 1715
    :cond_3
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "bo_prom_sp_v_c_i"

    .line 1716
    invoke-virtual {p0, v8}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1717
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$b;->f:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1718
    const-string v8, "OPTION_OLD_DEX_DIR_PATH not empty but OPTION_PROMISE_SPECIAL_VERSION_CORE_INIT is null."

    .line 1719
    goto :goto_0

    .line 1721
    :cond_4
    const-string v8, "bo_ucm_init"

    invoke-virtual {p0, v8}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1722
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->i()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1723
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$b;->g:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1724
    const-string v8, "OPTION_UCMOBILE_INIT is true but Class.forName(\"com.uc.webview.browser.BrowserCore\") exception."

    goto :goto_0

    .line 1729
    :cond_5
    move-object v8, v7

    :goto_0
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 742
    nop

    .line 2625
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->e:Lcom/uc/webview/export/business/a;

    sget-wide v12, Lcom/uc/webview/export/business/a$a;->b:J

    invoke-virtual {v8, v12, v13}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 2626
    nop

    .line 3618
    invoke-virtual {p0, v11}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3619
    invoke-virtual {p0, v10}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3621
    invoke-static {v10, v8}, Lcom/uc/webview/export/business/setup/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 2626
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_8

    .line 2627
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->e:Lcom/uc/webview/export/business/a;

    sget-wide v13, Lcom/uc/webview/export/business/a$a;->d:J

    invoke-virtual {v8, v13, v14}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 2628
    const-string v8, "bo_skip_io_dc"

    invoke-virtual {p0, v8}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2629
    const/4 v8, 0x1

    goto :goto_1

    .line 2631
    :cond_6
    nop

    .line 4609
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/uc/webview/export/business/setup/a;->d(Ljava/lang/String;)J

    move-result-wide v13

    .line 2631
    nop

    .line 2632
    cmp-long v8, v10, v13

    if-nez v8, :cond_7

    .line 2633
    const/4 v8, 0x1

    goto :goto_1

    .line 2635
    :cond_7
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->e:Lcom/uc/webview/export/business/a;

    invoke-virtual {v8, v13, v14}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 2637
    :cond_8
    const/4 v8, 0x0

    .line 742
    :goto_1
    if-eqz v8, :cond_9

    .line 743
    const-string v6, ".run readyDecompressAndODex && checkNewCoreFileExistsAndPermissions."

    invoke-static {v4, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    nop

    .line 5309
    new-instance v6, Lcom/uc/webview/export/business/setup/c;

    invoke-direct {v6, p0}, Lcom/uc/webview/export/business/setup/c;-><init>(Lcom/uc/webview/export/business/setup/a;)V

    invoke-direct {p0, v6}, Lcom/uc/webview/export/business/setup/a;->a(Ljava/util/Map;)V

    .line 746
    iget-object v6, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    sget-wide v8, Lcom/uc/webview/export/business/a$d;->b:J

    invoke-virtual {v6, v8, v9}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_2
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->c:Ljava/lang/String;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 6012
    iget-wide v5, v1, Lcom/uc/webview/export/business/a;->a:J

    .line 781
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v1, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void

    .line 750
    :cond_9
    nop

    .line 6641
    :try_start_3
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->f:Lcom/uc/webview/export/business/a;

    sget-wide v13, Lcom/uc/webview/export/business/a$a;->c:J

    invoke-virtual {v8, v13, v14}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 6642
    nop

    .line 7613
    iget-object v8, p0, Lcom/uc/webview/export/business/setup/a;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7614
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7613
    invoke-direct {p0, v8}, Lcom/uc/webview/export/business/setup/a;->c(Ljava/lang/String;)J

    move-result-wide v8

    .line 6642
    nop

    .line 6643
    cmp-long v13, v10, v8

    if-nez v13, :cond_a

    .line 6644
    const/4 v6, 0x1

    goto :goto_2

    .line 6646
    :cond_a
    iget-object v10, p0, Lcom/uc/webview/export/business/setup/a;->f:Lcom/uc/webview/export/business/a;

    invoke-virtual {v10, v8, v9}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 6647
    nop

    .line 750
    :goto_2
    if-eqz v6, :cond_b

    .line 751
    const-string v6, ".run checkOldCoreCompatibleAndFileExistsPermissions."

    invoke-static {v4, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->h()V

    .line 753
    iget-object v6, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    sget-wide v8, Lcom/uc/webview/export/business/a$d;->c:J

    invoke-virtual {v6, v8, v9}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_3
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 779
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->c:Ljava/lang/String;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 8012
    iget-wide v5, v1, Lcom/uc/webview/export/business/a;->a:J

    .line 781
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v1, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void

    .line 757
    :cond_b
    :try_start_4
    const-string v6, ".run initNewCoreByZipFile."

    invoke-static {v4, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->g()V

    .line 759
    iget-object v6, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    sget-wide v8, Lcom/uc/webview/export/business/a$d;->d:J

    invoke-virtual {v6, v8, v9}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_4
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 779
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->c:Ljava/lang/String;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 9012
    iget-wide v5, v1, Lcom/uc/webview/export/business/a;->a:J

    .line 781
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v1, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void

    .line 1730
    :cond_c
    :try_start_5
    new-instance v4, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v4, v5, v8}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_5
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 761
    :catch_0
    move-exception v4

    .line 762
    :try_start_6
    sget-object v6, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    const-string v8, "checkInputConditions failure message: "

    invoke-static {v6, v8, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 763
    invoke-virtual {v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v8, v5, :cond_14

    .line 769
    nop

    .line 9651
    nop

    .line 9653
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/business/setup/a;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9654
    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$b;->e:J

    invoke-virtual {v1, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 9655
    nop

    .line 9656
    goto/16 :goto_3

    .line 9658
    :cond_d
    const-string v0, "sc_ldpl"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9659
    const-string v1, "sc_lshco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 9660
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$b;->h:J

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 9661
    const-string v0, "shareCoreLoadPolicy not equals sc_lshco"

    .line 9662
    goto :goto_3

    .line 9664
    :cond_e
    const-string v0, "sc_ta_fp"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9665
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$b;->i:J

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 9666
    const-string v0, "CD_KEY_SHARE_CORE_COMMONALITY_TARGET_FPATH is empty."

    .line 9667
    goto :goto_3

    .line 9669
    :cond_f
    const-string v0, "sc_pkgl"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9670
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$b;->j:J

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 9671
    const-string v0, "CD_KEY_SHARE_CORE_CLIENT_SPECIAL_HOST_PKG_NAME_LIST is empty."

    .line 9672
    goto :goto_3

    .line 9674
    :cond_10
    const-string v0, "sc_taucmv"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9675
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$b;->k:J

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 9676
    const-string v0, "CD_KEY_SHARE_CORE_CLIENT_UCM_VERSIONS is empty."

    .line 9677
    goto :goto_3

    .line 9679
    :cond_11
    invoke-virtual {p0}, Lcom/uc/webview/export/business/setup/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 9680
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->d:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$b;->l:J

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 9681
    const-string v0, "Sdcard\u914d\u7f6e\u53ca\u6743\u9650\u6821\u9a8c\u5931\u8d25."

    goto :goto_3

    .line 9679
    :cond_12
    move-object v0, v7

    .line 9686
    :goto_3
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 771
    const-string v0, ".run initShareCore."

    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->i()V

    .line 773
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$d;->j:J

    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 777
    goto :goto_4

    .line 9687
    :cond_13
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0x1b5b

    invoke-direct {v1, v4, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_7
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 774
    :catch_1
    move-exception v0

    .line 775
    :try_start_8
    sget-object v1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    const-string v4, "checkShareCore failure message: "

    invoke-static {v1, v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    invoke-direct {p0}, Lcom/uc/webview/export/business/setup/a;->j()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 779
    :goto_4
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/webview/export/business/setup/a$a;->c:Ljava/lang/String;

    .line 781
    sget-object v0, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 10012
    iget-wide v3, v3, Lcom/uc/webview/export/business/a;->a:J

    .line 781
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v2, v2, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void

    .line 764
    :cond_14
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 779
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v4, v1, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    .line 780
    iget-object v1, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v4, v1, Lcom/uc/webview/export/business/setup/a$a;->a:Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/uc/webview/export/business/setup/a$a;->c:Ljava/lang/String;

    .line 781
    sget-object v1, Lcom/uc/webview/export/business/setup/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/webview/export/business/setup/a;->b:Lcom/uc/webview/export/business/a;

    .line 11012
    iget-wide v5, v3, Lcom/uc/webview/export/business/a;->a:J

    .line 781
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/a;->g:Lcom/uc/webview/export/business/setup/a$a;

    iget-object v2, v2, Lcom/uc/webview/export/business/setup/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
