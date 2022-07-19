.class public Lcom/uc/webview/export/utility/download/UpdateTask;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field public static final START_FLG_FILE_NAME:Ljava/lang/String; = "299772b0fd1634653ae3c31f366de3f8"

.field public static final STOP_FLG_FILE_NAME:Ljava/lang/String; = "2e67cdbeb4ec133dcc8204d930aa7145"

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[Ljava/lang/String;

.field private final d:[J

.field private final e:[Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/utility/download/UpdateTask;",
            ">;"
        }
    .end annotation
.end field

.field private final f:[Ljava/lang/Object;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 93
    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[Ljava/lang/String;

    .line 47
    const/4 v6, 0x6

    new-array v6, v6, [J

    iput-object v6, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    .line 51
    const/16 v7, 0xc

    new-array v7, v7, [Landroid/webkit/ValueCallback;

    iput-object v7, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    .line 74
    const/4 v7, 0x0

    iput v7, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    .line 76
    iput v7, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->h:I

    .line 80
    const-string v8, "sdk_shell.jar"

    iput-object v8, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->i:Ljava/lang/String;

    .line 95
    if-nez p6, :cond_0

    .line 96
    const-wide/32 v8, 0xea60

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    .line 95
    :cond_0
    move-object/from16 v8, p6

    .line 98
    :goto_0
    if-nez p7, :cond_1

    .line 99
    const-wide/32 v9, 0x240c8400

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1

    .line 98
    :cond_1
    move-object/from16 v9, p7

    .line 101
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    .line 103
    sget-object v11, Lcom/uc/webview/export/utility/download/UpdateTask;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v11

    .line 104
    int-to-long v12, v10

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 108
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v10, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const-string v10, "sdk_ucm"

    invoke-static {v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 113
    iput-object v3, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->j:Landroid/webkit/ValueCallback;

    .line 114
    aput-wide v12, v6, v7

    .line 115
    const/4 v10, 0x4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v6, v10

    .line 116
    const/4 v8, 0x5

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v6, v8

    .line 117
    aput-object v2, v5, v7

    .line 118
    const/4 v6, 0x1

    aput-object p3, v5, v6

    .line 119
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 120
    aput-object v0, v4, v7

    .line 121
    new-instance v5, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-direct {v5, v0, v2, v3}, Lcom/uc/webview/export/utility/download/DownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    aput-object v5, v4, v8

    .line 122
    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/uc/webview/export/utility/download/UpdateTask;->i:Ljava/lang/String;

    .line 123
    return-void

    .line 105
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Duplicate task."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/UpdateTask;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    return p1
.end method

.method static synthetic a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->j:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)V
    .locals 2

    .line 1506
    new-instance v0, Ljava/io/File;

    const-string v1, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 38
    return-void
.end method

.method static synthetic a(Ljava/io/File;Z)V
    .locals 1

    .line 1510
    if-eqz p1, :cond_0

    .line 1511
    new-instance p1, Ljava/io/File;

    const-string v0, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    return-void

    .line 1513
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 38
    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/utility/download/UpdateTask;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:I

    return p1
.end method

.method static synthetic b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    return-object p0
.end method

.method static synthetic d(Lcom/uc/webview/export/utility/download/UpdateTask;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/uc/webview/export/utility/download/UpdateTask;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    return p0
.end method

.method static synthetic f(Lcom/uc/webview/export/utility/download/UpdateTask;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:I

    return p0
.end method

.method public static final getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 132
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "ucPlayerRoot"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 135
    :cond_0
    const-string v0, "ucplayer"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getUpdateRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 533
    const-string v0, "updates"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static isFinished(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 523
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    const-string v0, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    const-string v0, "c34d62af061f389f7e4c9f0e835f7a54"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/File;

    const-string v0, "95b70b3ec9f6407a92becf890996088d"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    .line 523
    return p0
.end method


# virtual methods
.method public delete()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    new-instance v1, Lcom/uc/webview/export/utility/download/f;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/utility/download/f;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stopWith(Ljava/lang/Runnable;)Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 502
    return-object p0
.end method

.method protected finalize()V
    .locals 4

    .line 140
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/utility/download/UpdateTask;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    return-void
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->h:I

    return v0
.end method

.method public final getUpdateDir()Ljava/io/File;
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const/4 v0, 0x2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 192
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 194
    iget-object v3, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->d:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[Ljava/lang/String;

    aget-object v0, v3, v0

    .line 198
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[Ljava/lang/String;

    aget-object v1, v5, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/utility/download/UpdateTask;",
            ">;)",
            "Lcom/uc/webview/export/utility/download/UpdateTask;"
        }
    .end annotation

    .line 155
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    goto/16 :goto_0

    .line 157
    :cond_0
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    goto/16 :goto_0

    .line 159
    :cond_1
    const-string v0, "recovered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x2

    aput-object p2, p1, v0

    goto/16 :goto_0

    .line 161
    :cond_2
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x3

    aput-object p2, p1, v0

    goto/16 :goto_0

    .line 163
    :cond_3
    const-string v0, "exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x4

    aput-object p2, p1, v0

    goto :goto_0

    .line 165
    :cond_4
    const-string v0, "check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x5

    aput-object p2, p1, v0

    goto :goto_0

    .line 167
    :cond_5
    const-string v0, "exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x6

    aput-object p2, p1, v0

    goto :goto_0

    .line 169
    :cond_6
    const-string v0, "beginDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v0, 0x7

    aput-object p2, p1, v0

    goto :goto_0

    .line 171
    :cond_7
    const-string v0, "beginUnZip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/16 v0, 0x8

    aput-object p2, p1, v0

    goto :goto_0

    .line 173
    :cond_8
    const-string v0, "unzipSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/16 v0, 0x9

    aput-object p2, p1, v0

    goto :goto_0

    .line 175
    :cond_9
    const-string v0, "downloadException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/16 v0, 0xa

    aput-object p2, p1, v0

    goto :goto_0

    .line 177
    :cond_a
    const-string v0, "deleteDownFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/16 v0, 0xb

    aput-object p2, p1, v0

    .line 182
    :goto_0
    return-object p0

    .line 180
    :cond_b
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The given event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public start()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 22

    .line 214
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/uc/webview/export/utility/download/UpdateTask;->e:[Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 215
    const/4 v2, 0x1

    aget-object v11, v0, v2

    .line 216
    const/4 v2, 0x2

    aget-object v12, v0, v2

    .line 217
    const/4 v3, 0x3

    aget-object v13, v0, v3

    .line 218
    const/4 v3, 0x4

    aget-object v14, v0, v3

    .line 219
    const/4 v3, 0x5

    aget-object v15, v0, v3

    .line 220
    const/4 v3, 0x6

    aget-object v16, v0, v3

    .line 221
    const/4 v3, 0x7

    aget-object v9, v0, v3

    .line 222
    const/16 v3, 0x8

    aget-object v6, v0, v3

    .line 223
    const/16 v3, 0x9

    aget-object v7, v0, v3

    .line 224
    const/16 v3, 0xa

    aget-object v5, v0, v3

    .line 225
    const/16 v3, 0xb

    aget-object v4, v0, v3

    .line 227
    iget-object v0, v10, Lcom/uc/webview/export/utility/download/UpdateTask;->c:[Ljava/lang/String;

    aget-object v3, v0, v1

    .line 228
    iget-object v0, v10, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    aget-object v0, v0, v2

    move-object v2, v0

    check-cast v2, Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 230
    iput v1, v10, Lcom/uc/webview/export/utility/download/UpdateTask;->g:I

    .line 231
    new-instance v1, Lcom/uc/webview/export/utility/download/d;

    move-object v0, v1

    move-object/from16 v17, v12

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object v2, v13

    move-object/from16 v19, v13

    move-object v13, v4

    move-object/from16 v4, v18

    move-object/from16 v20, v5

    move-object v5, v11

    move-object/from16 v21, v9

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/uc/webview/export/utility/download/d;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Ljava/lang/String;Lcom/uc/webview/export/utility/download/DownloadTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 309
    new-instance v0, Lcom/uc/webview/export/utility/download/e;

    invoke-direct {v0, v10, v15}, Lcom/uc/webview/export/utility/download/e;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    const-string v1, "check"

    move-object/from16 v2, v18

    invoke-virtual {v2, v1, v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/o;

    invoke-direct {v1, v10, v12}, Lcom/uc/webview/export/utility/download/o;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V

    .line 314
    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/n;

    invoke-direct {v1, v10, v12}, Lcom/uc/webview/export/utility/download/n;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V

    .line 319
    const-string v2, "exists"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/m;

    invoke-direct {v1, v10, v13}, Lcom/uc/webview/export/utility/download/m;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 324
    const-string v2, "delete"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/l;

    invoke-direct {v1, v10, v11}, Lcom/uc/webview/export/utility/download/l;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 329
    const-string v2, "failed"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/k;

    move-object/from16 v4, v19

    invoke-direct {v1, v10, v4}, Lcom/uc/webview/export/utility/download/k;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 339
    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/i;

    move-object/from16 v2, v20

    invoke-direct {v1, v10, v2, v14}, Lcom/uc/webview/export/utility/download/i;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 375
    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v6

    new-instance v7, Lcom/uc/webview/export/utility/download/h;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/utility/download/h;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V

    .line 407
    const-string v0, "header"

    invoke-virtual {v6, v0, v7}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/utility/download/g;

    move-object/from16 v2, v21

    invoke-direct {v1, v10, v2}, Lcom/uc/webview/export/utility/download/g;-><init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V

    .line 452
    const-string v2, "beginDownload"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/utility/download/DownloadTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/DownloadTask;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->start()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 461
    return-object v10
.end method

.method public startDownload()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->start()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 481
    return-object p0
.end method

.method public stop()Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/UpdateTask;->f:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;

    .line 471
    return-object p0
.end method
