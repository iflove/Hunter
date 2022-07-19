.class public Lcom/alipay/mobile/h5container/api/H5Flag;
.super Ljava/lang/Object;
.source "H5Flag.java"


# static fields
.field public static eventTrackerCostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static eventTrackerStubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static hasShowLoading:Z

.field public static initUcNormal:Z

.field public static isInChane:Z

.field public static isUploadLog:Z

.field public static lastTouchTime:J

.field public static sInjectDebugConsoleJS:Ljava/lang/Boolean;

.field public static sOpenAuthGrantFlag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static ucReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    .line 18
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    .line 21
    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->hasShowLoading:Z

    .line 26
    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->isUploadLog:Z

    .line 29
    sput-boolean v1, Lcom/alipay/mobile/h5container/api/H5Flag;->isInChane:Z

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5Flag;->sOpenAuthGrantFlag:Ljava/util/HashMap;

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Flag;->sInjectDebugConsoleJS:Ljava/lang/Boolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerCostMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpenAuthGrantFlag(Ljava/lang/String;)Z
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/h5container/api/H5Flag;

    monitor-enter v0

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "flag":Z
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Flag;->sOpenAuthGrantFlag:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Flag;->sOpenAuthGrantFlag:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 45
    :cond_0
    monitor-exit v0

    return v1

    .line 40
    .end local v1    # "flag":Z
    .end local p0    # "sessionId":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOpenAuthGrantFlag(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    const-class v0, Lcom/alipay/mobile/h5container/api/H5Flag;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Flag;->sOpenAuthGrantFlag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v0

    return-void

    .line 48
    .end local p0    # "sessionId":Ljava/lang/String;
    .end local p1    # "flag":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
