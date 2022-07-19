.class final Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;
.super Ljava/util/HashMap;
.source "InsideDefaultConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    const-string v0, "h5_bizServiceConfig"

    const-string/jumbo v1, "{\"deduct\":{\"appId\":\"60000157\",\"level\":\"level_low\"},\"zm-borrow\":{\"appId\":\"66666684\",\"level\":\"level_low\"},\"coupon-detail\":{\"appId\":\"66666746\",\"level\":\"level_low\"},\"ar-valentine-cn\":{\"appId\":\"66666760\",\"level\":\"level_low\"},\"ar-service\":{\"appId\":\"66666800\",\"level\":\"level_low\"},\"zm-service\":{\"appId\":\"66666808\",\"level\":\"level_low\"},\"add-card\":{\"appId\":\"66666896\",\"level\":\"level_low\"},\"shopping-address\":{\"appId\":\"20000714\",\"level\":\"level_none\"},\"credit-rent\":{\"appId\":\"68687032\",\"level\":\"level_low\"},\"rent-transition\":{\"appId\":\"68687032\",\"level\":\"level_low\"},\"invoice-title\":{\"appId\":\"68687039\",\"level\":\"level_none\"},\"zmep-freedeposit\":{\"appId\":\"68687044\",\"level\":\"level_low\"}}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v0, "webar_url_white_list"

    const-string v1, "[\"^http(s)?://.*\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "h5_shouldverifyapp"

    const-string v1, "NO"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "h5_amrUnzipSecCheck"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "h5_disableUcAR"

    const-string/jumbo v1, "yes"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v0, "ta_use_new_debug_server"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo v0, "ta_internalAPIList"

    const-string v2, "[\"getExtConfig\", \"healthKitRequest\", \"resizeNativeKeyBoardInput\", \"showBackHome\", \"rpc\", \"getClientConfig\", \"cdpFeedback\", \"getCdpSpaceInfo\", \"shouldShowAddComponent\", \"questionaireApp2HomeShow\", \"addNotifyListener\", \"closeAddComponentAction\", \"addToHomeWithComponent\", \"getSharedData\", \"setSharedData\", \"getUserInfo\", \"makePhoneCall\",\"disablePageMonitor\",\"handleLoggingAction\"]"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "h5_webViewConfig"

    const-string/jumbo v2, "{\"h5_enableExternalWebView\":\"YES\",\"h5_externalWebViewUsageRule\":{},\"h5_externalWebViewSdkVersion\":{\"min\":11,\"max\":99},\"h5_externalWebView4UC\":[],\"h5_externalWebView4CPU\":2}"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "h5_logNebulaTechEnable"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "h5_logNewBlankScreenConfig"

    const-string/jumbo v1, "{\"enable\":\"YES\",\"wifiLimit\":10,\"elseNetWork\":30,\"testFilter\":6,\"appId\":\".*\",\"script\":\"try{(function(){if(location.href.indexOf(\'#\')<=0){return{\'isDSLError\':false,\'detail\':\'\'};}var isDSLError=false;if(document.getElementsByClassName(\'tiny-page\').length==0||document.getElementsByClassName(\'tiny-page\')[0].childNodes.length==0){isDSLError=true;}if(!isDSLError){isDSLError=true;var childNodes=document.getElementsByClassName(\'tiny-page\')[0].childNodes;for(var i=0;i<childNodes.length;i++){if(childNodes[i].childNodes.length>0){isDSLError=false;break;}}}return isDSLError?{\'isDSLError\':true,\'detail\':\'\'}:{\'isDSLError\':false,\'detail\':\'\'};})()}catch(err){};\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "h5_forceUc"

    const-string/jumbo v1, "{\"globalFlag\":true}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "tg_preLoadAppList"

    const-string v1, "[\"2017072607907880\",\"2017041206668232\",\"2017050407110255\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/InsideDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method
