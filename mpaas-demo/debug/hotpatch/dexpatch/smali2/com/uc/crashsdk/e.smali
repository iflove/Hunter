.class public Lcom/uc/crashsdk/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/crashsdk/e$a;,
        Lcom/uc/crashsdk/e$d;,
        Lcom/uc/crashsdk/e$c;,
        Lcom/uc/crashsdk/e$b;
    }
.end annotation


# static fields
.field private static A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/lang/String;

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field private static J:Ljava/lang/String;

.field private static K:Z

.field private static L:Z

.field private static M:I

.field private static N:Lcom/uc/crashsdk/a/e;

.field private static O:Lcom/uc/crashsdk/e$a;

.field private static P:Z

.field private static final Q:Lcom/uc/crashsdk/a/e;

.field private static R:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static S:Ljava/lang/Throwable;

.field private static T:Z

.field private static U:Z

.field private static V:Ljava/lang/Runnable;

.field private static final W:Ljava/lang/Object;

.field private static X:Ljava/lang/Runnable;

.field private static final Y:Ljava/lang/Object;

.field private static Z:Z

.field static final synthetic a:Z

.field private static aa:Z

.field private static ab:Landroid/os/ParcelFileDescriptor;

.field private static ac:Z

.field private static ad:Z

.field private static b:J

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z

.field private static f:J

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/Object;

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:I

.field private static t:Ljava/lang/String;

.field private static u:Z

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static final y:Ljava/lang/Object;

.field private static final z:Ljava/lang/Object;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->a:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    sput-boolean v2, Lcom/uc/crashsdk/e;->d:Z

    .line 112
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/uc/crashsdk/e;->f:J

    .line 135
    sput-boolean v0, Lcom/uc/crashsdk/e;->g:Z

    .line 382
    sput-boolean v2, Lcom/uc/crashsdk/e;->i:Z

    .line 719
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 756
    sput-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    .line 757
    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    .line 1467
    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    .line 2135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    .line 2232
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->o:Ljava/lang/Object;

    .line 2526
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    .line 2650
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    .line 2791
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    .line 2792
    sput v2, Lcom/uc/crashsdk/e;->s:I

    .line 2793
    sput-object v0, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2795
    sput-boolean v2, Lcom/uc/crashsdk/e;->u:Z

    .line 2796
    sput-object v0, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    .line 2949
    sput-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 2950
    sput-object v0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    .line 2952
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    .line 2979
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    .line 2989
    sput-object v0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    .line 3205
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    .line 3282
    const/4 v1, -0x1

    sput v1, Lcom/uc/crashsdk/e;->C:I

    .line 3283
    sput v1, Lcom/uc/crashsdk/e;->D:I

    .line 3284
    sput v1, Lcom/uc/crashsdk/e;->E:I

    .line 3285
    sput v1, Lcom/uc/crashsdk/e;->F:I

    .line 3286
    sput v1, Lcom/uc/crashsdk/e;->G:I

    .line 3287
    sput v1, Lcom/uc/crashsdk/e;->H:I

    .line 3288
    sput v1, Lcom/uc/crashsdk/e;->I:I

    .line 3289
    const-string v1, "?"

    sput-object v1, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    .line 3290
    sput-boolean v2, Lcom/uc/crashsdk/e;->K:Z

    .line 3293
    sput-boolean v2, Lcom/uc/crashsdk/e;->L:Z

    .line 3294
    sput v2, Lcom/uc/crashsdk/e;->M:I

    .line 3449
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x195

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->N:Lcom/uc/crashsdk/a/e;

    .line 3480
    new-instance v1, Lcom/uc/crashsdk/e$a;

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/e$a;-><init>(B)V

    sput-object v1, Lcom/uc/crashsdk/e;->O:Lcom/uc/crashsdk/e$a;

    .line 3481
    sput-boolean v2, Lcom/uc/crashsdk/e;->P:Z

    .line 3509
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x19c

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/a/e;

    .line 3542
    sput-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3562
    sput-object v0, Lcom/uc/crashsdk/e;->S:Ljava/lang/Throwable;

    .line 3563
    sput-boolean v2, Lcom/uc/crashsdk/e;->T:Z

    .line 3769
    sput-boolean v2, Lcom/uc/crashsdk/e;->U:Z

    .line 3770
    sput-object v0, Lcom/uc/crashsdk/e;->V:Ljava/lang/Runnable;

    .line 3771
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->W:Ljava/lang/Object;

    .line 3817
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x197

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    .line 4024
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    .line 4025
    sput-boolean v2, Lcom/uc/crashsdk/e;->Z:Z

    .line 4068
    sput-boolean v2, Lcom/uc/crashsdk/e;->aa:Z

    .line 4173
    sput-object v0, Lcom/uc/crashsdk/e;->ab:Landroid/os/ParcelFileDescriptor;

    .line 4174
    sput-boolean v2, Lcom/uc/crashsdk/e;->ac:Z

    .line 4195
    sput-boolean v2, Lcom/uc/crashsdk/e;->ad:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/uc/crashsdk/e;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method static synthetic A()Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/uc/crashsdk/h;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic B()I
    .locals 1

    .line 58
    sget v0, Lcom/uc/crashsdk/e;->M:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method static synthetic C()V
    .locals 3

    .line 58
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->L()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bati"

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->M()V

    return-void
.end method

.method static synthetic D()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method private E()V
    .locals 4

    .line 86
    invoke-static {}, Lcom/uc/crashsdk/h;->H()I

    move-result v0

    .line 87
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/dev/null"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 93
    return-void

    .line 96
    :cond_0
    return-void
.end method

.method private static F()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static G()Ljava/lang/String;
    .locals 1

    .line 300
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fg"

    return-object v0

    :cond_0
    const-string v0, "bg"

    return-object v0
.end method

.method private static H()[B
    .locals 3

    .line 317
    nop

    .line 318
    const/4 v0, 0x0

    const/16 v1, 0x400

    .line 319
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 321
    :try_start_0
    new-array v0, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    goto :goto_0

    .line 322
    :catchall_0
    move-exception v2

    .line 324
    div-int/lit8 v1, v1, 0x2

    .line 325
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 326
    :cond_1
    return-object v0
.end method

.method private static I()Ljava/lang/String;
    .locals 1

    .line 512
    invoke-static {}, Lcom/uc/crashsdk/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_0

    .line 513
    const-string v0, "ucebujava"

    return-object v0

    .line 515
    :cond_0
    const-string v0, "java"

    return-object v0
.end method

.method private static J()V
    .locals 9

    .line 774
    const-string v0, "-"

    .line 775
    nop

    .line 778
    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    goto :goto_0

    .line 779
    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 783
    :goto_0
    nop

    .line 784
    nop

    .line 786
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 787
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 788
    const/4 v2, 0x0

    .line 790
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 791
    const-string v6, "Hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v7, ":"

    if-eqz v6, :cond_1

    .line 792
    :try_start_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 793
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 795
    :cond_1
    const-string v6, "Processor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 796
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 797
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 798
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 795
    :cond_2
    :goto_1
    nop

    .line 800
    :goto_2
    const/4 v5, 0x2

    if-lt v2, v5, :cond_0

    .line 801
    :cond_3
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .line 804
    :catchall_1
    move-exception v2

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_3

    :catchall_3
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    :goto_3
    :try_start_5
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 807
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 808
    :goto_4
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 809
    nop

    .line 811
    sput-object v1, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    .line 812
    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    .line 813
    return-void

    .line 807
    :catchall_4
    move-exception v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 808
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static K()Ljava/lang/String;
    .locals 2

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static L()Ljava/lang/StringBuilder;
    .locals 9

    .line 3357
    const-string v0, "\n"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " (Unknown)"

    const-string v4, " (?)"

    packed-switch v2, :pswitch_data_0

    move-object v2, v4

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v2, " (Cold)"

    goto :goto_0

    :pswitch_1
    const-string v2, " (Unspecified failure)"

    goto :goto_0

    :pswitch_2
    const-string v2, " (Over voltage)"

    goto :goto_0

    :pswitch_3
    const-string v2, " (Dead)"

    goto :goto_0

    :pswitch_4
    const-string v2, " (Overheat)"

    goto :goto_0

    :pswitch_5
    const-string v2, " (Good)"

    goto :goto_0

    :pswitch_6
    move-object v2, v3

    :goto_0
    const-string v5, "health: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/uc/crashsdk/e;->F:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->G:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    const-string v2, " (Wireless)"

    goto :goto_1

    :cond_1
    const-string v2, " (USB port)"

    goto :goto_1

    :cond_2
    const-string v2, " (AC charger)"

    goto :goto_1

    :cond_3
    const-string v2, " (None)"

    :goto_1
    const-string v8, "pluged: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/uc/crashsdk/e;->G:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->H:I

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    move-object v3, v4

    goto :goto_2

    :cond_4
    const-string v3, " (Full)"

    goto :goto_2

    :cond_5
    const-string v3, " (Not charging)"

    goto :goto_2

    :cond_6
    const-string v3, " (Discharging)"

    goto :goto_2

    :cond_7
    const-string v3, " (Charging)"

    :cond_8
    :goto_2
    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "battery low: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/uc/crashsdk/e;->K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 3358
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3362
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static M()V
    .locals 4

    .line 3453
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_0

    .line 3455
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    .line 3456
    sget-object v1, Lcom/uc/crashsdk/e;->N:Lcom/uc/crashsdk/a/e;

    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3457
    sget-object v1, Lcom/uc/crashsdk/e;->N:Lcom/uc/crashsdk/a/e;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3461
    :cond_0
    return-void
.end method

.method private static N()V
    .locals 17

    .line 3952
    invoke-static {}, Lcom/uc/crashsdk/h;->W()Ljava/lang/String;

    move-result-object v1

    .line 3953
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3955
    return-void

    .line 3959
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 3960
    if-nez v2, :cond_1

    .line 3961
    return-void

    .line 3963
    :cond_1
    array-length v0, v2

    const/16 v3, 0x96

    if-gt v0, v3, :cond_2

    .line 3964
    return-void

    .line 3967
    :cond_2
    new-instance v0, Lcom/uc/crashsdk/e$c;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3969
    array-length v0, v2

    sub-int/2addr v0, v3

    .line 3970
    if-gez v0, :cond_3

    .line 3971
    const/4 v3, 0x0

    goto :goto_0

    .line 3970
    :cond_3
    move v3, v0

    .line 3974
    :goto_0
    nop

    .line 3975
    nop

    .line 3977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3978
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    array-length v0, v2

    if-ge v7, v0, :cond_6

    .line 3979
    aget-object v0, v2, v7

    .line 3981
    const/4 v10, 0x1

    if-ge v7, v3, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 3982
    :goto_2
    if-nez v11, :cond_5

    .line 3983
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3984
    sub-long v12, v5, v12

    const-wide/32 v14, 0x19bfcc00

    cmp-long v16, v12, v14

    if-ltz v16, :cond_5

    .line 3985
    const/4 v11, 0x1

    .line 3989
    :cond_5
    if-eqz v11, :cond_6

    .line 3990
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3995
    nop

    .line 3996
    add-int/lit8 v8, v8, 0x1

    .line 4000
    const/4 v9, 0x0

    goto :goto_3

    .line 3997
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 3998
    add-int/2addr v9, v10

    .line 3999
    :try_start_2
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4003
    :goto_3
    const/4 v0, 0x3

    if-ge v9, v0, :cond_6

    .line 4004
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4008
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " logs in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4011
    return-void

    .line 4009
    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4012
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .locals 5

    .line 1351
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1352
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1353
    return v0

    .line 1356
    :cond_0
    nop

    .line 1358
    :try_start_0
    invoke-static {p1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    if-nez v1, :cond_1

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found or decode failed!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1365
    add-int/lit8 v2, p2, 0x20

    if-le p1, v2, :cond_2

    .line 1366
    goto :goto_0

    .line 1365
    :cond_2
    move p2, p1

    .line 1368
    :goto_0
    const-string p1, "UTF-8"

    if-lez p2, :cond_3

    .line 1369
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 1370
    const-string v2, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1373
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 1374
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(truncated %d bytes)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1375
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1374
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1374
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    :cond_4
    goto :goto_2

    .line 1377
    :catchall_0
    move-exception p1

    move v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    move p2, v0

    .line 1381
    :goto_2
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1382
    return p2
.end method

.method private static a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .line 1117
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 1123
    const-class v2, Landroid/os/StatFs;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1124
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1125
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1126
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 1127
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    .line 1131
    :cond_0
    goto :goto_0

    .line 1130
    :catchall_0
    move-exception p1

    .line 1134
    :goto_0
    :try_start_1
    const-class p1, Landroid/os/StatFs;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1135
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1136
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1137
    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 1138
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long p0, p0

    return-wide p0

    .line 1142
    :cond_1
    goto :goto_1

    .line 1140
    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1144
    :goto_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;
    .locals 3

    .line 888
    nop

    .line 889
    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 890
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 892
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    move-object v0, v2

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v2

    .line 895
    div-int/lit8 v1, v1, 0x2

    .line 896
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 897
    :cond_1
    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 5

    .line 1471
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "/proc/%d/cmdline"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1472
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    .line 1471
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1473
    const/16 p0, 0x80

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    .line 1474
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    invoke-static {p0}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1479
    :cond_0
    goto :goto_0

    .line 1477
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1480
    :goto_0
    const-string p0, "unknown"

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1059
    nop

    .line 1061
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    .line 1064
    :goto_0
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 366
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string p0, ""

    return-object p0

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 374
    :cond_1
    invoke-static {p0}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 375
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    return-object p0

    .line 378
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 850
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1a

    const-string v2, "ps"

    if-lt v0, v1, :cond_0

    .line 853
    :try_start_1
    const-string v0, "-ef"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 857
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 858
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 859
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 861
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    .line 862
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    .line 864
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 866
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "UTF-8"

    if-eqz v4, :cond_7

    .line 867
    nop

    .line 868
    const/4 v6, 0x1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    .line 869
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 870
    :cond_2
    goto :goto_2

    .line 871
    :cond_3
    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_4

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gtz v7, :cond_5

    .line 872
    :cond_4
    const/4 v6, 0x0

    .line 874
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 875
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 876
    const-string v4, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 878
    :cond_6
    goto :goto_1

    .line 879
    :cond_7
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    .line 880
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 883
    const-string p0, "exception exists."

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 17

    .line 1558
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "\'\n"

    const-string v6, "\n"

    const-string v7, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v8, "UTF-8"

    .line 1561
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    .line 1562
    invoke-static {}, Lcom/uc/crashsdk/h;->b()V

    .line 1563
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Z)V

    .line 1567
    :cond_0
    nop

    .line 1568
    cmp-long v13, v3, v9

    if-nez v13, :cond_1

    .line 1569
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1568
    :cond_1
    move-object v0, v11

    .line 1571
    :goto_0
    new-instance v14, Lcom/uc/crashsdk/e$b;

    invoke-direct {v14, v3, v4, v0}, Lcom/uc/crashsdk/e$b;-><init>(JLjava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1d

    .line 1574
    const/4 v15, 0x0

    :try_start_1
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_2

    .line 1575
    const-string v0, "logj"

    invoke-static {v0, v2, v15}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    :cond_2
    goto :goto_1

    .line 1577
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1582
    :goto_1
    invoke-static {}, Lcom/uc/crashsdk/e;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v2, v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1c

    .line 1583
    if-eqz p4, :cond_3

    .line 1586
    :try_start_3
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1589
    goto :goto_2

    .line 1587
    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    :try_start_4
    invoke-static/range {v16 .. v16}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1c

    .line 1593
    :cond_3
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Process Name: \'"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Thread Name: \'"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1c

    .line 1597
    :goto_3
    :try_start_7
    const-string v0, "Back traces starts.\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1598
    :try_start_8
    const-class v0, Ljava/lang/Throwable;

    const-string v5, "detailMessage"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/String;

    const-string v9, "\n\t"

    const-string v10, "\n->  "

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1602
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1603
    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1604
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Message: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1608
    :cond_5
    goto :goto_5

    .line 1606
    :catchall_4
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1c

    .line 1610
    :goto_5
    :try_start_b
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v14}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1611
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1614
    goto :goto_6

    .line 1612
    :catchall_5
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1c

    .line 1616
    :goto_6
    :try_start_d
    const-string v0, "Back traces ends.\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1619
    goto :goto_7

    .line 1617
    :catchall_6
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1620
    :goto_7
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1c

    .line 1623
    :try_start_f
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1626
    goto :goto_8

    .line 1624
    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_10
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1c

    .line 1630
    :goto_8
    :try_start_11
    invoke-static {v14, v8, v7}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1633
    goto :goto_9

    .line 1631
    :catchall_8
    move-exception v0

    move-object v1, v0

    :try_start_12
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1c

    .line 1635
    :goto_9
    if-eqz p4, :cond_6

    .line 1637
    :try_start_13
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1640
    goto :goto_a

    .line 1638
    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_14
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1c

    .line 1644
    :cond_6
    :goto_a
    const/16 v1, 0x2800

    :try_start_15
    const-string v0, "/proc/meminfo"

    const-string v5, "meminfo:\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v14, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    :try_start_16
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1c

    :goto_b
    :try_start_17
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "/proc/%d/status"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-static {v0, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "status:\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v14, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v0

    :try_start_18
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1c

    :goto_c
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dalvik:\nMaxMemory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " TotalMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " FreeMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    :try_start_1a
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_d
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1647
    invoke-static {v14}, Lcom/uc/crashsdk/e;->f(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1c

    .line 1650
    :try_start_1b
    invoke-static {v14, v8, v11}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object v1, v0

    :try_start_1c
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_e
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz v0, :cond_7

    sput-boolean v15, Lcom/uc/crashsdk/e;->g:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    :try_start_1d
    const-string v0, "JAVADUMPFILES"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    goto :goto_f

    :catchall_e
    move-exception v0

    :try_start_1e
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_f
    sput-boolean v12, Lcom/uc/crashsdk/e;->g:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1c

    .line 1653
    :cond_7
    :try_start_1f
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    .line 1656
    goto :goto_10

    .line 1654
    :catchall_f
    move-exception v0

    move-object v1, v0

    :try_start_20
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1659
    :goto_10
    invoke-static {v14}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1c

    .line 1662
    :try_start_21
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 1665
    goto :goto_11

    .line 1663
    :catchall_10
    move-exception v0

    move-object v1, v0

    :try_start_22
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1c

    .line 1668
    :goto_11
    :try_start_23
    const-string v0, "battery info:\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    goto :goto_12

    :catchall_11
    move-exception v0

    :try_start_24
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1c

    :goto_12
    :try_start_25
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz v0, :cond_8

    sput-boolean v15, Lcom/uc/crashsdk/e;->g:Z

    const-string v0, "BATTERYINFO"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    sput-boolean v12, Lcom/uc/crashsdk/e;->g:Z

    goto :goto_13

    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/e;->L()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    goto :goto_13

    :catchall_12
    move-exception v0

    :try_start_26
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_9
    :goto_13
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1671
    invoke-static {v14}, Lcom/uc/crashsdk/e;->c(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1c

    .line 1674
    :try_start_27
    const-string v0, "device status:\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception v0

    :try_start_28
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_14
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1c

    if-eqz v0, :cond_a

    :try_start_29
    sput-boolean v15, Lcom/uc/crashsdk/e;->g:Z

    const-string v0, "DEVICESTATUS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    sput-boolean v12, Lcom/uc/crashsdk/e;->g:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    goto/16 :goto_17

    :catchall_14
    move-exception v0

    goto/16 :goto_16

    :cond_a
    :try_start_2a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "has root: %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->d()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v15

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, ""

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_b

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "build tags: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, " (default root)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "su binary: %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v0, v6, v15

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "su permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "valid ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_d
    const-string v1, "invalid ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    invoke-static {}, Lcom/uc/crashsdk/a/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    :goto_16
    :try_start_2b
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_e
    :goto_17
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1677
    invoke-static {v14}, Lcom/uc/crashsdk/e;->d(Ljava/io/OutputStream;)V

    .line 1680
    invoke-static {v14}, Lcom/uc/crashsdk/e;->e(Ljava/io/OutputStream;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1c

    .line 1683
    :try_start_2c
    invoke-static {v14, v8, v7, v11}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception v0

    move-object v1, v0

    :try_start_2d
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_18
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz v0, :cond_f

    sput-boolean v15, Lcom/uc/crashsdk/e;->g:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1c

    :try_start_2e
    const-string v0, "JAVACACHEDINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception v0

    :try_start_2f
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_19
    sput-boolean v12, Lcom/uc/crashsdk/e;->g:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1c

    .line 1686
    :cond_f
    :try_start_30
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    .line 1689
    goto :goto_1a

    .line 1687
    :catchall_18
    move-exception v0

    move-object v1, v0

    :try_start_31
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1c

    .line 1692
    :goto_1a
    :try_start_32
    invoke-static {v14, v8, v7, v11}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    goto :goto_1b

    :catchall_19
    move-exception v0

    move-object v1, v0

    :try_start_33
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1b
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz v0, :cond_10

    sput-boolean v15, Lcom/uc/crashsdk/e;->g:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1c

    :try_start_34
    const-string v0, "JAVACALLBACKINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception v0

    :try_start_35
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1c
    sput-boolean v12, Lcom/uc/crashsdk/e;->g:Z

    .line 1695
    :cond_10
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->a()V

    .line 1696
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$b;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c

    .line 1699
    :try_start_36
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1b

    .line 1702
    goto :goto_1d

    .line 1700
    :catchall_1b
    move-exception v0

    move-object v1, v0

    :try_start_37
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1c

    .line 1706
    :goto_1d
    if-eqz v13, :cond_11

    .line 1707
    invoke-static {v14}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$b;)V

    .line 1709
    :cond_11
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_1f

    .line 1703
    :catchall_1c
    move-exception v0

    move-object v11, v14

    goto :goto_1e

    :catchall_1d
    move-exception v0

    :goto_1e
    :try_start_38
    invoke-static {v0, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f

    .line 1706
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_12

    .line 1707
    invoke-static {v11}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$b;)V

    .line 1709
    :cond_12
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1710
    :goto_1f
    nop

    .line 1712
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-nez v0, :cond_13

    .line 1714
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)V

    .line 1718
    :cond_13
    nop

    .line 1719
    :try_start_39
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-nez v0, :cond_14

    .line 1721
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-static {v0}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1719
    :cond_14
    move-object v0, v2

    .line 1726
    :goto_20
    const-string v1, "java"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    .line 1729
    goto :goto_21

    .line 1727
    :catchall_1e
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1731
    :goto_21
    return-object v2

    .line 1706
    :catchall_1f
    move-exception v0

    move-object v1, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_15

    .line 1707
    invoke-static {v11}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$b;)V

    .line 1709
    :cond_15
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 3159
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 3160
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 3161
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    .line 3159
    const-string p0, "%d%02d%02d%02d%02d%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9

    .line 4124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4125
    nop

    .line 4126
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v2, p0

    if-lez v2, :cond_3

    .line 4127
    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4128
    :goto_0
    array-length v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p0, v5

    .line 4129
    add-int/lit8 v6, v6, 0x1

    .line 4130
    const-string v8, "  at "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    if-nez v3, :cond_1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4135
    nop

    .line 4137
    nop

    .line 4138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4128
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v1, v6

    .line 4142
    :cond_3
    if-nez v1, :cond_4

    .line 4143
    const-string p0, "  (no java stack)\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4146
    :cond_4
    return-object v0
.end method

.method public static a(I[Ljava/lang/Object;)V
    .locals 8

    .line 413
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    .line 483
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_1b

    .line 486
    return-void

    .line 473
    :pswitch_0
    nop

    .line 474
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 475
    const/4 v2, 0x1

    .line 477
    :cond_0
    invoke-static {v2, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeInstallBreakpad(II)V

    .line 479
    return-void

    .line 469
    :pswitch_1
    sget-boolean p0, Lcom/uc/crashsdk/e;->P:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/h;->L()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    sget-boolean p0, Lcom/uc/crashsdk/e;->P:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/uc/crashsdk/h;->L()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    sget-object p1, Lcom/uc/crashsdk/e;->O:Lcom/uc/crashsdk/e$a;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v2, Lcom/uc/crashsdk/e;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 470
    :cond_3
    return-void

    .line 465
    :pswitch_2
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_4

    const-string p0, "jni"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->e(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "jnisampl"

    invoke-static {p1, v1, p0}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 466
    :cond_4
    return-void

    .line 461
    :pswitch_3
    invoke-static {v2, v3}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    .line 462
    return-void

    .line 457
    :pswitch_4
    invoke-static {v2, v2}, Lcom/uc/crashsdk/e;->b(ZZ)I

    .line 458
    return-void

    .line 453
    :pswitch_5
    sget-object p0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget-boolean p1, Lcom/uc/crashsdk/e;->Z:Z

    if-nez p1, :cond_7

    invoke-static {}, Lcom/uc/crashsdk/h;->P()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/uc/crashsdk/b;->w()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sput-boolean v3, Lcom/uc/crashsdk/e;->Z:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    invoke-static {}, Lcom/uc/crashsdk/a/h;->b()V

    invoke-static {}, Lcom/uc/crashsdk/f;->d()V

    invoke-static {}, Lcom/uc/crashsdk/b;->A()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/uc/crashsdk/a/e;

    const/16 p1, 0x199

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v0, 0x1b58

    invoke-static {v3, p0, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 454
    :cond_6
    return-void

    .line 453
    :cond_7
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 446
    :pswitch_6
    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/a;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 449
    return-void

    .line 447
    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 450
    return-void

    .line 436
    :pswitch_7
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_9

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 437
    :cond_9
    :goto_1
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    .line 438
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 439
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 440
    invoke-static {p0, v1, p1}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;ZZ)V

    .line 441
    return-void

    .line 432
    :pswitch_8
    sput-boolean v2, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->L()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/b;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_a

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 433
    :cond_a
    return-void

    .line 427
    :pswitch_9
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_c

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 428
    :cond_c
    :goto_2
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/uc/crashsdk/b;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lcom/uc/crashsdk/e;->i:Z

    if-nez p1, :cond_e

    sput-boolean v3, Lcom/uc/crashsdk/e;->i:Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x80

    invoke-static {v0, p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    move-object v3, v1

    const-string v2, "mLogTypeSuffix"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z

    :cond_e
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    return-void

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    .line 429
    return-void

    .line 423
    :pswitch_a
    invoke-static {}, Lcom/uc/crashsdk/e;->N()V

    .line 424
    return-void

    .line 419
    :pswitch_b
    sget-object p0, Lcom/uc/crashsdk/e;->W:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object p1, Lcom/uc/crashsdk/e;->V:Ljava/lang/Runnable;

    if-nez p1, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    sput-boolean v3, Lcom/uc/crashsdk/e;->U:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {}, Lcom/uc/crashsdk/b;->o()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result p1

    if-nez p1, :cond_11

    const-string p0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string p1, "unexp"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p0, "DEBUG"

    const-string p1, "unexp sample miss"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-static {}, Lcom/uc/crashsdk/h;->p()I

    move-result p1

    int-to-long v4, p1

    invoke-static {}, Lcom/uc/crashsdk/h;->q()I

    move-result p1

    invoke-static {v4, v5, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeGenerateUnexpLog(JI)I

    move-result p1

    if-eqz p1, :cond_18

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    and-int/lit16 v0, p1, 0x500

    if-eqz v0, :cond_13

    const/16 p1, 0xa

    :goto_3
    invoke-static {p1}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_4

    :cond_13
    and-int/lit16 v0, p1, 0x900

    if-eqz v0, :cond_14

    const/16 p1, 0x1d

    goto :goto_3

    :cond_14
    and-int/lit16 v0, p1, 0x1100

    if-eqz v0, :cond_15

    const/16 p1, 0x1e

    goto :goto_3

    :cond_15
    and-int/lit16 v0, p1, 0x2100

    if-eqz v0, :cond_16

    const/16 p1, 0x1f

    goto :goto_3

    :cond_16
    and-int/lit16 p1, p1, 0x4100

    if-eqz p1, :cond_17

    const/16 p1, 0x20

    goto :goto_3

    :cond_17
    :goto_4
    invoke-static {v3}, Lcom/uc/crashsdk/e;->a(Z)V

    :cond_18
    monitor-enter p0

    :try_start_5
    sput-object v1, Lcom/uc/crashsdk/e;->V:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    .line 420
    :cond_19
    return-void

    .line 419
    :catchall_4
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    .line 415
    :pswitch_c
    invoke-static {}, Lcom/uc/crashsdk/b;->B()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    goto :goto_5

    :cond_1a
    const/4 p0, 0x0

    :goto_5
    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->nativePrepareUnexpInfos(Z)V

    sput-boolean v3, Lcom/uc/crashsdk/a;->c:Z

    invoke-static {v2}, Lcom/uc/crashsdk/a;->a(Z)Z

    sput-boolean v3, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->M()V

    invoke-static {}, Lcom/uc/crashsdk/e;->s()V

    .line 416
    return-void

    .line 483
    :cond_1b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 3484
    invoke-static {}, Lcom/uc/crashsdk/h;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3485
    return-void

    .line 3489
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3490
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3491
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3492
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3493
    sget-object v1, Lcom/uc/crashsdk/e;->O:Lcom/uc/crashsdk/e$a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3494
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/crashsdk/e;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3497
    return-void

    .line 3495
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3498
    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$b;)V
    .locals 5

    .line 1330
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "log end: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1331
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1330
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    return-void

    .line 1333
    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1336
    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$b;Ljava/lang/String;J)V
    .locals 4

    .line 2734
    const-string v0, "UTF-8"

    .line 2735
    nop

    .line 2736
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2739
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    goto :goto_0

    .line 2740
    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2745
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/uc/crashsdk/JNIBridge;->nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2746
    sget-boolean p2, Lcom/uc/crashsdk/e;->ad:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 2747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x200

    if-ge p2, p3, :cond_1

    .line 2748
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    .line 2749
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    .line 2751
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2755
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not found "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2757
    :cond_0
    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    goto :goto_1

    .line 2759
    :cond_1
    move-object v2, p1

    goto :goto_1

    .line 2762
    :cond_2
    const-string p1, "Native not initialized, skip dump!"

    .line 2765
    :goto_1
    if-eqz p1, :cond_3

    .line 2768
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$b;->write([B)V

    .line 2769
    const-string p1, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2772
    goto :goto_2

    .line 2770
    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2773
    :goto_2
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 2774
    :cond_3
    if-eqz v2, :cond_4

    sget-boolean p1, Lcom/uc/crashsdk/e;->ad:Z

    if-nez p1, :cond_4

    .line 2776
    const/high16 p1, 0x100000

    invoke-static {p0, v2, p1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    .line 2778
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2780
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2785
    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2788
    return-void

    .line 2786
    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2789
    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .locals 2

    .line 906
    :try_start_0
    const-string v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    return-void

    .line 907
    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 910
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->g:Z

    .line 3274
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s^$"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 3275
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3274
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    goto :goto_0

    .line 3276
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3279
    :goto_0
    sput-boolean v1, Lcom/uc/crashsdk/e;->g:Z

    .line 3280
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5

    .line 3259
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->g:Z

    .line 3261
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s`%d`%d^$"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 p1, 0x2

    .line 3262
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3261
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 3262
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3261
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3265
    goto :goto_0

    .line 3263
    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3266
    :goto_0
    sput-boolean v1, Lcom/uc/crashsdk/e;->g:Z

    .line 3267
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 3268
    return-void
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1072
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "UTF-8"

    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1073
    const-string v4, "/storage/emulated"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 1076
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1079
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1084
    nop

    .line 1086
    const-string v4, "getBlockCountLong"

    const-string v5, "getBlockCount"

    invoke-static {v2, v4, v5}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 1088
    const-string v6, "getBlockSizeLong"

    const-string v7, "getBlockSize"

    invoke-static {v2, v6, v7}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 1090
    const-wide/16 v8, 0x400

    div-long v8, v4, v8

    mul-long v8, v8, v6

    const-wide/16 v10, 0x2800

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    .line 1091
    return-void

    .line 1094
    :cond_1
    const-string v8, "getAvailableBlocksLong"

    const-string v9, "getAvailableBlocks"

    invoke-static {v2, v8, v9}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 1096
    const-string v10, "getFreeBlocksLong"

    const-string v11, "getFreeBlocks"

    invoke-static {v2, v10, v11}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 1099
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s:\n"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    invoke-static {v2, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  total:      %d kB\n"

    new-array v12, v13, [Ljava/lang/Object;

    long-to-double v4, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v16

    long-to-double v13, v6

    mul-double v4, v4, v13

    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    div-double v4, v4, v18

    double-to-long v4, v4

    .line 1101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v15

    .line 1100
    invoke-static {v0, v2, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1100
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  available:  %d kB\n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    long-to-double v8, v8

    mul-double v8, v8, v16

    mul-double v8, v8, v13

    div-double v8, v8, v18

    double-to-long v8, v8

    .line 1104
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v15

    .line 1103
    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1103
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1106
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  free:       %d kB\n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    long-to-double v8, v10

    mul-double v8, v8, v16

    mul-double v8, v8, v13

    div-double v8, v8, v18

    double-to-long v8, v8

    .line 1107
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v15

    .line 1106
    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1106
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1109
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  block size: %d B\n\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1109
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    return-void

    .line 1111
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1114
    return-void

    .line 1082
    :catchall_1
    move-exception v0

    .line 1083
    return-void

    .line 1074
    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 2966
    if-eqz p1, :cond_0

    .line 2967
    sput-object p0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    .line 2968
    return-void

    .line 2971
    :cond_0
    sget-object p1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter p1

    .line 2972
    :try_start_0
    sput-object p0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 2973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2975
    invoke-static {}, Lcom/uc/crashsdk/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 2974
    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2976
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static a(Ljava/lang/String;ZZ)V
    .locals 30

    .line 1893
    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v0

    .line 1894
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Folder not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 1897
    return-void

    .line 1900
    :cond_0
    nop

    .line 1901
    nop

    .line 1902
    nop

    .line 1903
    nop

    .line 1904
    nop

    .line 1905
    nop

    .line 1906
    nop

    .line 1907
    nop

    .line 1908
    nop

    .line 1909
    nop

    .line 1911
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1912
    if-nez v1, :cond_1

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "List folder failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 1914
    return-void

    .line 1917
    :cond_1
    nop

    .line 1918
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v4, v2, :cond_23

    aget-object v3, v1, v4

    .line 1919
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    move-object/from16 v17, v1

    if-nez v0, :cond_2

    .line 1920
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    .line 1921
    move/from16 v21, v2

    goto :goto_2

    .line 1924
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1925
    if-eqz p2, :cond_4

    const-string v1, "ucebu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v21, v2

    goto :goto_2

    .line 1926
    :cond_4
    :goto_1
    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v19, 0x3e8

    if-eqz v1, :cond_6

    .line 1930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v23

    sub-long v21, v21, v23

    div-long v21, v21, v19

    .line 1932
    const-wide/16 v18, 0x1e

    cmp-long v1, v21, v18

    if-lez v1, :cond_5

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v21, v2

    const-string v2, "delete legacy tmp file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 1934
    add-int/lit8 v6, v6, 0x1

    .line 1935
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    move/from16 v25, v13

    const/16 v16, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_10

    .line 1932
    :cond_5
    move/from16 v21, v2

    .line 1918
    :goto_2
    move/from16 v25, v13

    const/16 v16, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_10

    .line 1940
    :cond_6
    move/from16 v21, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    move v2, v13

    move/from16 v22, v14

    const-wide/16 v13, 0x0

    cmp-long v23, v0, v13

    if-nez v23, :cond_7

    .line 1941
    add-int/lit8 v5, v5, 0x1

    .line 1942
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    .line 1943
    move-object/from16 v13, p0

    move/from16 v25, v2

    move/from16 v14, v22

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 1946
    :cond_7
    if-eqz p1, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    sub-long v24, v24, v26

    div-long v24, v24, v19

    cmp-long v0, v24, v13

    if-ltz v0, :cond_9

    const-wide/16 v19, 0x2

    cmp-long v0, v24, v19

    if-gez v0, :cond_8

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const-wide/16 v19, 0x5

    cmp-long v0, v24, v19

    if-gez v0, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v13, ".log"

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    :goto_4
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x3

    new-array v1, v14, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v1, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v18, 0x1

    aput-object v14, v1, v18

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v24, 0x2

    aput-object v14, v1, v24

    const-string v14, "file: %s, modify interval: %d s, safe upload: %s"

    invoke-static {v13, v14, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_a

    .line 1947
    add-int/lit8 v7, v7, 0x1

    .line 1948
    move-object/from16 v13, p0

    move/from16 v25, v2

    move/from16 v14, v22

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 1953
    :cond_a
    nop

    .line 1954
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/h;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "([^_]+)_([^_]+)_([^_]+)\\.crashsdk"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v24, v7

    :try_start_1
    const-string v7, "%s%s_%s_%s.%s"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v25, v2

    const/4 v2, 0x5

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v14}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v2, v16

    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x1

    aput-object v14, v2, v18

    invoke-static {}, Lcom/uc/crashsdk/e;->G()Ljava/lang/String;

    move-result-object v14

    const/16 v26, 0x2

    aput-object v14, v2, v26

    const/4 v14, 0x3

    aput-object v13, v2, v14

    const/4 v13, 0x4

    aput-object v0, v2, v13

    invoke-static {v1, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " matches, rename to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1958
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v25, v2

    goto :goto_6

    .line 1954
    :cond_b
    move/from16 v25, v2

    move/from16 v24, v7

    move-object v1, v3

    .line 1955
    :goto_5
    if-eq v1, v3, :cond_c

    .line 1956
    add-int/lit8 v9, v9, 0x1

    .line 1960
    :cond_c
    move-object v3, v1

    goto :goto_7

    .line 1958
    :catchall_2
    move-exception v0

    move/from16 v25, v2

    move/from16 v24, v7

    :goto_6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1962
    :goto_7
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1963
    invoke-static {v0}, Lcom/uc/crashsdk/e;->o(Ljava/lang/String;)[Z

    move-result-object v1

    .line 1964
    const/4 v2, 0x0

    aget-boolean v7, v1, v2

    const/4 v13, 0x1

    aget-boolean v14, v1, v13

    invoke-static {v0, v7, v14}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 1967
    if-eq v0, v7, :cond_f

    .line 1968
    aget-boolean v0, v1, v2

    if-eqz v0, :cond_d

    .line 1969
    add-int/lit8 v10, v10, 0x1

    .line 1971
    :cond_d
    const/4 v2, 0x1

    aget-boolean v0, v1, v2

    if-eqz v0, :cond_e

    .line 1972
    add-int/lit8 v11, v11, 0x1

    .line 1974
    :cond_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1978
    :cond_f
    invoke-static {v3}, Lcom/uc/crashsdk/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_8

    :cond_10
    if-eq v3, v0, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1979
    :cond_11
    :goto_8
    if-nez v0, :cond_12

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBeforeUploadLog return null, skip upload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1980
    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 1982
    move-object/from16 v13, p0

    move/from16 v14, v22

    move/from16 v7, v24

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 1984
    :cond_12
    nop

    .line 1986
    invoke-static {}, Lcom/uc/crashsdk/h;->B()I

    move-result v2

    .line 1987
    if-lez v2, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    int-to-long v2, v2

    cmp-long v7, v13, v2

    if-ltz v7, :cond_13

    .line 1988
    add-int/lit8 v8, v8, 0x1

    .line 1989
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    .line 1990
    move-object/from16 v13, p0

    move/from16 v14, v22

    move/from16 v7, v24

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 1995
    :cond_13
    new-instance v2, Lcom/uc/crashsdk/e$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/e$d;-><init>(B)V

    const-wide/16 v13, 0x0

    iput-wide v13, v2, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v2, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {}, Lcom/uc/crashsdk/e;->K()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    new-instance v7, Lcom/uc/crashsdk/a/e;

    const/16 v13, 0x1c3

    const/4 v14, 0x2

    new-array v1, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v1, v14

    const/4 v14, 0x1

    aput-object v2, v1, v14

    invoke-direct {v7, v13, v1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v3, v7}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    :cond_14
    invoke-static {}, Lcom/uc/crashsdk/h;->C()J

    move-result-wide v13

    invoke-static {}, Lcom/uc/crashsdk/h;->D()I

    move-result v1

    invoke-static {}, Lcom/uc/crashsdk/h;->E()I

    move-result v3

    const-wide/16 v19, 0x0

    cmp-long v7, v13, v19

    if-ltz v7, :cond_15

    move v7, v9

    move/from16 v19, v10

    iget-wide v9, v2, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v28

    add-long v9, v9, v28

    cmp-long v20, v9, v13

    if-lez v20, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/uc/crashsdk/e$d;->e:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Reach max upload bytes: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-static {v1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    move v7, v9

    move/from16 v19, v10

    :cond_16
    invoke-static {}, Lcom/uc/crashsdk/h;->g()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_17

    if-ltz v1, :cond_18

    iget v3, v2, Lcom/uc/crashsdk/e$d;->c:I

    if-lt v3, v1, :cond_18

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/uc/crashsdk/e$d;->g:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Reach max upload crash log count: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_17
    if-ltz v3, :cond_18

    iget v1, v2, Lcom/uc/crashsdk/e$d;->d:I

    if-lt v1, v3, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/uc/crashsdk/e$d;->f:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Reach max upload custom log count: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1996
    :cond_18
    :goto_b
    iget-boolean v1, v2, Lcom/uc/crashsdk/e$d;->e:Z

    if-eqz v1, :cond_19

    .line 1997
    nop

    .line 2000
    move-object/from16 v13, p0

    move v9, v7

    move/from16 v10, v19

    move/from16 v14, v22

    move/from16 v7, v24

    const/4 v12, 0x1

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 2002
    :cond_19
    iget-boolean v1, v2, Lcom/uc/crashsdk/e$d;->g:Z

    if-eqz v1, :cond_1a

    .line 2003
    nop

    .line 2004
    move-object/from16 v13, p0

    move v9, v7

    move/from16 v10, v19

    move/from16 v14, v22

    move/from16 v7, v24

    const/16 v16, 0x0

    const/16 v25, 0x1

    goto/16 :goto_10

    .line 2006
    :cond_1a
    iget-boolean v1, v2, Lcom/uc/crashsdk/e$d;->f:Z

    if-eqz v1, :cond_1b

    .line 2007
    nop

    .line 2008
    move-object/from16 v13, p0

    move v9, v7

    move/from16 v10, v19

    move/from16 v7, v24

    const/4 v14, 0x1

    const/16 v16, 0x0

    goto/16 :goto_10

    .line 2011
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uc/crashsdk/e;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0xa

    const-string v9, "_"

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/16 v9, 0x9

    if-ne v3, v9, :cond_1c

    const/4 v3, 0x1

    aget-object v1, v1, v3

    goto :goto_c

    :cond_1c
    const/4 v1, 0x0

    .line 2012
    :goto_c
    if-eqz v1, :cond_1d

    .line 2013
    invoke-static {}, Lcom/uc/crashsdk/h;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 v1, 0x0

    .line 2016
    :goto_d
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v13, p0

    invoke-static {v0, v3, v13}, Lcom/uc/crashsdk/a/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v9, "crashsdk"

    if-eqz v3, :cond_20

    .line 2017
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "Uploaded log: "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v9, v3, v10}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2018
    if-eqz v1, :cond_1e

    .line 2020
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/uc/crashsdk/f;->a(I)V

    .line 2022
    :cond_1e
    iget-wide v14, v2, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v28

    add-long v14, v14, v28

    iput-wide v14, v2, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, v2, Lcom/uc/crashsdk/e$d;->c:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v2, Lcom/uc/crashsdk/e$d;->c:I

    goto :goto_e

    :cond_1f
    const/4 v3, 0x1

    iget v1, v2, Lcom/uc/crashsdk/e$d;->d:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/uc/crashsdk/e$d;->d:I

    :goto_e
    invoke-static {}, Lcom/uc/crashsdk/e;->K()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lcom/uc/crashsdk/a/e;

    const/16 v14, 0x1c4

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    aput-object v2, v15, v3

    invoke-direct {v10, v14, v15}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v1, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    .line 2024
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2025
    const/4 v15, 0x0

    goto :goto_f

    .line 2027
    :cond_20
    const/16 v16, 0x0

    add-int/lit8 v15, v15, 0x1

    .line 2028
    if-eqz v1, :cond_21

    .line 2030
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    .line 2034
    :cond_21
    :goto_f
    const/4 v1, 0x3

    if-lt v15, v1, :cond_22

    .line 2035
    const-string v0, "Upload failed 3 times continuously, abort upload!"

    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2036
    move v9, v7

    move/from16 v10, v19

    goto :goto_11

    .line 2034
    :cond_22
    move v9, v7

    move/from16 v10, v19

    move/from16 v14, v22

    move/from16 v7, v24

    .line 1918
    :goto_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v13, v25

    goto/16 :goto_0

    :cond_23
    move/from16 v24, v7

    move/from16 v25, v13

    move/from16 v22, v14

    .line 2040
    :goto_11
    if-lez v6, :cond_24

    .line 2041
    const/16 v0, 0xc8

    invoke-static {v0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2043
    :cond_24
    if-lez v5, :cond_25

    .line 2044
    const/16 v0, 0xf

    invoke-static {v0, v5}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2046
    :cond_25
    if-lez v8, :cond_26

    .line 2047
    const/16 v0, 0x11

    invoke-static {v0, v8}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2050
    :cond_26
    if-eqz v12, :cond_27

    .line 2051
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    .line 2053
    :cond_27
    if-eqz v25, :cond_28

    .line 2054
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    .line 2056
    :cond_28
    if-eqz v22, :cond_29

    .line 2057
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    .line 2059
    :cond_29
    if-nez v12, :cond_2a

    if-nez v25, :cond_2a

    if-eqz v22, :cond_2b

    .line 2060
    :cond_2a
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    .line 2063
    :cond_2b
    if-lez v10, :cond_2c

    .line 2064
    const/16 v0, 0x18

    invoke-static {v0, v10}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2066
    :cond_2c
    if-lez v11, :cond_2d

    .line 2067
    const/16 v0, 0xc9

    invoke-static {v0, v11}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2069
    :cond_2d
    if-lez v9, :cond_2e

    .line 2070
    const/16 v0, 0x19

    invoke-static {v0, v9}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2072
    :cond_2e
    if-lez v24, :cond_2f

    .line 2073
    const/16 v0, 0x1a

    move/from16 v3, v24

    invoke-static {v0, v3}, Lcom/uc/crashsdk/f;->a(II)V

    .line 2075
    :cond_2f
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 3736
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 3737
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3738
    const-string v0, "DEBUG"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3740
    return-void

    .line 3739
    :catchall_0
    move-exception p0

    .line 3741
    return-void
.end method

.method static a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 2

    .line 1859
    const-string v0, "UTF-8"

    if-eqz p1, :cond_0

    .line 1861
    :try_start_0
    const-string v1, "[DEBUG] CrashHandler occurred new exception:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1862
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1863
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1864
    const-string v1, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    goto :goto_0

    .line 1865
    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1869
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1870
    return-void
.end method

.method static a(Z)V
    .locals 9

    .line 530
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    return-void

    .line 534
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 536
    if-nez v0, :cond_1

    .line 537
    return-void

    .line 540
    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/h;->m()I

    move-result v1

    .line 541
    invoke-static {}, Lcom/uc/crashsdk/h;->n()I

    move-result v2

    .line 542
    array-length v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 543
    return-void

    .line 547
    :cond_2
    nop

    .line 548
    nop

    .line 549
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v8, v0, v5

    .line 550
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v8

    .line 551
    if-eqz v8, :cond_3

    .line 552
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 554
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 549
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 559
    :cond_4
    nop

    .line 560
    nop

    .line 561
    if-eqz p0, :cond_5

    if-lt v6, v1, :cond_5

    .line 562
    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 564
    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-nez p0, :cond_6

    if-lt v7, v2, :cond_6

    .line 565
    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 567
    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    .line 568
    return-void

    .line 572
    :cond_7
    new-instance p0, Lcom/uc/crashsdk/e$c;

    invoke-direct {p0, v4}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 574
    nop

    .line 575
    nop

    .line 576
    array-length p0, v0

    move v1, v6

    move v2, v7

    :goto_4
    if-ge v4, p0, :cond_b

    aget-object v3, v0, v4

    .line 577
    invoke-static {v3}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v5

    .line 578
    if-eqz v5, :cond_8

    if-lez v1, :cond_8

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Delete oldest crash log: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 581
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 582
    :cond_8
    if-nez v5, :cond_9

    if-lez v2, :cond_9

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Delete oldest custom log: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 585
    add-int/lit8 v2, v2, -0x1

    .line 587
    :cond_9
    :goto_5
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 588
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 592
    :cond_b
    const/16 p0, 0x10

    add-int v0, v6, v7

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(II)V

    .line 594
    if-lez v6, :cond_c

    .line 595
    const/16 p0, 0x16

    invoke-static {p0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    .line 598
    :cond_c
    if-lez v7, :cond_d

    .line 599
    const/16 p0, 0x17

    invoke-static {p0, v7}, Lcom/uc/crashsdk/f;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_d
    return-void

    .line 602
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 605
    return-void
.end method

.method public static a()Z
    .locals 9

    .line 115
    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 116
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/uc/crashsdk/e;->f:J

    .line 118
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    const-string v1, "getLong"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    const/4 v1, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "debug.crs.logs"

    aput-object v7, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    .line 125
    sput-wide v2, Lcom/uc/crashsdk/e;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 132
    :cond_1
    :goto_0
    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    return v4

    :cond_2
    return v5
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)Z
    .locals 5

    .line 4198
    sget-boolean v0, Lcom/uc/crashsdk/e;->ac:Z

    const-string v1, "crashsdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4199
    const-string p0, "Can not call setHostFd and getHostFd in the same process!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    return v2

    .line 4203
    :cond_0
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_1

    .line 4204
    const-string p0, "Crash so is not loaded!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    return v2

    .line 4208
    :cond_1
    sget-object v0, Lcom/uc/crashsdk/e;->ab:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 4209
    const-string v0, "Has already set host fd!"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    :cond_2
    sput-object p0, Lcom/uc/crashsdk/e;->ab:Landroid/os/ParcelFileDescriptor;

    .line 4214
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    .line 4215
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/uc/crashsdk/JNIBridge;->nativeGetOrSetHostFd(II)I

    move-result v1

    .line 4216
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    sput-boolean v4, Lcom/uc/crashsdk/e;->ad:Z

    .line 4217
    if-eq p0, v3, :cond_5

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method private static a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;ZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2804
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    .line 2805
    nop

    .line 2807
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v2, v8

    if-nez v12, :cond_0

    .line 2808
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    goto :goto_0

    .line 2817
    :catchall_0
    move-exception v0

    move-object v13, v10

    move-object v14, v13

    goto :goto_1

    .line 2807
    :cond_0
    move-object v13, v10

    .line 2810
    :goto_0
    :try_start_1
    new-instance v14, Lcom/uc/crashsdk/e$b;

    invoke-direct {v14, v2, v3, v13}, Lcom/uc/crashsdk/e$b;-><init>(JLjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2811
    :try_start_2
    sget-object v15, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2812
    :try_start_3
    sput-object v1, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2813
    const-string v0, "logb"

    invoke-static {v0, v1, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2814
    monitor-exit v15

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2817
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v14, v10

    :goto_1
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2819
    :goto_2
    if-nez v14, :cond_1

    .line 2820
    return v11

    .line 2825
    :cond_1
    const/4 v15, 0x1

    if-eqz p5, :cond_2

    .line 2826
    move-object/from16 v8, p4

    :try_start_5
    invoke-static {v14, v1, v8}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    .line 2921
    :catchall_4
    move-exception v0

    goto/16 :goto_c

    .line 2831
    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V

    .line 2832
    const-string v0, "\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V

    .line 2833
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2836
    goto :goto_4

    .line 2834
    :catchall_5
    move-exception v0

    :try_start_7
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2837
    :goto_4
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 2840
    if-eqz p7, :cond_3

    .line 2841
    invoke-static {v14}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2843
    :try_start_8
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 2846
    goto :goto_5

    .line 2844
    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2850
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2851
    const-string v0, "UTF-8"

    invoke-static {v14, v0, v4}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2855
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2856
    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v14, v0, v1, v5}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2860
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual/range {p11 .. p11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2861
    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v14, v0, v1, v6}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2865
    :cond_6
    if-eqz v7, :cond_7

    .line 2867
    :try_start_a
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 2870
    goto :goto_6

    .line 2868
    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2873
    :goto_6
    :try_start_c
    const-string v0, "threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 2876
    goto :goto_7

    .line 2874
    :catchall_8
    move-exception v0

    :try_start_d
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2878
    :goto_7
    sput-boolean v11, Lcom/uc/crashsdk/e;->g:Z

    .line 2879
    sput-object v7, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2881
    :try_start_e
    invoke-static {v14, v7, v2, v3}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$b;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 2884
    goto :goto_8

    .line 2882
    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2885
    :goto_8
    sput-object v10, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    .line 2886
    sput-boolean v15, Lcom/uc/crashsdk/e;->g:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2890
    :cond_7
    if-eqz p8, :cond_8

    if-nez v12, :cond_8

    .line 2892
    :try_start_10
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 2895
    goto :goto_9

    .line 2893
    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_11
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 2898
    :goto_9
    :try_start_12
    const-string v0, "all threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 2901
    goto :goto_a

    .line 2899
    :catchall_b
    move-exception v0

    :try_start_13
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2903
    :goto_a
    sput-boolean v15, Lcom/uc/crashsdk/e;->u:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2905
    :try_start_14
    const-string v0, "all"

    const-wide/16 v1, 0x0

    invoke-static {v14, v0, v1, v2}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$b;Ljava/lang/String;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 2908
    goto :goto_b

    .line 2906
    :catchall_c
    move-exception v0

    :try_start_15
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2909
    :goto_b
    sput-boolean v11, Lcom/uc/crashsdk/e;->u:Z

    .line 2913
    :cond_8
    if-eqz p6, :cond_9

    .line 2914
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$b;->a()V

    .line 2915
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$b;)V

    .line 2918
    :cond_9
    if-eqz v12, :cond_a

    .line 2919
    invoke-static {v14}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$b;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_d

    .line 2921
    :goto_c
    :try_start_16
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 2924
    :cond_a
    :goto_d
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2925
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2926
    nop

    .line 2929
    :try_start_17
    sget-object v1, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 2930
    :try_start_18
    sget v0, Lcom/uc/crashsdk/e;->s:I

    add-int/2addr v0, v15

    sput v0, Lcom/uc/crashsdk/e;->s:I

    .line 2931
    sget-object v0, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 2932
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2933
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_b

    .line 2934
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2937
    :cond_b
    const-string v0, "loge"

    sget-object v2, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    invoke-static {v0, v2, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2938
    sput-object v10, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2940
    :cond_c
    const-string v0, "logct"

    sget v2, Lcom/uc/crashsdk/e;->s:I

    invoke-static {v0, v10, v2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2941
    monitor-exit v1

    goto :goto_e

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 2944
    :catchall_e
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2946
    :goto_e
    return v15

    .line 2924
    :catchall_f
    move-exception v0

    move-object v1, v0

    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2925
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .locals 5

    .line 2236
    nop

    .line 2237
    sget-object v0, Lcom/uc/crashsdk/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2239
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez p0, :cond_0

    .line 2242
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2245
    goto :goto_0

    .line 2243
    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2248
    :cond_0
    :goto_0
    nop

    .line 2251
    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2254
    goto :goto_1

    .line 2279
    :catchall_0
    move-exception p1

    goto :goto_8

    .line 2252
    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, p0

    .line 2256
    :goto_1
    nop

    .line 2258
    if-eqz v1, :cond_1

    .line 2259
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 2261
    :catch_2
    move-exception v3

    :try_start_6
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 2276
    :catch_3
    move-exception p0

    goto :goto_6

    .line 2263
    :cond_1
    :goto_2
    nop

    .line 2266
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2268
    if-eqz p0, :cond_3

    .line 2270
    :try_start_8
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2273
    :goto_4
    goto :goto_7

    .line 2271
    :catch_4
    move-exception p0

    :try_start_9
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    .line 2268
    :catchall_1
    move-exception p1

    if-eqz p0, :cond_2

    .line 2270
    :try_start_a
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2273
    goto :goto_5

    .line 2271
    :catch_5
    move-exception p0

    :try_start_b
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2273
    :cond_2
    :goto_5
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2276
    :catch_6
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_6
    :try_start_c
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2279
    :cond_3
    :goto_7
    :try_start_d
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2280
    nop

    .line 2281
    monitor-exit v0

    .line 2282
    return v2

    .line 2279
    :catchall_2
    move-exception p1

    move-object p0, v1

    :goto_8
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    .line 2281
    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z
    .locals 8

    .line 2337
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2338
    const/16 p0, 0x40

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    .line 2339
    if-nez p0, :cond_0

    .line 2340
    const/4 p0, 0x0

    return p0

    .line 2343
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2344
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2345
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 2348
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uc/crashsdk/e$d;->b:J

    .line 2349
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/uc/crashsdk/e$d;->c:I

    .line 2350
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/uc/crashsdk/e$d;->d:I

    .line 2351
    iput-wide v1, p1, Lcom/uc/crashsdk/e$d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    :cond_1
    goto :goto_0

    .line 2354
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2357
    :goto_0
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1533
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 1534
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 1536
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 2636
    invoke-static {p1}, Lcom/uc/crashsdk/e;->p(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2637
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 2638
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Custom log \'%s\' has reach max count!"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 2640
    return v0

    .line 2642
    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;ZZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2533
    move-object/from16 v0, p1

    move/from16 v14, p6

    sget-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    .line 2534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing java crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 2535
    return v15

    .line 2538
    :cond_0
    sget-boolean v1, Lcom/uc/crashsdk/e;->ad:Z

    const/4 v13, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v16, 0x1

    .line 2539
    :goto_1
    if-nez v16, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2540
    const-string v0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    return v15

    .line 2544
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2545
    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom log sample miss: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    return v15

    .line 2549
    :cond_4
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing native crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 2551
    return v15

    .line 2554
    :cond_5
    if-eqz p0, :cond_12

    if-nez v0, :cond_6

    goto/16 :goto_7

    .line 2558
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2561
    nop

    .line 2562
    const-wide/16 v17, 0x0

    if-eqz v16, :cond_a

    .line 2563
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_8

    .line 2564
    nop

    .line 2565
    if-eqz v14, :cond_7

    .line 2566
    const/4 v1, 0x1

    goto :goto_2

    .line 2565
    :cond_7
    const/4 v1, 0x0

    .line 2568
    :goto_2
    const-string v2, "custom"

    invoke-static {v12, v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_3

    .line 2563
    :cond_8
    move-wide/from16 v1, v17

    .line 2572
    :goto_3
    cmp-long v3, v1, v17

    if-nez v3, :cond_9

    .line 2573
    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip custom log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    return v15

    .line 2572
    :cond_9
    move-wide/from16 v19, v1

    goto :goto_4

    .line 2577
    :cond_a
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2578
    return v15

    .line 2581
    :cond_b
    invoke-static {}, Lcom/uc/crashsdk/h;->b()V

    .line 2582
    invoke-static {v15}, Lcom/uc/crashsdk/e;->a(Z)V

    move-wide/from16 v19, v17

    .line 2586
    :goto_4
    sget-object v21, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    monitor-enter v21

    .line 2590
    move-object v1, v12

    move-wide/from16 v2, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v22, v12

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    :try_start_0
    invoke-static/range {v1 .. v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;ZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 2594
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2596
    if-eqz v1, :cond_c

    if-nez v16, :cond_c

    .line 2597
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v14}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2600
    :cond_c
    cmp-long v2, v19, v17

    if-eqz v2, :cond_d

    .line 2601
    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 2604
    :cond_d
    if-nez v1, :cond_e

    .line 2605
    return v15

    .line 2609
    :cond_e
    if-nez v16, :cond_f

    .line 2610
    invoke-static/range {v22 .. v22}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)V

    .line 2614
    :cond_f
    nop

    .line 2615
    if-nez v16, :cond_10

    .line 2616
    invoke-static/range {v22 .. v22}, Lcom/uc/crashsdk/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2617
    invoke-static {v1}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 2615
    :cond_10
    move-object/from16 v12, v22

    .line 2620
    :goto_5
    invoke-static {v12, v0}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    if-eqz v14, :cond_11

    if-nez v16, :cond_11

    .line 2625
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1, v15}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2628
    goto :goto_6

    .line 2626
    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2623
    :cond_11
    const/4 v1, 0x1

    .line 2631
    :goto_6
    return v1

    .line 2594
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2555
    :cond_12
    :goto_7
    return v15
.end method

.method public static a(ZZ)Z
    .locals 7

    .line 2139
    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2140
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 2141
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFilesUploaded()V

    .line 2143
    :cond_0
    sput-boolean v1, Lcom/uc/crashsdk/e;->d:Z

    .line 2147
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->i()Ljava/lang/String;

    move-result-object v2

    .line 2148
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2149
    const-string p0, "CrashHandler url is empty!"

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 2150
    return v0

    .line 2153
    :cond_2
    sget-object v3, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2154
    :try_start_1
    new-instance v4, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x196

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    .line 2156
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, p1

    invoke-direct {v4, v5, v6}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 2157
    nop

    .line 2158
    if-nez p0, :cond_3

    .line 2159
    const/4 p1, 0x0

    goto :goto_0

    .line 2158
    :cond_3
    const/4 p1, 0x1

    .line 2161
    :goto_0
    invoke-static {p1, v4}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2162
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 2165
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2168
    goto :goto_1

    .line 2166
    :catch_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2170
    :cond_4
    :goto_1
    monitor-exit v3

    .line 2171
    return v1

    .line 2170
    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2172
    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2175
    return v0
.end method

.method static b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .locals 10

    .line 1386
    nop

    .line 1387
    nop

    .line 1388
    nop

    .line 1390
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    if-eqz v3, :cond_7

    .line 1392
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/e;->H()[B

    move-result-object p1

    .line 1393
    if-nez p1, :cond_0

    .line 1394
    const-string p1, "(alloc buffer failed!)\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1395
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return v1

    .line 1397
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1398
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1401
    :goto_0
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 1402
    add-int/2addr v0, v7

    .line 1403
    nop

    .line 1404
    sub-int v8, p2, v2

    add-int/lit8 v9, v8, 0x20

    if-le v7, v9, :cond_1

    .line 1405
    goto :goto_1

    .line 1404
    :cond_1
    move v8, v7

    .line 1407
    :goto_1
    if-lez v8, :cond_2

    if-nez v6, :cond_2

    .line 1408
    invoke-virtual {p0, p1, v1, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1409
    add-int/2addr v2, v8

    .line 1411
    :cond_2
    if-nez v6, :cond_5

    .line 1412
    if-lt v8, v7, :cond_4

    if-lt v2, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 1414
    :cond_5
    :goto_3
    goto :goto_0

    .line 1415
    :cond_6
    goto :goto_4

    .line 1426
    :catchall_0
    move-exception p1

    move v1, v2

    move-object v0, v3

    goto :goto_5

    .line 1416
    :cond_7
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not exists!\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1418
    :goto_4
    if-lez v2, :cond_8

    .line 1419
    :try_start_5
    const-string p1, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1422
    :cond_8
    if-ge v2, v0, :cond_9

    .line 1423
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "(truncated %d bytes)\n"

    new-array v4, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    .line 1424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1423
    invoke-static {p1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1424
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1423
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1429
    :cond_9
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1430
    goto :goto_6

    .line 1426
    :catchall_1
    move-exception p1

    :goto_5
    :try_start_6
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1429
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1430
    move v2, v1

    .line 1431
    :goto_6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1432
    return v2

    .line 1429
    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(ZZ)I
    .locals 1

    .line 4072
    sget-boolean v0, Lcom/uc/crashsdk/e;->aa:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4078
    const/4 p0, 0x0

    return p0

    .line 4081
    :cond_0
    if-eqz p1, :cond_1

    .line 4082
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->aa:Z

    .line 4083
    sget-boolean v0, Lcom/uc/crashsdk/e;->Z:Z

    if-nez v0, :cond_1

    .line 4084
    invoke-static {}, Lcom/uc/crashsdk/f;->c()V

    .line 4089
    :cond_1
    if-eqz p0, :cond_2

    .line 4092
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 4091
    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;)Z

    move-result v0

    .line 4093
    invoke-static {}, Lcom/uc/crashsdk/a/h;->c()V

    .line 4094
    nop

    .line 4095
    goto :goto_0

    .line 4096
    :cond_2
    invoke-static {}, Lcom/uc/crashsdk/f;->a()I

    move-result v0

    .line 4097
    invoke-static {}, Lcom/uc/crashsdk/a/h;->c()V

    .line 4101
    :goto_0
    if-eqz p1, :cond_3

    .line 4102
    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(Z)I

    move-result p0

    return p0

    .line 4104
    :cond_3
    return v0
.end method

.method static b()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/e;->h:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public static b(I)V
    .locals 3

    .line 3940
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19a

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3943
    return-void
.end method

.method private static b(Lcom/uc/crashsdk/e$b;)V
    .locals 2

    .line 1339
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->g:Z

    .line 1341
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOG_END"

    invoke-static {v1}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$b;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    goto :goto_0

    .line 1343
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1346
    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/crashsdk/e;->g:Z

    .line 1347
    return-void
.end method

.method private static b(Ljava/io/OutputStream;)V
    .locals 11

    .line 913
    const-string v0, "-b"

    const-string v1, "UTF-8"

    .line 916
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "logcat: \n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 917
    invoke-static {}, Lcom/uc/crashsdk/h;->o()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-gtz v4, :cond_0

    .line 919
    :try_start_1
    const-string v0, "[DEBUG] custom java logcat lines count is 0!\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 923
    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 978
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 924
    return-void

    .line 927
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/h;->o()I

    move-result v4

    .line 930
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "logcat"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "-d"

    aput-object v7, v6, v3

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v9, 0x3

    const-string v10, "events"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    aput-object v0, v6, v9

    const/4 v0, 0x5

    const-string v9, "main"

    aput-object v9, v6, v0

    const/4 v0, 0x6

    const-string v9, "-v"

    aput-object v9, v6, v0

    const/4 v0, 0x7

    const-string v9, "threadtime"

    aput-object v9, v6, v0

    const/16 v0, 0x8

    const-string v9, "-t"

    aput-object v9, v6, v0

    const/16 v0, 0x9

    .line 932
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v0

    .line 930
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 933
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 934
    invoke-static {v5}, Lcom/uc/crashsdk/e;->a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 935
    if-nez v2, :cond_1

    .line 937
    :try_start_4
    const-string v0, "[DEBUG] alloc buffer failed!\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 940
    goto :goto_1

    .line 938
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 941
    :goto_1
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 978
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 942
    return-void

    .line 946
    :cond_1
    :try_start_6
    sput-boolean v8, Lcom/uc/crashsdk/e;->g:Z

    .line 947
    nop

    .line 949
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 950
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 951
    add-int/lit8 v0, v0, 0x1

    .line 955
    if-ge v5, v4, :cond_2

    const-string v9, " I auditd "

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, " I liblog "

    .line 956
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 957
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 958
    const-string v6, "\n"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 959
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 963
    :cond_3
    :try_start_7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "[DEBUG] Read %d lines, wrote %d lines.\n"

    new-array v7, v7, [Ljava/lang/Object;

    .line 965
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    .line 963
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 963
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 968
    goto :goto_3

    .line 966
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 969
    :goto_3
    sput-boolean v3, Lcom/uc/crashsdk/e;->g:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 974
    :catchall_3
    move-exception v0

    .line 975
    :try_start_9
    sput-boolean v3, Lcom/uc/crashsdk/e;->g:Z

    .line 976
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 978
    :goto_4
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 979
    nop

    .line 981
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 982
    return-void

    .line 978
    :catchall_4
    move-exception p0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 623
    const-string v0, "\n"

    const-string v1, "UTF-8"

    :try_start_0
    const-string v2, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    .line 624
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    goto :goto_0

    .line 625
    :catchall_0
    move-exception v2

    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 630
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Basic Information: \'pid: %d/tid: %d/time: %s\'\n"

    new-array v8, v2, [Ljava/lang/Object;

    .line 632
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    .line 633
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    .line 634
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 630
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 635
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 637
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Cpu Information: \'abi: %s/processor: %s/hardware: %s\'\n"

    new-array v8, v2, [Ljava/lang/Object;

    .line 639
    invoke-static {}, Lcom/uc/crashsdk/e;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    sget-object v9, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    invoke-static {v9}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->J()V

    :cond_0
    sget-object v9, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-static {}, Lcom/uc/crashsdk/e;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 637
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 640
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 643
    goto :goto_1

    .line 641
    :catchall_1
    move-exception v6

    invoke-static {v6, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 646
    :goto_1
    :try_start_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Mobile Information: \'model: %s/version: %s/sdk: %d\'\n"

    new-array v8, v2, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v8, v4

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v9, v8, v5

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 648
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 646
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 649
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Build fingerprint: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 654
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Runtime Information: \'start: %s/maxheap: %s\'\n"

    new-array v8, v3, [Ljava/lang/Object;

    new-instance v9, Ljava/util/Date;

    sget-wide v10, Lcom/uc/crashsdk/e;->b:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 656
    invoke-static {v9}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 657
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    .line 654
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 658
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 661
    goto :goto_2

    .line 659
    :catchall_2
    move-exception v6

    invoke-static {v6, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 664
    :goto_2
    :try_start_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Application Information: \'version: %s/subversion: %s/buildseq: %s\'\n"

    new-array v8, v2, [Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcom/uc/crashsdk/h;->R()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {}, Lcom/uc/crashsdk/h;->S()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 667
    invoke-static {}, Lcom/uc/crashsdk/h;->T()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 664
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 668
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 670
    const-string v6, "0"

    .line 671
    sget-boolean v7, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v7, :cond_1

    .line 672
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeGetNativeBuildseq()Ljava/lang/String;

    move-result-object v6

    .line 674
    :cond_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "CrashSDK Information: \'version: %s/nativeseq: %s/javaseq: %s/target: %s\'\n"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "2.4.0.0"

    aput-object v10, v9, v4

    aput-object v6, v9, v5

    const-string v6, "190722175338"

    aput-object v6, v9, v3

    const-string v3, "release"

    aput-object v3, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 680
    if-nez p1, :cond_2

    const-string p1, ""

    .line 681
    :cond_2
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v5

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Report Name: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 686
    goto :goto_3

    .line 684
    :catchall_3
    move-exception p1

    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 689
    :goto_3
    :try_start_4
    sget-boolean p1, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz p1, :cond_3

    .line 691
    const-string p1, "UUID"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 693
    :cond_3
    sget-object p1, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    .line 695
    :goto_4
    const-string v2, "UUID: %s\n"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Log Type: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 701
    goto :goto_5

    .line 699
    :catchall_4
    move-exception p1

    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 702
    :goto_5
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 706
    :try_start_5
    invoke-static {p0, v1}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 708
    sget-boolean p1, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz p1, :cond_4

    .line 709
    sput-boolean v4, Lcom/uc/crashsdk/e;->g:Z

    .line 710
    const-string p1, "HEADER"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 711
    sput-boolean v5, Lcom/uc/crashsdk/e;->g:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 715
    :cond_4
    goto :goto_6

    .line 713
    :catchall_5
    move-exception p1

    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 716
    :goto_6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 717
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 3

    .line 385
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x194

    invoke-direct {v0, p0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3199
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3202
    return-void

    .line 3200
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3203
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2647
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 2648
    return-void
.end method

.method private static b(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1873
    const-string v0, "crashsdk uploading logs"

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 1874
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1879
    :cond_0
    const-string p0, "upload url is empty!"

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    :goto_0
    if-eqz p2, :cond_1

    .line 1885
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1881
    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1884
    if-eqz p2, :cond_1

    .line 1885
    :try_start_3
    sget-object p0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1888
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 1884
    :catchall_2
    move-exception p0

    if-eqz p2, :cond_2

    .line 1885
    sget-object p1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_2
    throw p0

    .line 1888
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static b(Z)V
    .locals 3

    .line 2189
    nop

    .line 2190
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2191
    invoke-static {}, Lcom/uc/crashsdk/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2190
    :cond_1
    const/4 v0, 0x0

    .line 2193
    :goto_0
    if-nez v0, :cond_2

    .line 2194
    invoke-static {}, Lcom/uc/crashsdk/h;->u()Z

    move-result v0

    .line 2196
    :cond_2
    if-nez v0, :cond_3

    .line 2197
    return-void

    .line 2200
    :cond_3
    if-eqz p0, :cond_5

    .line 2203
    invoke-static {}, Lcom/uc/crashsdk/e;->i()Ljava/lang/String;

    move-result-object p0

    .line 2204
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_4

    .line 2207
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2208
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2209
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2212
    goto :goto_1

    .line 2210
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2214
    :goto_1
    invoke-static {p0, v2, v2}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;ZZ)V

    .line 2216
    :cond_4
    return-void

    .line 2217
    :cond_5
    invoke-static {v1, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2221
    return-void

    .line 2219
    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2222
    return-void
.end method

.method public static b(I[Ljava/lang/Object;)Z
    .locals 6

    .line 489
    const/16 v0, 0x1c3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1c4

    if-eq p0, v0, :cond_1

    .line 505
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_0

    .line 508
    return v2

    .line 505
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 498
    :cond_1
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 499
    :cond_3
    :goto_0
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    .line 500
    aget-object p1, p1, v1

    check-cast p1, Lcom/uc/crashsdk/e$d;

    .line 501
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-wide v4, p1, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/uc/crashsdk/e$d;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget p1, p1, Lcom/uc/crashsdk/e$d;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d %d %d %d"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result p0

    return p0

    .line 491
    :cond_4
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 492
    :cond_6
    :goto_1
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    .line 493
    aget-object p1, p1, v1

    check-cast p1, Lcom/uc/crashsdk/e$d;

    .line 494
    invoke-static {p0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 4

    .line 2361
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2364
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2365
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2366
    return v1

    .line 2368
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2369
    if-gtz v2, :cond_1

    .line 2370
    return v1

    .line 2373
    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2374
    const-string v0, "java"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2375
    const-string v0, "ucebujava"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2376
    const-string v0, "jni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2377
    const-string v0, "ucebujni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2378
    const-string v0, "unexp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 2374
    :cond_2
    return v1

    .line 2378
    :cond_3
    :goto_0
    return v3
.end method

.method static synthetic c(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->C:I

    return p0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .line 281
    sget-object v0, Lcom/uc/crashsdk/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 282
    return-object v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    sput-object v0, Lcom/uc/crashsdk/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1801
    invoke-static {}, Lcom/uc/crashsdk/h;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1802
    return-object p0

    .line 1805
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1806
    if-gtz v0, :cond_1

    .line 1807
    return-object p0

    .line 1809
    :cond_1
    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1810
    if-gt v2, v0, :cond_2

    .line 1811
    return-object p0

    .line 1813
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1814
    if-gt v1, v2, :cond_3

    .line 1815
    return-object p0

    .line 1819
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CrashSDK"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 1820
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1823
    if-nez v0, :cond_4

    .line 1824
    return-object p0

    .line 1827
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1828
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->c(Ljava/io/File;)[B

    move-result-object v2

    .line 1829
    if-eqz v2, :cond_9

    array-length v3, v2

    if-gtz v3, :cond_5

    goto :goto_1

    .line 1833
    :cond_5
    const/4 v3, 0x0

    .line 1835
    const/4 v4, 0x0

    const/16 v5, 0x10

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/c;->b([B[B)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    goto :goto_0

    .line 1836
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1840
    :goto_0
    if-nez v3, :cond_6

    .line 1841
    return-object p0

    .line 1844
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1845
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-static {v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1847
    return-object p0

    .line 1850
    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1851
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1852
    return-object p0

    .line 1854
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1855
    return-object v0

    .line 1830
    :cond_9
    :goto_1
    return-object p0
.end method

.method private static c(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    .line 2478
    nop

    .line 2479
    if-eqz p1, :cond_0

    .line 2481
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    goto :goto_0

    .line 2482
    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2486
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2488
    :try_start_1
    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2491
    goto :goto_1

    .line 2489
    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2493
    :cond_1
    :goto_1
    return-object p0
.end method

.method private static c(Ljava/io/OutputStream;)V
    .locals 7

    .line 986
    const-string v0, "UTF-8"

    :try_start_0
    const-string v1, "disk info:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    goto :goto_0

    .line 987
    :catchall_0
    move-exception v1

    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 991
    :goto_0
    sget-boolean v1, Lcom/uc/crashsdk/e;->ad:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 992
    sput-boolean v2, Lcom/uc/crashsdk/e;->g:Z

    .line 994
    :try_start_1
    const-string v1, "FSSTAT"

    invoke-static {v1}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 997
    goto :goto_1

    .line 995
    :catchall_1
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 998
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->g:Z

    goto :goto_5

    .line 1000
    :cond_0
    const/4 v0, 0x0

    .line 1002
    :try_start_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1004
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1008
    goto :goto_3

    .line 1006
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1011
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1012
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V

    .line 1014
    new-instance v0, Ljava/io/File;

    const-string v3, "/storage"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1016
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_2

    .line 1018
    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1019
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1020
    invoke-static {v4}, Lcom/uc/crashsdk/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1018
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1027
    :cond_2
    goto :goto_5

    .line 1025
    :catchall_4
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1030
    :goto_5
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1031
    return-void
.end method

.method static c(Z)V
    .locals 3

    .line 3513
    nop

    .line 3514
    sget-boolean v0, Lcom/uc/crashsdk/e;->P:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3515
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/h;->L()Z

    move-result p0

    if-nez p0, :cond_2

    .line 3516
    :cond_0
    goto :goto_0

    .line 3518
    :cond_1
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/uc/crashsdk/h;->L()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3519
    goto :goto_0

    .line 3522
    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 3524
    sget-object p0, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/a/e;

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3525
    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    .line 3527
    :cond_3
    const-wide/16 v0, 0xbb8

    invoke-static {v2, p0, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3530
    :cond_4
    return-void
.end method

.method static synthetic d(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->D:I

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 7

    .line 722
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 725
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "SUPPORTED_ABIS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 726
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 727
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_2

    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 729
    check-cast v0, [Ljava/lang/String;

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    nop

    .line 732
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 733
    if-nez v1, :cond_0

    .line 734
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    nop

    .line 732
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_2
    goto :goto_1

    .line 741
    :catchall_0
    move-exception v0

    .line 745
    :cond_3
    :goto_1
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 747
    :try_start_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 749
    goto :goto_2

    .line 748
    :catchall_1
    move-exception v0

    .line 753
    :cond_4
    :goto_2
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Z)Ljava/lang/String;
    .locals 0

    .line 3933
    if-eqz p0, :cond_0

    .line 3934
    const-string p0, "https://up4-intl.ucweb.com/upload"

    return-object p0

    .line 3936
    :cond_0
    const-string p0, "https://up4.ucweb.com/upload"

    return-object p0
.end method

.method private static d(Ljava/io/OutputStream;)V
    .locals 9

    .line 1204
    const-string v0, "UTF-8"

    .line 1205
    nop

    .line 1207
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/h;->I()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1208
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/fd"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1210
    if-eqz v2, :cond_0

    .line 1211
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "opened file count: %d, write limit: %d.\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    array-length v7, v2

    .line 1213
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 1211
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1213
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1211
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 1215
    :cond_0
    const-string v4, "[DEBUG] listFiles failed!\n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    goto :goto_1

    .line 1217
    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    const/16 v3, 0x384

    :goto_0
    invoke-static {v4, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1223
    :goto_1
    if-eqz v2, :cond_2

    :try_start_2
    array-length v4, v2

    if-lt v4, v3, :cond_2

    .line 1224
    const-string v3, "opened files:\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1228
    :try_start_3
    array-length v4, v2

    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 1229
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1236
    :cond_1
    goto :goto_3

    .line 1234
    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1237
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    .line 1239
    :catchall_3
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_5

    .line 1241
    :cond_2
    :goto_4
    nop

    .line 1243
    :goto_5
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1244
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .line 2982
    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 2984
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2983
    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2986
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic e(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->E:I

    return p0
.end method

.method public static e(Z)I
    .locals 1

    .line 4108
    nop

    .line 4109
    if-eqz p0, :cond_1

    .line 4110
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4111
    const/4 v0, 0x1

    goto :goto_0

    .line 4110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4114
    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/f;->b()I

    move-result v0

    .line 4117
    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/f;->b(Z)I

    move-result p0

    .line 4118
    if-le p0, v0, :cond_2

    return p0

    .line 4119
    :cond_2
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 760
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Lcom/uc/crashsdk/e;->J()V

    .line 763
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/io/OutputStream;)V
    .locals 12

    .line 1247
    const-string v0, "UTF-8"

    .line 1248
    nop

    .line 1249
    nop

    .line 1251
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/h;->J()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1252
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/task"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1254
    if-nez v2, :cond_0

    .line 1255
    return-void

    .line 1258
    :cond_0
    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    if-ge v4, v3, :cond_1

    .line 1260
    return-void

    .line 1264
    :cond_1
    goto :goto_1

    .line 1262
    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    const/16 v3, 0x12c

    :goto_0
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 1266
    :goto_1
    if-nez v2, :cond_2

    .line 1267
    return-void

    .line 1271
    :cond_2
    :try_start_2
    const-string v5, "threads info:\n"

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 1272
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "threads count: %d, dump limit: %d.\n"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 1274
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v8, v4

    .line 1272
    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1274
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1272
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1276
    const-string v3, " tid     name\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1277
    array-length v3, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 1278
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "comm"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/16 v9, 0x80

    invoke-static {v8, v9}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v8

    .line 1280
    invoke-static {v8}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1281
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%5s %s\n"

    new-array v11, v7, [Ljava/lang/Object;

    .line 1282
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v1

    aput-object v8, v11, v4

    .line 1281
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1283
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1277
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1287
    :cond_3
    goto :goto_3

    .line 1285
    :catchall_2
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1289
    :goto_3
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1290
    return-void
.end method

.method static e(Ljava/lang/String;)Z
    .locals 2

    .line 2992
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2994
    return v1

    .line 2998
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/e;->q(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 2999
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3002
    return v1
.end method

.method static synthetic f(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->F:I

    return p0
.end method

.method static f()Ljava/lang/String;
    .locals 9

    .line 817
    const-string v0, "\n"

    const-string v1, " kB\n"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    const-string v3, "JavaMax:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v3, "JavaTotal:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const-string v3, "JavaFree:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v3, "NativeHeap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v3, "NativeAllocated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v3, "NativeFree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 827
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 828
    if-eqz v3, :cond_0

    .line 829
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 830
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 831
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v3, "availMem:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v3, "threshold:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, "lowMemory:  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    :cond_0
    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 841
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 842
    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 845
    const-string v0, "exception exists."

    return-object v0
.end method

.method private static f(Ljava/io/OutputStream;)V
    .locals 8

    .line 1736
    :try_start_0
    const-string v0, "Recent Status:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    goto :goto_0

    .line 1737
    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1743
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    sget-boolean v2, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz v2, :cond_0

    .line 1744
    const-string v2, "LASTVER"

    invoke-static {v2}, Lcom/uc/crashsdk/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1746
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/a;->l()Ljava/lang/String;

    move-result-object v2

    .line 1748
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "last version: \'%s\'\n"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 1749
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1748
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1752
    goto :goto_2

    .line 1750
    :catchall_1
    move-exception v2

    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1755
    :goto_2
    :try_start_2
    sget-object v2, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1756
    :try_start_3
    sget-object v3, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1757
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generating log: %s\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1758
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1757
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1761
    :cond_1
    sget v3, Lcom/uc/crashsdk/e;->s:I

    if-gtz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1762
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generated %d logs, recent are:\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget v6, Lcom/uc/crashsdk/e;->s:I

    .line 1764
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1762
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1764
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1762
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1765
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1766
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "* %s\n"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 1767
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1766
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1768
    goto :goto_3

    .line 1770
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1772
    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping all threads: %s\n"

    new-array v4, v1, [Ljava/lang/Object;

    sget-boolean v5, Lcom/uc/crashsdk/e;->u:Z

    .line 1773
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1772
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 1773
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1772
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1774
    sget-object v2, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1775
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping threads: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1775
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1780
    :cond_4
    goto :goto_4

    .line 1770
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1778
    :catchall_3
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1782
    :goto_4
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1783
    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3

    .line 3893
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3894
    nop

    .line 3897
    const/4 p0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3898
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3899
    const/4 v1, 0x1

    .line 3903
    :cond_0
    goto :goto_0

    .line 3901
    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3906
    :goto_0
    if-nez v1, :cond_1

    .line 3907
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3908
    invoke-static {v0}, Lcom/uc/crashsdk/e;->g(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 3909
    goto :goto_1

    .line 3912
    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3914
    :cond_1
    move p0, v1

    :goto_1
    move v1, p0

    .line 3915
    :goto_2
    return v1
.end method

.method static synthetic f(Z)Z
    .locals 0

    .line 58
    sput-boolean p0, Lcom/uc/crashsdk/e;->K:Z

    return p0
.end method

.method static synthetic g(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->G:I

    return p0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1495
    sget-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1496
    return-object v0

    .line 1499
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1500
    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    .line 3920
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".so"

    .line 3921
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3922
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3923
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3924
    const/4 p0, 0x1

    return p0

    .line 3928
    :cond_0
    goto :goto_0

    .line 3926
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3929
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic h(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->H:I

    return p0
.end method

.method static h(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .line 4150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 4151
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static h()Z
    .locals 1

    .line 2132
    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    return v0
.end method

.method static synthetic i(I)I
    .locals 0

    .line 58
    sput p0, Lcom/uc/crashsdk/e;->I:I

    return p0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    .line 2955
    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2956
    sget-object v0, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2958
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    const/4 v3, 0x1

    .line 2957
    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 2960
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2962
    :cond_0
    :goto_0
    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    sput-object p0, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    return-object p0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 262
    :try_start_0
    const-string v0, "[^0-9a-zA-Z-.]"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    goto :goto_0

    .line 263
    :catchall_0
    move-exception p0

    .line 264
    const-string p0, "unknown"

    .line 266
    :goto_0
    return-object p0
.end method

.method public static j()V
    .locals 4

    .line 3139
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    if-eqz v0, :cond_0

    .line 3140
    return-void

    .line 3142
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x19b

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3145
    return-void
.end method

.method static k()Ljava/lang/String;
    .locals 1

    .line 3155
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 290
    if-nez p0, :cond_0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 293
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 294
    invoke-static {}, Lcom/uc/crashsdk/e;->F()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/uc/crashsdk/h;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 295
    invoke-static {}, Lcom/uc/crashsdk/h;->T()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 296
    invoke-static {v3}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p0, v1, v2

    .line 293
    const-string p0, "%s%s_%s_%s_%s_%s_"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 354
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 355
    invoke-static {}, Lcom/uc/crashsdk/e;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 356
    invoke-static {}, Lcom/uc/crashsdk/e;->G()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 357
    invoke-static {}, Lcom/uc/crashsdk/h;->O()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    .line 354
    const-string p0, "%s%s_%s_%s%s.log"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l()V
    .locals 2

    .line 3165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->b:J

    .line 3166
    return-void
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1484
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1486
    if-ltz v1, :cond_0

    .line 1487
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1489
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1491
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static m()V
    .locals 5

    .line 3211
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3212
    return-void

    .line 3215
    :cond_0
    nop

    .line 3218
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unique"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3220
    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3221
    if-eqz v2, :cond_2

    .line 3224
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_1

    .line 3225
    goto :goto_0

    .line 3228
    :cond_1
    const-string v0, "[^0-9a-zA-Z-]"

    const-string v3, "-"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3232
    goto :goto_0

    .line 3242
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3230
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3236
    :cond_2
    move-object v0, v2

    :cond_3
    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3237
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3238
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3239
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3244
    :cond_4
    goto :goto_2

    .line 3242
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 3246
    :goto_2
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    .line 3247
    return-void
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 3250
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1786
    nop

    .line 1787
    invoke-static {}, Lcom/uc/crashsdk/h;->y()Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-static {}, Lcom/uc/crashsdk/h;->x()Z

    move-result v1

    .line 1786
    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1791
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1794
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1797
    :cond_0
    return-object v0
.end method

.method public static o()V
    .locals 1

    .line 3545
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3546
    new-instance v0, Lcom/uc/crashsdk/e;

    invoke-direct {v0}, Lcom/uc/crashsdk/e;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3547
    return-void
.end method

.method private static o(Ljava/lang/String;)[Z
    .locals 6

    .line 2414
    invoke-static {}, Lcom/uc/crashsdk/h;->x()Z

    move-result v0

    .line 2415
    invoke-static {}, Lcom/uc/crashsdk/h;->z()Z

    move-result v1

    .line 2418
    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_9

    .line 2419
    :cond_0
    const-string v3, ".tmp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ".ec"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2431
    :cond_1
    nop

    .line 2432
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2433
    if-gez v3, :cond_2

    .line 2434
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 2433
    :cond_2
    const/4 v4, 0x0

    .line 2437
    :cond_3
    :goto_0
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 2438
    if-ltz v3, :cond_4

    .line 2439
    add-int/lit8 v4, v4, 0x1

    .line 2440
    add-int/lit8 v3, v3, 0x1

    .line 2442
    :cond_4
    if-gez v3, :cond_3

    .line 2444
    const/16 v3, 0x8

    if-eq v4, v3, :cond_5

    .line 2445
    nop

    .line 2446
    nop

    .line 2447
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_2

    .line 2452
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/h;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2453
    nop

    .line 2454
    const/4 v0, 0x0

    goto :goto_2

    .line 2458
    :cond_6
    const-string v3, ".log"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2459
    nop

    .line 2460
    const/4 v0, 0x0

    goto :goto_2

    .line 2465
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2466
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 2467
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-eq v4, p0, :cond_9

    .line 2468
    const/4 v0, 0x0

    goto :goto_2

    .line 2425
    :cond_8
    :goto_1
    nop

    .line 2426
    nop

    .line 2427
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2469
    :cond_9
    :goto_2
    const/4 p0, 0x2

    new-array p0, p0, [Z

    aput-boolean v0, p0, v2

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    return-object p0
.end method

.method public static p()V
    .locals 1

    .line 3550
    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3551
    return-void
.end method

.method private static p(Ljava/lang/String;)Z
    .locals 17

    .line 2658
    move-object/from16 v1, p0

    .line 2659
    sget-object v2, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 2660
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "customlog"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2661
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2662
    const/16 v0, 0x400

    invoke-static {v3, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 2664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2665
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2666
    nop

    .line 2667
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    .line 2668
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2669
    const-string v0, "([^\\n\\r\\t\\s]+) (\\d+) (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2671
    nop

    .line 2672
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const/4 v0, 0x0

    .line 2673
    :goto_0
    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2674
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2675
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2676
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 2677
    goto :goto_0

    .line 2680
    :cond_0
    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2681
    nop

    .line 2683
    sub-long v13, v4, v11

    const-wide/32 v15, 0x5265c00

    const/4 v7, 0x3

    cmp-long v0, v13, v15

    if-gez v0, :cond_1

    .line 2685
    :try_start_1
    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2688
    goto :goto_1

    .line 2686
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2688
    const/4 v0, 0x0

    goto :goto_1

    .line 2690
    :cond_1
    move-wide v11, v4

    const/4 v0, 0x0

    .line 2693
    :goto_1
    invoke-static {}, Lcom/uc/crashsdk/h;->F()I

    move-result v13

    .line 2694
    if-ltz v13, :cond_2

    if-lt v0, v13, :cond_2

    .line 2695
    const/4 v13, 0x1

    goto :goto_2

    .line 2700
    :cond_2
    const/4 v13, 0x0

    :goto_2
    add-int/2addr v0, v8

    .line 2701
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s %d %d"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    .line 2702
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v7, v11

    .line 2701
    invoke-static {v14, v15, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2703
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v6, v7, v10, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2705
    const/4 v0, 0x1

    goto :goto_3

    .line 2706
    :cond_3
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_3
    if-nez v0, :cond_4

    .line 2711
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s %d 1\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v9

    .line 2712
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v8

    .line 2711
    invoke-static {v0, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2716
    :cond_4
    const/4 v1, 0x0

    .line 2718
    :try_start_3
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2719
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2720
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2724
    :try_start_5
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_6

    .line 2721
    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_4

    .line 2724
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 2721
    :catch_2
    move-exception v0

    :goto_4
    :try_start_6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2724
    :try_start_7
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2725
    :goto_5
    nop

    .line 2726
    monitor-exit v2

    .line 2727
    return v13

    .line 2724
    :goto_6
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2726
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public static q()Ljava/lang/Throwable;
    .locals 1

    .line 3744
    sget-object v0, Lcom/uc/crashsdk/e;->S:Ljava/lang/Throwable;

    return-object v0
.end method

.method private static q(Ljava/lang/String;)Z
    .locals 14

    .line 3006
    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 3007
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3009
    invoke-static {}, Lcom/uc/crashsdk/b;->k()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all:1"

    .line 3008
    invoke-static {v1, v3, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3011
    invoke-static {v1}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    .line 3014
    :cond_0
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v3, "all"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const-string v1, "java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "jni"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "unexp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_5

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v4, "crash"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "crash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_5
    if-nez p0, :cond_6

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_7
    const/4 p0, 0x1

    .line 3015
    :goto_3
    if-eqz p0, :cond_10

    int-to-long v4, p0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long p0, v4, v8

    if-gez p0, :cond_d

    const-wide/16 v10, 0x1e

    const-wide/16 v12, -0x2

    cmp-long p0, v4, v12

    if-nez p0, :cond_8

    const-wide/16 v10, 0x7

    goto :goto_4

    :cond_8
    const-wide/16 v12, -0x3

    cmp-long p0, v4, v12

    if-nez p0, :cond_9

    const-wide/16 v10, 0xf

    goto :goto_4

    :cond_9
    const-wide/16 v12, -0x4

    cmp-long p0, v4, v12

    if-nez p0, :cond_a

    const-wide/16 v10, 0x3c

    :cond_a
    :goto_4
    invoke-static {}, Lcom/uc/crashsdk/a;->b()J

    move-result-wide v4

    cmp-long p0, v4, v8

    if-nez p0, :cond_b

    const-wide/16 v4, -0x1

    goto :goto_5

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-wide/32 v4, 0x5265c00

    div-long v4, v12, v4

    :goto_5
    cmp-long p0, v4, v10

    if-gtz p0, :cond_c

    move-wide v4, v6

    goto :goto_6

    :cond_c
    sub-long/2addr v4, v10

    :cond_d
    :goto_6
    cmp-long p0, v4, v6

    if-nez p0, :cond_e

    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    cmp-long p0, v4, v8

    if-gtz p0, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    rem-long/2addr v6, v4

    cmp-long p0, v6, v8

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    :goto_8
    monitor-exit v0

    return v2

    .line 3016
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static r(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3020
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3022
    const-string v1, "\\|"

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 3023
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 3024
    const/4 v5, 0x3

    const-string v6, ":"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 3025
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 3026
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3030
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3031
    nop

    .line 3036
    const/4 v6, 0x1

    :try_start_0
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    goto :goto_1

    .line 3037
    :catchall_0
    move-exception v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3041
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3023
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3044
    :cond_1
    return-object v0
.end method

.method public static r()V
    .locals 6

    .line 3774
    invoke-static {}, Lcom/uc/crashsdk/h;->p()I

    move-result v0

    int-to-long v0, v0

    .line 3775
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 3776
    return-void

    .line 3782
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->B()I

    move-result v2

    .line 3783
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3785
    :goto_0
    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x191

    invoke-direct {v3, v5}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 3789
    if-nez v2, :cond_2

    .line 3790
    return-void

    .line 3794
    :cond_2
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x192

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->V:Ljava/lang/Runnable;

    .line 3795
    invoke-static {v4, v2, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3796
    return-void
.end method

.method static s()V
    .locals 4

    .line 3821
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_0

    .line 3824
    sget-object v0, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3825
    const/4 v0, 0x0

    sget-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3829
    :cond_0
    return-void
.end method

.method private static s(Ljava/lang/String;)V
    .locals 3

    .line 3169
    invoke-static {}, Lcom/uc/crashsdk/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3170
    return-void

    .line 3174
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3177
    goto :goto_0

    .line 3175
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3179
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3184
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/h;->W()Ljava/lang/String;

    move-result-object v0

    .line 3185
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3187
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3190
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy log to: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3194
    return-void

    .line 3192
    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3195
    return-void

    .line 3180
    :cond_3
    :goto_1
    return-void
.end method

.method private static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "$^%s^$"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t()Z
    .locals 3

    .line 3882
    sget-object v0, Lcom/uc/crashsdk/e;->W:Ljava/lang/Object;

    monitor-enter v0

    .line 3883
    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/e;->V:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/uc/crashsdk/e;->U:Z

    if-nez v2, :cond_0

    .line 3884
    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    .line 3885
    const/4 v1, 0x0

    sput-object v1, Lcom/uc/crashsdk/e;->V:Ljava/lang/Runnable;

    .line 3886
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3888
    :cond_0
    monitor-exit v0

    .line 3889
    const/4 v0, 0x0

    return v0

    .line 3888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static u()V
    .locals 4

    .line 4015
    invoke-static {}, Lcom/uc/crashsdk/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4016
    return-void

    .line 4019
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x193

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4022
    return-void
.end method

.method public static v()V
    .locals 4

    .line 4028
    sget-boolean v0, Lcom/uc/crashsdk/e;->Z:Z

    if-eqz v0, :cond_0

    .line 4029
    return-void

    .line 4031
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x198

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4034
    return-void
.end method

.method public static w()V
    .locals 5

    .line 4156
    nop

    .line 4157
    nop

    .line 4158
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4159
    nop

    .line 4161
    const/4 v1, 0x1

    goto :goto_0

    .line 4162
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 4164
    nop

    .line 4167
    const/4 v0, 0x2

    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v4, 0x19d

    invoke-direct {v3, v4}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v0, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    goto :goto_0

    .line 4162
    :cond_1
    const/4 v2, 0x0

    .line 4170
    :goto_0
    invoke-static {v1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeInstallBreakpad(II)V

    .line 4171
    return-void
.end method

.method public static x()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 4177
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4178
    const-string v0, "crashsdk"

    const-string v2, "Crash so is not loaded!"

    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    return-object v1

    .line 4182
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/e;->ab:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 4183
    return-object v0

    .line 4186
    :cond_1
    const/4 v0, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeGetOrSetHostFd(II)I

    move-result v0

    .line 4187
    if-ne v0, v2, :cond_2

    .line 4188
    return-object v1

    .line 4190
    :cond_2
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->ab:Landroid/os/ParcelFileDescriptor;

    .line 4191
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->ac:Z

    .line 4192
    return-object v0
.end method

.method public static y()Z
    .locals 1

    .line 4221
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    return v0
.end method

.method static synthetic z()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/uc/crashsdk/e;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 19

    .line 3566
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "original exception is: "

    const-string v5, "Call java default handler: "

    const-string v6, "DEBUG"

    .line 3567
    nop

    .line 3569
    sget-boolean v0, Lcom/uc/crashsdk/e;->ad:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_1

    .line 3570
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 3573
    :goto_0
    :try_start_0
    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_b

    .line 3575
    const-string v0, "another thread is generating java report!"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    const-string v0, "current thread exception is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3580
    const/4 v13, 0x0

    .line 3581
    :cond_3
    sget-boolean v0, Lcom/uc/crashsdk/e;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    if-nez v0, :cond_4

    .line 3583
    const-wide/16 v14, 0x3e8

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3586
    goto :goto_1

    .line 3584
    :catchall_0
    move-exception v0

    move-object v14, v0

    :try_start_2
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3587
    :goto_1
    add-int/2addr v13, v8

    if-lt v13, v12, :cond_3

    .line 3588
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1e

    .line 3592
    nop

    .line 3689
    nop

    .line 3693
    nop

    .line 3695
    if-eqz p3, :cond_5

    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_5

    if-nez v9, :cond_5

    .line 3697
    nop

    .line 3698
    :try_start_4
    invoke-static {v8, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x1

    goto :goto_3

    .line 3700
    :catchall_1
    move-exception v0

    const/4 v4, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v4, 0x0

    :goto_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3702
    :cond_5
    const/4 v4, 0x0

    :goto_3
    nop

    .line 3704
    :goto_4
    if-nez v4, :cond_6

    if-nez v9, :cond_6

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_8

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_8

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v9, :cond_9

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3725
    :cond_9
    goto :goto_5

    .line 3723
    :catchall_3
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_5
    sput-boolean v8, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_a

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_a
    nop

    .line 3592
    return-void

    .line 3595
    :cond_b
    :try_start_6
    sput-object v3, Lcom/uc/crashsdk/e;->S:Ljava/lang/Throwable;

    .line 3597
    if-nez v9, :cond_12

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3598
    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1e

    .line 3599
    nop

    .line 3731
    nop

    .line 3693
    nop

    .line 3695
    if-eqz p3, :cond_c

    :try_start_7
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v0, :cond_c

    if-nez v9, :cond_c

    .line 3697
    nop

    .line 3698
    :try_start_8
    invoke-static {v8, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v4, 0x1

    goto :goto_7

    .line 3700
    :catchall_4
    move-exception v0

    const/4 v4, 0x1

    goto :goto_6

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    :goto_6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 3702
    :cond_c
    const/4 v4, 0x0

    :goto_7
    nop

    .line 3704
    :goto_8
    if-nez v4, :cond_d

    if-nez v9, :cond_d

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_d
    :try_start_9
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_f

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_f

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_f
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v9, :cond_10

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 3725
    :cond_10
    goto :goto_9

    .line 3723
    :catchall_6
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_9
    sput-boolean v8, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_11

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_11
    nop

    .line 3599
    return-void

    .line 3602
    :cond_12
    :try_start_a
    const-string v0, "begin to generate java report"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1e

    .line 3607
    :try_start_b
    iget-object v0, v1, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/FileInputStream;

    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_a

    :cond_13
    iget-object v0, v1, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 3610
    goto :goto_b

    .line 3608
    :catchall_7
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1e

    .line 3612
    :goto_b
    nop

    .line 3613
    nop

    .line 3615
    :try_start_d
    invoke-static {}, Lcom/uc/crashsdk/h;->v()Z

    move-result v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 3616
    :try_start_e
    invoke-static {}, Lcom/uc/crashsdk/h;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v15, ""

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    :cond_14
    invoke-static {}, Lcom/uc/crashsdk/e;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 3624
    move-object v10, v0

    const/4 v11, 0x0

    goto :goto_d

    .line 3617
    :catchall_8
    move-exception v0

    goto :goto_c

    :catchall_9
    move-exception v0

    const/4 v14, 0x0

    .line 3618
    :goto_c
    :try_start_f
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get java log name failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3622
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1e

    .line 3623
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 3626
    :goto_d
    const-string v15, "omit java crash"

    const-string v13, "java"

    if-nez v9, :cond_25

    .line 3628
    :try_start_10
    invoke-static {}, Lcom/uc/crashsdk/h;->b()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 3629
    :try_start_11
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_e

    :cond_16
    invoke-static {v12}, Lcom/uc/crashsdk/f;->a(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3631
    :goto_e
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 3635
    goto :goto_f

    .line 3633
    :catchall_b
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3637
    :goto_f
    if-eqz v14, :cond_1d

    .line 3638
    invoke-static {v6, v15}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1d

    .line 3639
    nop

    .line 3731
    nop

    .line 3693
    nop

    .line 3695
    if-eqz p3, :cond_17

    :try_start_14
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    if-eqz v0, :cond_17

    if-nez v9, :cond_17

    .line 3697
    nop

    .line 3698
    :try_start_15
    invoke-static {v8, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    const/4 v4, 0x1

    goto :goto_11

    .line 3700
    :catchall_c
    move-exception v0

    const/4 v4, 0x1

    goto :goto_10

    :catchall_d
    move-exception v0

    const/4 v4, 0x0

    :goto_10
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    .line 3702
    :cond_17
    const/4 v4, 0x0

    :goto_11
    nop

    .line 3704
    :goto_12
    if-nez v4, :cond_18

    if-nez v9, :cond_18

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_18
    :try_start_16
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_19

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_1a

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1a

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_1a
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez v9, :cond_1b

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 3725
    :cond_1b
    goto :goto_13

    .line 3723
    :catchall_e
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_13
    sput-boolean v8, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_1c

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_1c
    nop

    .line 3639
    return-void

    .line 3643
    :cond_1d
    :try_start_17
    invoke-static {v13}, Lcom/uc/crashsdk/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 3644
    const-string v0, "java log sample miss"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1d

    .line 3645
    nop

    .line 3731
    nop

    .line 3693
    nop

    .line 3695
    if-eqz p3, :cond_1e

    :try_start_18
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    if-eqz v0, :cond_1e

    if-nez v9, :cond_1e

    .line 3697
    nop

    .line 3698
    :try_start_19
    invoke-static {v8, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    const/4 v4, 0x1

    goto :goto_15

    .line 3700
    :catchall_f
    move-exception v0

    const/4 v4, 0x1

    goto :goto_14

    :catchall_10
    move-exception v0

    const/4 v4, 0x0

    :goto_14
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 3702
    :cond_1e
    const/4 v4, 0x0

    :goto_15
    nop

    .line 3704
    :goto_16
    if-nez v4, :cond_1f

    if-nez v9, :cond_1f

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_1f
    :try_start_1a
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_20

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_21

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_21

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_21
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez v9, :cond_22

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    .line 3725
    :cond_22
    goto :goto_17

    .line 3723
    :catchall_11
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_17
    sput-boolean v8, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_23

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_23
    nop

    .line 3645
    return-void

    .line 3643
    :cond_24
    const-wide/16 v12, 0x0

    goto/16 :goto_21

    .line 3648
    :cond_25
    if-eqz v14, :cond_26

    .line 3649
    :try_start_1b
    const-string v10, "omit"

    .line 3650
    invoke-static {v6, v15}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3653
    :cond_26
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_27

    .line 3654
    const/4 v12, 0x0

    invoke-static {v10, v13, v12, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1d

    goto :goto_18

    .line 3653
    :cond_27
    const-wide/16 v12, 0x0

    .line 3658
    :goto_18
    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-nez v0, :cond_2f

    .line 3659
    :try_start_1c
    const-string v10, "skip java crash:"

    invoke-static {v6, v10}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 3661
    nop

    .line 3731
    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_28

    .line 3690
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3693
    :cond_28
    nop

    .line 3695
    if-eqz p3, :cond_29

    :try_start_1d
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    if-eqz v0, :cond_29

    if-nez v9, :cond_29

    .line 3697
    nop

    .line 3698
    :try_start_1e
    invoke-static {v8, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    const/4 v4, 0x1

    goto :goto_1a

    .line 3700
    :catchall_12
    move-exception v0

    const/4 v4, 0x1

    goto :goto_19

    :catchall_13
    move-exception v0

    const/4 v4, 0x0

    :goto_19
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 3702
    :cond_29
    const/4 v4, 0x0

    :goto_1a
    nop

    .line 3704
    :goto_1b
    if-nez v4, :cond_2a

    if-nez v9, :cond_2a

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_2a
    :try_start_1f
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_2c

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2c

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_2c
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez v9, :cond_2d

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    .line 3725
    :cond_2d
    goto :goto_1c

    .line 3723
    :catchall_14
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_1c
    sput-boolean v8, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_2e

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_2e
    nop

    .line 3661
    return-void

    .line 3664
    :cond_2f
    if-eqz v14, :cond_37

    .line 3665
    nop

    .line 3731
    if-eqz v0, :cond_30

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_30

    .line 3690
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3693
    :cond_30
    nop

    .line 3695
    if-eqz p3, :cond_31

    :try_start_20
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    if-eqz v0, :cond_31

    if-nez v9, :cond_31

    .line 3697
    nop

    .line 3698
    :try_start_21
    invoke-static {v8, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    const/4 v4, 0x1

    goto :goto_1e

    .line 3700
    :catchall_15
    move-exception v0

    const/4 v4, 0x1

    goto :goto_1d

    :catchall_16
    move-exception v0

    const/4 v4, 0x0

    :goto_1d
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 3702
    :cond_31
    const/4 v4, 0x0

    :goto_1e
    nop

    .line 3704
    :goto_1f
    if-nez v4, :cond_32

    if-nez v9, :cond_32

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_32
    :try_start_22
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_33

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_34

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_34

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_34
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez v9, :cond_35

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    .line 3725
    :cond_35
    goto :goto_20

    .line 3723
    :catchall_17
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_20
    sput-boolean v8, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_36

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_36
    nop

    .line 3665
    return-void

    .line 3669
    :cond_37
    :goto_21
    :try_start_23
    instance-of v0, v3, Ljava/lang/OutOfMemoryError;

    .line 3670
    invoke-static {v3, v10, v12, v13, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;

    .line 3672
    const-string v14, "generate java report finished"

    invoke-static {v6, v14}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v14

    if-nez v14, :cond_39

    if-eqz v0, :cond_39

    .line 3675
    invoke-static {}, Lcom/uc/crashsdk/h;->k()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3676
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/h;->W()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_38

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_38
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s%s.hprof"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v10, v8, v7

    const/4 v10, 0x1

    aput-object v0, v8, v10

    invoke-static {v14, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "begin dump hprof: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1c

    :try_start_24
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    goto :goto_22

    :catchall_18
    move-exception v0

    move-object v8, v0

    :try_start_25
    invoke-static {v8}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "end dump hprof, use "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v14, v17, v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1c

    .line 3679
    :cond_39
    nop

    .line 3731
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_3a

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_3a

    .line 3690
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3693
    :cond_3a
    nop

    .line 3695
    if-eqz p3, :cond_3b

    :try_start_26
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    if-eqz v0, :cond_3b

    if-nez v9, :cond_3b

    .line 3697
    nop

    .line 3698
    const/4 v4, 0x1

    :try_start_27
    invoke-static {v4, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    const/4 v0, 0x1

    goto :goto_24

    .line 3700
    :catchall_19
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x1

    goto :goto_23

    :catchall_1a
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_23
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 3702
    :cond_3b
    const/4 v0, 0x0

    :goto_24
    nop

    .line 3704
    :goto_25
    if-nez v0, :cond_3c

    if-nez v9, :cond_3c

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_3c
    :try_start_28
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_3e

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3e

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_3e
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez v9, :cond_3f

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1b

    .line 3725
    :cond_3f
    goto :goto_26

    .line 3723
    :catchall_1b
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_26
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_40

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_40
    return-void

    .line 3679
    :catchall_1c
    move-exception v0

    goto :goto_28

    :catchall_1d
    move-exception v0

    goto :goto_27

    :catchall_1e
    move-exception v0

    const/4 v11, 0x0

    :goto_27
    const-wide/16 v12, 0x0

    .line 3680
    :goto_28
    :try_start_29
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "exception occurs while java log: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3683
    if-nez v11, :cond_41

    .line 3684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_22

    .line 3686
    :cond_41
    nop

    .line 3731
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_42

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_42

    .line 3690
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3693
    :cond_42
    nop

    .line 3695
    if-eqz p3, :cond_43

    :try_start_2a
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_20

    if-eqz v0, :cond_43

    if-nez v9, :cond_43

    .line 3697
    nop

    .line 3698
    const/4 v4, 0x1

    :try_start_2b
    invoke-static {v4, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1f

    const/4 v0, 0x1

    goto :goto_2a

    .line 3700
    :catchall_1f
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x1

    goto :goto_29

    :catchall_20
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_29
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 3702
    :cond_43
    const/4 v0, 0x0

    :goto_2a
    nop

    .line 3704
    :goto_2b
    if-nez v0, :cond_44

    if-nez v9, :cond_44

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_44
    :try_start_2c
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v0

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v4

    if-nez v4, :cond_45

    .line 3711
    const/4 v0, 0x1

    .line 3713
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v0, :cond_46

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_46

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_46
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez v9, :cond_47

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_21

    .line 3725
    :cond_47
    goto :goto_2c

    .line 3723
    :catchall_21
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_2c
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_48

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_48
    return-void

    .line 3689
    :catchall_22
    move-exception v0

    move-object v4, v0

    .line 3731
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_49

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_49

    .line 3690
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3693
    :cond_49
    nop

    .line 3695
    if-eqz p3, :cond_4a

    :try_start_2d
    invoke-static {}, Lcom/uc/crashsdk/h;->t()Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_24

    if-eqz v0, :cond_4a

    if-nez v9, :cond_4a

    .line 3697
    nop

    .line 3698
    const/4 v6, 0x1

    :try_start_2e
    invoke-static {v6, v7}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_23

    const/4 v10, 0x1

    goto :goto_2e

    .line 3700
    :catchall_23
    move-exception v0

    const/4 v10, 0x1

    goto :goto_2d

    :catchall_24
    move-exception v0

    const/4 v10, 0x0

    :goto_2d
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 3702
    :cond_4a
    const/4 v10, 0x0

    :goto_2e
    nop

    .line 3704
    :goto_2f
    if-nez v10, :cond_4b

    if-nez v9, :cond_4b

    .line 3705
    invoke-static {v7}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3709
    :cond_4b
    :try_start_2f
    invoke-static {}, Lcom/uc/crashsdk/h;->j()Z

    move-result v10

    .line 3710
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3711
    const/4 v10, 0x1

    .line 3713
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 3714
    if-eqz v10, :cond_4d

    sget-object v0, Lcom/uc/crashsdk/e;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4d

    .line 3715
    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3720
    :cond_4d
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_4e

    if-nez v9, :cond_4e

    .line 3721
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/i;->a(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_25

    .line 3725
    :cond_4e
    goto :goto_30

    .line 3723
    :catchall_25
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3727
    :goto_30
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->T:Z

    .line 3728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_4f

    .line 3729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3731
    :cond_4f
    nop

    .line 3689
    throw v4
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 3559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 3560
    return-void
.end method
