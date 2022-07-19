.class public Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo.java"


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
    .locals 6
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

    .local v0, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    const/4 v1, 0x0

    .line 38
    .local v1, "valveDescription":Lcom/alipay/mobile/framework/pipeline/ValveDescription;
    new-instance v2, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 39
    move-object v0, v2

    const-string v3, "com.alipay.mobile.base.config.impl.ConfigServiceImpl"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 40
    const-string v2, "com.alipay.mobile.base.config.ConfigService"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 42
    const-string v3, "com-alipay-android-phone-mobilesdk-commonbizservice"

    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 44
    new-instance v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 45
    move-object v0, v4

    const-string v5, "com.alipay.mobile.base.config.impl.ConfigRegisterServiceImpl"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 46
    const-string v4, "com.alipay.mobile.base.config.ConfigRegisterService"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 47
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 48
    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 50
    new-instance v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 51
    move-object v0, v4

    const-string v5, "com.alipay.mobile.base.stepdetect.impl.StepDetectServiceImpl"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 52
    const-string v4, "com.alipay.mobile.framework.service.StepDetectService"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 53
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 54
    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 56
    new-instance v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 57
    move-object v0, v4

    const-string v5, "com.alipay.mobile.common.cleancache.impl.CacheCleanerServiceImpl"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 58
    const-string v4, "com.alipay.mobile.common.cleancache.CacheCleanerService"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 59
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 60
    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 62
    new-instance v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 63
    move-object v0, v4

    const-string v5, "com.alipay.mobile.base.notify.NotifyBellServiceImpl"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 64
    const-string v4, "com.alipay.mobile.framework.service.notify.NotifyBellService"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 65
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 66
    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 68
    new-instance v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 69
    move-object v0, v4

    const-string v5, "com.alipay.mobile.base.textsize.TextSizeServiceImpl"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 70
    const-string v4, "com.alipay.mobile.framework.service.textsize.TextSizeService"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 71
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 72
    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 74
    new-instance v2, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 75
    move-object v1, v2

    const-string v4, "com.alipay.mobile.base.config.impl.ConfigServiceValve"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 76
    const-string v2, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 77
    const-string v2, "ConfigServiceValve"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 79
    invoke-direct {p0, p1, v3, v1}, Lcom/alipay/android/phone/mobilesdk/commonbizservice/com_alipay_android_phone_mobilesdk_commonbizservice_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 81
    return-void
.end method
