.class public Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
.super Ljava/lang/Object;
.source "H5JsCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5JsCallData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private elapse:J

.field private isFromWorker:Z

.field private isMultiProcess:Ljava/lang/String;

.field private joMsg:Ljava/lang/String;

.field private jsApiStart:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->action:Ljava/lang/String;

    .line 77
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->elapse:J

    .line 79
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->joMsg:Ljava/lang/String;

    .line 81
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->jsApiStart:J

    .line 83
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isMultiProcess:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isFromWorker:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 74
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->elapse:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->joMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 74
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->jsApiStart:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isMultiProcess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 74
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isFromWorker:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/h5container/api/H5JsCallData;
    .locals 2

    .line 118
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5JsCallData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/h5container/api/H5JsCallData;-><init>(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;Lcom/alipay/mobile/h5container/api/H5JsCallData$1;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->action:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setElapse(J)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .locals 0
    .param p1, "elapse"    # J

    .line 98
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->elapse:J

    .line 99
    return-object p0
.end method

.method public setIsFromWorker(Z)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .locals 0
    .param p1, "isFromWorker"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isFromWorker:Z

    .line 114
    return-object p0
.end method

.method public setIsMultiProcess(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .locals 0
    .param p1, "isMultiProcess"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isMultiProcess:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setJoMsg(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .locals 1
    .param p1, "joMsg"    # Ljava/lang/String;

    .line 103
    # invokes: Lcom/alipay/mobile/h5container/api/H5JsCallData;->getAvailableJoMsg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->joMsg:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setjsApiStart(J)Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .locals 0
    .param p1, "jsApiStart"    # J

    .line 88
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->jsApiStart:J

    .line 89
    return-object p0
.end method
