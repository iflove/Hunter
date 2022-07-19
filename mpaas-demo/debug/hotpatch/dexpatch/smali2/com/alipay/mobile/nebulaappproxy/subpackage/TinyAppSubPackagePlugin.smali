.class public Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "TinyAppSubPackagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_STATUS:Ljava/lang/String; = "downloadStatus"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final INSTALL_STATUS:Ljava/lang/String; = "installStatus"

.field private static final LOAD_SUB_PACKAGE:Ljava/lang/String; = "loadSubPackage"

.field private static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final ROOT_ATTRIB:Ljava/lang/String; = "rootAttrib"

.field public static final SUB_PACKAGES:Ljava/lang/String; = "subPackages"

.field private static final TAG:Ljava/lang/String; = "TinyAppSubPackagePlugin"

.field private static final sLoadingSubPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSubPackageStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->sSubPackageStatusMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->sLoadingSubPackageMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->packageParse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private loadSubPackage(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 80
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v8, v1

    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v8, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const-string v3, "TinyAppSubPackagePlugin"

    if-nez v1, :cond_0

    .line 81
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v7, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 82
    const-string v1, "loadSubPackage...h5Page is null"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "subPackages"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v4, v2

    .line 88
    .local v4, "subPackages":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v1

    .end local v4    # "subPackages":Lcom/alibaba/fastjson/JSONObject;
    .local v9, "subPackages":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_d

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 96
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "preload"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "preload":Ljava/lang/String;
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;->NETWORK_WIFI:Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getNetworkType(Landroid/content/Context;)Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils$NetworkType;

    move-result-object v4

    if-eq v1, v4, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadSubPackage...networkType is dismatch:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v1, 0xc

    const-string/jumbo v2, "\u7f51\u7edc\u7c7b\u578b\u4e0d\u5339\u914d\uff0c\u4e0d\u4e0b\u8f7d"

    invoke-interface {v7, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 102
    return-void

    .line 105
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "packages"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v4, v2

    .line 106
    .local v4, "packages":Lcom/alibaba/fastjson/JSONArray;
    move-object v11, v1

    .end local v4    # "packages":Lcom/alibaba/fastjson/JSONArray;
    .local v11, "packages":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_c

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 112
    :cond_3
    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    .line 113
    .local v4, "appId":Ljava/lang/String;
    move-object v12, v1

    .end local v4    # "appId":Ljava/lang/String;
    .local v12, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v7, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 115
    const-string v1, "loadSubPackage...appId is null"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 119
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v13, v1

    .line 121
    .local v13, "nonReadyArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v1, 0x1

    .line 122
    .local v1, "allSubPackageReady":Z
    const/4 v4, 0x0

    move v14, v1

    move-object v1, v2

    move v5, v4

    move-object v4, v1

    .end local v1    # "allSubPackageReady":Z
    .local v5, "i":I
    .local v14, "allSubPackageReady":Z
    :goto_0
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    const/4 v15, 0x1

    if-ge v5, v6, :cond_9

    .line 123
    invoke-virtual {v11, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v2, "rootAttrib":Ljava/lang/String;
    move-object v2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 128
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v1, "downloadUrl":Ljava/lang/String;
    move-object v1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v15

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "rootTemp":Ljava/lang/String;
    goto :goto_1

    .line 141
    .end local v4    # "rootTemp":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .restart local v4    # "rootTemp":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    move-object v1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 149
    move-object v2, v4

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "loadSubPackage, root path non-match, adapted here, rootAttrib: "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " correct rootPath: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v4    # "rootTemp":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->sSubPackageStatusMap:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 157
    .local v4, "packageStatusSet":Ljava/util/Set;
    move-object v4, v6

    if-eqz v6, :cond_7

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 159
    :cond_7
    const/4 v6, 0x0

    .line 160
    .end local v14    # "allSubPackageReady":Z
    .local v6, "allSubPackageReady":Z
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    move v14, v6

    .line 122
    .end local v1    # "downloadUrl":Ljava/lang/String;
    .end local v2    # "rootAttrib":Ljava/lang/String;
    .end local v4    # "packageStatusSet":Ljava/util/Set;
    .end local v6    # "allSubPackageReady":Z
    .restart local v14    # "allSubPackageReady":Z
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    .line 164
    .end local v5    # "i":I
    if-eqz v14, :cond_a

    .line 166
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 167
    const-string v1, "loadSubPackage... all packages has loaded."

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_a
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ne v1, v15, :cond_b

    const/4 v6, 0x1

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->prepareSubPackage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V

    .line 171
    return-void

    .line 107
    .end local v12    # "appId":Ljava/lang/String;
    .end local v13    # "nonReadyArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v14    # "allSubPackageReady":Z
    :cond_c
    :goto_2
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v7, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 108
    const-string v1, "loadSubPackage...packages is null"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 90
    .end local v10    # "preload":Ljava/lang/String;
    .end local v11    # "packages":Lcom/alibaba/fastjson/JSONArray;
    :cond_d
    :goto_3
    const-string v1, "loadSubPackage...non subPackage mode"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v1, 0xb

    const-string/jumbo v2, "\u975e\u5206\u5305\u6a21\u5f0f"

    invoke-interface {v7, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method private packageParse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "rootAttrib"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "needSendResult"    # Z
    .param p5, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TinyAppSubPackagePlugin"

    if-nez v0, :cond_8

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 283
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 288
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 289
    .local v3, "topH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 290
    const-string/jumbo v0, "packageParse callback...topH5Page is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 295
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v2

    .line 296
    .local v4, "startupParams":Landroid/os/Bundle;
    move-object v4, v0

    const-string/jumbo v5, "sessionId"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v2

    .line 297
    .local v5, "sessionId":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v0

    move-object v6, v2

    .line 298
    .local v6, "contentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v6, v0

    if-nez v0, :cond_2

    .line 299
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->preparePackage(Landroid/os/Bundle;Z)V

    .line 300
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v6

    .line 303
    :cond_2
    invoke-static {v4, v6, p3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    .line 304
    .local v0, "result":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "packageParse callback...: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v1, "\u89e3\u6790\u5931\u8d25_"

    const/16 v7, 0x10

    if-eqz v0, :cond_6

    .line 306
    iget v8, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    if-nez v8, :cond_5

    .line 308
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->sSubPackageStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 310
    .local v2, "packageStatusSet":Ljava/util/Set;
    move-object v2, v1

    if-nez v1, :cond_3

    .line 311
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v2, v1

    .line 313
    :cond_3
    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->sSubPackageStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v2    # "packageStatusSet":Ljava/util/Set;
    :cond_4
    if-eqz p4, :cond_7

    .line 318
    invoke-interface {p5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    return-void

    .line 321
    :cond_5
    if-eqz p4, :cond_7

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v7, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    return-void

    .line 326
    :cond_6
    if-eqz p4, :cond_7

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v7, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 330
    :cond_7
    return-void

    .line 284
    .end local v0    # "result":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .end local v3    # "topH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "startupParams":Landroid/os/Bundle;
    .end local v5    # "sessionId":Ljava/lang/String;
    .end local v6    # "contentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_8
    :goto_0
    const-string/jumbo v0, "packageParse callback...appId downloadUrl is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method private declared-synchronized prepareSubPackage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
    .locals 17
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "rootAttribArray"    # Lcom/alibaba/fastjson/JSONArray;
    .param p3, "subPackages"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p5, "needSendResult"    # Z

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    monitor-enter p0

    .line 184
    if-eqz v11, :cond_4

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v14, p3

    goto/16 :goto_1

    .line 190
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move v12, v1

    .end local v1    # "i":I
    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 191
    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 192
    .local v13, "rootAttrib":Ljava/lang/String;
    move-object/from16 v14, p3

    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 194
    .local v15, "cdnUrl":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->sLoadingSubPackageMap:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/Future;

    .line 195
    .local v2, "existingTask":Ljava/util/concurrent/Future;
    move-object v3, v4

    .end local v2    # "existingTask":Ljava/util/concurrent/Future;
    .local v3, "existingTask":Ljava/util/concurrent/Future;
    if-eqz v4, :cond_1

    .line 196
    const-string v1, "TinyAppSubPackagePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepareSubPackage reuse task "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v7, "IO"

    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v15

    move/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;Ljava/util/concurrent/Future;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;

    const/4 v4, 0x0

    invoke-direct {v2, v10, v4}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;B)V

    .line 215
    .local v2, "future":Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;
    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "TinyAppSubPackagePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prepareSubPackage begin task for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;

    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;

    move-object v4, v9

    move-object/from16 v5, p0

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    move-object/from16 v16, v3

    move-object v3, v9

    .end local v3    # "existingTask":Ljava/util/concurrent/Future;
    .local v16, "existingTask":Ljava/util/concurrent/Future;
    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;)V

    invoke-direct {v1, v0, v13, v15, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)V

    .line 261
    .local v1, "prepareTask":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;
    const-string v3, "URGENT"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 190
    .end local v1    # "prepareTask":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackagePrepareTask;
    .end local v2    # "future":Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin$a;
    .end local v13    # "rootAttrib":Ljava/lang/String;
    .end local v15    # "cdnUrl":Ljava/lang/String;
    .end local v16    # "existingTask":Ljava/util/concurrent/Future;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_2
    move-object/from16 v14, p3

    .line 264
    .end local v12    # "i":I
    if-nez p5, :cond_3

    .line 267
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_3
    monitor-exit p0

    return-void

    .line 184
    :cond_4
    move-object/from16 v14, p3

    .line 185
    :goto_1
    :try_start_2
    const-string v1, "TinyAppSubPackagePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadSubPackage...no valid root need load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 v1, 0xd

    const-string/jumbo v2, "\u65e0\u6709\u6548\u7684\u5206\u5305"

    move-object/from16 v3, p4

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 183
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "rootAttribArray":Lcom/alibaba/fastjson/JSONArray;
    .end local p3    # "subPackages":Lcom/alibaba/fastjson/JSONObject;
    .end local p4    # "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .end local p5    # "needSendResult":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 72
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadSubPackage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/TinyAppSubPackagePlugin;->loadSubPackage(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 75
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 66
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 67
    const-string v0, "loadSubPackage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 68
    return-void
.end method
