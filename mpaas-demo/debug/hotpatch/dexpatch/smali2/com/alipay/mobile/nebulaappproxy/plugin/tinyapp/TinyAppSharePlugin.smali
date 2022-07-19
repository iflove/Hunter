.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "TinyAppSharePlugin.java"


# static fields
.field public static final SHARE_TINY_APP_MSG:Ljava/lang/String; = "shareTinyAppMsg"

.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/ArrayList;

.field private static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->b:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "qrcode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "Weibo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "ALPContact"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "ALPTimeLine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "Weixin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v2, "WeixinTimeLine"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v3, "QQ"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v4, "QQZone"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v5, "DingTalkSession"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 95
    const-string v0, "NORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p9, "x9"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p10, "x10"    # Lcom/alibaba/fastjson/JSONObject;

    .line 48
    invoke-direct/range {p0 .. p10}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 25
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;
    .param p7, "bgImageUrl"    # Ljava/lang/String;
    .param p8, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p9, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p10, "eventParams"    # Lcom/alibaba/fastjson/JSONObject;

    .line 181
    move-object/from16 v15, p1

    move-object/from16 v14, p8

    move-object/from16 v13, p10

    invoke-virtual/range {p8 .. p8}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/16 v16, 0x0

    move-object/from16 v1, v16

    .line 182
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v12, v0

    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v12, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    move-object/from16 v1, v16

    .line 185
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v11, v0

    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .local v11, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-nez v0, :cond_1

    .line 186
    return-void

    .line 189
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object/from16 v1, v16

    .line 190
    .local v1, "param1":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v0

    .end local v1    # "param1":Lcom/alibaba/fastjson/JSONObject;
    .local v10, "param1":Lcom/alibaba/fastjson/JSONObject;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "override"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v0, "setToolbarMenu"

    invoke-interface {v12, v0, v10}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 193
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object/from16 v2, v16

    .line 194
    .local v2, "param2":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v0

    .end local v2    # "param2":Lcom/alibaba/fastjson/JSONObject;
    .local v9, "param2":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "bizType"

    const-string v3, "H5App_XCX"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "sendEvent"

    invoke-virtual {v9, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v4, "sharePadType"

    const-string v5, "C2A"

    invoke-static {v13, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v5, "C2C"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    const-string v3, "H5App_XCX_O2O"

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v9, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object/from16 v3, v16

    .line 203
    .local v3, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v8, v2

    .end local v3    # "array":Lcom/alibaba/fastjson/JSONArray;
    .local v8, "array":Lcom/alibaba/fastjson/JSONArray;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 204
    const-string/jumbo v2, "onlySelectChannel"

    invoke-virtual {v9, v2, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v2, "startShare"

    invoke-virtual {v14, v2}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v14, v9}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getSharePadService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;

    move-result-object v2

    move-object/from16 v3, v16

    .line 208
    .local v3, "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    move-object v7, v2

    .end local v3    # "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    .local v7, "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    if-eqz v2, :cond_3

    invoke-interface {v7, v15}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;->isUseTinySharePad(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move/from16 v17, v1

    .line 209
    .local v17, "isUseTinySharePad":Z
    new-instance v18, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    move-object v4, v11

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v19, v7

    .end local v7    # "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    .local v19, "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    move-object/from16 v7, p3

    move-object/from16 v20, v8

    .end local v8    # "array":Lcom/alibaba/fastjson/JSONArray;
    .local v20, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v8, p4

    move-object/from16 v21, v9

    .end local v9    # "param2":Lcom/alibaba/fastjson/JSONObject;
    .local v21, "param2":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v9, p5

    move-object/from16 v22, v10

    .end local v10    # "param1":Lcom/alibaba/fastjson/JSONObject;
    .local v22, "param1":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v10, v17

    move-object/from16 v23, v11

    .end local v11    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .local v23, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object/from16 v11, p6

    move-object/from16 v24, v12

    .end local v12    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v24, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object/from16 v12, p9

    move-object/from16 v13, p7

    move-object/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/service/H5Service;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 622
    .local v0, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    if-eqz v17, :cond_4

    .line 623
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object/from16 v2, v16

    .line 624
    .local v2, "extra":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v3, "appId"

    invoke-virtual {v1, v3, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v1, "url"

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string/jumbo v1, "title"

    move-object/from16 v4, p3

    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v1, "desc"

    move-object/from16 v5, p4

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "content"

    move-object/from16 v6, p5

    invoke-virtual {v2, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v1, "imageUrl"

    move-object/from16 v7, p6

    invoke-virtual {v2, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v1, "bgImgUrl"

    move-object/from16 v8, p7

    invoke-virtual {v2, v1, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v9, "extraParams"

    move-object/from16 v10, p10

    invoke-static {v10, v9, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v1, "extra"

    move-object/from16 v9, v21

    .end local v21    # "param2":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "param2":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v9, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    move-object/from16 v1, p8

    move-object/from16 v11, p9

    move-object/from16 v12, v19

    .end local v19    # "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    .local v12, "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    invoke-interface {v12, v1, v0, v11}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;->startShareTinyPad(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 635
    .end local v2    # "extra":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 636
    .end local v9    # "param2":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    .restart local v19    # "padService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppSharePadService;
    .restart local v21    # "param2":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move-object/from16 v1, p8

    move-object/from16 v2, v23

    .end local v23    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 638
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "h5Service"    # Lcom/alipay/mobile/h5container/service/H5Service;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "shareParams"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 642
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shareToChannel..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string/jumbo v0, "shareToChannel"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2, p3}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 645
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$3;

    invoke-direct {v0, p0, p4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {p1, p2, v0}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/service/H5Service;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "x3"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "x4"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .line 659
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v0

    .line 662
    goto :goto_0

    .line 660
    :catchall_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shareTinyAppMsg...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shareTinyAppMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 82
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 83
    const-string/jumbo v0, "shareTinyAppMsg"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 84
    return-void
.end method
