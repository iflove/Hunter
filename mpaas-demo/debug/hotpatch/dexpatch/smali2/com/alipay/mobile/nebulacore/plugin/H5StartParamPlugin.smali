.class public Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5StartParamPlugin.java"


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->b:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->b:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->HIDE_CLOSE_BUTTON:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->b:Ljava/util/List;

    const-string v1, "bounceTopColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v2, "customParams"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v2, "bizScenario"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v2, "backBehavior"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v2, "gestureBack"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "bounceBottomColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "pullRefreshStyle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "titleImage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "defaultTitle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "transparentTitle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "transparentTitleTextAuto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "titleBarColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "scrollDistance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "navSearchBar_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "navSearchBar_placeholder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "navSearchBar_value"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "navSearchBar_maxLength"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "fullscreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "landscape"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "titleColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "hideCloseButton"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "reportUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "feedBackExtParams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "showDomain"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "pullRefresh"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "showOptionMenu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "bz"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "bb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "gb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "btc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "bbc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "pr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "prs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "ti"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "dt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "so"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "ttb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "ttta"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "tbc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "sds"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "nsbt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "nsbp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "nsbv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "nsbml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "fs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "ls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "tc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "hcb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "ru"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    const-string v1, "fbp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11

    .line 103
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 108
    :cond_0
    const-string v1, "setStartParam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 115
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v3, "content"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_5

    .line 117
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 119
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 120
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4

    .line 123
    aget-object v6, v5, v1

    .line 124
    aget-object v5, v5, v2

    .line 126
    sget-object v7, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 127
    sget-object p1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u6548\u7684api\u5165\u53c2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 128
    return v2

    .line 130
    :cond_2
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 134
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v8, "H5StartParamPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "set startParam [key] "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " [value] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v8, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->b:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 138
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 139
    const-string v9, "value"

    invoke-virtual {v8, v9, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5, v6, v8}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 143
    :cond_3
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 118
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 146
    :cond_5
    nop

    .line 147
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "launchParamsTag"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v0, p1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 153
    if-eqz p1, :cond_6

    .line 154
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_6

    .line 155
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 156
    const-string v0, "H5StartParamPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launchParamsTag "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 160
    :cond_6
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    goto :goto_2

    .line 161
    :catchall_1
    move-exception p1

    .line 162
    const-string v0, "H5StartParamPlugin"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :goto_2
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 165
    return v2

    .line 110
    :cond_7
    :goto_3
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 111
    return v2

    .line 168
    :cond_8
    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 97
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 98
    const-string v0, "setStartParam"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-void
.end method
