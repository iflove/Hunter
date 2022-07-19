.class public Lcom/uc/webview/export/internal/setup/UCAsyncTask;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;,
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
        "CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/Boolean;


# instance fields
.field private a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Boolean;

.field private g:Z

.field private h:Z

.field private final i:Lcom/uc/webview/export/internal/setup/bo;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Looper;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/String;

.field public mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "TCA",
            "LLBACK_TYPE;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field protected mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field protected mHasStarted:Z

.field protected mPercent:I

.field private n:J

.field private o:Ljava/lang/Runnable;

.field private q:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 1

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    .line 44
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 45
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Z

    .line 46
    new-instance v1, Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bo;-><init>()V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    .line 56
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:J

    .line 57
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    .line 61
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->q:Ljava/util/Vector;

    .line 69
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    .line 70
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Ljava/lang/Boolean;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;)V

    .line 76
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method private a()I
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    .line 155
    :goto_0
    if-eqz v0, :cond_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    return v1
.end method

.method private a(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 256
    const/16 v0, 0x1fa

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 257
    new-instance v0, Lcom/uc/webview/export/internal/setup/bp;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/internal/setup/bp;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:Landroid/os/Handler;

    .line 411
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    const/16 p1, 0x1fb

    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 414
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/bo;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    :goto_0
    add-int/lit8 v1, p0, -0x1

    if-lez p0, :cond_0

    .line 165
    const-string p0, "    "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 2

    .line 179
    move-object v0, p0

    .line 180
    :goto_0
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/Boolean;
    .locals 1

    .line 27
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I
    .locals 1

    .line 27
    iget v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    return v0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I
    .locals 1

    .line 27
    nop

    .line 3175
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    add-int/2addr v0, p0

    .line 27
    return v0
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:J

    return-wide v0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    .locals 2

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:J

    return-wide v0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 1

    .line 27
    nop

    .line 4132
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p0, :cond_0

    .line 4133
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 4134
    :cond_0
    const-string p0, "UCAsyncTask"

    const-string v0, "clearSubTasks"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic k(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic l(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-object p0
.end method

.method static synthetic m(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 3

    .line 27
    nop

    .line 5117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cleanThread mLooper "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCAsyncTask"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5119
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 5120
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 5121
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Landroid/os/Looper;

    .line 5123
    :cond_0
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:Landroid/os/Handler;

    .line 5124
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 5125
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5126
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    .line 5128
    :cond_1
    const-string p0, "cleanThread"

    invoke-static {v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic o(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/Vector;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->q:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method protected callback(Ljava/lang/String;)V
    .locals 12

    .line 202
    const-string v0, "%5s"

    const-string v1, "UCAsyncTask"

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/String;

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v2

    .line 207
    const-string v3, "stat"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "exception"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 208
    :try_start_1
    const-string v3, "d"

    invoke-static {v3, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_3

    .line 210
    const-string v7, "cost"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, ""

    const-string v9, "."

    const-string v10, "callback: "

    if-eqz v7, :cond_0

    .line 211
    :try_start_2
    sget-object v7, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->p:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->q:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a()I

    move-result v10

    invoke-static {v10}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " cost:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v10, v9, v6

    .line 214
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " cost_cpu:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v10, v9, v6

    .line 215
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " task:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 218
    goto :goto_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a()I

    move-result v7

    invoke-static {v7}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "progress"

    .line 221
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getPercent()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v8

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object v11, v8

    move-object v8, v0

    move-object v0, v11

    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v6, [Ljava/lang/Throwable;

    .line 220
    invoke-virtual {v3, v0, v7}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 228
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 229
    const-string v0, "e"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_4

    .line 231
    const-string v3, "callback: exception: "

    new-array v4, v5, [Ljava/lang/Throwable;

    aput-object v2, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 232
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 233
    const-string v3, "callback: rootCause: "

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :cond_4
    goto :goto_2

    .line 237
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    :goto_2
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    .line 242
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 243
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 245
    :cond_5
    instance-of v0, p1, Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_6

    .line 246
    check-cast p1, Landroid/webkit/ValueCallback;

    .line 248
    :try_start_3
    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    return-void

    .line 249
    :catchall_1
    move-exception p1

    .line 250
    const-string v0, "callback exception"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_6
    return-void
.end method

.method public final getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/webkit/ValueCallback<",
            "TCA",
            "LLBACK_TYPE;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public final getCosts()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->q:Ljava/util/Vector;

    return-object v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method public getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method protected getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mPercent:I

    return v0
.end method

.method protected final getPriority()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected inThread()Z
    .locals 2

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 196
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStopped()Z
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    monitor-enter v0

    .line 498
    :try_start_0
    iget-boolean v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Z

    monitor-exit v0

    return v1

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "TCA",
            "LLBACK_TYPE;",
            ">;)TRETURN_TYPE;"
        }
    .end annotation

    .line 533
    if-eqz p1, :cond_3

    .line 534
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 535
    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 539
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 541
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 542
    iget-object p2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_3
    :goto_1
    return-object p0
.end method

.method public pause()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .line 504
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 505
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 508
    :cond_0
    monitor-exit v1

    .line 509
    return-object p0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final post(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
            ")TRETURN_TYPE;"
        }
    .end annotation

    .line 102
    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-ne v0, p0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v0

    .line 113
    return-object p0

    .line 111
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please use \"new UCAsyncTask(parentTask).start()\" instead of \"post(new UCAsyncTask())\" to add sub task."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 514
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    monitor-enter v1

    .line 515
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 517
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/bo;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    .line 3036
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    .line 520
    :cond_0
    monitor-exit v1

    .line 522
    return-object p0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 529
    :cond_0
    return-void
.end method

.method public final setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "TCA",
            "LLBACK_TYPE;",
            ">;>;)TRETURN_TYPE;"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    invoke-virtual {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    return-object p0
.end method

.method public setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 558
    return-void
.end method

.method public setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 567
    return-void
.end method

.method public final setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
            ")TRETURN_TYPE;"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 87
    return-object p0
.end method

.method public final setPriority(I)V
    .locals 0

    .line 98
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    return-void
.end method

.method public start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-boolean v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    if-nez v1, :cond_7

    .line 456
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    .line 458
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->post(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto/16 :goto_3

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    const/16 v2, 0xe1

    if-nez v1, :cond_6

    .line 463
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 465
    nop

    .line 1428
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1433
    :cond_2
    const-string v1, "UCAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createThreadIfNeed myLooper "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1435
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1436
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Landroid/os/Looper;

    .line 1437
    const-string v1, "UCAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createThreadIfNeed new myLooper "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Landroid/os/Looper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Landroid/os/Looper;

    invoke-direct {p0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 1439
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1440
    const-string v1, "UCAsyncTask"

    const-string v2, "createThreadIfNeed Looper.loop after"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1442
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 1444
    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 1429
    :cond_4
    :goto_1
    const-string v1, "UCAsyncTask"

    const-string v2, "createThreadIfNeed Looper.myLooper() == Looper.getMainLooper "

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    new-instance v1, Lcom/uc/webview/export/internal/setup/bq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UCAsyncTask_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/uc/webview/export/internal/setup/bq;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Ljava/lang/String;I)V

    .line 1430
    nop

    .line 465
    :goto_2
    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    .line 466
    if-eqz v1, :cond_5

    .line 467
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 469
    :cond_5
    goto :goto_3

    .line 471
    :cond_6
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 472
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/HandlerThread;

    if-eqz v1, :cond_7

    .line 473
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 478
    :cond_7
    :goto_3
    monitor-exit v0

    .line 479
    return-object p0

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TRETURN_TYPE;"
        }
    .end annotation

    .line 483
    iput-wide p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:J

    .line 484
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Lcom/uc/webview/export/internal/setup/bo;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Z

    .line 492
    monitor-exit v0

    .line 493
    return-object p0

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
