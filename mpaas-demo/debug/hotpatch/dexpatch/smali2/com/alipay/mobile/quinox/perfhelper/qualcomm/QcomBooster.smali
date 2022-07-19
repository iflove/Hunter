.class public Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;
.super Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;
.source "QcomBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;,
        Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;,
        Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$ParamRomInitResult;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->c:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    .line 46
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fields"    # Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    .local v1, "res":Landroid/content/res/Resources;
    move-object v1, v0

    const-string v2, "launchboost_param_value"

    const-string v3, "array"

    const-string v4, "android"

    invoke-static {v0, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 196
    .local v3, "resId":I
    move v3, v0

    const-string v5, "QcomBooster"

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 198
    .local v0, "params":[I
    const/4 v4, 0x1

    .local v4, "initResult":I
    goto :goto_1

    .line 200
    .end local v0    # "params":[I
    .end local v4    # "initResult":I
    :cond_0
    const-string v0, "launchboost_pcdisbl_param"

    const-string v6, "launchboost_schedboost_param"

    const-string v7, "launchboost_cpuboost_param"

    const-string v8, "launchboost_cpunumboost_param"

    const-string v9, "launchboost_ksmboost_param"

    filled-new-array {v0, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "names":[Ljava/lang/String;
    const/4 v6, 0x5

    new-array v7, v6, [I

    .line 207
    .local v7, "params":[I
    const/4 v8, 0x2

    .line 208
    .local v8, "initResult":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 209
    aget-object v10, v0, v9

    const-string v11, "integer"

    invoke-static {v1, v10, v11, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 210
    move v3, v10

    if-nez v10, :cond_1

    .line 211
    rsub-int/lit8 v4, v9, -0x65

    .line 212
    .end local v8    # "initResult":I
    .restart local v4    # "initResult":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "identifier not found: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v0, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move-object v0, v7

    goto :goto_1

    .line 215
    .end local v4    # "initResult":I
    .restart local v8    # "initResult":I
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    aput v10, v7, v9

    .line 208
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v7

    move v4, v8

    .line 218
    .end local v7    # "params":[I
    .end local v8    # "initResult":I
    .end local v9    # "i":I
    .local v0, "params":[I
    .restart local v4    # "initResult":I
    :goto_1
    iput-object v0, p1, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireParams:[I

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "raw acquire params: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 222
    :cond_3
    const/4 v5, 0x1

    .line 223
    .local v5, "allZero":Z
    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_5

    aget v7, v0, v2

    .line 224
    if-eqz v7, :cond_4

    .line 225
    const/4 v5, 0x0

    .line 226
    goto :goto_3

    .line 223
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 229
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 230
    add-int/lit8 v4, v4, 0xa

    .line 234
    .end local v5    # "allZero":Z
    :cond_6
    return v4
.end method

.method private static a(Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;)V
    .locals 3
    .param p0, "fields"    # Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->config:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;->getPerfLockParams()[I

    move-result-object v0

    .line 239
    .local v0, "perfLockParams":[I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "server param: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QcomBooster"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireParams:[I

    .line 241
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->qcClassAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;-><init>()V

    move-object v2, v1

    .line 36
    .local v2, "wrapper":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;-><init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;)V

    return-object v0

    .line 40
    .end local v2    # "wrapper":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 182
    return-void
.end method

.method public fillReportData(Ljava/util/Map;)V
    .locals 5
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

    .line 161
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;->fillReportData(Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    const/4 v1, 0x0

    move-object v2, v1

    .line 164
    .local v2, "fields":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    iget v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireResultHandle:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireResultHandle:I

    .line 168
    .local v0, "result":I
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "boost.acquire_result"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v3, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->config:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

    .line 171
    .local v1, "config":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;
    move-object v1, v3

    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;->getStrategy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "boost.qcom_strategy"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;->getStrategy()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 174
    iget v3, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->perfLockParamRomInitResult:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "boost.rom_param_init"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "qcom"

    return-object v0
.end method

.method protected initWithConfig(Lorg/json/JSONObject;)Z
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    const/4 v1, 0x0

    move-object v2, v1

    .line 56
    .local v2, "fields":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;-><init>(Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$1;)V

    move-object v2, v0

    .line 58
    iput-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    .line 60
    :cond_0
    iget-boolean v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->configInited:Z

    const/4 v1, 0x0

    const-string v3, "QcomBooster"

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "already init"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return v1

    .line 65
    :cond_1
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->config:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

    .line 67
    iget-object v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->config:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;->getStrategy()I

    move-result v0

    move v4, v1

    .line 68
    .local v4, "strategy":I
    move v4, v0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "unknown strategy: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a(Landroid/content/Context;Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;)I

    move-result v0

    iput v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->perfLockParamRomInitResult:I

    .line 80
    iget v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->perfLockParamRomInitResult:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "perf lock init result = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->perfLockParamRomInitResult:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a(Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;)V

    .line 75
    iput-boolean v5, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    .line 76
    goto :goto_1

    .line 70
    :cond_5
    const-string v0, "disabled by config"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    nop

    .line 88
    :goto_1
    iget-boolean v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireParams:[I

    .line 91
    .local v0, "perfLockParams":[I
    if-eqz v0, :cond_6

    array-length v6, v0

    if-lez v6, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    .line 92
    iget-boolean v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    if-nez v1, :cond_7

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "invalid param: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0    # "perfLockParams":[I
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init succeed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    if-eqz v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->c:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    iput-object v1, v0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->wrapper:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    .line 102
    :cond_8
    iput-boolean v5, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->configInited:Z

    .line 104
    iget-boolean v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->initSucceed:Z

    return v0
.end method

.method public startBoost(I)Z
    .locals 5
    .param p1, "timeoutMs"    # I

    .line 109
    const-string v0, "QcomBooster"

    const-string v1, "startBoost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    const/4 v2, 0x0

    .line 112
    .local v2, "fields":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;
    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->mInitSucceed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->config:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$PerfLockAcquireParams;

    .line 118
    if-nez v1, :cond_1

    .line 119
    const-string v1, "start fail: not params"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v3

    .line 123
    :cond_1
    iget-object v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->wrapper:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    if-nez v1, :cond_2

    .line 124
    const-string v1, "wrapper is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v3

    .line 128
    :cond_2
    iget-object v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->wrapper:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    const-string v1, "perf not available"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v3

    .line 133
    :cond_3
    iget-object v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->wrapper:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    iget-object v4, v4, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireParams:[I

    invoke-virtual {v1, p1, v4}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->perfLockAcquire(I[I)I

    move-result v1

    iput v1, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireResultHandle:I

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "acquire handle = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireResultHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget v0, v2, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireResultHandle:I

    if-lez v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v3

    .line 113
    :cond_5
    :goto_0
    const-string v1, "start fail: init failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v3
.end method

.method public stopBoost()V
    .locals 6

    .line 141
    const-string v0, "QcomBooster"

    const-string v1, "stopBoost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    const/4 v2, 0x0

    move-object v3, v2

    .line 144
    .local v3, "fields":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;
    move-object v3, v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->mInitSucceed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, v3, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->wrapper:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;

    .line 150
    .local v2, "wrapper":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "wrapper is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 155
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;->perfLockRelease()I

    move-result v1

    .line 156
    .local v1, "releaseResult":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "release result = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 145
    .end local v1    # "releaseResult":I
    .end local v2    # "wrapper":Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomPerfWrapper;
    :cond_2
    :goto_0
    const-string v1, "init failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QcomBooster.qcom, initSucceed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->mInitSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster$Fields;->acquireResultHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
