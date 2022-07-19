.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;
.super Ljava/lang/Object;
.source "FpsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field volatile a:I

.field b:Landroid/view/Choreographer$FrameCallback;

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->d:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e:I

    .line 21
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a:I

    .line 22
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->f:I

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->b:Landroid/view/Choreographer$FrameCallback;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    .line 16
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;
    .param p1, "x1"    # J

    .line 16
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->d:J

    return-wide p1
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    .line 16
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    .line 16
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->f:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    .line 16
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->a:I

    return v0
.end method

.method public final c()V
    .locals 3

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public final d()V
    .locals 2

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->d:J

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->e:I

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 92
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/FpsCollector;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
