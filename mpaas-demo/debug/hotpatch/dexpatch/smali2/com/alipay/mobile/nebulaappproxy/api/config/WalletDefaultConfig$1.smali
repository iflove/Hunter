.class final Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;
.super Ljava/util/HashMap;
.source "WalletDefaultConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig;
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
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    const-string v0, "h5_preRenderMax"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "h5_dsRules"

    const-string v1, "[{\"https://a.alipayobjects.com/u/h5/js/201507/5I3Q4qyENx.js\": [{\"publicId\": \".*\"}],\"https://a.alipayobjects.com/u/h5/js/201506/5F34WsaYn7.js\": [{\"publicId\": \".*\"}],\"https://t.alipayobjects.com/images/rmsweb/T1WrJgXfXdXXXXXXXX.js\": [{\"appId\": \".*\"},{\"publicId\": \".*\"}],\"https://t.alipayobjects.com/images/rmsweb/T1WApgXi0bXXXXXXXX.js\": [{\"appId\": \".*\"\n},{\"publicId\": \".*\"}]}]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "h5_ssoLoginNeedClearState"

    const-string v1, "[\"laiwangDomains\",\"alibabaDomains\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "h5_SafePayUrls"

    const-string/jumbo v1, "{\"mapiPayUrls\":[\"https://wappaygw.alipay.com/home/exterfaceAssign.htm\",\"https://mclient.alipay.com/home/exterfaceAssign.htm\"],\"taobaoBatchPayUrls\":[\"https://maliprod.alipay.com/batch_payment.do\",\"https://mali.alipay.com/batch_payment.do\"],\"taobaoPayUrls\":[\"https://maliprod.alipay.com/w/trade_pay.do\",\"https://mali.alipay.com/w/trade_pay.do\"],\"thirdPayUrls\":[\"https://wappaygw.alipay.com/service/rest.htm\",\"https://110.75.143.65/service/rest.htm\",\"https://110.75.147.65/service/rest.htm\"]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "h5_entranceWhiteListSwitch"

    const-string/jumbo v1, "{\"mainSwitch\":\"YES\",\"jsApiSwitch\":\"NO\",\"inputWhiteListSwitch\":\"NO\",\"ssoLoginSwitch\":\"YES\",\"tbssoLoginTimeout\":\"2700000\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "h5_ssoLogin"

    const-string/jumbo v1, "{\"taobaoDomains\":\"((.*\\\\.)?(taobao|tmall|etao|hitao)\\\\.com)|((.*\\\\.)?tmall\\\\.hk)\",\"laiwangDomains\":\"((.*\\\\.)?laiwang\\\\.com)\",\"weiboDomains\":\"((.*\\\\.)?weibo\\\\.cn)\",\"alibabaDomains\":\"((.*\\\\.)?1688\\\\.com)\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "h5_AliWhiteList"

    const-string v1, "[\"(.*\\\\.)?(taobao|tmall|juhuasuan|xiami|taohua|amap|hitao|taobaocdn|alipay|etao|alibaba|aliyun|alimama|alicdn|tbcdn|laiwang|yunos|alipay|alipayobjects|alipay-inc|1688|alitrip|mybank)\\\\.(com|cn|net|hk)$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "h5_AlipayWhiteList"

    const-string v1, "[\"^https\\\\:\\\\/\\\\/.*[.]alipay[.](com|net)$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "h5_SeriousAliWhiteList"

    const-string v1, "[\"^http(s)?\\\\:\\\\/\\\\/.*[.](taobao|alitrip|1688)[.]com$\",\"^https\\\\:\\\\/\\\\/.*[.](antfortune)[.]com$\",\"^https\\\\:\\\\/\\\\/.*[.]tmall[.](com|hk)$\",\"^https\\\\:\\\\/\\\\/os[.]alipayobjects[.]com$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "h5_PartnerWhiteList"

    const-string v1, "[\"(.*\\\\.)?(weibo)\\\\.(com|cn|net|hk)$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "h5_rpcWhiteList"

    const-string v1, "[\"^https\\\\:\\\\/\\\\/.*[.](alipay|antfortune|tmall)[.]com$\",\"^https\\\\:\\\\/\\\\/.*[.]alipay[.]net$\",\"^https\\\\:\\\\/\\\\/os[.]alipayobjects[.]com$\",\"^https\\\\:\\\\/\\\\/.*[.]taobao[.]com$\",\"^https\\\\:\\\\/\\\\/.*[.]mybank[.]cn$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "h5_InputBoxWhitelist"

    const-string v1, "[\"^file:///\",\"^https?://([\\\\w\\\\-]+\\\\.)+(alipay|taobao|tmall|etao|hitao|laiwang|amap)\\\\.(com|net|hk)/\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "h5_ApkWhiteList"

    const-string v1, "(.*\\.)?(sm|youku|uc|25pp|tbcache|cifoo|aliapp|alicdn|aliyuncs|alipaydev|alipayobjects|taobaocdn|xiami)\\.(com|cn)$"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "h5_shareChannels"

    const-string/jumbo v1, "{\"channels\":[{\"name\":\"ALPContact\"},{\"name\":\"ALPTimeLine\"},{\"name\":\"Weibo\"},{\"name\":\"LaiwangContacts\"},{\"name\":\"Browser\"}]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "h5_competitiveList"

    const-string/jumbo v1, "{\"competitiveLinkList\":[],\"competitiveDownloadlist\":[],\"schemeBlacklist\":[],\"schemeWhiteList\":[],\"aliWhiteList\":[]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "h5_webViewConfig"

    const-string/jumbo v1, "{\"h5_enableExternalWebView\":\"YES\",\"h5_externalWebViewUsageRule\":{\"2014060400006303\":\"SYSTEM_BUILD_IN\",\"2014010200002514\":\"SYSTEM_BUILD_IN\",\"2014070700006871\":\"SYSTEM_BUILD_IN\",\"bizType_laifeng\":\"SYSTEM_BUILD_IN\"},\"h5_externalWebViewSdkVersion\":{\"min\":11,\"max\":28},\"h5_externalWebView4UC\":[],\"h5_externalWebView4CPU\":2}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "h5_interceptAuthConfig"

    const-string/jumbo v1, "{\"canInterceptAuth\":\"YES\",\"shouldUseNewRPC\":\"NO\", \"interceptAuthBlackList\":[],\"interceptAuthWhiteList\":\"\", \"authScopeList\":\"auth_userinfo|auth_base\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "h5_EntryBizScenarioWhiteList"

    const-string v1, "[\"HiChat\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "h5_ppConfig"

    const-string/jumbo v1, "{\"jumpToPP\":\"NO\",\"h5_ppQueryUrl\":\"http://patriot.cs.pp.cn/api/resource.app.detect\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "h5_share2ALPTimeLineSwitch"

    const-string/jumbo v1, "{\"defaultShareDomain\":[\"(.*\\\\.)?(alipay|alipayobject|alipay-inc)\\\\.(com|cn|net|hk)$\"],\"whiteList\":[\"(.*\\\\.)?(alipay|alipayobject|alipay-inc)\\\\.(com|cn|net|hk)$\"]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "h5_forceUc"

    const-string/jumbo v1, "{\"model\":[\"HUAWEI TAG-AL00\"]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "h5_aliAutoLoginSwitch"

    const-string/jumbo v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "h5_stripLandingEnable"

    const-string v1, "NO"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "h5_deleteOldAuth"

    const-string v2, "YES"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "h5_ucKernelConfig"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "h5_ucNetConfig"

    const-string/jumbo v3, "{\"useAlipayNet\":\"YES\",\"useAlipayNetWhitelist\":\"\"}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "h5_androidSpdyV2"

    const-string/jumbo v3, "{\"useSpdy\":\"YES\", \"whiteList\":\"^(.*\\\\.)?(alipay)\\\\.com$\", \"blackList\":[\"2014021200003129.h5app.alipay.com\",\"edu.open.alipay.com\",\"mobilegw.alipay.com\"]}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "h5_ucApolloConfig"

    const-string/jumbo v3, "{\"useApollo\":\"YES\", \"downloadUrl\":\"https://gw.alicdn.com/bao/uploaded/LB1KgvQQpXXXXauXVXXXXXXXXXX.zip\"}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "h5_cdnWebPConfig"

    const-string/jumbo v3, "{\"enable\": \"YES\",\"cdnDomains\": [ \"img.alicdn.com\", \"gw.alicdn.com\"],\"imageTypes\":[\"jpg\",\"png\",\"jpeg\"]}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "h5_networkParams"

    const-string/jumbo v3, "{\"acceptlanguageheader\":{\"zh-Hans\":\"zh-CN,en-US;q=0.8\", \"zh-Hant\":\"zh-TW,en-US;q=0.8\", \"zh-HK\":\"zh-HK,en-US;q=0.8\", \"en\":\"en-US\", \"es\":\"\", \"ko\":\"ko-KR,en-US;q=0.8\", \"it\":\"\", \"ja\":\"\", \"pt\":\"\", \"ru\":\"\", \"de\":\"\", \"fr\":\"\"}}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "h5_socketTimeoutConfig"

    const-string/jumbo v3, "{\"enableConfig\":\"NO\", \"hostList\":[], \"2g\":30000, \"34g\":20000, \"wifi\":15000}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "h5_478Config"

    const-string/jumbo v3, "{\"enableConfig\":\"NO\"}"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "h5_ucVideoHWACCfg"

    const-string v3, "[]"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "h5_SWOnlyEvent"

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "h5_ifRedirectDNS4UC"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "h5_ucDisableACCanvas"

    const-string v1, "[\"Xiaomi#Redmi Note 2#2\", \"Xiaomi#Redmi Note 3#21\", \"Meizu#MX5#22\", \"OPPO#A51#22\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "h5_disableTabClickConfig"

    const-string/jumbo v1, "{\"isOn\":\"NO\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v0, "showSessionTabErrorDialog"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "h5_androidEncodeHeader"

    const-string v1, "[\"location\", \"RedirectUrl\",\"referer\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "h5_ShareUrlConfig"

    const-string v1, "NEW"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "h5_preRenderConfig"

    const-string/jumbo v1, "{\"shouldUsePreRender\":\"NO\", \"prerenderPage\":\"index.html\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "h5_addFragmentConfig"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "h5_pushWindowSpace"

    const-string/jumbo v1, "{\"spaceTime\":500,\"enable\":true}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "h5_autologinbind"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "h5_disableHWACByUCStyle"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "h5_ucCommonSetupConfig"

    const-string/jumbo v1, "{\"OPTION_VIDEO_HARDWARE_ACCELERATED\":\"false\",\"OPTION_WEBVIEW_POLICY\":1,\"OPTION_SETUP_THREAD_PRIORITY\":-20}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "h5LiteProcessKillDelay"

    const-string v1, "2000"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "h5LiteProcessKillPolicy"

    const-string/jumbo v1, "nebula"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "h5_enableFullscreenList"

    const-string v1, "[\".*10661911.com.*\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "h5_LocationDialogPermitWhiteList"

    const-string v1, "[\"^http(s)?\\\\:\\\\/\\\\/(.*[.]+)?(alipay|taobao|alipayobjects|tmall|taopiaopiao|antfortune|1688|alicdn|amap|cainiao|xiami|alibaba|aliyun|alitrip|koubei|weibo|etao|laiwang|taobaocdn|fliggy|yunos|alimama|taohua|antsdaq|juhuasuan|alipay-inc|ssdata)[.]com$\",\"^http(s)?\\\\:\\\\/\\\\/(.*[.]+)?(xiami|tmall|alibaba|zhimaxy|taobao|alipay)[.]net$\",\"^http(s)?\\\\:\\\\/\\\\/(.*[.]+)?(mybank|weibo|etao|taobao|tbcdn)[.]cn$\",\"^http(s)?\\\\:\\\\/\\\\/(.*[.]+)?(alipay|tmall|fliggy|alitrip)[.]hk$\",\"^http(s)?\\\\:\\\\/\\\\/(.*[.]+)?(zmxy)[.]com[.]cn$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "h5_stripLandingConfig"

    const-string/jumbo v1, "{\"urlPrefix\":[\"https://d.alipay.com/?\",\"https://ds.alipay.com/?\",\"https://render.alipay.com/p/s/i?\",\"https://render.alipay.com/p/s/i/?\",\"https://render.alipay.com/p/s/i/index?\"],\"scheme\":[\"alipays\"],\"startAppNormal\":true,\"startApp302\":false,\"pushWindowNormal\":true,\"pushWindow302\":false,\"locationNormal\":true,\"location302\":false}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "h5_open_multi_process"

    const-string v1, "[\"all\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "h5_nativeInput4Android"

    const-string/jumbo v1, "{\"switch\":\"YES\",\"blackList\":[]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "h5_disableLongClick4AndroidInTiny"

    const-string/jumbo v1, "{\"disable\":\"YES\",\"whiteList\":[]}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "h5_thirdDisclaimer_rules"

    const-string/jumbo v1, "{\"whiteList\":[],\"blackList\":[],\"mode\":\"default\"}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "h5_newJsapiPermissionConfig"

    const-string/jumbo v1, "{\"canRpc\":false,\"canIntercept\":false,\"syncrpctimeout\":5000}"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "h5_newJsapiClearCache"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "h5_newJsapiDomainWhiteList"

    const-string v1, "[\"^http(s)?://(.*[.]+)?(alipay|alipay-eco|taobao|alipayobjects|tmall|taopiaopiao|antfortune|1688|alicdn|amap|cainiao|xiami|alibaba|aliyun|alitrip|koubei|weibo|etao|laiwang|taobaocdn|fliggy|yunos|alimama|taohua|antsdaq|juhuasuan|alipay-inc|ssdata|cainiao-inc)[.]com$\",\"^http(s)?://(.*[.]+)?(xiami|tmall|alibaba|zhimaxy|taobao|alipay)[.]net$\",\"^http(s)?://(.*[.]+)?(mybank|weibo|etao|taobao|tbcdn)[.]cn$\",\"^http(s)?://(.*[.]+)?(alipay|tmall|fliggy|alitrip)[.]hk$\",\"^http(s)?://(.*[.]+)?(zmxy)[.]com[.]cn$\"]"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/WalletDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
