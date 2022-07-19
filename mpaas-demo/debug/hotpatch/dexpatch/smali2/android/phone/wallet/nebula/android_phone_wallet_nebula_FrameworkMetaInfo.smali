.class public Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;
.super Lcom/alipay/mobile/framework/MetaInfoCfg;
.source "android_phone_wallet_nebula_FrameworkMetaInfo.java"


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

    .local v0, "applicationDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    const/4 v1, 0x0

    .line 38
    .local v1, "serviceDescription":Lcom/alipay/mobile/framework/service/ServiceDescription;
    new-instance v2, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 39
    move-object v0, v2

    const-string v3, "com.alipay.mobile.nebulacore.wallet.H5Application"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 40
    const-string v2, "20000067"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 41
    const-string v2, "android-phone-wallet-nebula"

    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 43
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 44
    move-object v0, v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 45
    const-string v4, "20000095"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 46
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 48
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 49
    move-object v0, v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 50
    const-string v4, "20000096"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 51
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 53
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 54
    move-object v0, v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 55
    const-string v4, "20000097"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 56
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 58
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 59
    move-object v0, v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 60
    const-string v4, "20000098"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 61
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 63
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 64
    move-object v0, v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 65
    const-string v3, "20000099"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 66
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 68
    new-instance v3, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 69
    move-object v0, v3

    const-string v4, "com.alipay.mobile.nebulacore.wallet.H5BugMeDevApp"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 70
    const-string v3, "20001101"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 71
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 73
    new-instance v3, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 74
    move-object v0, v3

    const-string v4, "com.alipay.mobile.nebulacore.pushbiz.H5PushBizApp"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 75
    const-string v3, "20001111"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 76
    invoke-direct {p0, p1, v2, v0}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 78
    new-instance v3, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 79
    move-object v1, v3

    const-string v4, "com.alipay.mobile.nebulacore.wallet.H5ServiceImpl"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 80
    const-string v3, "com.alipay.mobile.h5container.service.H5Service"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 82
    invoke-direct {p0, p1, v2, v1}, Landroid/phone/wallet/nebula/android_phone_wallet_nebula_FrameworkMetaInfo;->insertDescription(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/framework/MicroDescription;)V

    .line 84
    return-void
.end method
