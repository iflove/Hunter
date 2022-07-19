.class Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;
.super Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;
.source "APMInnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "APMStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;
    .param p2, "x1"    # Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;)V

    return-void
.end method


# virtual methods
.method public obtainExtraUsages(J)Ljava/util/List;
    .locals 4
    .param p1, "deltaElasped"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "APMInnerService"

    const-string/jumbo v2, "obtainExtraUsages"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$APMStub;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    .line 46
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/alipay/tianyan/mobilesdk/CyclicalReportDispatcher;->onCyclicalReport(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 48
    .local v2, "bundles":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "extras":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 55
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 58
    :cond_1
    return-object v0

    .line 49
    .end local v0    # "extras":Ljava/util/List;
    :cond_2
    :goto_1
    return-object v1
.end method
