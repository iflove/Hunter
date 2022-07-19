.class public Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;
.super Ljava/lang/Object;
.source "H5BridgeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/alibaba/fastjson/JSONArray;

.field private static i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;


# instance fields
.field private d:Lcom/alibaba/fastjson/JSONObject;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "getAPDataStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "contact"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "getAllContacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "setTitleColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "chooseContact"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "getDTSchemeValue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    const-string v1, "setGestureBack"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getSecurityJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->c:Lcom/alibaba/fastjson/JSONArray;

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    const-string v1, "forbidden!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    const-string v1, "invalid parameter!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    const-string v1, "none error!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    const-string v1, "not implemented!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    const-string v1, "unknown error!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callLog"    # Ljava/util/Map;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 88
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->e:Ljava/util/Map;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 92
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 96
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 102
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "error"

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v6, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->a:Ljava/util/List;

    if-eqz v6, :cond_9

    .line 104
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 105
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 106
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "message"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    const-string v7, "not implemented!"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    const-string v7, "h5_upload_not_found_err"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    const-string v8, "yes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    const-string v7, "h5_not_implemented_api"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 116
    :cond_1
    if-eqz v0, :cond_9

    sget-object v7, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 117
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v6, :cond_9

    .line 119
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_2

    .line 120
    const-string v7, "errorMessage"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v3

    .line 121
    :goto_0
    nop

    .line 122
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 123
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object v7

    .line 124
    if-eqz v7, :cond_3

    .line 125
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getJoMsg()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 129
    :cond_3
    move-object v7, v3

    :goto_1
    const/16 v8, 0x1f4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_4

    .line 130
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 132
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_5

    .line 133
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 137
    :cond_5
    nop

    .line 139
    const-string v8, "h5_jsapiResultErrorLogBlackList"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 141
    if-eqz v8, :cond_7

    .line 142
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 143
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 144
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 145
    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 146
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 147
    nop

    .line 148
    nop

    .line 149
    move-object v6, v4

    move-object v7, v6

    goto :goto_3

    .line 142
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 154
    :cond_7
    :goto_3
    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_JSAPI_RESULT_ERROR:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 155
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 157
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    const-string v10, "jsapiName"

    invoke-virtual {v8, v10, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 158
    const-string v9, "params"

    invoke-virtual {v8, v9, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "code"

    invoke-virtual {v7, v8, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 160
    const-string v7, "msg"

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 162
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "appxVersion"

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 163
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    const-string v7, "httpRequest"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 164
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "url"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 167
    :cond_8
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 172
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 173
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 175
    if-eqz v6, :cond_f

    .line 177
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->e:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 178
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_a
    move-object v11, v3

    .line 179
    :goto_4
    nop

    .line 180
    nop

    .line 181
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getJoMsg()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getIsFromWorker()Z

    move-result v0

    move-object v10, v3

    goto :goto_5

    .line 189
    :cond_b
    move-object v10, v3

    const/4 v0, 0x0

    :goto_5
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_c

    .line 190
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-interface/range {v6 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_c
    goto :goto_7

    .line 194
    :cond_d
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 195
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_e

    move-object v0, v4

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_6
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7, v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->eventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_f
    :goto_7
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    const-string v3, "H5BridgeRunnable"

    if-nez v0, :cond_11

    .line 203
    const-string v0, "h5_secJsApiCallConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 205
    return-void

    .line 208
    :cond_10
    :try_start_0
    const-class v6, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_8

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_11
    :goto_8
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->isEnable()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_17

    .line 217
    :cond_12
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->e:Ljava/util/Map;

    if-eqz v0, :cond_2a

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_16

    .line 221
    :cond_13
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    move-result-object v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_14

    .line 222
    return-void

    .line 224
    :cond_14
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->c:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_15

    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 225
    return-void

    .line 227
    :cond_15
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 228
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "`_`"

    if-eqz v7, :cond_16

    move-object v7, v8

    goto :goto_9

    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    nop

    .line 234
    nop

    .line 236
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    const-string v9, "rpc"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 237
    nop

    .line 238
    if-eqz v0, :cond_17

    .line 239
    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isRpcDomains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 238
    :cond_17
    const/4 v0, 0x0

    goto :goto_a

    .line 242
    :cond_18
    const-class v0, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    .line 243
    if-eqz v0, :cond_19

    .line 244
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-interface {v0, v7}, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;->getAliLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 245
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-interface {v0, v7, v3}, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;->urlInWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 243
    :cond_19
    move-object v9, v4

    const/4 v0, 0x0

    .line 248
    :goto_a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v7, "Y"

    const-string v9, "N"

    if-eqz v0, :cond_1a

    move-object v0, v7

    goto :goto_b

    :cond_1a
    move-object v0, v9

    :goto_b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 256
    nop

    .line 258
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object v0

    .line 260
    nop

    .line 261
    if-eqz v0, :cond_1b

    .line 262
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getJoMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 261
    :cond_1b
    move-object v0, v4

    .line 265
    :goto_c
    nop

    .line 266
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v12, :cond_1c

    .line 267
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    .line 266
    :cond_1c
    move-object v12, v4

    .line 269
    :goto_d
    if-eqz v0, :cond_1d

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    goto :goto_e

    .line 269
    :cond_1d
    const/4 v13, 0x0

    .line 272
    :goto_e
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 273
    sget-object v15, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    move-result-object v15

    if-eqz v15, :cond_22

    .line 274
    sget-object v15, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    move-result-object v15

    .line 275
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->isIn()Z

    move-result v16

    .line 276
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->isOut()Z

    move-result v17

    .line 277
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->getMaxLength()I

    move-result v15

    .line 278
    if-eqz v16, :cond_1f

    .line 279
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v15, :cond_1e

    add-int/lit8 v10, v15, -0x1

    .line 280
    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1e
    nop

    goto :goto_f

    .line 278
    :cond_1f
    move-object v0, v4

    .line 283
    :goto_f
    if-eqz v17, :cond_21

    .line 284
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v15, :cond_20

    add-int/lit8 v15, v15, -0x1

    .line 285
    invoke-virtual {v12, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_20
    move-object v4, v12

    .line 288
    :cond_21
    :goto_10
    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_13

    :cond_22
    sget-object v10, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_27

    sget-object v10, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 289
    sget-object v10, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->i:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 290
    const-string v11, "in"

    invoke-static {v10, v11, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    .line 291
    const-string v15, "out"

    invoke-static {v10, v15, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    .line 292
    const/16 v5, 0x32

    move-object/from16 v17, v4

    const-string v4, "maxLength"

    invoke-static {v10, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 293
    if-eqz v11, :cond_24

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_23

    add-int/lit8 v5, v4, -0x1

    .line 295
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_23
    nop

    goto :goto_11

    .line 293
    :cond_24
    move-object/from16 v0, v17

    .line 298
    :goto_11
    if-eqz v15, :cond_26

    .line 299
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_25

    add-int/lit8 v4, v4, -0x1

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v12, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_25
    move-object v4, v12

    :goto_12
    move-object/from16 v17, v4

    move-object v4, v0

    goto :goto_13

    .line 298
    :cond_26
    move-object v4, v0

    goto :goto_13

    .line 288
    :cond_27
    move-object/from16 v17, v4

    .line 305
    move-object/from16 v4, v17

    :goto_13
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->d:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 306
    nop

    .line 307
    move-object v7, v9

    goto :goto_14

    .line 309
    :cond_28
    move-object/from16 v12, v17

    .line 312
    :goto_14
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->e:Ljava/util/Map;

    if-eqz v0, :cond_29

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 313
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->e:Ljava/util/Map;

    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_15

    .line 316
    :cond_29
    const-wide/16 v10, 0x0

    :goto_15
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->appendJsApiDetail(Ljava/lang/String;)V

    .line 325
    return-void

    .line 218
    :cond_2a
    :goto_16
    return-void

    .line 214
    :cond_2b
    :goto_17
    const-string v0, "jsApiConfigModel == null or not enable!"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
