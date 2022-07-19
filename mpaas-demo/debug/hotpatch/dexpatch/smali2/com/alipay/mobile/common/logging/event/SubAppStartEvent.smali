.class public Lcom/alipay/mobile/common/logging/event/SubAppStartEvent;
.super Ljava/lang/Object;
.source "SubAppStartEvent.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/event/ClientEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10
    .param p1, "eventParam"    # Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    .line 21
    .local v0, "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 22
    .local v3, "appDes":[Ljava/lang/String;
    move-object v3, v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 23
    .local v1, "appId":Ljava/lang/String;
    const-string v4, ""

    .line 24
    .local v4, "appType":Ljava/lang/String;
    const-string v5, ""

    .line 25
    .local v5, "chInfo":Ljava/lang/String;
    const-string v6, ""

    .line 26
    .local v6, "lastAppId":Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 27
    aget-object v4, v3, v8

    .line 29
    :cond_0
    array-length v7, v3

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    .line 30
    aget-object v5, v3, v8

    .line 32
    :cond_1
    array-length v7, v3

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    .line 33
    aget-object v6, v3, v8

    .line 35
    :cond_2
    const-string v7, "appID"

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 37
    invoke-static {v7, v1}, Lcom/alipay/mobile/common/logging/CrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_3
    new-instance v7, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 41
    .local v2, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v2, v7

    const-string/jumbo v8, "startApp"

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 44
    const-string v7, "chInfo"

    invoke-virtual {v2, v7, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v7, "lastAppId"

    invoke-virtual {v2, v7, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "appId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " chInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " lastAppId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SubAppStartEvent"

    invoke-interface {v7, v9, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v7

    const-string v8, "event"

    invoke-interface {v7, v8, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 56
    return-void
.end method
