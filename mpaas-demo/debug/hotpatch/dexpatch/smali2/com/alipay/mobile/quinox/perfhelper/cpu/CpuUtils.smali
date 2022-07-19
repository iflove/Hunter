.class public Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuUtils;
.super Ljava/lang/Object;
.source "CpuUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuModel()Ljava/lang/String;
    .locals 3

    .line 14
    const/4 v0, 0x0

    .local v0, "cpuModel":Ljava/lang/String;
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "platform is empty, use hardware instead: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CpuUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_1
    return-object v0
.end method

.method public static getCpuType()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuUtils;->getCpuModel()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuUtils;->getCpuType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cpuModel"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 42
    move-object p0, v0

    const-string v1, "(msm|sdm|apq|sm)\\d+.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "msmnile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "mt\\d+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "mtk"

    .local v0, "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 49
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_1
    const-string v0, "(kirin|hi)\\d+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, "hisi"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 51
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_2
    const-string v0, "exynos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const-string v0, "exynos"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 54
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_3
    const-string v0, "sc\\d+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const-string v0, "spreadtrum"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_4
    const-string v0, "lc\\d+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    const-string v0, "leadcore"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 60
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_5
    const-string v0, "abies"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    const-string v0, "pinecore"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 64
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_6
    const-string v0, "unknown"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 45
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_7
    :goto_0
    const-string v0, "qcom"

    .restart local v0    # "cpuType":Ljava/lang/String;
    goto :goto_1

    .line 67
    .end local v0    # "cpuType":Ljava/lang/String;
    :cond_8
    const-string v0, "empty"

    .line 69
    .restart local v0    # "cpuType":Ljava/lang/String;
    :goto_1
    return-object v0
.end method
