.class public Lcom/uc/crashsdk/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final A:Ljava/lang/Object;

.field private static B:Ljava/lang/String;

.field private static C:I

.field private static D:Ljava/io/RandomAccessFile;

.field private static E:Z

.field private static final F:Ljava/lang/Object;

.field private static G:Ljava/lang/String;

.field private static H:Z

.field private static volatile I:[Ljava/lang/Object;

.field private static J:Ljava/lang/Runnable;

.field private static K:Z

.field private static L:J

.field private static final M:Ljava/lang/Object;

.field private static N:J

.field private static O:Z

.field private static P:Z

.field private static Q:Z

.field private static final R:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static S:Z

.field private static T:Z

.field private static U:Z

.field private static V:Z

.field private static W:Z

.field private static final X:Ljava/lang/Object;

.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static final e:Ljava/lang/Object;

.field public static f:Z

.field public static g:Z

.field static final synthetic h:Z

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Z

.field private static v:Z

.field private static volatile w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->h:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/b;->i:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/crashsdk/b;->a:Z

    .line 65
    sput-boolean v1, Lcom/uc/crashsdk/b;->b:Z

    .line 66
    sput-boolean v1, Lcom/uc/crashsdk/b;->c:Z

    .line 67
    sput-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    .line 69
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/b;->e:Ljava/lang/Object;

    .line 70
    sput-boolean v1, Lcom/uc/crashsdk/b;->f:Z

    .line 71
    sput-boolean v1, Lcom/uc/crashsdk/b;->g:Z

    .line 73
    sput-boolean v1, Lcom/uc/crashsdk/b;->u:Z

    .line 74
    sput-boolean v1, Lcom/uc/crashsdk/b;->v:Z

    .line 76
    sput-boolean v1, Lcom/uc/crashsdk/b;->w:Z

    .line 77
    sput-boolean v1, Lcom/uc/crashsdk/b;->x:Z

    .line 78
    sput-boolean v1, Lcom/uc/crashsdk/b;->y:Z

    .line 79
    sput-boolean v1, Lcom/uc/crashsdk/b;->z:Z

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/b;->A:Ljava/lang/Object;

    .line 83
    sput-object v0, Lcom/uc/crashsdk/b;->B:Ljava/lang/String;

    .line 90
    sput v1, Lcom/uc/crashsdk/b;->C:I

    .line 387
    sput-object v0, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    .line 388
    sput-boolean v1, Lcom/uc/crashsdk/b;->E:Z

    .line 389
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/b;->F:Ljava/lang/Object;

    .line 390
    sput-object v0, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    .line 392
    sput-boolean v1, Lcom/uc/crashsdk/b;->H:Z

    .line 395
    sput-object v0, Lcom/uc/crashsdk/b;->I:[Ljava/lang/Object;

    .line 397
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x65

    invoke-direct {v0, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v0, Lcom/uc/crashsdk/b;->J:Ljava/lang/Runnable;

    .line 414
    sput-boolean v1, Lcom/uc/crashsdk/b;->K:Z

    .line 455
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/uc/crashsdk/b;->L:J

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/b;->M:Ljava/lang/Object;

    .line 516
    sput-wide v2, Lcom/uc/crashsdk/b;->N:J

    .line 559
    sput-boolean v1, Lcom/uc/crashsdk/b;->O:Z

    .line 569
    sput-boolean v1, Lcom/uc/crashsdk/b;->P:Z

    .line 570
    sput-boolean v1, Lcom/uc/crashsdk/b;->Q:Z

    .line 641
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/b;->R:Ljava/util/WeakHashMap;

    .line 643
    sput-boolean v1, Lcom/uc/crashsdk/b;->S:Z

    .line 905
    sput-boolean v1, Lcom/uc/crashsdk/b;->T:Z

    .line 906
    sput-boolean v1, Lcom/uc/crashsdk/b;->U:Z

    .line 1070
    sput-boolean v1, Lcom/uc/crashsdk/b;->V:Z

    .line 1071
    sput-boolean v1, Lcom/uc/crashsdk/b;->W:Z

    .line 1072
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/b;->X:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .locals 3

    .line 909
    sget-boolean v0, Lcom/uc/crashsdk/b;->T:Z

    if-nez v0, :cond_2

    .line 910
    sget-object v0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/uc/crashsdk/b;->U:Z

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/uc/crashsdk/JNIBridge;->nativeSetProcessType(Z)V

    .line 911
    :cond_1
    sput-boolean v1, Lcom/uc/crashsdk/b;->T:Z

    .line 913
    :cond_2
    sget-boolean v0, Lcom/uc/crashsdk/b;->U:Z

    return v0
.end method

.method public static B()I
    .locals 2

    .line 931
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    .line 932
    invoke-static {}, Lcom/uc/crashsdk/b;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x3

    return v0

    .line 936
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 938
    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    if-eqz v0, :cond_2

    .line 940
    const/4 v0, 0x2

    return v0

    .line 942
    :cond_2
    const/4 v0, 0x5

    return v0

    .line 944
    :cond_3
    if-eqz v0, :cond_4

    .line 945
    const/4 v0, 0x4

    return v0

    .line 948
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static C()V
    .locals 3

    .line 957
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 958
    sget v0, Lcom/uc/crashsdk/b;->C:I

    const-string v1, "logType"

    const-string v2, "12"

    invoke-static {v1, v2, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 960
    :cond_0
    return-void
.end method

.method public static D()Z
    .locals 2

    .line 1075
    sget-boolean v0, Lcom/uc/crashsdk/b;->W:Z

    if-nez v0, :cond_1

    .line 1076
    sget-object v0, Lcom/uc/crashsdk/b;->X:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    sget-boolean v1, Lcom/uc/crashsdk/b;->W:Z

    if-nez v1, :cond_0

    .line 1078
    invoke-static {}, Lcom/uc/crashsdk/b;->P()Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->V:Z

    .line 1079
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/b;->W:Z

    .line 1081
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1083
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/uc/crashsdk/b;->V:Z

    return v0
.end method

.method static synthetic E()Z
    .locals 1

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->S:Z

    return v0
.end method

.method static synthetic F()Ljava/util/WeakHashMap;
    .locals 1

    .line 23
    sget-object v0, Lcom/uc/crashsdk/b;->R:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private static G()Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Lcom/uc/crashsdk/b;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "ss"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->i:Ljava/lang/String;

    .line 153
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static H()V
    .locals 4

    .line 250
    sget-boolean v0, Lcom/uc/crashsdk/b;->w:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/uc/crashsdk/b;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    sget-boolean v1, Lcom/uc/crashsdk/b;->w:Z

    if-eqz v1, :cond_1

    .line 257
    monitor-exit v0

    return-void

    .line 260
    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Z

    .line 262
    invoke-static {}, Lcom/uc/crashsdk/b;->n()Ljava/lang/String;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v3, "f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/uc/crashsdk/b;->x:Z

    .line 266
    const-string v3, "b"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->y:Z

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/b;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-static {}, Lcom/uc/crashsdk/b;->K()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_2
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 280
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/b;->w:Z

    .line 281
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 251
    :cond_3
    :goto_1
    return-void
.end method

.method private static I()Z
    .locals 1

    .line 295
    invoke-static {}, Lcom/uc/crashsdk/b;->H()V

    .line 296
    sget-boolean v0, Lcom/uc/crashsdk/b;->z:Z

    return v0
.end method

.method private static J()V
    .locals 3

    .line 336
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    sget-boolean v1, Lcom/uc/crashsdk/b;->u:Z

    const-string v2, "exit"

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 339
    :cond_0
    return-void
.end method

.method private static K()V
    .locals 4

    .line 417
    sget-boolean v0, Lcom/uc/crashsdk/b;->K:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 418
    sput-boolean v1, Lcom/uc/crashsdk/b;->K:Z

    .line 420
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 427
    :cond_0
    :goto_0
    invoke-static {}, Lcom/uc/crashsdk/b;->M()[Ljava/lang/Object;

    move-result-object v0

    .line 428
    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v3, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/uc/crashsdk/b;->I:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 436
    :cond_1
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a([Ljava/lang/Object;)V

    .line 438
    return-void

    .line 432
    :cond_2
    :goto_1
    sput-boolean v1, Lcom/uc/crashsdk/b;->H:Z

    .line 433
    invoke-static {}, Lcom/uc/crashsdk/b;->L()V

    return-void
.end method

.method private static L()V
    .locals 4

    .line 441
    sget-object v0, Lcom/uc/crashsdk/b;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 442
    sget-object v0, Lcom/uc/crashsdk/b;->J:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 443
    return-void

    .line 447
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->I:[Ljava/lang/Object;

    .line 448
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->M()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    :cond_1
    sget-object v0, Lcom/uc/crashsdk/b;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    .line 451
    sget-object v0, Lcom/uc/crashsdk/b;->J:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 453
    :cond_2
    return-void
.end method

.method private static M()[Ljava/lang/Object;
    .locals 7

    .line 519
    sget-object v0, Lcom/uc/crashsdk/b;->M:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    sget-wide v1, Lcom/uc/crashsdk/b;->N:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/uc/crashsdk/b;->N:J

    .line 523
    sget-boolean v3, Lcom/uc/crashsdk/b;->u:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    .line 524
    new-array v3, v6, [Ljava/lang/Object;

    const-string v6, "e"

    aput-object v6, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    monitor-exit v0

    return-object v3

    .line 525
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "f"

    aput-object v2, v1, v5

    sget-wide v2, Lcom/uc/crashsdk/b;->N:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    monitor-exit v0

    return-object v1

    .line 528
    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "b"

    aput-object v2, v1, v5

    sget-wide v2, Lcom/uc/crashsdk/b;->N:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    monitor-exit v0

    return-object v1

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static N()Ljava/lang/Object;
    .locals 5

    .line 860
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 861
    const-class v1, Landroid/app/Application;

    const-string v2, "mLoadedApk"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 862
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 863
    const-string v2, "mActivityThread"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_0

    .line 865
    return-object v0

    .line 872
    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_1

    .line 874
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_1

    .line 876
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 877
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 882
    :cond_1
    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 883
    :goto_0
    return-object v1
.end method

.method private static O()Z
    .locals 3

    .line 1060
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cgroup"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1064
    return v2

    .line 1066
    :cond_0
    const-string v1, "/bg_non_interactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    const-string v1, "/background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1066
    :cond_1
    return v2

    .line 1067
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static P()Z
    .locals 5

    .line 1087
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v3, "isIsolated"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1090
    if-eqz v2, :cond_0

    .line 1091
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1092
    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1093
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 1094
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1099
    :cond_0
    goto :goto_0

    .line 1097
    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1103
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1105
    const v3, 0x186a0

    rem-int/2addr v2, v3

    .line 1109
    const v3, 0x182b8

    if-lt v2, v3, :cond_1

    const v3, 0x1869f

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 887
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 888
    return-object v0

    .line 890
    :cond_0
    if-nez p1, :cond_1

    .line 891
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 895
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 896
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 897
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 898
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 902
    return-object v0
.end method

.method static a()Ljava/lang/String;
    .locals 8

    .line 94
    sget-object v0, Lcom/uc/crashsdk/b;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 98
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v0, "LLUN"

    sput-object v0, Lcom/uc/crashsdk/b;->B:Ljava/lang/String;

    goto/16 :goto_2

    .line 103
    :cond_1
    nop

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-le v1, v3, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    .line 106
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 109
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 119
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_8

    .line 120
    aget-byte v5, v0, v4

    .line 121
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_3
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    .line 124
    const/16 v5, 0x31

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :cond_4
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    const/16 v7, 0x7a

    if-gt v5, v7, :cond_5

    .line 126
    add-int/lit8 v5, v5, 0x41

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 127
    :cond_5
    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_6

    .line 128
    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_6
    if-lt v5, v3, :cond_7

    const/16 v6, 0x39

    if-gt v5, v6, :cond_7

    .line 130
    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 132
    :cond_7
    const/16 v5, 0x32

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 135
    :cond_8
    if-lez v2, :cond_9

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->B:Ljava/lang/String;

    .line 140
    :goto_2
    sget-object v0, Lcom/uc/crashsdk/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 7

    .line 777
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_5

    const/16 v0, 0x65

    if-eq p0, v0, :cond_1

    .line 787
    sget-boolean p0, Lcom/uc/crashsdk/b;->h:Z

    if-eqz p0, :cond_0

    .line 790
    return-void

    .line 787
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 783
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/uc/crashsdk/b;->E:Z

    if-nez v1, :cond_3

    sget-boolean p0, Lcom/uc/crashsdk/b;->H:Z

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {}, Lcom/uc/crashsdk/b;->M()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/b;->a([Ljava/lang/Object;)V

    sput-boolean v2, Lcom/uc/crashsdk/b;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 784
    return-void

    .line 779
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/b;->N()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string v0, "mActivities"

    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    :try_start_1
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v4, "activity"

    invoke-static {v2, v3, v4}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-eqz v4, :cond_8

    const-string v5, "paused"

    invoke-static {v2, v3, v5}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "stopped"

    invoke-static {v2, v3, v6}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v6, Lcom/uc/crashsdk/b;->R:Ljava/util/WeakHashMap;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v5, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x2

    :goto_3
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    :cond_8
    :goto_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_a
    return-void

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 780
    :cond_b
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .line 580
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-boolean v1, Lcom/uc/crashsdk/b;->u:Z

    if-eqz v1, :cond_1

    .line 581
    invoke-static {}, Lcom/uc/crashsdk/h;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crashsdk"

    const-string v2, "setForeground, reset sExited to false!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    sput-boolean v0, Lcom/uc/crashsdk/b;->u:Z

    .line 583
    invoke-static {}, Lcom/uc/crashsdk/b;->J()V

    .line 590
    :cond_1
    nop

    .line 591
    sput-boolean p0, Lcom/uc/crashsdk/b;->P:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 592
    sput-boolean v1, Lcom/uc/crashsdk/b;->O:Z

    .line 594
    :cond_2
    sget-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v2, :cond_3

    .line 595
    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    .line 598
    :cond_3
    sget-boolean v2, Lcom/uc/crashsdk/b;->u:Z

    if-eqz v2, :cond_4

    .line 599
    return-void

    .line 603
    :cond_4
    invoke-static {}, Lcom/uc/crashsdk/e;->y()Z

    move-result v2

    if-nez v2, :cond_6

    .line 604
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v2, 0x1

    .line 605
    :goto_1
    if-eqz v2, :cond_7

    .line 606
    return-void

    .line 609
    :cond_7
    invoke-static {}, Lcom/uc/crashsdk/b;->H()V

    .line 610
    invoke-static {}, Lcom/uc/crashsdk/b;->K()V

    .line 612
    if-eqz p0, :cond_8

    .line 614
    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(Z)Z

    .line 617
    sget-boolean v0, Lcom/uc/crashsdk/b;->Q:Z

    if-nez v0, :cond_8

    .line 618
    invoke-static {}, Lcom/uc/crashsdk/e;->v()V

    .line 619
    sput-boolean v1, Lcom/uc/crashsdk/b;->Q:Z

    .line 626
    :cond_8
    sget-boolean v0, Lcom/uc/crashsdk/b;->E:Z

    if-nez v0, :cond_9

    .line 627
    invoke-static {}, Lcom/uc/crashsdk/b;->L()V

    .line 630
    :cond_9
    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Z)V

    .line 631
    return-void
.end method

.method private static a([Ljava/lang/Object;)V
    .locals 8

    .line 458
    sput-object p0, Lcom/uc/crashsdk/b;->I:[Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/uc/crashsdk/b;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    .line 461
    const/4 v3, 0x1

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 462
    sget-wide v6, Lcom/uc/crashsdk/b;->L:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_0

    .line 463
    const-string p0, "crashsdk"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Update state generation %d, last is: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 465
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    sget-wide v4, Lcom/uc/crashsdk/b;->L:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v3

    .line 463
    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    monitor-exit v0

    return-void

    .line 468
    :cond_0
    sput-wide v4, Lcom/uc/crashsdk/b;->L:J

    .line 470
    invoke-static {}, Lcom/uc/crashsdk/b;->G()Ljava/lang/String;

    move-result-object p0

    .line 472
    sget-boolean v3, Lcom/uc/crashsdk/b;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 473
    sget-object v3, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    .line 474
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 475
    sput-object v4, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    .line 477
    :cond_1
    sget-boolean v3, Lcom/uc/crashsdk/b;->E:Z

    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeChangeState(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 479
    sput-boolean v1, Lcom/uc/crashsdk/b;->E:Z

    .line 480
    if-nez p0, :cond_2

    .line 481
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "write state failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 483
    :cond_2
    goto :goto_1

    .line 484
    :cond_3
    sget-object v3, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_4

    sget-boolean v7, Lcom/uc/crashsdk/b;->E:Z

    if-eqz v7, :cond_6

    .line 485
    :cond_4
    if-eqz v3, :cond_5

    .line 486
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 487
    sput-object v4, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_5
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v3, p0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sput-object v3, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 493
    sput-boolean v1, Lcom/uc/crashsdk/b;->E:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :cond_6
    :goto_0
    :try_start_3
    sget-object p0, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 502
    sget-object p0, Lcom/uc/crashsdk/b;->D:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    goto :goto_1

    .line 503
    :catch_1
    move-exception p0

    :try_start_4
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 510
    :goto_1
    sput-object v2, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    .line 511
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    sput-object v4, Lcom/uc/crashsdk/b;->I:[Ljava/lang/Object;

    .line 513
    return-void

    .line 511
    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 646
    check-cast p0, Landroid/app/Application;

    .line 648
    :try_start_0
    new-instance v0, Lcom/uc/crashsdk/c;

    invoke-direct {v0}, Lcom/uc/crashsdk/c;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    nop

    .line 765
    invoke-static {}, Lcom/uc/crashsdk/h;->K()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 766
    invoke-static {}, Lcom/uc/crashsdk/b;->z()V

    .line 768
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 760
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 762
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .locals 4

    .line 971
    nop

    .line 972
    monitor-enter p0

    .line 973
    :try_start_0
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 976
    invoke-static {p1}, Lcom/uc/crashsdk/JNIBridge;->nativeOpenFile(Ljava/lang/String;)I

    move-result v0

    .line 977
    if-gez v0, :cond_0

    .line 978
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can not open file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "crashsdk"

    invoke-static {p2, p1, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 979
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    return v2

    .line 984
    :cond_0
    const/4 p1, 0x1

    :try_start_1
    invoke-static {v0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 986
    :try_start_2
    invoke-virtual {p2}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 988
    if-eqz p1, :cond_1

    .line 990
    :try_start_3
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 994
    :cond_1
    :try_start_4
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCloseFile(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 995
    goto/16 :goto_9

    .line 988
    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 990
    :try_start_5
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z

    :cond_2
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 994
    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCloseFile(I)V

    throw p1

    .line 996
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez p1, :cond_4

    .line 1001
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1004
    goto :goto_0

    .line 1002
    :catch_0
    move-exception p1

    :try_start_8
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1007
    :cond_4
    :goto_0
    nop

    .line 1010
    :try_start_9
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {p1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1013
    goto :goto_1

    .line 1038
    :catchall_2
    move-exception p1

    goto :goto_a

    .line 1011
    :catch_1
    move-exception p1

    :try_start_a
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object p1, v1

    .line 1015
    :goto_1
    nop

    .line 1017
    if-eqz p1, :cond_5

    .line 1018
    :try_start_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    .line 1038
    :catchall_3
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_a

    .line 1020
    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    .line 1035
    :catch_3
    move-exception p2

    move-object v1, p1

    goto :goto_7

    .line 1022
    :cond_5
    :goto_2
    nop

    .line 1025
    :goto_3
    :try_start_d
    invoke-virtual {p2}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1027
    if-eqz v1, :cond_6

    .line 1029
    :try_start_e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1032
    :goto_4
    goto :goto_5

    .line 1030
    :catch_4
    move-exception p2

    :try_start_f
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_4

    .line 1038
    :cond_6
    :goto_5
    :try_start_10
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_8

    .line 1027
    :catchall_4
    move-exception p2

    if-eqz v1, :cond_7

    .line 1029
    :try_start_11
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1032
    goto :goto_6

    .line 1030
    :catch_5
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1032
    :cond_7
    :goto_6
    throw p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1035
    :catch_6
    move-exception p2

    :goto_7
    :try_start_13
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1038
    :try_start_14
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1039
    :goto_8
    move p2, v2

    .line 1041
    :goto_9
    monitor-exit p0

    .line 1042
    return p2

    .line 1038
    :goto_a
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    .line 1041
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw p1
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "ct"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    .line 160
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    .line 952
    sput p0, Lcom/uc/crashsdk/b;->C:I

    .line 953
    invoke-static {}, Lcom/uc/crashsdk/b;->C()V

    .line 954
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    .line 541
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 543
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 546
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 547
    return v1

    .line 551
    :cond_1
    const/4 p0, 0x0

    const-string v2, "crashsdk"

    const-string v3, "Crash log directory was placed by a file!"

    invoke-static {v2, v3, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 554
    return v1

    .line 556
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "st"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    .line 167
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static c(I)Z
    .locals 1

    .line 963
    sget v0, Lcom/uc/crashsdk/b;->C:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .line 171
    sget-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "rt"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    .line 174
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .line 178
    sget-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "lgsuf"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    .line 181
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "bati"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    .line 188
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .line 192
    sget-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "hdr"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    .line 195
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method static h()Ljava/lang/String;
    .locals 2

    .line 199
    sget-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    .line 202
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 206
    sget-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    .line 210
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 214
    sget-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "statu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    .line 218
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method static k()Ljava/lang/String;
    .locals 2

    .line 222
    sget-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "poli"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    .line 226
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method static l()Ljava/lang/String;
    .locals 2

    .line 230
    sget-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    .line 233
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bvu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n()Ljava/lang/String;
    .locals 2

    .line 241
    invoke-static {}, Lcom/uc/crashsdk/b;->G()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static o()Z
    .locals 1

    .line 246
    sget-boolean v0, Lcom/uc/crashsdk/b;->v:Z

    return v0
.end method

.method static p()Z
    .locals 1

    .line 285
    invoke-static {}, Lcom/uc/crashsdk/b;->H()V

    .line 286
    sget-boolean v0, Lcom/uc/crashsdk/b;->x:Z

    return v0
.end method

.method static q()Z
    .locals 1

    .line 290
    invoke-static {}, Lcom/uc/crashsdk/b;->H()V

    .line 291
    sget-boolean v0, Lcom/uc/crashsdk/b;->y:Z

    return v0
.end method

.method static r()Z
    .locals 1

    .line 300
    sget-boolean v0, Lcom/uc/crashsdk/b;->u:Z

    return v0
.end method

.method public static s()V
    .locals 12

    .line 304
    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Z

    .line 306
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->v:Z

    .line 307
    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/crashsdk/b;->x:Z

    .line 308
    sput-boolean v1, Lcom/uc/crashsdk/b;->y:Z

    .line 309
    sput-boolean v1, Lcom/uc/crashsdk/b;->z:Z

    .line 312
    const-string v2, ".st"

    const-string v3, ".wa"

    const-string v4, ".callback"

    const-string v5, ".ct"

    const-string v6, ".signal"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    const-string v4, "authu"

    const-string v5, "statu"

    const-string v6, "poli"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_1

    aget-object v10, v2, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_3

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x4

    if-ge v10, v11, :cond_3

    aget-object v11, v3, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delete file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 317
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/b;->K()V

    .line 318
    return-void
.end method

.method public static t()V
    .locals 1

    .line 321
    sget-boolean v0, Lcom/uc/crashsdk/b;->u:Z

    if-eqz v0, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->u:Z

    .line 326
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    return-void

    .line 330
    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Z

    .line 331
    invoke-static {}, Lcom/uc/crashsdk/b;->J()V

    .line 332
    invoke-static {}, Lcom/uc/crashsdk/b;->K()V

    .line 333
    return-void
.end method

.method static u()Z
    .locals 1

    .line 533
    invoke-static {}, Lcom/uc/crashsdk/h;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static v()Z
    .locals 1

    .line 537
    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static w()Z
    .locals 1

    .line 562
    sget-boolean v0, Lcom/uc/crashsdk/b;->O:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->O()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static x()Z
    .locals 1

    .line 566
    sget-boolean v0, Lcom/uc/crashsdk/b;->P:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->O()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static y()Z
    .locals 1

    .line 634
    sget-boolean v0, Lcom/uc/crashsdk/b;->P:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/b;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static z()V
    .locals 2

    .line 772
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 774
    return-void
.end method
