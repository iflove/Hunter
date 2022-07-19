.class public Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;
.super Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;
.source "PerfHubBooster.java"


# instance fields
.field private final a:Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;)V
    .locals 1
    .param p1, "perfHub"    # Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->b:Z

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;

    .line 32
    return-void
.end method

.method public static newInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;
    .locals 2

    .line 22
    const/4 v0, 0x0

    .local v0, "perfHub":Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;->newInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;

    move-result-object v1

    .line 23
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;-><init>(Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;)V

    return-object v1

    .line 26
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 70
    return-void
.end method

.method public fillReportData(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;->fillReportData(Ljava/util/Map;)V

    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->b:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "boost.perfhub.perfsucceed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "perfhub"

    return-object v0
.end method

.method protected initWithConfig(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public startBoost(I)Z
    .locals 6
    .param p1, "timeoutMs"    # I

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->mInitSucceed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;

    const/4 v2, 0x4

    new-array v3, v1, [I

    const-string v4, ""

    invoke-virtual {v0, v2, v4, v3}, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;->perfEvent(ILjava/lang/String;[I)I

    move-result v0

    .line 51
    .local v0, "ret":I
    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->b:Z

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "perfEvent: ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PerfHubBooster"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;

    const/4 v5, 0x5

    new-array v1, v1, [I

    invoke-virtual {v2, v5, v4, v1}, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubProxy;->perfEvent(ILjava/lang/String;[I)I

    move-result v1

    .line 55
    move v0, v1

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window Switch Fail = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->b:Z

    return v1
.end method

.method public stopBoost()V
    .locals 0

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfHubBooster.perfhub, succeed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", initSucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->mInitSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
