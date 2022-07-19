.class public Lcom/alipay/mobile/h5container/api/H5JsCallData;
.super Ljava/lang/Object;
.source "H5JsCallData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private elapse:J

.field private isFromWorker:Z

.field private isMultiProcess:Ljava/lang/String;

.field private joMsg:Ljava/lang/String;

.field private jsApiStart:J


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->jsApiStart:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isFromWorker:Z

    .line 26
    # getter for: Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->access$000(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->action:Ljava/lang/String;

    .line 27
    # getter for: Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->elapse:J
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->access$100(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->elapse:J

    .line 28
    # getter for: Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->joMsg:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->access$200(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->joMsg:Ljava/lang/String;

    .line 29
    # getter for: Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->jsApiStart:J
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->access$300(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->jsApiStart:J

    .line 30
    # getter for: Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isMultiProcess:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->access$400(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isMultiProcess:Ljava/lang/String;

    .line 31
    # getter for: Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->isFromWorker:Z
    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;->access$500(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isFromWorker:Z

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;Lcom/alipay/mobile/h5container/api/H5JsCallData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;
    .param p2, "x1"    # Lcom/alipay/mobile/h5container/api/H5JsCallData$1;

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5JsCallData;-><init>(Lcom/alipay/mobile/h5container/api/H5JsCallData$Builder;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 11
    invoke-static {p0}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getAvailableJoMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAvailableJoMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getElapse()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->elapse:J

    return-wide v0
.end method

.method public getIsFromWorker()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isFromWorker:Z

    return v0
.end method

.method public getIsMultiProcess()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isMultiProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getJoMsg()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->joMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getJsApiStart()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->jsApiStart:J

    return-wide v0
.end method

.method public setElapse(J)V
    .locals 0
    .param p1, "elapse"    # J

    .line 51
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->elapse:J

    .line 52
    return-void
.end method

.method public setIsFromWorker(Z)V
    .locals 0
    .param p1, "isFromWorker"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isFromWorker:Z

    .line 72
    return-void
.end method

.method public setIsMultiProcess(Ljava/lang/String;)V
    .locals 0
    .param p1, "isMultiProcess"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->isMultiProcess:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setJsApiStart(J)V
    .locals 0
    .param p1, "jsApiStart"    # J

    .line 39
    iput-wide p1, p0, Lcom/alipay/mobile/h5container/api/H5JsCallData;->jsApiStart:J

    .line 40
    return-void
.end method
