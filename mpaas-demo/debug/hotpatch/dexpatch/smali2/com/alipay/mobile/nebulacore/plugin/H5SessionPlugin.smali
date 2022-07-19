.class public Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5SessionPlugin.java"


# static fields
.field public static final SHOW_NETWORK_CHECK_ACTIVITY:Ljava/lang/String; = "showNetWorkCheckActivity"

.field public static final TAG:Ljava/lang/String; = "H5SessionPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private b:Ljava/lang/Boolean;

.field private c:Lcom/alibaba/fastjson/JSONObject;

.field private d:J

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 86
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->d:J

    .line 83
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->e:I

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 88
    return-void
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isRegular"    # Z

    .line 345
    const v0, 0x7fffffff

    .line 346
    .local v0, "index":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 347
    .local v3, "sessionPages":Ljava/util/Stack;
    move-object v3, v1

    const v4, 0x7fffffff

    if-nez v1, :cond_0

    .line 348
    return v4

    .line 350
    :cond_0
    nop

    .line 351
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v1

    .line 352
    .local v1, "sessionPagesWithOutPrerender":Ljava/util/Stack;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 356
    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v4

    .line 357
    .local v4, "size":I
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v2

    .local v6, "idx":I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-gt v6, v7, :cond_4

    .line 358
    invoke-virtual {v1, v6}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 359
    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v2, "pageUrl":Ljava/lang/String;
    move-object v2, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 364
    if-nez p2, :cond_2

    .line 365
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 366
    move v0, v6

    .line 367
    goto :goto_1

    .line 370
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 371
    .local v5, "pattern":Ljava/util/regex/Pattern;
    move-object v5, v7

    if-eqz v7, :cond_3

    .line 374
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 375
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 376
    move v0, v6

    .line 377
    goto :goto_1

    .line 357
    .end local v2    # "pageUrl":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 381
    .end local v6    # "idx":I
    :cond_4
    :goto_1
    return v0

    .line 354
    .end local v4    # "size":I
    :cond_5
    :goto_2
    return v4
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 92
    const-string v0, "H5SessionPlugin"

    .line 93
    const-string v1, "h5_pushWindowSpace"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 95
    .local v1, "spaceTimeConfigObj":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string v2, "spaceTime"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->e:I

    .line 96
    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->f:Z

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "H5SessionPlugin get config SPACE_TIME "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enableAntiDuplicate4Tiny "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "catch exception "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 244
    .local v0, "sessionData":Lcom/alipay/mobile/h5container/api/H5Data;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 245
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    const-string v1, "data"

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 250
    .local v2, "joData":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 255
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 256
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 260
    :cond_2
    return-void

    .line 251
    :cond_3
    :goto_1
    return-void

    .line 246
    .end local v2    # "joData":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 222
    .local v0, "sessionData":Lcom/alipay/mobile/h5container/api/H5Data;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 223
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    const-string v1, "keys"

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 227
    .local v2, "jaKeys":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 231
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 232
    .local v1, "resultData":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 233
    .local v4, "values":Lcom/alibaba/fastjson/JSONObject;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 234
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 238
    .end local v5    # "index":I
    :cond_2
    const-string v5, "data"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface {p2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 240
    return-void

    .line 228
    .end local v1    # "resultData":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "values":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :goto_1
    return-void

    .line 224
    .end local v2    # "jaKeys":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1075
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    return-void

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_2

    .line 1081
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 1083
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fragmentType"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "subtab"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1085
    :cond_1
    const-string v0, "redirectFromHomepage"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1088
    :cond_2
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5PageData;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pageData"    # Lcom/alipay/mobile/h5container/api/H5PageData;
    .param p2, "param"    # Landroid/os/Bundle;

    .line 1051
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableRecordStartupParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    return-void

    .line 1054
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alipay/mobile/h5container/api/H5PageData;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1065
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;IZZ)Z
    .locals 9

    .line 833
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 834
    return v1

    .line 836
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v0

    .line 837
    if-nez v0, :cond_1

    .line 838
    return v1

    .line 841
    :cond_1
    nop

    .line 842
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    .line 844
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gez p2, :cond_3

    .line 845
    add-int/2addr p2, v2

    if-eqz p3, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    sub-int/2addr p2, v5

    .line 847
    :cond_3
    const-string v5, "H5SessionPlugin"

    const/4 v6, 0x0

    if-ltz p2, :cond_18

    add-int/lit8 v7, v2, -0x1

    if-lt p2, v7, :cond_4

    goto/16 :goto_8

    .line 865
    :cond_4
    nop

    .line 866
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const-string v8, "data"

    invoke-static {p1, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 867
    if-eqz p1, :cond_d

    .line 869
    :try_start_0
    instance-of v7, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_5

    .line 870
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 871
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 872
    goto :goto_2

    :cond_5
    instance-of v7, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v7, :cond_6

    .line 873
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 874
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 875
    goto :goto_2

    :cond_6
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 876
    check-cast p1, Ljava/lang/String;

    .line 877
    nop

    .line 878
    goto :goto_2

    :cond_7
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_8

    .line 879
    check-cast p1, Ljava/lang/Boolean;

    .line 880
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 881
    goto :goto_2

    :cond_8
    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_9

    .line 882
    check-cast p1, Ljava/lang/Double;

    .line 883
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 884
    goto :goto_2

    :cond_9
    instance-of v7, p1, Ljava/lang/Long;

    if-eqz v7, :cond_a

    .line 885
    check-cast p1, Ljava/lang/Long;

    .line 886
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 887
    goto :goto_2

    :cond_a
    instance-of v7, p1, Ljava/math/BigDecimal;

    if-eqz v7, :cond_b

    .line 888
    check-cast p1, Ljava/math/BigDecimal;

    .line 889
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .line 890
    goto :goto_2

    :cond_b
    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_c

    .line 891
    check-cast p1, Ljava/lang/Integer;

    .line 892
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 890
    :cond_c
    move-object p1, v6

    .line 896
    :goto_1
    goto :goto_2

    .line 894
    :catchall_0
    move-exception p1

    .line 895
    const-string v7, "catch exception "

    invoke-static {v5, v7, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 898
    :cond_d
    move-object p1, v6

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 899
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v5

    .line 900
    const-string v7, "h5_session_pop_param"

    invoke-interface {v5, v7, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_e
    if-eqz p3, :cond_f

    const/4 p1, 0x2

    goto :goto_3

    :cond_f
    const/4 p1, 0x1

    :goto_3
    sub-int p1, v2, p1

    .line 910
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 913
    if-nez p4, :cond_11

    .line 914
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 915
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v2

    .line 916
    if-lez v2, :cond_10

    .line 917
    add-int/lit8 v3, p2, 0x1

    if-gt v3, v2, :cond_10

    .line 918
    sub-int/2addr v2, v4

    move p2, v2

    .line 921
    :cond_10
    goto :goto_4

    .line 923
    :cond_11
    const/4 p2, -0x1

    .line 924
    add-int/lit8 p1, v2, -0x2

    .line 927
    :cond_12
    :goto_4
    add-int/2addr p2, v4

    :goto_5
    if-gt p2, p1, :cond_13

    .line 928
    invoke-virtual {v0, p2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 929
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 933
    :cond_13
    if-eqz p4, :cond_15

    .line 934
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object p1

    .line 935
    if-eqz p1, :cond_14

    .line 936
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 938
    :cond_14
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object p1

    .line 939
    if-eqz p1, :cond_15

    .line 940
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->setHasShowTab(Z)V

    .line 943
    :cond_15
    const/4 p1, 0x0

    :goto_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_17

    .line 944
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 945
    if-eqz p4, :cond_16

    .line 948
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 949
    const-string v2, "fragmentType"

    const-string v3, "normal"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    const-string v2, "subtab"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 952
    const-string v0, "h5PageClose_tab"

    invoke-virtual {p2, v0, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_7

    .line 954
    :cond_16
    const-string v0, "h5PageClose"

    invoke-virtual {p2, v0, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 943
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 959
    :cond_17
    return v1

    .line 848
    :cond_18
    :goto_8
    const-string p1, "invalid page index"

    invoke-static {v5, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    nop

    .line 851
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_19

    .line 852
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 854
    :cond_19
    if-eqz v6, :cond_1a

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 855
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 856
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 857
    invoke-static {v6, p1}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 858
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 861
    :cond_1a
    return v4
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # I
    .param p3, "x4"    # Z

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alibaba/fastjson/JSONObject;IZZ)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "openUrl"    # Ljava/lang/String;

    .line 1030
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1031
    return v1

    .line 1034
    :cond_0
    :try_start_0
    const-string v0, "h5_documentRefererWhitelist"

    .line 1035
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 1036
    .local v2, "domainArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 1037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1038
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1039
    invoke-static {v3, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1040
    const/4 v1, 0x1

    return v1

    .line 1037
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    .end local v0    # "i":I
    .end local v2    # "domainArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    goto :goto_1

    .line 1044
    :catchall_0
    move-exception v0

    .line 1045
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "H5SessionPlugin"

    const-string v3, "exception detail."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1047
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return v1
.end method

.method private static a(ZZLjava/lang/String;)Z
    .locals 7
    .param p0, "isTiny"    # Z
    .param p1, "isH5"    # Z
    .param p2, "appId"    # Ljava/lang/String;

    .line 1129
    const-string v0, "h5_enablePushWindowAnim"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1130
    .local v2, "animConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "appList"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 1131
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1133
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1134
    return v3

    .line 1132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    .end local v0    # "i":I
    :cond_1
    const-string v0, "enableTiny"

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1139
    .local v0, "enableTiny":Z
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 1140
    return v3

    .line 1142
    :cond_2
    const-string v5, "enableH5"

    invoke-static {v2, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 1143
    .local v5, "enableH5":Z
    if-nez p0, :cond_4

    if-eqz v5, :cond_4

    if-nez p1, :cond_3

    const-string v6, "20000067"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1144
    :cond_3
    return v3

    .line 1146
    :cond_4
    return v4
.end method

.method private b()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 265
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->isTinyApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 268
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    const-string v3, "H5SessionPlugin"

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "exitSession but keepAlive in tiny"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void

    .line 273
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "exitSession but keepAlive in tiny service"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void

    .line 280
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitSession()Z

    .line 281
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 293
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 294
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "data"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 296
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v3

    .line 297
    .local v3, "sessionData":Lcom/alipay/mobile/h5container/api/H5Data;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "dataStr":Ljava/lang/String;
    const-string v5, "h5_session_pop_param"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "sessionData":Lcom/alipay/mobile/h5container/api/H5Data;
    .end local v4    # "dataStr":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .line 301
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    .line 302
    .local v0, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v0, v3

    if-eqz v3, :cond_1

    .line 303
    const-string v3, "h5PageClose"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 305
    :cond_1
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 308
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    .line 309
    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 312
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-interface {p2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 315
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;

    .line 1096
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1097
    return v1

    .line 1100
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 1101
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 1102
    return v1

    .line 1105
    :cond_1
    const-string v0, "ta_homepageRedirectShowBack"

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    .line 1107
    .local v4, "showBackList":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1112
    :cond_2
    const-string v0, "all"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 1113
    return v5

    .line 1116
    :cond_3
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v6, v2

    .line 1117
    .local v6, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1118
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1119
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1120
    return v5

    .line 1122
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 1125
    :cond_5
    return v1

    .line 1109
    .end local v6    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_6
    :goto_1
    return v1
.end method

.method private c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 20

    .line 386
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "H5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 388
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/h5container/api/H5PageLoader;->h5Token:Ljava/lang/String;

    .line 391
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    .line 393
    instance-of v4, v3, Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v5, "H5SessionPlugin"

    if-nez v4, :cond_1

    .line 394
    const-string v0, "invalid target!"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 398
    :cond_1
    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 399
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 402
    const-string v6, "isTinyApp"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "url"

    if-eqz v8, :cond_3

    .line 403
    const-string v8, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 404
    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a()V

    .line 407
    iget-boolean v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->f:Z

    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->isFastClick()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v2, :cond_2

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 408
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 409
    const-string v0, "in tinyapp pushWindow duplicated"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void

    .line 412
    :cond_2
    if-eqz v2, :cond_4

    .line 413
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/JSONObject;

    iput-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->c:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    .line 416
    :cond_3
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 418
    :cond_4
    :goto_0
    sget-object v10, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 419
    const-string v10, "refViewID"

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    goto :goto_1

    .line 420
    :cond_5
    sget-object v10, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 421
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 422
    sput-object v8, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 425
    :cond_6
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "push window , g5PageData : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v11

    .line 426
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " , public ReferUrl :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 425
    const-string v11, "H5LoggerPlugins"

    invoke-static {v11, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v10, "transparent"

    invoke-static {v4, v10, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 430
    const-string v11, "fullscreen"

    invoke-static {v4, v11, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    .line 431
    const-string v2, "can not pushwindow in a transparent window"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz v0, :cond_7

    .line 433
    const/4 v2, 0x2

    const-string v3, "\u900f\u660e\u7a97\u53e3\u4e0d\u80fd\u4f7f\u7528pushWindow"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 436
    :cond_7
    return-void

    .line 439
    :cond_8
    const/4 v11, 0x0

    if-eqz v3, :cond_9

    .line 440
    const-string v0, "sendToWeb page event pagePause"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string v12, "pagePause"

    invoke-interface {v0, v12, v11, v11}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 445
    :cond_9
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 446
    invoke-virtual {v12, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 449
    const-string v0, "h5_MergeParamBlankList"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 451
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 453
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 455
    :try_start_0
    instance-of v14, v0, Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 456
    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 457
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 458
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 459
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "remove "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for h5_MergeParamBlankList"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_a
    goto :goto_2

    .line 462
    :catchall_0
    move-exception v0

    .line 463
    const-string v14, "exception detail"

    invoke-static {v5, v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    goto :goto_2

    .line 469
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    .line 470
    const-string v13, "no"

    if-eqz v0, :cond_c

    .line 471
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getWebViewTag()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 473
    const-string v14, "H5_removeWebViewTag"

    invoke-static {v14}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 474
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 479
    :cond_c
    const-string v0, "preRpc"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 480
    const-string v14, "in H5SessionPlugin delete preRpc startparam"

    invoke-static {v5, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 485
    :cond_d
    const-string v0, "navSearchBar_type"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 486
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 489
    :cond_e
    const-string v0, "backgroundColor"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 490
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 494
    :cond_f
    const-string v0, "transparentTitle"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 495
    const-string v14, "in H5SessionPlugin delete transparentTitle startparam"

    invoke-static {v5, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 499
    :cond_10
    const-string v0, "transparentTitleTextAuto"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 500
    const-string v14, "in H5SessionPlugin delete transparentTitleTextAuto startparam"

    invoke-static {v5, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 505
    :cond_11
    const-string v0, "titleImage"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 506
    const-string v14, "in H5SessionPlugin delete titleImage startparam"

    invoke-static {v5, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 510
    :cond_12
    const-string v0, "bounceTopColor"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 511
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 515
    :cond_13
    const-string v14, "fragmentType"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 516
    const-string v0, "in H5SessionPlugin delete fragmentType startparam"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 520
    :cond_14
    const-string v0, "createPageSence"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 521
    const-string v15, "in H5SessionPlugin delete createPageSence startparam"

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 525
    :cond_15
    const-string v0, "pullRefreshStyle"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 526
    const-string v15, "in H5SessionPlugin delete pullRefreshStyle startparam"

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 530
    :cond_16
    const-string v0, "redirectFromHomepage"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 531
    const-string v0, "redirectFromHomepage"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 534
    :cond_17
    const-string v0, "fromRelaunch"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 535
    const-string v0, "fromRelaunch"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 538
    :cond_18
    const-string v15, "closeAllWindow"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 539
    invoke-virtual {v12, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 543
    :cond_19
    invoke-static {v12, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 544
    const-string v0, "h5_handlerOnPushWindowParam"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 545
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 546
    if-eqz v0, :cond_1a

    .line 548
    :try_start_1
    invoke-interface {v0, v12}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnPushWindowParam(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    goto :goto_3

    .line 549
    :catchall_1
    move-exception v0

    move-object v13, v0

    .line 550
    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    :cond_1a
    :goto_3
    const-string v0, "param"

    invoke-static {v2, v0, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 558
    const-string v13, "titleBarColor"

    invoke-static {v2, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 559
    const-string v11, "closeCurrentWindow"

    invoke-static {v0, v11, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    .line 561
    invoke-static {v0, v15, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    .line 562
    if-eqz v15, :cond_1b

    goto :goto_4

    :cond_1b
    const/high16 v16, -0x80000000

    const/high16 v7, -0x80000000

    .line 563
    :goto_4
    move/from16 v16, v15

    const-string v15, "popToIndex"

    invoke-static {v2, v15, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 564
    const/4 v15, -0x1

    if-ne v13, v15, :cond_1c

    .line 565
    const/high16 v15, -0x1000000

    or-int/2addr v13, v15

    .line 566
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "titleBarColor"

    invoke-virtual {v2, v15, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1c
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 577
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 578
    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    .line 579
    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v13

    .line 580
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 582
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    .line 583
    invoke-static {v12, v15}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 584
    move-object/from16 v15, v18

    goto :goto_5

    .line 585
    :cond_1d
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 588
    :cond_1e
    iget-object v13, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string v15, "showFavorites"

    invoke-virtual {v12, v15, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    const/4 v13, 0x0

    invoke-static {v2, v9, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 591
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 592
    const-string v0, "can\'t get url parameter!"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 595
    :cond_1f
    const-string v13, "#"

    invoke-virtual {v15, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 596
    const/16 v13, 0x23

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 597
    move-object/from16 v17, v0

    const/4 v0, -0x1

    if-eq v13, v0, :cond_20

    .line 598
    move v0, v7

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 599
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 600
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "stripAnchor url:"

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 597
    :cond_20
    move v0, v7

    .line 602
    :goto_6
    goto :goto_7

    .line 603
    :cond_21
    move-object/from16 v17, v0

    move v0, v7

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getParams()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v8, v15, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    .line 607
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "pushWindow url "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v12, v9, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 610
    const-string v7, "Referer"

    invoke-virtual {v12, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_22
    const-string v7, "launchParamsTag"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 615
    const-string v7, "appId"

    invoke-static {v12, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 617
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 618
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    .line 619
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "launcher "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 624
    :cond_23
    invoke-static {v12, v5}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 626
    const/4 v2, 0x0

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 627
    if-eqz v3, :cond_3a

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    .line 628
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_24

    goto/16 :goto_c

    .line 633
    :cond_24
    const-string v2, "fromType"

    const-string v7, "pushWindow"

    invoke-virtual {v12, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableRecordStartupParams()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 637
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5PageData;Landroid/os/Bundle;)V

    .line 640
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "in H5SessionPlugin, oldParams is "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 642
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 643
    if-eqz v2, :cond_26

    .line 644
    invoke-interface {v2, v12}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->setStartParams(Landroid/os/Bundle;)V

    .line 645
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->preRpc()V

    .line 648
    :cond_26
    nop

    .line 649
    const/4 v2, 0x0

    invoke-static {v12, v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    const-string v2, "h5PageClose"

    const-string v8, "asyncIndex"

    const/4 v9, 0x1

    if-nez v7, :cond_36

    .line 651
    const-string v7, "NO"

    invoke-static {v12, v10, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "YES"

    invoke-static {v13, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto/16 :goto_b

    .line 672
    :cond_27
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 673
    const/4 v10, 0x0

    invoke-static {v4, v6, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_2a

    if-eqz v7, :cond_2a

    const-string v10, "mp_h5_push_window_use_activity"

    invoke-interface {v7, v10}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "YES"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    .line 675
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 677
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 679
    :cond_28
    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 680
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 682
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V

    .line 683
    if-eqz v11, :cond_29

    .line 684
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 686
    :cond_29
    return-void

    .line 689
    :cond_2a
    invoke-static {v12}, Lcom/alipay/mobile/nebulacore/Nebula;->isDelayRender(Landroid/os/Bundle;)Z

    move-result v7

    .line 690
    const-string v10, "delayRender"

    invoke-virtual {v12, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 691
    if-eqz v7, :cond_2c

    .line 692
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    const-string v4, "delayRender"

    invoke-virtual {v12, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 694
    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 695
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 696
    if-eqz v11, :cond_2b

    .line 697
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 699
    :cond_2b
    return-void

    .line 701
    :cond_2c
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_2d

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "pageLoad|pushWindowPoint"

    invoke-static {v7, v2}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 705
    nop

    .line 706
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v7

    .line 732
    if-eqz v11, :cond_2e

    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 734
    invoke-direct {v1, v3, v12}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V

    .line 737
    :cond_2e
    const-string v2, "pushWindowWithTransAnim"

    invoke-static {v12, v2, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 738
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 739
    const-string v2, "pushWindow not use translate anim"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const/4 v2, 0x0

    invoke-virtual {v7, v12, v2, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    goto :goto_8

    .line 742
    :cond_2f
    const/4 v2, 0x0

    invoke-static {v12, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 743
    const-string v6, "isH5app"

    invoke-static {v12, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 744
    const-string v6, "appId"

    invoke-static {v12, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 745
    invoke-static {v4, v2, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(ZZLjava/lang/String;)Z

    move-result v2

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "pushWindow translate anim config "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v7, v12, v2, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 749
    :goto_8
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v7

    .line 750
    goto :goto_9

    .line 752
    :cond_30
    const/4 v2, 0x0

    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "\u9875\u9762\u8df3\u8f6c\u4e0d\u9002\u7528\u4e8e\u6b64\u573a\u666f"

    invoke-static {v0, v2, v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 754
    return-void

    .line 756
    :cond_31
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 757
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v2, v12}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 759
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v4

    .line 760
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    .line 759
    invoke-interface {v4, v6, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z

    const/4 v7, 0x0

    .line 762
    :goto_9
    const-wide/16 v12, 0x1f4

    if-eqz v11, :cond_33

    .line 763
    const-string v2, "do closeCurrentWindow"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 765
    const-string v4, "normal"

    invoke-static {v2, v14, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    const-string v4, "subtab"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 769
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)V

    invoke-static {v2, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_a

    .line 798
    :cond_32
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;

    invoke-direct {v2, v1, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-static {v2, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 809
    :cond_33
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_34

    const/4 v2, 0x5

    if-lt v7, v2, :cond_34

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_sessionwarningpart1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_sessionwarningpart2:I

    .line 814
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 818
    :cond_34
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_35

    .line 819
    return-void

    .line 822
    :cond_35
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;

    move/from16 v4, v16

    move-object/from16 v3, v17

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;IZ)V

    invoke-static {v2, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 828
    return-void

    .line 652
    :cond_36
    :goto_b
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    .line 653
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v12, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->getTransActivityClass(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    invoke-virtual {v12, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v12, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    const-string v4, "showLoadingView"

    invoke-virtual {v12, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 657
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 658
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 660
    :cond_37
    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 661
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 663
    const-string v0, "transAnimate"

    const/4 v4, 0x0

    invoke-static {v12, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 664
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFadingStart()V

    .line 666
    :cond_38
    if-eqz v11, :cond_39

    .line 667
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 669
    :cond_39
    return-void

    .line 629
    :cond_3a
    :goto_c
    return-void
.end method

.method private static c()Z
    .locals 4

    .line 284
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 285
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x1

    .line 286
    .local v1, "intercept":Z
    if-eqz v0, :cond_0

    .line 287
    const-string v2, "h5_enableKeepAliveInMiniService"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 289
    :cond_0
    return v1
.end method

.method private c(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 318
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 319
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const v1, 0x7fffffff

    .line 321
    .local v1, "index":I
    const v2, 0x7fffffff

    if-eqz v0, :cond_0

    const-string v3, "index"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 326
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 327
    const-string v5, "url"

    invoke-static {v0, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "url":Ljava/lang/String;
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Ljava/lang/String;Z)I

    move-result v1

    .line 331
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    .line 332
    const-string v6, "urlPattern"

    invoke-static {v0, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "urlPattern":Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Ljava/lang/String;Z)I

    move-result v1

    .line 337
    .end local v3    # "urlPattern":Ljava/lang/String;
    :cond_2
    if-ne v1, v2, :cond_3

    .line 338
    const-string v2, "H5SessionPlugin"

    const-string v3, "can\'t find page index"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return v4

    .line 341
    :cond_3
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alibaba/fastjson/JSONObject;IZZ)Z

    move-result v2

    if-nez v2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method private d(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    const-string v2, "H5SessionPlugin"

    if-nez v1, :cond_0

    .line 964
    const-string v1, "getSceneStackInfo : h5session is null !"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return-void

    .line 967
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 968
    .local v4, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v4, v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_1

    .line 969
    const-string v1, "getSceneStackInfo : invalid target!"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return-void

    .line 973
    :cond_1
    move-object v1, v4

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 975
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v5

    move-object v6, v3

    .line 976
    .local v6, "h5pages":Ljava/util/Stack;
    move-object v6, v5

    if-nez v5, :cond_2

    .line 977
    const-string v3, "getSceneStackInfo : H5Page Stack is null !"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void

    .line 980
    :cond_2
    nop

    .line 981
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v5

    move-object v7, v3

    .line 982
    .local v7, "sessionPagesWithOutPrerender":Ljava/util/Stack;
    move-object v7, v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    .line 983
    .local v5, "count":I
    invoke-virtual {v7, v1}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 985
    .local v8, "currentIndex":I
    const/4 v9, 0x0

    .line 986
    .local v9, "realTopPage":Lcom/alipay/mobile/h5container/api/H5Page;
    const-class v10, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v11, v3

    .line 987
    .local v11, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v11, v10

    if-eqz v10, :cond_3

    .line 988
    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v10

    .line 989
    .local v3, "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    move-object v3, v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 990
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v9

    .line 994
    .end local v3    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    :cond_3
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 995
    .local v3, "detailArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 996
    .local v12, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 997
    .local v13, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v12}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 998
    .local v14, "url":Ljava/lang/String;
    const-string v15, "url"

    invoke-virtual {v13, v15, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string v15, "isTop"

    if-eqz v9, :cond_4

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1000
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1002
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    :goto_1
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1005
    .end local v12    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v13    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    goto :goto_0

    .line 1007
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1008
    .local v10, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "count"

    invoke-virtual {v0, v13, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v12, "currentIndex"

    invoke-virtual {v10, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v0, "detail"

    invoke-virtual {v10, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "count = "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , currentIndex = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " detail :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 1014
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 19
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "action":Ljava/lang/String;
    const-string v0, "setSessionData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 139
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 140
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_2

    .line 141
    :cond_0
    const-string v0, "getSessionData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_2

    .line 143
    :cond_1
    const-string v0, "exitSession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string v4, "titleCloseClick"

    invoke-interface {v0, v4, v3, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 149
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b()V

    goto/16 :goto_2

    .line 150
    :cond_3
    const-string v0, "popTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_2

    .line 152
    :cond_4
    const-string v0, "popWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_2

    .line 154
    :cond_5
    const-string v0, "pushWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "url"

    const-string v5, "H5SessionPlugin"

    if-eqz v0, :cond_c

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    .line 156
    .local v4, "url":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v6, "u"

    invoke-static {v0, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    :cond_6
    const-string v0, "h5_enableInterceptJavascriptInPushWindow"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "no"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "javascript:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "pushWindow intercept javascript success"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return v2

    .line 164
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "pageParams":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    :cond_8
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 170
    .local v3, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v3, v6

    const-string v13, "stripLandingURL&Deeplink url "

    if-eqz v6, :cond_9

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bingo deeplink"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v2

    .line 174
    :cond_9
    const-string v6, "pushWindowNormal"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 175
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 176
    .local v14, "realUrl":Ljava/lang/String;
    invoke-static {v4, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 177
    if-eqz v3, :cond_b

    .line 178
    invoke-interface {v3, v14, v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v15

    .line 179
    .local v15, "result":Z
    const/4 v6, 0x0

    .line 180
    .local v6, "appId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 181
    .local v7, "publicId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 182
    .local v8, "bizScenario":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "appId"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "publicId"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "bizScenario"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    goto :goto_0

    .line 182
    :cond_a
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 187
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "publicId":Ljava/lang/String;
    .end local v8    # "bizScenario":Ljava/lang/String;
    .local v16, "appId":Ljava/lang/String;
    .local v17, "publicId":Ljava/lang/String;
    .local v18, "bizScenario":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x1

    const-string v9, "pushWindowNormal"

    move-object v6, v4

    move-object v7, v14

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    invoke-static/range {v6 .. v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-eqz v15, :cond_b

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bingo deeplink in landing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v2

    .line 196
    .end local v0    # "pageParams":Landroid/os/Bundle;
    .end local v3    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v14    # "realUrl":Ljava/lang/String;
    .end local v15    # "result":Z
    .end local v16    # "appId":Ljava/lang/String;
    .end local v17    # "publicId":Ljava/lang/String;
    .end local v18    # "bizScenario":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 197
    .end local v4    # "url":Ljava/lang/String;
    goto/16 :goto_2

    :cond_c
    const-string v0, "showNetWorkCheckActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebulacore/ui/H5NetworkCheckActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v0

    .line 199
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 200
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_d

    .line 201
    const-string v0, "error_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v0, "reason"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :cond_d
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    .line 209
    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v4

    .line 207
    invoke-interface {v0, v4, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "showNetWorkCheckActivity, "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 213
    :cond_e
    const-string v0, "getSceneStackInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_2

    .line 213
    :cond_f
    :goto_1
    nop

    .line 216
    :goto_2
    return v2
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 125
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    const-string v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 128
    :cond_0
    const-string v1, "hideFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->b:Ljava/lang/Boolean;

    .line 131
    :cond_1
    :goto_0
    return v2
.end method

.method public declared-synchronized isFastClick()Z
    .locals 7

    monitor-enter p0

    .line 1017
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 1019
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->d:J

    sub-long/2addr v0, v4

    iget v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->e:I

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 1021
    const/4 v0, 0x0

    .local v0, "isFastClick":Z
    goto :goto_0

    .line 1023
    .end local v0    # "isFastClick":Z
    :cond_0
    const/4 v0, 0x1

    .line 1025
    .restart local v0    # "isFastClick":Z
    :goto_0
    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    monitor-exit p0

    return v0

    .line 1016
    .end local v0    # "isFastClick":Z
    .end local v2    # "currentTime":J
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 111
    const-string v0, "getSessionData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v0, "setSessionData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "exitSession"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v0, "popWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v0, "popTo"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v0, "pushWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v0, "showFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v0, "hideFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v0, "showNetWorkCheckActivity"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v0, "getSceneStackInfo"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 107
    return-void
.end method
