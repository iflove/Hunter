.class public Lcom/alipay/mobile/framework/handler/PausableHandler;
.super Landroid/os/Handler;
.source "PausableHandler.java"


# static fields
.field private static a:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/framework/handler/PausableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->a:[Ljava/lang/ref/WeakReference;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v0, Lcom/alipay/mobile/framework/handler/PausableHandler$1;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/handler/PausableHandler$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/framework/handler/PausableHandler;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 33
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/handler/PausableHandler;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 38
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/framework/handler/PausableHandler;->a()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/framework/handler/PausableHandler;->a()V

    .line 45
    return-void
.end method

.method private a()V
    .locals 3

    .line 48
    sget-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget-object v1, Lcom/alipay/mobile/framework/handler/PausableHandler;->a:[Ljava/lang/ref/WeakReference;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 52
    :cond_0
    return-void
.end method

.method public static pauseAll()V
    .locals 6

    .line 56
    sget-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->a:[Ljava/lang/ref/WeakReference;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 57
    .local v2, "prWR":Ljava/lang/ref/WeakReference;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/handler/PausableHandler;

    .line 61
    .local v3, "handler":Lcom/alipay/mobile/framework/handler/PausableHandler;
    move-object v3, v5

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/handler/PausableHandler;->pause()V

    .line 56
    .end local v2    # "prWR":Ljava/lang/ref/WeakReference;
    .end local v3    # "handler":Lcom/alipay/mobile/framework/handler/PausableHandler;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public static resumeAll()V
    .locals 0

    .line 71
    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    .line 74
    sget-object v0, Lcom/alipay/mobile/framework/handler/PausableHandler;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/handler/PausableHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public final resume()V
    .locals 0

    .line 79
    return-void
.end method
