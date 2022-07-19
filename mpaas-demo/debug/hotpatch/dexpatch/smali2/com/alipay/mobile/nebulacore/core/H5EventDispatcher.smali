.class public Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
.super Ljava/lang/Object;
.source "H5EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5EventDispatcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "action":Ljava/lang/String;
    const-string v1, "jsapiOnComplete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 245
    const-string v1, "jsapiOnInvoke"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->canInterceptJSApi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    return-void

    .line 253
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 254
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const-string v4, "func"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v4, "param"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 259
    :cond_2
    return-void

    .line 246
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 32
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 7
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 111
    const-string v0, "H5EventDispatcher"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 113
    .local v1, "time":J
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    const-string v4, "H5_DISPTCH_EVENT_FAILED"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 117
    const-string v5, "exception"

    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 118
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "actionName":Ljava/lang/String;
    const-wide/16 v4, 0xa

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Nebula cost time ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] dispatch elapse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v3    # "actionName":Ljava/lang/String;
    :cond_0
    return-void

    .line 121
    .local v3, "e":Ljava/lang/Throwable;
    :cond_1
    throw v3
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 7
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 262
    const/4 v0, 0x0

    const-string v1, "H5EventDispatcher"

    if-nez p0, :cond_0

    .line 263
    const-string v2, "invalid event body!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 268
    .local v4, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 269
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    move-object v5, v3

    .line 270
    .local v5, "service":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    move-object v5, v2

    if-eqz v2, :cond_1

    .line 273
    move-object v4, v5

    .line 275
    invoke-interface {v5}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v2

    move-object v6, v3

    .line 276
    .local v6, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v6, v2

    if-eqz v2, :cond_1

    .line 279
    move-object v4, v6

    .line 281
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 282
    .local v3, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 285
    move-object v4, v3

    .line 289
    .end local v3    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "service":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    .end local v6    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_1
    if-nez v4, :cond_2

    .line 290
    const-string v2, "invalid event target!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return v0

    .line 293
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/h5container/api/H5Event;->setTarget(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method private static c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 135
    const-string v0, "H5EventDispatcher"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid params, event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v1

    .line 140
    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    instance-of v3, v3, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v3

    .line 142
    .local v3, "bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    goto :goto_0

    .line 146
    .end local v3    # "bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    :cond_1
    move-object v3, v2

    :goto_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/core/extension/EventToExtensionHelper;->dispatchToExtension(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 147
    return v5

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v3, "actionName":Ljava/lang/String;
    move-object v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    const-string v2, "invalid action name"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_3

    .line 154
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 156
    :cond_3
    return v1

    .line 159
    :cond_4
    const/4 v4, 0x0

    .line 160
    .local v4, "h5JsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    move-object v7, v2

    .line 161
    .local v7, "h5page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v7, v6

    if-eqz v6, :cond_5

    .line 162
    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    .line 163
    .local v6, "h5PageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "eventId":Ljava/lang/String;
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 165
    invoke-virtual {v6, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfo(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5JsCallData;

    move-result-object v4

    .line 169
    .end local v6    # "h5PageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    .end local v8    # "eventId":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 172
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/Nebula;->dispatchProcess(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 173
    if-eqz v4, :cond_6

    .line 174
    const-string v0, "Y"

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->setIsMultiProcess(Ljava/lang/String;)V

    .line 176
    :cond_6
    return v5

    .line 179
    :cond_7
    if-eqz v4, :cond_8

    .line 180
    const-string v6, "N"

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->setIsMultiProcess(Ljava/lang/String;)V

    .line 184
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v6

    .line 185
    .local v6, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v8, "targetList":Ljava/util/List;
    :goto_1
    if-eqz v6, :cond_9

    .line 189
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v6

    goto :goto_1

    .line 193
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 194
    const-string v2, "no event target!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz p1, :cond_a

    .line 196
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 198
    :cond_a
    return v1

    .line 201
    :cond_b
    sget-boolean v9, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v9, :cond_c

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "routing event "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v1

    .line 207
    .local v10, "size":I
    move v10, v9

    sub-int/2addr v9, v5

    .local v9, "index":I
    :goto_2
    if-ltz v9, :cond_f

    .line 208
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 209
    .local v2, "p":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->isCanceled()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 210
    const-string v5, "event been canceled on intercept!"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return v1

    .line 214
    :cond_d
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/h5container/api/H5Plugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 215
    return v5

    .line 207
    .end local v2    # "p":Lcom/alipay/mobile/h5container/api/H5Plugin;
    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 220
    .end local v9    # "index":I
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "index":I
    :goto_3
    if-ge v9, v10, :cond_12

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->isCanceled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 222
    const-string v2, "event been canceled on handle!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v1

    .line 226
    :cond_10
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 227
    .restart local v2    # "p":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-interface {v11, p0, p1}, Lcom/alipay/mobile/h5container/api/H5Plugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 228
    return v5

    .line 220
    .end local v2    # "p":Lcom/alipay/mobile/h5container/api/H5Plugin;
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 235
    .end local v9    # "index":I
    :cond_12
    if-eqz p1, :cond_13

    .line 236
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 238
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] handled by nobody"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return v1
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "policy"    # Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 68
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->isDispatcherOnWorkerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object p3, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    .line 76
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$3;->a:[I

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 80
    :cond_4
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 87
    nop

    .line 106
    :goto_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0

    .line 69
    :cond_5
    :goto_1
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "target"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 52
    .local v2, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    move-object v2, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 53
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 54
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 56
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method
