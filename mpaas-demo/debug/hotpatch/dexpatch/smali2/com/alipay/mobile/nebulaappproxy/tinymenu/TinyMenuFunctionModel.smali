.class public final Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;
.super Ljava/lang/Object;
.source "TinyMenuFunctionModel.java"


# static fields
.field public static final HOME_APP:I = 0x1

.field private static final MAX_ITEM_SIZE:I = 0x8

.field public static final RECENT_APP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TinyMenuFunctionModel"


# instance fields
.field appId:Ljava/lang/String;

.field display:Z

.field extra:Ljava/lang/String;

.field public fillingMark:Z

.field functionType:I

.field iconUrl:Ljava/lang/String;

.field inMarketStage:Z

.field itemId:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nbsn:Ljava/lang/String;

.field nbsv:Ljava/lang/String;

.field scheme:Ljava/lang/String;

.field slogan:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transfer(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;",
            ">;"
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 55
    nop

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ge v3, v0, :cond_5

    .line 59
    if-ge v4, v5, :cond_5

    .line 63
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 64
    const-string/jumbo v8, "nbsn"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x4

    if-nez v9, :cond_2

    .line 67
    const-string v7, "TinyMenuFunctionModel"

    const-string v8, "filter dev version"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    add-int/lit8 v7, v0, -0x1

    if-ne v3, v7, :cond_4

    .line 71
    if-ge v4, v10, :cond_4

    if-lez v4, :cond_4

    .line 72
    nop

    :goto_1
    if-ge v4, v10, :cond_1

    .line 73
    new-instance p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;-><init>()V

    .line 74
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    .line 75
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->fillingMark:Z

    .line 76
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_1
    goto/16 :goto_3

    .line 85
    :cond_2
    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    invoke-direct {v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;-><init>()V

    .line 86
    iput v2, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    .line 87
    const-string v11, "appId"

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->appId:Ljava/lang/String;

    .line 88
    const-string v11, "iconUrl"

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->iconUrl:Ljava/lang/String;

    .line 89
    const-string/jumbo v11, "name"

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->name:Ljava/lang/String;

    .line 90
    const-string v11, "display"

    invoke-static {v7, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->display:Z

    .line 91
    const-string v11, "itemId"

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->itemId:Ljava/lang/String;

    .line 92
    iput-object v8, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->nbsn:Ljava/lang/String;

    .line 93
    const-string/jumbo v8, "nbsv"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->nbsv:Ljava/lang/String;

    .line 94
    const-string/jumbo v8, "slogan"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->slogan:Ljava/lang/String;

    .line 95
    const-string/jumbo v8, "scheme"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->scheme:Ljava/lang/String;

    .line 96
    const-string v8, "extra"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->extra:Ljava/lang/String;

    .line 97
    const-string v8, "inMarketStage"

    invoke-static {v7, v8, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->inMarketStage:Z

    .line 98
    iput-boolean v2, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->fillingMark:Z

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v7, v0, -0x1

    if-ne v3, v7, :cond_4

    .line 104
    if-ge v4, v10, :cond_4

    if-lez v4, :cond_4

    .line 105
    nop

    :goto_2
    if-ge v4, v10, :cond_3

    .line 106
    new-instance p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;-><init>()V

    .line 107
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    .line 108
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->fillingMark:Z

    .line 109
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 111
    :cond_3
    goto :goto_3

    .line 58
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 120
    :cond_5
    :goto_3
    if-lt v0, v5, :cond_6

    .line 121
    new-instance p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;-><init>()V

    .line 122
    iput v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->functionType:I

    .line 123
    const-string/jumbo v0, "\u67e5\u770b\u66f4\u591a"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->name:Ljava/lang/String;

    .line 124
    const-string v0, "2018072560844004"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->appId:Ljava/lang/String;

    .line 125
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_6
    return-object v1

    .line 52
    :cond_7
    :goto_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
