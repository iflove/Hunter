.class public Lcom/alipay/mobile/common/logging/render/PendingRender;
.super Ljava/lang/Object;
.source "PendingRender.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/IRender;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field i:Z

.field private j:Lcom/alipay/mobile/common/logging/render/BaseRender;

.field private k:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/logging/render/PendingRender$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/render/PendingRender$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/render/PendingRender;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/logging/render/BaseRender;[Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "render"    # Lcom/alipay/mobile/common/logging/render/BaseRender;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "doAbtest"    # Z

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->i:Z

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->j:Lcom/alipay/mobile/common/logging/render/BaseRender;

    .line 106
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    .line 107
    iput-boolean p3, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->i:Z

    .line 110
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->b:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "refViewID"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->c:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewID"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->d:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "actionID"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->e:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "actionToken"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->f:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "appID"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->g:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "actionRefer"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "PendingRender"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static a(Lcom/alipay/mobile/common/logging/render/AntEventRender;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)Lcom/alipay/mobile/common/logging/render/PendingRender;
    .locals 3
    .param p0, "antEventRender"    # Lcom/alipay/mobile/common/logging/render/AntEventRender;
    .param p1, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 101
    .local v0, "params":[Ljava/lang/Object;
    new-instance v1, Lcom/alipay/mobile/common/logging/render/PendingRender;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->isNeedAbtest()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;-><init>(Lcom/alipay/mobile/common/logging/render/BaseRender;[Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public static a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;
    .locals 4
    .param p0, "behavorRender"    # Lcom/alipay/mobile/common/logging/render/BehavorRender;
    .param p1, "param1"    # Ljava/lang/Object;
    .param p2, "param2"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 80
    return-object v0

    .line 83
    .local v0, "params":[Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    move-object v0, v1

    .line 84
    new-instance v1, Lcom/alipay/mobile/common/logging/render/PendingRender;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;-><init>(Lcom/alipay/mobile/common/logging/render/BaseRender;[Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public static a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/alipay/mobile/common/logging/render/PendingRender;
    .locals 3
    .param p0, "behavorRender"    # Lcom/alipay/mobile/common/logging/render/BehavorRender;
    .param p1, "param1"    # Ljava/lang/Object;
    .param p2, "param2"    # Ljava/lang/Object;
    .param p3, "doAbtest"    # Z

    .line 88
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 89
    return-object v0

    .line 92
    .local v0, "params":[Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    move-object v0, v1

    .line 93
    new-instance v1, Lcom/alipay/mobile/common/logging/render/PendingRender;

    invoke-direct {v1, p0, v0, p3}, Lcom/alipay/mobile/common/logging/render/PendingRender;-><init>(Lcom/alipay/mobile/common/logging/render/BaseRender;[Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public static a(Lcom/alipay/mobile/common/logging/render/PerformanceRender;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;
    .locals 4
    .param p0, "performanceRender"    # Lcom/alipay/mobile/common/logging/render/PerformanceRender;
    .param p1, "param1"    # Ljava/lang/Object;
    .param p2, "param2"    # Ljava/lang/Object;
    .param p3, "param3"    # Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    return-object v0

    .line 65
    .local v0, "params":[Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v3, 0x2

    aput-object p3, v1, v3

    move-object v0, v1

    .line 66
    new-instance v1, Lcom/alipay/mobile/common/logging/render/PendingRender;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;-><init>(Lcom/alipay/mobile/common/logging/render/BaseRender;[Ljava/lang/Object;Z)V

    return-object v1
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V
    .locals 8
    .param p0, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 275
    if-nez p0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getAbtestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    if-nez v0, :cond_2

    .line 282
    return-void

    .line 284
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getAbtestInfoGetter()Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 285
    .local v2, "getter":Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;
    move-object v2, v0

    if-nez v0, :cond_3

    .line 286
    return-void

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getExtParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "spm"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v1

    .line 290
    .local v3, "spm":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 293
    :cond_4
    new-instance v0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;-><init>(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V

    .line 294
    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;->getLogForSpmID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->setAbtestId(Ljava/lang/String;)V

    .line 296
    instance-of v0, v2, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetterV2;

    if-eqz v0, :cond_6

    .line 297
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetterV2;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetterV2;->getExtInfoForSpmID(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v1

    .line 298
    .local v4, "extTestInfo":Ljava/util/Map;
    move-object v4, v0

    if-nez v0, :cond_5

    .line 299
    return-void

    .line 301
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 304
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 305
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 306
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getExtParams()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    goto :goto_0

    .line 309
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v4    # "extTestInfo":Ljava/util/Map;
    :cond_6
    return-void

    .line 291
    :cond_7
    :goto_1
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 7
    .param p0, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 239
    if-nez p0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getAbTestInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    return-void

    .line 245
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    if-nez v0, :cond_2

    .line 246
    return-void

    .line 248
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getAbtestInfoGetter()Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 249
    .local v2, "getter":Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;
    move-object v2, v0

    if-nez v0, :cond_3

    .line 250
    return-void

    .line 252
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getSeedID()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 254
    .local v3, "spm":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 257
    :cond_4
    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;->getLogForSpmID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAbTestInfo(Ljava/lang/String;)V

    .line 259
    instance-of v0, v2, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetterV2;

    if-eqz v0, :cond_6

    .line 260
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetterV2;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetterV2;->getExtInfoForSpmID(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v1

    .line 261
    .local v4, "extTestInfo":Ljava/util/Map;
    move-object v4, v0

    if-nez v0, :cond_5

    .line 262
    return-void

    .line 264
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 267
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 268
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 269
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {p0, v5, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v4    # "extTestInfo":Ljava/util/Map;
    :cond_6
    return-void

    .line 255
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public doRender()Ljava/lang/String;
    .locals 15

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->j:Lcom/alipay/mobile/common/logging/render/BaseRender;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return-object v1

    .line 129
    :cond_0
    :try_start_0
    instance-of v2, v0, Lcom/alipay/mobile/common/logging/render/BehavorRender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "event"

    const-string v4, "LogMonitor"

    const-string v5, "LogLength"

    const/16 v6, 0x4000

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v0, v0, v7

    check-cast v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 131
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->i:Z

    if-eqz v2, :cond_1

    .line 132
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->j:Lcom/alipay/mobile/common/logging/render/BaseRender;

    check-cast v2, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    iget-object v9, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v8, v9, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8, v0, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v1

    .line 135
    .local v8, "result":Ljava/lang/String;
    move-object v8, v2

    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 137
    .local v2, "length":I
    iget-object v9, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v9, v9, v7

    check-cast v9, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getBehaviourPro()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "bizType":Ljava/lang/String;
    if-le v2, v6, :cond_2

    sget-object v6, Lcom/alipay/mobile/common/logging/render/PendingRender;->a:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->a()Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    new-instance v6, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v10, v1

    .line 140
    .local v10, "behavorLog":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v10, v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v10, v9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v5, v5, v7

    check-cast v5, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getSeedID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 143
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v10, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->j:Lcom/alipay/mobile/common/logging/render/BaseRender;

    check-cast v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-virtual {v4, v3, v10, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    .end local v2    # "length":I
    .end local v9    # "bizType":Ljava/lang/String;
    .end local v10    # "behavorLog":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_2
    return-object v8

    .line 149
    .end local v0    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .end local v8    # "result":Ljava/lang/String;
    :cond_3
    instance-of v2, v0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    if-eqz v2, :cond_6

    move-object v2, v1

    .local v2, "bizType":Ljava/lang/String;
    move-object v9, v1

    .line 152
    .local v9, "result":Ljava/lang/String;
    iget-object v10, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v11, v10, v8

    instance-of v11, v11, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const/4 v12, 0x2

    if-eqz v11, :cond_4

    .line 153
    aget-object v0, v10, v8

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    .line 154
    .end local v2    # "bizType":Ljava/lang/String;
    .local v0, "bizType":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->j:Lcom/alipay/mobile/common/logging/render/BaseRender;

    check-cast v2, Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    iget-object v10, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v11, v10, v8

    check-cast v11, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aget-object v13, v10, v7

    check-cast v13, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    aget-object v10, v10, v12

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v2, v11, v13, v10, p0}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v2

    .end local v9    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0    # "bizType":Ljava/lang/String;
    .local v2, "bizType":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    :cond_4
    aget-object v11, v10, v8

    check-cast v11, Ljava/lang/String;

    move-object v2, v11

    .line 157
    check-cast v0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    aget-object v11, v10, v8

    check-cast v11, Ljava/lang/String;

    aget-object v13, v10, v7

    check-cast v13, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    aget-object v10, v10, v12

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v0, v11, v13, v10, p0}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    .line 159
    .end local v9    # "result":Ljava/lang/String;
    .restart local v0    # "bizType":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_5

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    .line 161
    .local v8, "length":I
    move v8, v9

    if-le v9, v6, :cond_5

    sget-object v6, Lcom/alipay/mobile/common/logging/render/PendingRender;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->a()Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->b()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 162
    new-instance v6, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v9, v1

    .line 163
    .local v9, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v9, v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v5, v5, v7

    check-cast v5, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 166
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v9, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 168
    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    move-object v5, v1

    .line 169
    .local v5, "behavorRender":Lcom/alipay/mobile/common/logging/render/BehavorRender;
    invoke-virtual {v4, v3, v9, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    .end local v5    # "behavorRender":Lcom/alipay/mobile/common/logging/render/BehavorRender;
    .end local v8    # "length":I
    .end local v9    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_5
    return-object v2

    .line 209
    .end local v0    # "bizType":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    instance-of v0, v0, Lcom/alipay/mobile/common/logging/render/AntEventRender;

    if-eqz v0, :cond_9

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->k:[Ljava/lang/Object;

    aget-object v7, v2, v8

    instance-of v7, v7, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-eqz v7, :cond_8

    .line 212
    aget-object v2, v2, v8

    check-cast v2, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 213
    .local v2, "antEvent":Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;
    iget-boolean v7, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->i:Z

    if-eqz v7, :cond_7

    .line 214
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V

    .line 216
    :cond_7
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/render/PendingRender;->j:Lcom/alipay/mobile/common/logging/render/BaseRender;

    check-cast v7, Lcom/alipay/mobile/common/logging/render/AntEventRender;

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/common/logging/render/AntEventRender;->a(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)Ljava/lang/String;

    move-result-object v7

    .line 217
    move-object v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    .line 218
    .restart local v8    # "length":I
    move v8, v7

    if-le v7, v6, :cond_8

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->a()Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 219
    new-instance v6, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v7, v1

    .line 220
    .local v7, "behavorLog":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v7, v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getBizType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getEventID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 223
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v7, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 225
    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    move-object v5, v1

    .line 226
    .restart local v5    # "behavorRender":Lcom/alipay/mobile/common/logging/render/BehavorRender;
    invoke-virtual {v4, v3, v7, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/render/PendingRender;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 229
    .end local v2    # "antEvent":Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;
    .end local v5    # "behavorRender":Lcom/alipay/mobile/common/logging/render/BehavorRender;
    .end local v7    # "behavorLog":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .end local v8    # "length":I
    :cond_8
    return-object v0

    .line 233
    .end local v0    # "result":Ljava/lang/String;
    :cond_9
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "PendingRender"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method
