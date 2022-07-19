.class final Lcom/alipay/mobile/nebula/util/H5ParamParser$1;
.super Ljava/util/HashMap;
.source "H5ParamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5ParamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/nebula/util/H5ParamImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 10

    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "u"

    const-string v4, ""

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v2, "defaultTitle"

    const-string v3, "dt"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "titleImage"

    const-string/jumbo v3, "ti"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 39
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "showTitleBar"

    const-string/jumbo v5, "st"

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 43
    const/4 v3, 0x0

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "showFavorites"

    const-string/jumbo v7, "sf"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 47
    const-string/jumbo v6, "showReportBtn"

    const-string/jumbo v7, "sr"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 51
    const-string/jumbo v6, "showToolBar"

    const-string/jumbo v7, "sb"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 55
    const-string/jumbo v6, "showLoading"

    const-string/jumbo v7, "sl"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v6, "closeButtonText"

    const-string v7, "cb"

    invoke-direct {v0, v6, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 63
    const-string/jumbo v6, "ssoLoginEnabled"

    const-string v7, "le"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 67
    const-string/jumbo v6, "safePayEnabled"

    const-string/jumbo v7, "pe"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v6, "safePayContext"

    const-string/jumbo v7, "sc"

    invoke-direct {v0, v6, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "safePayContext"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 75
    const-string/jumbo v6, "readTitle"

    const-string/jumbo v7, "rt"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 73
    const-string/jumbo v1, "readTitle"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v6, "bizScenario"

    const-string v7, "bz"

    invoke-direct {v0, v6, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "bizScenario"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 83
    const-string v6, "antiPhishing"

    const-string v7, "ap"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 81
    const-string v1, "antiPhishing"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v6, "toolbarMenu"

    const-string/jumbo v7, "tm"

    invoke-direct {v0, v6, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "toolbarMenu"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v6, "backBehavior"

    const-string v7, "bb"

    const-string v8, "back"

    invoke-direct {v0, v6, v7, v1, v8}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "backBehavior"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 95
    const-string/jumbo v6, "pullRefresh"

    const-string/jumbo v7, "pr"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v1, "pullRefresh"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 99
    const-string/jumbo v6, "showTitleLoading"

    const-string/jumbo v7, "tl"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 97
    const-string/jumbo v1, "showTitleLoading"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 103
    const-string/jumbo v6, "showProgress"

    const-string/jumbo v7, "sp"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 101
    const-string/jumbo v1, "showProgress"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 107
    const-string/jumbo v6, "smartToolBar"

    const-string/jumbo v7, "tb"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 105
    const-string/jumbo v1, "smartToolBar"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 111
    const-string v6, "enableProxy"

    const-string v7, "ep"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 109
    const-string v1, "enableProxy"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 115
    const-string v6, "canPullDown"

    const-string/jumbo v7, "pd"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 113
    const-string v1, "canPullDown"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 119
    const-string/jumbo v6, "showDomain"

    const-string/jumbo v7, "sd"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 117
    const-string/jumbo v1, "showDomain"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 123
    const-string/jumbo v6, "prefetchLocation"

    const-string/jumbo v7, "pl"

    invoke-direct {v0, v6, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 121
    const-string/jumbo v1, "prefetchLocation"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 127
    const-string/jumbo v6, "showOptionMenu"

    const-string/jumbo v7, "so"

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 125
    const-string/jumbo v1, "showOptionMenu"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 132
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "backgroundColor"

    const-string v8, "bc"

    invoke-direct {v0, v7, v8, v1, v6}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 130
    const-string v1, "backgroundColor"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 136
    const-string v7, "interceptJump"

    const-string v8, "ij"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 134
    const-string v1, "interceptJump"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 141
    const-string v7, "closeAfterPayFinish"

    const-string v8, "cf"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 137
    const-string v1, "closeAfterPayFinish"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 145
    const-string/jumbo v7, "transparent"

    const-string/jumbo v8, "tt"

    invoke-direct {v0, v7, v8, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 143
    const-string/jumbo v1, "transparent"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 149
    const-string v7, "fullscreen"

    const-string v8, "fs"

    invoke-direct {v0, v7, v8, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 147
    const-string v1, "fullscreen"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v7, "landscape"

    const-string v8, "ls"

    invoke-direct {v0, v7, v8, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "landscape"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 157
    const-string v7, "enableScrollBar"

    const-string v8, "es"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 155
    const-string v1, "enableScrollBar"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 161
    const-string v2, "delayRender"

    const-string v7, "dr"

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 159
    const-string v1, "delayRender"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 165
    const-string v2, "canDestroy"

    const-string v7, "cd"

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 163
    const-string v1, "canDestroy"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "transparentTitle"

    const-string/jumbo v7, "ttb"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "transparentTitle"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 175
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v7, "scrollDistance"

    const-string/jumbo v8, "sds"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 173
    const-string/jumbo v1, "scrollDistance"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 179
    const v2, -0xa0a07

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "bounceTopColor"

    const-string v8, "btc"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 177
    const-string v1, "bounceTopColor"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v2, "allowsBounceVertical"

    const-string v7, "abv"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "allowsBounceVertical"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "nbupdate"

    const-string/jumbo v7, "nup"

    const-string v8, "async"

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "nbupdate"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "nboffline"

    const-string/jumbo v7, "nol"

    const-string v8, "async"

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "nboffline"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "nburl"

    const-string/jumbo v7, "nbu"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "nburl"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "obversion"

    const-string/jumbo v7, "opv"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "obversion"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "nbversion"

    const-string/jumbo v7, "nbv"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "nbversion"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "navSearchBar_type"

    const-string/jumbo v7, "nsbt"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "navSearchBar_type"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "navSearchBar_placeholder"

    const-string/jumbo v7, "nsbp"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "navSearchBar_placeholder"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v2, "navSearchBar_value"

    const-string/jumbo v7, "nsbv"

    invoke-direct {v0, v2, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "navSearchBar_value"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 231
    const-string/jumbo v2, "navSearchBar_maxLength"

    const-string/jumbo v7, "nsbml"

    invoke-direct {v0, v2, v7, v1, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v1, "navSearchBar_maxLength"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 237
    const-string/jumbo v2, "navSearchBar_searchPlaceholder"

    const-string/jumbo v7, "nsbsp"

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 233
    const-string/jumbo v1, "navSearchBar_searchPlaceholder"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v2, "backBtnImage"

    const-string v7, "bbi"

    const-string v8, "default"

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "backBtnImage"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 249
    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "backBtnTextColor"

    const-string v8, "bbtc"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 245
    const-string v1, "backBtnTextColor"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 255
    const-string/jumbo v7, "titleColor"

    const-string/jumbo v8, "tc"

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 251
    const-string/jumbo v1, "titleColor"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v7, "transparentTitleTextAuto"

    const-string/jumbo v8, "ttta"

    const-string v9, "NO"

    invoke-direct {v0, v7, v8, v1, v9}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "transparentTitleTextAuto"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v7, "preSSOLogin"

    const-string/jumbo v8, "ps"

    const-string v9, "YES"

    invoke-direct {v0, v7, v8, v1, v9}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "preSSOLogin"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v7, "preSSOLoginBindingPage"

    const-string/jumbo v8, "psb"

    invoke-direct {v0, v7, v8, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "preSSOLoginBindingPage"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v7, "preSSOLoginUrl"

    const-string/jumbo v8, "psu"

    invoke-direct {v0, v7, v8, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "preSSOLoginUrl"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v7, "tabBarJson"

    invoke-direct {v0, v7, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v7, "enableTabBar"

    const-string v8, "default"

    invoke-direct {v0, v7, v7, v1, v8}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 297
    const-string/jumbo v7, "tabItemCount"

    invoke-direct {v0, v7, v7, v1, v6}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 303
    const-string/jumbo v7, "preventAutoLoginLoop"

    invoke-direct {v0, v7, v7, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 309
    const-string/jumbo v7, "transAnimate"

    const-string/jumbo v8, "tsam"

    invoke-direct {v0, v7, v8, v1, v3}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 305
    const-string/jumbo v1, "transAnimate"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v3, "nboffmode"

    const-string/jumbo v7, "nolm"

    const-string v8, "force"

    invoke-direct {v0, v3, v7, v1, v8}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "nboffmode"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v3, "openUrlMethod"

    const-string v7, "GET"

    invoke-direct {v0, v3, v3, v1, v7}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v3, "openUrlPostParams"

    invoke-direct {v0, v3, v3, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v3, "nbapptype"

    const-string/jumbo v7, "nat"

    invoke-direct {v0, v3, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "nbapptype"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v3, "shareTokenParams"

    const-string/jumbo v7, "stp"

    invoke-direct {v0, v3, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "shareTokenParams"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 331
    const-string/jumbo v3, "pullInterceptDistance"

    const-string/jumbo v7, "pitd"

    invoke-direct {v0, v3, v7, v1, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 329
    const-string/jumbo v1, "pullInterceptDistance"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v3, "backgroundImageUrl"

    const-string v7, "bgiu"

    invoke-direct {v0, v3, v7, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "backgroundImageUrl"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 339
    const-string v3, "backgroundImageColor"

    const-string v7, "bgic"

    invoke-direct {v0, v3, v7, v1, v6}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 337
    const-string v1, "backgroundImageColor"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v3, "titlePenetrate"

    const-string/jumbo v6, "tp"

    const-string v7, "NO"

    invoke-direct {v0, v3, v6, v1, v7}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string/jumbo v1, "titlePenetrate"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string v3, "barButtonTheme"

    const-string v6, "bbt"

    invoke-direct {v0, v3, v6, v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    const-string v1, "barButtonTheme"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 351
    const-string/jumbo v3, "segColorNormal"

    const-string/jumbo v4, "scn"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 349
    const-string/jumbo v1, "segColorNormal"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 355
    const-string/jumbo v3, "segColorActive"

    const-string/jumbo v4, "sca"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 353
    const-string/jumbo v1, "segColorActive"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 359
    const-string/jumbo v2, "segSelectedIndex"

    const-string/jumbo v3, "ssi"

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V

    .line 357
    const-string/jumbo v1, "segSelectedIndex"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-void
.end method
