.class public Lcom/alipay/mobile/base/commonbiz/com_alipay_mobile_base_commonbiz_FrameworkMetaInfo;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "com_alipay_mobile_base_commonbiz_FrameworkMetaInfo.java"


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

    .line 38
    .local v0, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    new-instance v1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 39
    move-object v0, v1

    const-string v2, "com.alipay.mobile.mpaasadapter.SchemeServiceImpl"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 40
    const-string v1, "com.alipay.mobile.framework.service.common.SchemeService"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 42
    const-string v2, "com-alipay-mobile-base-commonbiz"

    invoke-direct {p0, p1, v2, v0}, Lcom/alipay/mobile/base/commonbiz/com_alipay_mobile_base_commonbiz_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 44
    new-instance v3, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 45
    move-object v0, v3

    const-string v4, "com.alipay.android.launcher.TaskDispatchServiceImpl"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 46
    const-string v3, "com.alipay.android.launcher.TaskDispatchService"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 47
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 48
    invoke-direct {p0, p1, v2, v0}, Lcom/alipay/mobile/base/commonbiz/com_alipay_mobile_base_commonbiz_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 50
    return-void
.end method
