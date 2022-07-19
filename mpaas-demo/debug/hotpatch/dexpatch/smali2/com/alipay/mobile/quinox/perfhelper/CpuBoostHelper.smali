.class public Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
.super Ljava/lang/Object;
.source "CpuBoostHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$Status;,
        Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$InitStartCpuBoostRunnable;,
        Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:Z

.field private f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$1;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpuType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "boosters":Ljava/util/List;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "hisi"

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "qcom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "mtk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "exynos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_2

    .line 275
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;->newInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/mtk/MtkBooster;

    move-result-object v1

    move-object v3, v4

    .line 276
    .local v3, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    move-object v3, v1

    if-eqz v1, :cond_4

    .line 277
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    .end local v3    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;->newInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/qualcomm/QcomBooster;

    move-result-object v1

    move-object v3, v4

    .line 268
    .restart local v3    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    move-object v3, v1

    if-eqz v1, :cond_3

    .line 269
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v3    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :cond_3
    nop

    .line 295
    :cond_4
    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 296
    const-string v2, "HUAWEI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 297
    const-string v2, "HONOR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 298
    const-string v1, "ro.build.version.emui"

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 308
    :cond_5
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "OPPO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 309
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->newInstance()Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;

    move-result-object v1

    move-object v2, p1

    .line 310
    .local v2, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    move-object v2, v1

    if-eqz v1, :cond_9

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 299
    .end local v2    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :cond_6
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;->newInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/UniPerfBooster;

    move-result-object v1

    move-object v2, p1

    .line 300
    .restart local v2    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    move-object v2, v1

    if-eqz v1, :cond_7

    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;->newInstance()Lcom/alipay/mobile/quinox/perfhelper/hw/PerfHubBooster;

    move-result-object v1

    .line 304
    move-object v2, v1

    if-eqz v1, :cond_8

    .line 305
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :cond_8
    nop

    .line 315
    :cond_9
    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd2d914 -> :sswitch_3
        0x1a7a4 -> :sswitch_2
        0x30df17 -> :sswitch_1
        0x34df70 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 218
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->e:Z

    const-string v1, "CpuBoostHelper"

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already init: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d()V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "boosters":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 226
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "boosters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->b(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    .line 230
    if-nez v2, :cond_1

    .line 231
    const-string v2, "init: no config"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v1, 0x65

    iput v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    goto :goto_1

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const/16 v1, 0x66

    iput v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    goto :goto_1

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;

    .line 237
    .local v3, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    iget-object v4, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->getSubConfig(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 238
    .local v4, "subConfig":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sub config of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {v3, v4}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->init(Lorg/json/JSONObject;)Z

    move-result v5

    .line 241
    .local v5, "result":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " init result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v3    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    .end local v4    # "subConfig":Lorg/json/JSONObject;
    .end local v5    # "result":Z
    goto :goto_0

    .line 243
    :cond_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    .line 245
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->e:Z

    .line 246
    return-void
.end method

.method private a()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 196
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->e:Z

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not init: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->e:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    const-string v1, "cpu_perf_boost_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "configJson":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "config: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CpuBoostHelper"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    return-object v2

    .line 260
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    move-result-object v1

    return-object v1
.end method

.method private b()V
    .locals 6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do destroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;

    .line 143
    .local v2, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :try_start_0
    invoke-interface {v2}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "destroy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v2    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d:I

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    .line 153
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->e:Z

    .line 154
    return-void
.end method

.method private c()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d:I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "increaseDestroyCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->b()V

    .line 209
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 212
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuUtils;->getCpuModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->h:Ljava/lang/String;

    .line 213
    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuUtils;->getCpuType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->i:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cpuModel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpuType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$SingletonHolder;->sInstance:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->c()V

    .line 132
    return-void
.end method

.method public fillReportData(Ljava/util/Map;)V
    .locals 7
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
    const-string v0, "CpuBoostHelper"

    const-string v1, "fill report data"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    .local v1, "tmp":Ljava/util/Map;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;

    .line 166
    .local v3, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    invoke-interface {v4, v1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->fillReportData(Ljava/util/Map;)V

    .line 167
    .end local v3    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    goto :goto_0

    .line 169
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "boost.status"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->getBoostTimeoutMs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "boost.config_timeout"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->getPerfStopDelayTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "boost.config_delay_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    iget-wide v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "boost.init_delay"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->i:Ljava/lang/String;

    const-string v3, "boost.cpu_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->h:Ljava/lang/String;

    const-string v3, "boost.cpu_model"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    .local v2, "ids":Ljava/util/Set;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;

    .line 182
    .local v4, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    invoke-interface {v4}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v4    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    goto :goto_1

    .line 184
    :cond_2
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "boost.boosters"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 187
    .local v4, "entry":Ljava/util/Map$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "report: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_2

    .line 190
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 192
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->c()V

    .line 193
    return-void
.end method

.method public initAndStart(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const-string v0, "CpuBoostHelper"

    const-string v1, "initAndStart called"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->b:J

    .line 79
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$InitStartCpuBoostRunnable;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$InitStartCpuBoostRunnable;-><init>(Landroid/content/Context;)V

    const-string v2, "init-start-boost"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public startBoost()Z
    .locals 7

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->c:J

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start boost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 86
    return v2

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const-string v0, "do not need boost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->getBoostTimeoutMs()I

    move-result v0

    .line 94
    .local v0, "perfLockTimeoutMs":I
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;

    .line 96
    .local v3, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :try_start_0
    invoke-interface {v3, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->startBoost(I)Z

    move-result v4

    .line 97
    .local v4, "succeed":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startBoost "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " succeed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v4    # "succeed":Z
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v3    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 102
    :cond_2
    const/16 v1, 0x67

    iput v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method public stopBoost()V
    .locals 6

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop boost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuBoostHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string v0, "do not need boost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;

    .line 118
    .local v2, "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    :try_start_0
    invoke-interface {v2}, Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;->stopBoost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stop "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v2    # "booster":Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 123
    :cond_2
    const/16 v0, 0x68

    iput v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a:I

    .line 124
    return-void
.end method

.method public stopDelayTimeMs()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->f:Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->getPerfStopDelayTime()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
