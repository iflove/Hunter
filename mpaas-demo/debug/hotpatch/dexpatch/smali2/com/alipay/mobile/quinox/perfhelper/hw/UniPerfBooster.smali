.class public Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;
.super Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;
.source "UniPerfBooster.java"


# instance fields
.field private final a:Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;)V
    .locals 1
    .param p1, "uniPerf"    # Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->b:Z

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    .line 32
    return-void
.end method

.method public static newInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;
    .locals 2

    .line 22
    const/4 v0, 0x0

    .local v0, "instance":Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    move-result-object v1

    .line 23
    move-object v0, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->available()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;-><init>(Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;)V

    return-object v1

    .line 26
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 65
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

    .line 69
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;->fillReportData(Ljava/util/Map;)V

    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->b:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "boost.uniperf.perfsucceed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "uniperf"

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
    .locals 3
    .param p1, "timeoutMs"    # I

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->mInitSucceed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfProxy;->perfAppStart()I

    move-result v0

    .line 50
    .local v0, "ret":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->b:Z

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uniPerfEvent: ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniPerfBooster"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->b:Z

    return v1
.end method

.method public stopBoost()V
    .locals 0

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UniPerfBooster.uniperf, succeed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", initSucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->mInitSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
