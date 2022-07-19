.class public Lcom/alipay/android/phone/mobilecommon/cloudfix/com_alipay_android_phone_mobilecommon_cloudfix_FrameworkMetaInfo;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "com_alipay_android_phone_mobilecommon_cloudfix_FrameworkMetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/MetaInfoCfg;-><init>()V

    return-void
.end method

.method private insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "description"    # Lcom/alipay/mobile/framework/MicroDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;)V"
        }
    .end annotation

    .line 21
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 25
    .local v1, "descriptionList":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 27
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void

    .line 22
    .end local v1    # "descriptionList":Ljava/util/List;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public initDescriptionsWithMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "mDescriptionMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "valveDescription":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    const/4 v1, 0x0

    .line 38
    .local v1, "broadcastReceiverDescription":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    new-instance v2, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 39
    move-object v1, v2

    const-string v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.hotpatch.RealTimeReceiver"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 40
    const-string v2, "com.alipay.mobile.client.CONFIG_CHANGE"

    const-string v3, "com.alipay.mobile.framework.USERLEAVEHINT"

    const-string v4, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 45
    const-string v2, "com-alipay-android-phone-mobilecommon-cloudfix"

    invoke-direct {p0, p1, v2, v1}, Lcom/alipay/android/phone/mobilecommon/cloudfix/com_alipay_android_phone_mobilecommon_cloudfix_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 47
    new-instance v3, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 48
    move-object v0, v3

    const-string v4, "com.alipay.android.phone.mobilecommon.dynamicrelease.ExceptionFilterValve"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 49
    const-string v3, "com.alipay.mobile.framework.INITED"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 50
    const-string/jumbo v3, "register_cloudfix_exception_filter"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 51
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 52
    invoke-direct {p0, p1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/cloudfix/com_alipay_android_phone_mobilecommon_cloudfix_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 54
    return-void
.end method
