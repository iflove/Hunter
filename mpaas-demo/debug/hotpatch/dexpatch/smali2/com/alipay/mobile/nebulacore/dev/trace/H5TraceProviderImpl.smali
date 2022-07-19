.class public Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TraceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b:Ljava/util/Queue;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .line 39
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private static a()Z
    .locals 2

    .line 54
    const-string v0, "h5_trace_debug_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 58
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c()V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 75
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->g:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    const-wide/16 v1, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->g:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    .line 81
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->registerCallback(Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->g:Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->start()V

    .line 105
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, "timestamp":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {p1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "viewId"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 221
    .local v5, "viewId":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not send "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because no viewId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5TraceProviderImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 227
    .local v4, "pending":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v6

    invoke-virtual {v6, v2, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d(Lcom/alibaba/fastjson/JSONObject;)V

    .line 229
    .end local v4    # "pending":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 232
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d(Lcom/alibaba/fastjson/JSONObject;)V

    .line 234
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static d(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 237
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->nextId()I

    move-result v0

    int-to-long v0, v0

    .line 238
    .local v0, "currentId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "bugmeSwitchOpen"

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const/4 v3, 0x0

    .line 241
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->post(Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public event(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TraceProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 111
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "type"

    const-string v3, "performance"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "subType"

    const-string v2, "event"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "thread"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "viewId"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "params"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b()V

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a:Ljava/util/Set;

    .line 122
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string v0, "pageLoad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "domReady"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 163
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c(Lcom/alibaba/fastjson/JSONObject;)V

    .line 164
    return-void
.end method

.method public sessionBegin(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sessionBegin "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TraceProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b()V

    .line 171
    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "paramStr":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 174
    .local v3, "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    move-object v3, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->start()V

    .line 176
    const-string v1, "async"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v1    # "key":Ljava/lang/String;
    return-void

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "threadName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 182
    .local v2, "active":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    move-object v2, v4

    if-nez v4, :cond_1

    .line 183
    move-object v2, v3

    .line 184
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 186
    :cond_1
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->insert(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;)V

    .line 189
    .end local v1    # "threadName":Ljava/lang/String;
    .end local v2    # "active":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    return-void
.end method

.method public sessionEnd(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sessionEnd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TraceProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b()V

    .line 196
    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "paramStr":Ljava/lang/String;
    const-string v1, "async"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 201
    .local v2, "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->end()Z

    .line 203
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->toJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c(Lcom/alibaba/fastjson/JSONObject;)V

    .line 206
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "session":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    :cond_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "threadName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 209
    .local v2, "active":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    move-object v2, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->end()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->toJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c(Lcom/alibaba/fastjson/JSONObject;)V

    .line 214
    .end local v1    # "threadName":Ljava/lang/String;
    .end local v2    # "active":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    :cond_2
    return-void
.end method
