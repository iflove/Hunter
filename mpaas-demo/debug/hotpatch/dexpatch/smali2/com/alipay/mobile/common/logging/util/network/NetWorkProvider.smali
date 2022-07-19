.class public Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
.super Ljava/lang/Object;
.source "NetWorkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider; = null

.field public static final NETWORK_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static b:J

.field private static c:I


# instance fields
.field private a:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->INSTANCE:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    .line 15
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 82
    .local v2, "time":J
    move-wide v2, v0

    sget-wide v4, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->b:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 83
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/network/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->c:I

    .line 84
    sput-wide v2, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->b:J

    .line 86
    :cond_0
    sget v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->c:I

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->INSTANCE:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->INSTANCE:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    .line 25
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->INSTANCE:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
    .locals 3

    const-class v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->INSTANCE:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 32
    monitor-exit v0

    return-object v1

    .line 30
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "need createInstance before use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCurrentNetworkType()I
    .locals 2

    .line 74
    sget v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->a(Landroid/content/Context;)I

    .line 77
    :cond_1
    sget v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->c:I

    return v0
.end method

.method public getCurrentNetworkType2Str()Ljava/lang/String;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->getCurrentNetworkType()I

    move-result v0

    .line 59
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 69
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 65
    :cond_0
    const-string v0, "4g"

    return-object v0

    .line 67
    :cond_1
    const-string/jumbo v0, "wifi"

    return-object v0

    .line 63
    :cond_2
    const-string v0, "3g"

    return-object v0

    .line 61
    :cond_3
    const-string v0, "2g"

    return-object v0
.end method

.method public registerLogNetworkConnReceiver()V
    .locals 2

    .line 41
    new-instance v0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;-><init>(Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->d:Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;

    .line 42
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider$LogNetworkConnReceiver;->register()V

    .line 43
    return-void
.end method
