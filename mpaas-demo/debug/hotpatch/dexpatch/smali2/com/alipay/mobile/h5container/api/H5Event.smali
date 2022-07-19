.class public Lcom/alipay/mobile/h5container/api/H5Event;
.super Ljava/lang/Object;
.source "H5Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5Event$Builder;,
        Lcom/alipay/mobile/h5container/api/H5Event$Error;
    }
.end annotation


# static fields
.field public static final FROM_WORK:Ljava/lang/String; = "fromWork"

.field public static final TYPE_CALL:Ljava/lang/String; = "call"

.field public static final TYPE_CALL_BACK:Ljava/lang/String; = "callback"


# instance fields
.field private action:Ljava/lang/String;

.field private callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

.field private canceled:Z

.field private dispatcherOnWorkerThread:Z

.field private eventSource:Ljava/lang/String;

.field private extra:Ljava/lang/Object;

.field private id:Ljava/lang/String;

.field private keepCallback:Z

.field private param:Lcom/alibaba/fastjson/JSONObject;

.field private target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$000(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    .line 37
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$100(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    .line 38
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$200(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    .line 39
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$300(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 40
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$400(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    .line 41
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$500(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    .line 42
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$600(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 43
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$700(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 44
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$800(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    .line 45
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$900(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->dispatcherOnWorkerThread:Z

    .line 46
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event$Builder;->eventSource:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->access$1000(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->eventSource:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;Lcom/alipay/mobile/h5container/api/H5Event$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .param p2, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event$1;

    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5Event;-><init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->dispatcherOnWorkerThread:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->eventSource:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    .line 83
    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v1, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 95
    return-object v2

    .line 98
    :cond_0
    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v1, v2

    .line 99
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    return-object v2

    .line 102
    :cond_1
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, v2

    .line 103
    .local v3, "context":Landroid/content/Context;
    move-object v3, v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 104
    return-object v2

    .line 106
    :cond_2
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getCallBack()Lcom/alipay/mobile/h5container/api/H5CallBack;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    return-object v0
.end method

.method public getEventSource()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->eventSource:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public final getH5page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v1, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public final getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z

    return v0
.end method

.method public isDispatcherOnWorkerThread()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->dispatcherOnWorkerThread:Z

    return v0
.end method

.method public isKeepCallback()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCallBack(Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 67
    return-void
.end method

.method public setEventSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->eventSource:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setParam(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 131
    return-void
.end method

.method public final setTarget(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0
    .param p1, "target"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 91
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;

    .line 139
    return-void
.end method
