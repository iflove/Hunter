.class public Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;
.super Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;
.source "MtkBooster.java"


# instance fields
.field private final a:Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;)V
    .locals 1
    .param p1, "perfService"    # Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    .line 31
    return-void
.end method

.method private a()Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;->newInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 23
    .local v2, "perfServiceProxy":Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;-><init>(Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;)V

    return-object v0

    .line 26
    :cond_0
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->mInitSucceed:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    iget v1, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;->userUnreg(I)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    .line 75
    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "mtk"

    return-object v0
.end method

.method protected initWithConfig(Lorg/json/JSONObject;)Z
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 40
    const-string v0, "scn_core_big"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "coreBig":I
    const-string v2, "scn_freq_big"

    const v3, 0x989680

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "freqBig":I
    const-string v4, "scn_core_little"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, "coreLittle":I
    const-string v4, "scn_freq_little"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    .local v3, "freqLittle":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "big core: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", little: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkBooster"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;->userRegBigLittle(IIII)I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "userReg handle = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->a()Z

    move-result v4

    return v4
.end method

.method public startBoost(I)Z
    .locals 2
    .param p1, "timeoutMs"    # I

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->mInitSucceed:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    iget v1, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;->userEnableTimeoutMs(II)V

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopBoost()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->mInitSucceed:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;

    iget v1, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/perfhelper/mtk/PerfServiceProxy;->userDisable(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MtkBooster.mtk, handle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initSucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->mInitSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
