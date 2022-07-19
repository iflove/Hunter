.class public Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfo.java"


# instance fields
.field public cpuCurrentFreq:[J

.field public cpuMaxFreq:[J

.field public cpuMinFreq:[J

.field public offlineCores:Ljava/lang/String;

.field public onlineCores:Ljava/lang/String;

.field public presentCores:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFreqLevel()[Ljava/lang/String;
    .locals 9

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMaxFreq:[J

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    if-nez v1, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    .local v0, "percents":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMaxFreq:[J

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 41
    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 42
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    aget-wide v6, v5, v1

    long-to-float v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMaxFreq:[J

    aget-wide v7, v6, v1

    long-to-float v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%.0f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 44
    :cond_1
    const-string v2, "-"

    aput-object v2, v0, v1

    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 36
    .end local v0    # "percents":[Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCurrentMax()Z
    .locals 14

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMaxFreq:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    if-nez v2, :cond_0

    goto :goto_3

    .line 18
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    const/4 v2, 0x0

    .line 19
    .local v2, "maxCopy":[J
    move-object v2, v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 20
    aget-wide v3, v2, v1

    .line 21
    .local v3, "min":J
    array-length v0, v2

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    aget-wide v6, v2, v0

    .line 23
    .local v6, "max":J
    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v0, v5

    .line 24
    .local v0, "allMax":Z
    iget-object v5, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    array-length v10, v5

    :goto_1
    if-ge v1, v10, :cond_3

    aget-wide v11, v5, v1

    .line 25
    .local v8, "freq":J
    move-wide v8, v11

    cmp-long v13, v11, v3

    if-eqz v13, :cond_2

    cmp-long v11, v8, v6

    if-eqz v11, :cond_2

    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_2

    .line 24
    .end local v8    # "freq":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    :cond_3
    :goto_2
    return v0

    .line 16
    .end local v0    # "allMax":Z
    .end local v2    # "maxCopy":[J
    .end local v3    # "min":J
    .end local v6    # "max":J
    :cond_4
    :goto_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->isCurrentMax()Z

    move-result v0

    .line 54
    .local v0, "currentMax":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CpuInfo{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 55
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "presentCores="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->presentCores:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", onlineCores="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->onlineCores:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", offlineCores="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->offlineCores:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", isCurrentFreqMax="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\ncpuMaxFreq="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMaxFreq:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-nez v0, :cond_0

    .line 62
    const-string v1, "\ncpuCurrentFreq="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    const-string v1, "\ncpuMinFreq="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMinFreq:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "\nFreqLevel: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->getFreqLevel()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v1, 0x7d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
