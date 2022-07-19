.class public Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;
.super Ljava/lang/Object;
.source "PlugInManager.java"


# static fields
.field public static ErrNumPluginNum:F

.field public static FeedbackSuccNumPluginNum:F

.field public static SpeedTestPluginNum:F

.field public static SuccessNumPluginNum:F

.field public static SuccessTimePluginNum:F


# instance fields
.field public plugIn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/high16 v0, 0x428c0000    # 70.0f

    sput v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->SpeedTestPluginNum:F

    .line 24
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->FeedbackSuccNumPluginNum:F

    .line 25
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->SuccessNumPluginNum:F

    .line 26
    sput v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->ErrNumPluginNum:F

    .line 27
    sput v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->SuccessTimePluginNum:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->plugIn:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SpeedTestPlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SpeedTestPlugin;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->plugIn:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/FeedbackSuccNumPlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/FeedbackSuccNumPlugin;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->plugIn:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessNumPlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessNumPlugin;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->plugIn:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessTimePlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessTimePlugin;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public run(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 43
    .local v1, "temp":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 44
    const/4 v2, 0x0

    iput v2, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    goto :goto_0

    .line 46
    :cond_1
    return-void

    .line 49
    .end local v1    # "temp":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->plugIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;

    .line 51
    .local v1, "plug":Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;
    move-object v1, v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-interface {v1, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;->run(Ljava/util/ArrayList;)V

    .line 54
    .end local v1    # "plug":Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;
    :cond_3
    goto :goto_1

    .line 55
    :cond_4
    return-void

    .line 39
    :cond_5
    :goto_2
    return-void
.end method
