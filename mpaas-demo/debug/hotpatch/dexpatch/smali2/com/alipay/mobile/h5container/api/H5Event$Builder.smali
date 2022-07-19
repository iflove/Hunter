.class public Lcom/alipay/mobile/h5container/api/H5Event$Builder;
.super Ljava/lang/Object;
.source "H5Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "native_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 165
    const-string v0, "call"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "native_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 165
    const-string v0, "call"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 174
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1100(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;

    .line 175
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1200(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 176
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->canceled:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1300(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z

    .line 177
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1400(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 178
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->type:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1500(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 179
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->keepCallback:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1600(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 180
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->param:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1700(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 181
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1800(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 182
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->extra:Ljava/lang/Object;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$1900(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;

    .line 183
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->dispatcherOnWorkerThread:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$2000(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread:Z

    .line 184
    # getter for: Lcom/alipay/mobile/h5container/api/H5Event;->eventSource:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->access$2100(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->eventSource:Ljava/lang/String;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->eventSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/h5container/api/H5Event$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 157
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread:Z

    return v0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/h5container/api/H5Event;
    .locals 2

    .line 243
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/h5container/api/H5Event;-><init>(Lcom/alipay/mobile/h5container/api/H5Event$Builder;Lcom/alipay/mobile/h5container/api/H5Event$1;)V

    return-object v0
.end method

.method public callback(Lcom/alipay/mobile/h5container/api/H5CallBack;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "callBack"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->callBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 214
    return-object p0
.end method

.method public cancel(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "cancel"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->canceled:Z

    .line 219
    return-object p0
.end method

.method public dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "dispatcherOnWorkerThread"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread:Z

    .line 229
    return-object p0
.end method

.method public eventSource(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "eventSource"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->eventSource:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public extra(Ljava/lang/Object;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra:Ljava/lang/Object;

    .line 239
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "keepCallBack"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback:Z

    .line 224
    return-object p0
.end method

.method public param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 204
    return-object p0
.end method

.method public target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "target"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 194
    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type:Ljava/lang/String;

    .line 209
    return-object p0
.end method
