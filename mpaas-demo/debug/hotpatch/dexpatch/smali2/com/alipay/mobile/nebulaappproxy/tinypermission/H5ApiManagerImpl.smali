.class public Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;
.super Ljava/lang/Object;
.source "H5ApiManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;


# static fields
.field private static a:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 81
    const-string v0, "H5TinyApiManagerImpl"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->d:Ljava/util/Map;

    .line 94
    const-string/jumbo v1, "navigateTo"

    const-string/jumbo v2, "navigateBack"

    const-string/jumbo v3, "switchTab"

    const-string/jumbo v4, "reLaunch"

    const-string/jumbo v5, "redirectTo"

    const-string v6, "getCurrentLocation"

    const-string v7, "getLocation"

    const-string/jumbo v8, "webViewShare"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->e:[Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "postWebViewMessage"

    const-string v2, "getEmbedWebViewEnv"

    const-string v3, "chooseImage"

    const-string v4, "imageViewer"

    const-string v5, "getNetworkType"

    const-string v6, "getCurrentLocation"

    const-string v7, "getLocation"

    const-string/jumbo v8, "openLocation"

    const-string v9, "hideLoading"

    const-string/jumbo v10, "showLoading"

    const-string v11, "alert"

    const-string/jumbo v12, "tradePay"

    const-string/jumbo v13, "setTinyLocalStorage"

    const-string v14, "getTinyLocalStorage"

    const-string/jumbo v15, "removeTinyLocalStorage"

    const-string v16, "clearTinyLocalStorage"

    const-string v17, "getTinyLocalStorageInfo"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->f:[Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "showNetWorkCheckActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "showUCFailDialog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "setKeyboardType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "monitorH5Performance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string v1, "getStartupParams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string v1, "inputBlurEvent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string v1, "hideCustomKeyBoard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string v1, "hideCustomInputMethod4NativeInput"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "updateNativeKeyBoardInput"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "setInputTextChanged"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "tinyAppStandardLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    const-string/jumbo v1, "tinyDebugConsole"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->doSomeInitJob()V

    .line 161
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    .line 163
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    .line 164
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 2
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1067
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1069
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5CoreNode;Ljava/lang/String;)Z
    .locals 2
    .param p0, "target"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .param p1, "apiName"    # Ljava/lang/String;

    .line 1048
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1051
    :cond_0
    const/4 v0, 0x0

    .line 1052
    .local v0, "exist":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 1053
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v1

    .line 1054
    .local v1, "pluginManager":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object p0

    .line 1055
    invoke-interface {v1, p1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->canHandle(Ljava/lang/String;)Z

    move-result v0

    .line 1056
    .end local v1    # "pluginManager":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    goto :goto_0

    .line 1057
    :cond_1
    return v0

    .line 1049
    .end local v0    # "exist":Z
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1079
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1080
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    .line 1081
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1082
    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isInner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    sget-object p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "shouldInterceptWebViewJsapi, inner tinyApp: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return v2

    .line 1090
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->f:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 1091
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1092
    sget-object p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "shouldInterceptWebViewJsapi, white JSAPI: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    return v2

    .line 1090
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1098
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getWebviewJsapiWhitelist()Ljava/util/List;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_5

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1101
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1103
    sget-object p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "shouldInterceptWebViewJsapi...appId in white list:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return v2

    .line 1106
    :cond_4
    goto :goto_1

    .line 1110
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_6

    .line 1112
    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->shouldInterceptWebviewOpenAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1113
    sget-object p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "shouldInterceptWebViewJsapi, web-view white list: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", webview id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return v2

    .line 1119
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object p3

    .line 1120
    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 1121
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1123
    :try_start_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1124
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v4

    .line 1125
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getWebViewJSAPIDomainWhiteList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 1126
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1127
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_9

    .line 1128
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1129
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1130
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1131
    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1132
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1133
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "shouldInterceptWebViewJsapi, match domain: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    return v2

    .line 1127
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1141
    :cond_9
    goto :goto_4

    .line 1139
    :catch_0
    move-exception v3

    .line 1140
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1145
    :cond_a
    :goto_4
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1146
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 1147
    invoke-static {p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1148
    :cond_b
    sget-object p2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo p3, "shouldInterceptWebViewJsapi, nebula permission check"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1150
    const-class p2, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    .line 1151
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;

    .line 1153
    if-eqz p2, :cond_d

    .line 1154
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object p3

    .line 1155
    if-eqz p3, :cond_d

    .line 1156
    nop

    .line 1157
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object p3

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 1156
    invoke-interface {p2, v0, p1, p3, p0}, Lcom/alipay/mobile/nebula/provider/H5NewJSApiPermissionProvider;->hasPermissionByUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)I

    move-result p0

    .line 1158
    if-ne p0, v1, :cond_c

    .line 1159
    return v2

    .line 1160
    :cond_c
    const/4 p2, 0x2

    if-ne p0, p2, :cond_d

    .line 1162
    const-class p0, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 1163
    if-eqz p0, :cond_d

    invoke-interface {p0, p1, v0}, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;->hasDomainPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1164
    return v2

    .line 1169
    :cond_d
    goto :goto_5

    .line 1171
    :cond_e
    const-class p0, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 1172
    if-eqz p0, :cond_f

    invoke-interface {p0, p1, v0}, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;->hasDomainPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1173
    return v2

    .line 1179
    :cond_f
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getSupportedWebviewApiList()Ljava/util/List;

    move-result-object p0

    .line 1180
    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1181
    sget-object p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "shouldInterceptWebViewJsapi...webview api list is allowed:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    return v2

    .line 1184
    :cond_10
    sget-object p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "shouldInterceptWebViewJsapi...not allowed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    return v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 168
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    const-string v2, "h5_not_use_tiny_permission"

    if-eqz v0, :cond_0

    .line 169
    nop

    .line 170
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    return v0

    .line 172
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 176
    :cond_1
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v3, 0x0

    move-object v4, v3

    .line 178
    .local v4, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v4, v0

    if-eqz v0, :cond_3

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "result":Z
    :try_start_0
    const-class v5, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 182
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 183
    .local v3, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 184
    invoke-interface {v3, v2, v1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 185
    const/4 v0, 0x1

    .line 189
    .end local v3    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_2
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v1

    .line 188
    .local v1, "throwable":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return v0

    .line 197
    .end local v0    # "result":Z
    .end local v4    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_3
    return v1
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 446
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getEventSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromWork"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 447
    return v1

    .line 450
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 451
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 452
    return v1

    .line 455
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "url":Ljava/lang/String;
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "onlineHost"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "onlineHost":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 462
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getRenderJsApiBlacklist()Ljava/util/Set;

    move-result-object v5

    .line 464
    .local v2, "apiBlackList":Ljava/util/Set;
    move-object v2, v5

    if-eqz v5, :cond_4

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 458
    .end local v2    # "apiBlackList":Ljava/util/Set;
    :cond_5
    :goto_1
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string v5, "hasJsApiPermissionCallFromRender...url is not match."

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return v1
.end method

.method private static b()Z
    .locals 5

    .line 1241
    const/4 v0, 0x0

    .line 1242
    .local v0, "h5_newJsapiPermissionConfigStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1243
    .local v1, "canIntercept":Z
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 1244
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v2

    if-eqz v2, :cond_0

    .line 1245
    const-string v2, "h5_newJsapiPermissionConfig"

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1248
    .local v3, "h5_newJsapiPermissionConfigObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1249
    const-string v2, "canIntercept"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 1251
    :cond_1
    return v1
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1208
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1209
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MINI-PROGRAM-MINI-WEB-VIEW-TAG"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;

    .line 262
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 263
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x0

    .line 264
    .local v1, "result":Z
    if-eqz v0, :cond_5

    .line 265
    const-string v2, "h5_useNewTinyappPermission"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 267
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    const-string v2, "all"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "all":Ljava/lang/String;
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    return v5

    .line 274
    :cond_1
    const-string/jumbo v5, "yes"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    const/4 v3, 0x1

    return v3

    .line 277
    :cond_2
    const-string v5, "appIds"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 278
    .local v3, "appIds":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 279
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 280
    const/4 v1, 0x1

    goto :goto_1

    .line 282
    :cond_3
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "taConfig appid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not match h5_useNewTinyappPermission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v2    # "all":Ljava/lang/String;
    .end local v3    # "appIds":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    :goto_0
    return v5

    .line 286
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    :goto_1
    return v1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 1195
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getWebViewNBAppIdList()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 1196
    .local v1, "nbAppIdSet":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .line 1215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1217
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, "urlDomain":Ljava/lang/String;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 1219
    .local v3, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ta_embedwebview_white_domain_list_nb"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v4, v2

    .line 1221
    .local v4, "domainList":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1222
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    move-object v6, v2

    .local v5, "size":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 1223
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1224
    .local v2, "domain":Ljava/lang/String;
    move-object v2, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1225
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1226
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1227
    .local v6, "matcher":Ljava/util/regex/Matcher;
    move-object v6, v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 1228
    const/4 v7, 0x1

    return v7

    .line 1222
    .end local v2    # "domain":Ljava/lang/String;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1235
    .end local v0    # "urlDomain":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v4    # "domainList":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "size":I
    :cond_2
    goto :goto_2

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1237
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public changePermissionByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "opened"    # Z

    .line 1294
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->changePermissionByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1295
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->clear()V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    return-void
.end method

.method public doPreloadJob(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    return-void

    .line 1008
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;Ljava/lang/String;)V

    const-string v1, "IO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1030
    return-void
.end method

.method public getAllPermissions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->getAllPermissions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCreatedWorkerMaxCount()I
    .locals 1

    .line 999
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getMaxWorkerCount()I

    move-result v0

    return v0
.end method

.method public getAppxSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1035
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getAppxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1036
    :catchall_0
    move-exception v0

    .line 1037
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebugAppInfoRpcName()Ljava/lang/String;
    .locals 1

    .line 943
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isUseNewDebugServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    const-string v0, "alipay.openservice.pkgcore.developpackage.download"

    return-object v0

    .line 946
    :cond_0
    const-string v0, "com.alipay.hpmweb.app"

    return-object v0
.end method

.method public getDebugAuthRpcName()Ljava/lang/String;
    .locals 1

    .line 934
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isUseNewDebugServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "alipay.openservice.pkgcore.packagepermission.check"

    return-object v0

    .line 937
    :cond_0
    const-string v0, "com.alipay.hpmweb.validMember"

    return-object v0
.end method

.method public getLoadingViewFromTiny(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 9
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 818
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 820
    :cond_0
    move-object v1, v0

    .line 822
    .local v1, "tmpStartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    move-object v1, p1

    iget v2, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    if-nez v2, :cond_3

    :cond_1
    iget v2, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    iget-boolean v2, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableUpDownAnimWithoutAppinfo:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 855
    :cond_2
    return-object v0

    .line 826
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 827
    .local v2, "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 828
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    move-object v5, v0

    .line 829
    .local v5, "provider":Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;
    move-object v5, v4

    if-eqz v4, :cond_5

    .line 830
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;->customLoadingViewClassName()Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v0, "customLoadingViewClassName":Ljava/lang/String;
    move-object v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 833
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 834
    .local v4, "clazz":Ljava/lang/Class;
    const-class v6, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 835
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 836
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v3, v8

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 840
    .end local v4    # "clazz":Ljava/lang/Class;
    :cond_4
    goto :goto_1

    .line 838
    :catchall_0
    move-exception v3

    .line 839
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    .end local v0    # "customLoadingViewClassName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadingView : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    if-nez v2, :cond_6

    .line 845
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    .line 846
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 848
    .end local v5    # "provider":Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;
    :cond_6
    goto :goto_2

    .line 849
    :cond_7
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "new TinyAppLoadingView"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    .line 851
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 853
    :goto_2
    return-object v2
.end method

.method public getTransferToTinySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1043
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getH5TransferTinyArray()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewTag()Ljava/lang/String;
    .locals 1

    .line 733
    const-string v0, "MINI-PROGRAM-WEB-VIEW-TAG"

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 5

    .line 309
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasPermission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {p4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object p4

    .line 312
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    move-object p1, p4

    .line 317
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 318
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    return v1

    .line 323
    :cond_1
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_3

    .line 325
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isSupportedWebview()Z

    move-result p4

    .line 326
    if-nez p4, :cond_2

    .line 328
    sget-object p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string p2, "hasPermission...webview is not supported!"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v0

    .line 332
    :cond_2
    const-string/jumbo p4, "validDomain"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 334
    const-string p3, "Webview_Config_allowedDomain"

    .line 338
    :cond_3
    const-class p4, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    .line 339
    if-eqz p4, :cond_4

    .line 340
    invoke-interface {p4, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isInner(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 341
    return v1

    .line 346
    :cond_4
    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 347
    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p4

    .line 349
    const/4 v2, 0x0

    invoke-static {p4, p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const-string/jumbo v3, "yes"

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 352
    invoke-static {v2, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 353
    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 354
    return v1

    .line 356
    :cond_5
    goto :goto_0

    .line 358
    :cond_6
    invoke-static {p4, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 359
    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 360
    return v1

    .line 366
    :cond_7
    :goto_0
    const-string p4, "Enable_Proxy"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 367
    const-string p2, "YES"

    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->getApiLevelStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 370
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "JSAPI_SP_Config"

    if-nez p4, :cond_f

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_f

    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    if-eqz p4, :cond_f

    .line 372
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_f

    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    .line 373
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {p4, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_f

    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    .line 374
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {p4, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_9

    goto/16 :goto_3

    .line 384
    :cond_9
    const-string p4, "Valid_SubResMimeList"

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    .line 385
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_b

    const-string p4, "EVENT_List"

    .line 386
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    const-string p4, "HttpLink_SubResMimeList"

    .line 387
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    const-string p4, "Webview_Config"

    .line 388
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_1

    .line 407
    :cond_a
    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 389
    :cond_b
    :goto_1
    iget-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 390
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_e

    .line 391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 392
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    .line 393
    invoke-virtual {p4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 394
    if-eqz p4, :cond_c

    invoke-virtual {p4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 395
    return v1

    .line 397
    :cond_c
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 398
    if-eqz p4, :cond_d

    invoke-virtual {p4}, Ljava/util/regex/Matcher;->find()Z

    move-result p4

    if-eqz p4, :cond_d

    .line 399
    return v1

    .line 402
    :cond_d
    goto :goto_2

    .line 404
    :cond_e
    return v0

    .line 377
    :cond_f
    :goto_3
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_10

    .line 378
    return v1

    .line 381
    :cond_10
    return v0

    .line 409
    :catch_0
    move-exception p1

    .line 410
    sget-object p2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    return v1
.end method

.method public hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 422
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 424
    .local v2, "tag":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 427
    :cond_0
    move-object p1, v2

    .line 430
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->isHasPermissionFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    const/4 v0, 0x1

    return v0

    .line 433
    :cond_2
    return v1
.end method

.method public hasPermissionOnIframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 664
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasPermissionOnIframe...url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    return v0
.end method

.method public hasPermissionOnScheme(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 678
    invoke-static {p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 679
    .local v2, "appIdTag":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 681
    return v3

    .line 684
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    return v3

    .line 691
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isCloseWebviewSchema()Z

    move-result v4

    move v5, v0

    .line 692
    .local v5, "isCloseWebviewSchema":Z
    if-nez v4, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "alipays://platformapi/startapp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "alipays://platformapi/startApp"

    .line 693
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "alipay://platformapi/startapp"

    .line 694
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "alipay://platformapi/startApp"

    .line 695
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 696
    :cond_2
    const/4 v4, 0x0

    .line 697
    .local v4, "allowed":Z
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v7, v1

    .line 698
    .local v7, "uri":Landroid/net/Uri;
    move-object v7, v6

    const-string v8, "appId"

    invoke-virtual {v6, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "targetAppId":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    if-eqz v8, :cond_5

    .line 700
    const-string/jumbo v8, "startApp"

    const-string v9, "JSAPI_List"

    invoke-virtual {p0, v2, v8, v9, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v8

    .line 701
    if-nez v8, :cond_3

    .line 702
    return v0

    .line 704
    :cond_3
    const-string v8, "JSAPI_SP_Config_startApp_appId"

    invoke-virtual {p0, v2, v6, v8, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v8

    .line 705
    move v4, v8

    if-nez v8, :cond_4

    .line 706
    return v0

    .line 708
    :cond_4
    const-string/jumbo v8, "url"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    .line 709
    .local v9, "openUrl":Ljava/lang/String;
    move-object v9, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 710
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 711
    .local v1, "openUri":Landroid/net/Uri;
    move-object v1, v8

    if-eqz v8, :cond_5

    .line 712
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    const-string v10, "JSAPI_SP_Config_startApp_url"

    invoke-virtual {p0, v2, v8, v10, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v0

    .line 717
    .end local v1    # "openUri":Landroid/net/Uri;
    .end local v9    # "openUrl":Ljava/lang/String;
    :cond_5
    return v4

    .line 721
    .end local v4    # "allowed":Z
    .end local v5    # "isCloseWebviewSchema":Z
    .end local v6    # "targetAppId":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_6
    goto :goto_0

    .line 719
    :catchall_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 724
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string v3, "hasPermissionOnScheme...non-http url, no permission"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return v0

    .line 728
    :cond_7
    return v3
.end method

.method public hasWebARCameraPermission(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;)V
    .locals 3
    .param p1, "hostURL"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "h5PermissionCallBack"    # Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;

    .line 914
    if-nez p3, :cond_0

    return-void

    .line 917
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 918
    .local v1, "tag":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;->allow()V

    .line 920
    return-void

    .line 923
    :cond_1
    const/4 v0, 0x0

    .line 924
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 925
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 927
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-virtual {v2, v1, v0, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->checkWebARCameraPermission(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;)V

    .line 930
    return-void
.end method

.method public hasWebARPermission(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p1, "jsApiName"    # Ljava/lang/String;
    .param p2, "hostURL"    # Ljava/lang/String;
    .param p3, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 898
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasWebARPermission..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    const/4 v0, 0x1

    return v0

    .line 902
    :cond_0
    const-string v1, "JSAPI_List"

    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    return v0
.end method

.method public httpRequestShouldUseSpdy(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "url"    # Ljava/lang/String;

    .line 745
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 747
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 749
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->shouldHttpsUseSpdy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string v2, "httpRequestShouldUseSpdy...switch is open"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return v1

    .line 756
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getHttpsUseSpdyBlacklist()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 757
    .local v2, "blacklist":Ljava/util/List;
    move-object v2, v0

    const/4 v3, 0x0

    const-string v4, "https"

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 762
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 763
    invoke-static {v5, p3}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 765
    return v1

    .line 767
    :cond_4
    goto :goto_0

    .line 768
    :cond_5
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    return v3

    .line 759
    :cond_7
    :goto_1
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    return v3
.end method

.method public isDomainInBackList(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 5
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "content"    # Ljava/lang/String;

    .line 1314
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1317
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v1

    .line 1318
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->DEVELOP:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne v1, v2, :cond_1

    .line 1319
    return v0

    .line 1321
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getHttpDomainBlacklist()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1322
    .local v3, "blackList":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1325
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1326
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1327
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1328
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v2, v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1329
    const/4 v0, 0x1

    return v0

    .line 1331
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    goto :goto_0

    .line 1332
    :cond_4
    return v0

    .line 1323
    :cond_5
    :goto_1
    return v0

    .line 1315
    .end local v3    # "blackList":Ljava/util/List;
    :cond_6
    :goto_2
    return v0
.end method

.method public isSetAppxMinVersionValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 957
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 959
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getSetMinAppxBlacklist()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    .line 962
    .local v2, "blacklist":Ljava/util/Set;
    move-object v2, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 964
    :cond_1
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 965
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string v3, "isSetAppxMinVersionValid...blacklist all"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    return v1

    .line 969
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    return v1

    .line 962
    :cond_4
    :goto_0
    return v3
.end method

.method public isUCFailFallbackAppSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 989
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getUcFailFallbackAppBlacklist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 990
    .local v1, "fallbackAppBlacklist":Ljava/util/Set;
    move-object v1, v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    const-string v0, "all"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 991
    :cond_2
    :goto_0
    return v2
.end method

.method public isUseTinyAppManagerProcess()Z
    .locals 1

    .line 952
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isUseTinyAppManagerProcess()Z

    move-result v0

    return v0
.end method

.method public isV8WorkerAvailableForApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 984
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isV8WorkerAvailableForApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isV8WorkerEnabled()Z
    .locals 1

    .line 979
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isV8WorkerEnabled()Z

    move-result v0

    return v0
.end method

.method public isWebWorkerSupported()Z
    .locals 1

    .line 974
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isUseSysWebView()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 216
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->byteToInfo(Ljava/lang/String;[B)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    move-result-object v0

    .line 217
    .local v0, "h5ApiPermissionInfo":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    const/4 v1, 0x0

    .line 218
    .local v1, "shouldUseNewPermission":Z
    const-class v2, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 219
    .local v4, "taConfigProvider":Lcom/alipay/mobile/nebula/provider/TaConfigProvider;
    move-object v4, v2

    const-string v5, "h5_api_permission_config"

    const-string/jumbo v6, "put "

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableTinyAppDynamicConfig()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    const/4 v1, 0x1

    .line 221
    const-string v2, "api_permission"

    invoke-interface {v4, p1, v2}, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;->getTinyAppConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v3

    .line 222
    .local v7, "rpcResultApiPermission":Ljava/lang/String;
    move-object v7, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 223
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v8, v3

    .line 224
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    invoke-static {p1, v8}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->jsonToInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    move-result-object v2

    move-object v9, v3

    .line 226
    .local v9, "rpcResultApiPermissionInfo":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    move-object v9, v2

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->isHasPermissionFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v10, "taConfig put rpc result memMap"

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 230
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 231
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c:Ljava/lang/String;

    .line 234
    :cond_0
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void

    .line 237
    .end local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "taConfig rpcResultApiPermissionInfo == null !!!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v9    # "rpcResultApiPermissionInfo":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    :cond_2
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "taConfig rpcResultApiPermission jsonObject == null !!!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "taConfig rpcResultApiPermission == null !!!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .line 244
    .end local v7    # "rpcResultApiPermission":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 246
    const-string v2, "H5_TINYAPP_NEWPERMISSION_FAIL"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v7, "appId"

    invoke-virtual {v2, v7, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 246
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 250
    :cond_5
    if-eqz v0, :cond_7

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->byteToInfo(Ljava/lang/String;[B)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    move-result-object v7

    invoke-interface {v2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 253
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 254
    .restart local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v2

    if-eqz v2, :cond_6

    .line 255
    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c:Ljava/lang/String;

    .line 257
    :cond_6
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_7
    return-void
.end method

.method public putJson(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->jsonToInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 205
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "h5_api_permission_config"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->c:Ljava/lang/String;

    .line 208
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "put "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public removeAllPermissionInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 1303
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->removeAllPermissionInfo(Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method public setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 3
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 860
    if-nez p1, :cond_0

    .line 861
    return-void

    .line 864
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setIfNeedUpDownAnimWithoutAppinfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 866
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 868
    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppOpenplatformApiProvider;

    .line 869
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppOpenplatformApiProvider;

    const/4 v1, 0x0

    .line 870
    .local v1, "h5TinyAppOpenplatformApiProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppOpenplatformApiProvider;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 871
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppOpenplatformApiProvider;->setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 886
    :cond_2
    return-void
.end method

.method public setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 23
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p4, "event"    # Z
    .param p5, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v0, "httpRequest"

    const-string/jumbo v5, "uploadFile"

    .line 473
    const/4 v6, 0x0

    if-eqz v2, :cond_23

    if-nez v4, :cond_0

    goto/16 :goto_a

    .line 477
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "action":Ljava/lang/String;
    const/4 v8, 0x0

    .line 480
    .local v8, "webviewAppId":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v11, v10

    .line 481
    .local v11, "tag":Ljava/lang/String;
    move-object v11, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 483
    move-object v9, v11

    .line 486
    .end local p2    # "appId":Ljava/lang/String;
    .local v9, "appId":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "appId"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 481
    .end local v9    # "appId":Ljava/lang/String;
    .restart local p2    # "appId":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p2

    .line 490
    .end local p2    # "appId":Ljava/lang/String;
    .restart local v9    # "appId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v12, "parentAppId"

    const/4 v13, 0x1

    if-eqz p4, :cond_2

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v14

    const-string v15, "EVENT_List"

    invoke-virtual {v1, v9, v7, v15, v14}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v14

    .local v14, "hasPermission":Z
    goto :goto_2

    .line 496
    .end local v14    # "hasPermission":Z
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 498
    invoke-static {v2, v7, v9, v8}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    const/4 v5, 0x0

    .line 499
    .local v0, "hasPermission":Z
    :goto_1
    if-nez v5, :cond_5

    .line 500
    if-eqz v3, :cond_4

    .line 501
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    .line 503
    :cond_4
    return v6

    .line 505
    :cond_5
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 507
    invoke-interface/range {p5 .. p5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 510
    :cond_6
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 510
    invoke-virtual {v5, v10, v9, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->checkShowPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v5

    if-nez v5, :cond_7

    return v13

    :cond_7
    return v6

    .line 513
    .end local v0    # "hasPermission":Z
    :cond_8
    invoke-static {v7, v2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 514
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v5, "setPermission...api from render, permission ok."

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return v13

    .line 518
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v14

    const-string v15, "JSAPI_List"

    invoke-virtual {v1, v9, v7, v15, v14}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v14

    .line 521
    .restart local v14    # "hasPermission":Z
    :goto_2
    const-string/jumbo v15, "setShowShareMenu"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_22

    .line 522
    const-string v15, "internalAPI"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v21, v14

    const/4 v2, 0x1

    goto/16 :goto_9

    .line 527
    :cond_a
    sget-object v15, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v10, "action:"

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has api permission:"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " appId:"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    if-nez v14, :cond_d

    .line 530
    if-eqz v3, :cond_c

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a(Lcom/alipay/mobile/h5container/api/H5CoreNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 532
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    goto :goto_3

    .line 534
    :cond_b
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 537
    :cond_c
    :goto_3
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not in EVENT_List or JSAPI_List"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return v6

    .line 541
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const/4 v13, 0x0

    move-object v15, v13

    .line 542
    .local v15, "callParam":Lcom/alibaba/fastjson/JSONObject;
    move-object v13, v10

    .end local v15    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .local v13, "callParam":Lcom/alibaba/fastjson/JSONObject;
    if-nez v10, :cond_e

    .line 543
    const/4 v5, 0x1

    return v5

    .line 547
    :cond_e
    iget-object v10, v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    invoke-virtual {v10, v7, v9, v13}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->checkBizParamPermission(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 548
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not supported by param!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz v3, :cond_f

    .line 550
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v0

    const-string v5, "invalid parameter!"

    invoke-interface {v3, v0, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 553
    :cond_f
    return v6

    .line 557
    :cond_10
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "JSAPI_SP_Config_"

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 558
    .local v10, "item":Ljava/lang/String;
    iget-object v15, v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-virtual {v15, v10}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->getApiLevelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 559
    .local v15, "apiRuleList":Ljava/util/List;
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string/jumbo v6, "request"

    if-nez v16, :cond_14

    .line 560
    :try_start_1
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_14

    if-eqz v15, :cond_11

    .line 561
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 562
    :cond_11
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 564
    invoke-interface/range {p5 .. p5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 569
    :cond_12
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->h:Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 569
    invoke-virtual {v0, v5, v9, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiBizPermissionManager;->checkShowPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_13

    const/4 v5, 0x1

    return v5

    :cond_13
    const/4 v0, 0x0

    return v0

    .line 646
    .end local v10    # "item":Ljava/lang/String;
    .end local v15    # "apiRuleList":Ljava/util/List;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v21, v14

    goto/16 :goto_7

    .line 573
    .restart local v10    # "item":Ljava/lang/String;
    .restart local v15    # "apiRuleList":Ljava/util/List;
    :cond_14
    const/4 v12, 0x0

    .line 574
    .local v12, "content":Ljava/lang/String;
    const/16 v16, 0x1

    .line 576
    .local v16, "allowed":Z
    :try_start_2
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v2, " is not allowed"

    move-object/from16 v18, v8

    .end local v8    # "webviewAppId":Ljava/lang/String;
    .local v18, "webviewAppId":Ljava/lang/String;
    const-string v8, " allowed:"

    move-object/from16 v19, v11

    .end local v11    # "tag":Ljava/lang/String;
    .local v19, "tag":Ljava/lang/String;
    const-string/jumbo v11, "url"

    if-nez v17, :cond_1c

    .line 577
    :try_start_3
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 578
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v21, v14

    move-object/from16 v22, v15

    goto/16 :goto_5

    .line 607
    :cond_15
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 608
    .local v6, "apiRule":Ljava/lang/String;
    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-static {v13, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v5

    .line 609
    .local v0, "paramItem":Ljava/lang/String;
    move-object/from16 v5, v20

    .end local v0    # "paramItem":Ljava/lang/String;
    .local v5, "paramItem":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 613
    move-object v12, v5

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    .end local v5    # "paramItem":Ljava/lang/String;
    .local v20, "paramItem":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    invoke-virtual {v1, v9, v12, v0, v5}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    .line 615
    .end local v16    # "allowed":Z
    .local v0, "allowed":Z
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v21, v14

    .end local v14    # "hasPermission":Z
    .local v21, "hasPermission":Z
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    .end local v15    # "apiRuleList":Ljava/util/List;
    .local v22, "apiRuleList":Ljava/util/List;
    const-string/jumbo v15, "paramKey: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " check content:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    if-nez v0, :cond_17

    .line 617
    if-eqz v3, :cond_16

    .line 618
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    .line 620
    :cond_16
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " paramKey: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " content: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v2, 0x0

    return v2

    .line 623
    .end local v6    # "apiRule":Ljava/lang/String;
    .end local v20    # "paramItem":Ljava/lang/String;
    :cond_17
    move/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v5, v20

    move/from16 v14, v21

    move-object/from16 v15, v22

    goto/16 :goto_4

    .line 609
    .end local v0    # "allowed":Z
    .end local v21    # "hasPermission":Z
    .end local v22    # "apiRuleList":Ljava/util/List;
    .restart local v5    # "paramItem":Ljava/lang/String;
    .restart local v6    # "apiRule":Ljava/lang/String;
    .restart local v14    # "hasPermission":Z
    .restart local v15    # "apiRuleList":Ljava/util/List;
    .restart local v16    # "allowed":Z
    :cond_18
    move-object/from16 v20, v5

    move/from16 v21, v14

    move-object/from16 v22, v15

    .end local v5    # "paramItem":Ljava/lang/String;
    .end local v14    # "hasPermission":Z
    .end local v15    # "apiRuleList":Ljava/util/List;
    .restart local v20    # "paramItem":Ljava/lang/String;
    .restart local v21    # "hasPermission":Z
    .restart local v22    # "apiRuleList":Ljava/util/List;
    move-object/from16 v0, v17

    goto/16 :goto_4

    .line 625
    .end local v6    # "apiRule":Ljava/lang/String;
    .end local v20    # "paramItem":Ljava/lang/String;
    .end local v21    # "hasPermission":Z
    .end local v22    # "apiRuleList":Ljava/util/List;
    .restart local v14    # "hasPermission":Z
    .restart local v15    # "apiRuleList":Ljava/util/List;
    :cond_19
    move/from16 v21, v14

    move-object/from16 v22, v15

    .end local v14    # "hasPermission":Z
    .end local v15    # "apiRuleList":Ljava/util/List;
    .restart local v21    # "hasPermission":Z
    .restart local v22    # "apiRuleList":Ljava/util/List;
    const-string/jumbo v0, "startApp"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 627
    const-string/jumbo v0, "param"

    const/4 v14, 0x0

    invoke-static {v13, v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 628
    .local v0, "params":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v14

    .line 629
    .local v6, "startParams":Landroid/os/Bundle;
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v14

    .line 630
    invoke-static {v14, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 631
    .local v5, "paramUri":Landroid/net/Uri;
    move-object v5, v11

    if-eqz v11, :cond_1a

    .line 632
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 633
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_url"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v14

    invoke-virtual {v1, v9, v12, v11, v14}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v11

    move/from16 v16, v11

    move/from16 v0, v16

    goto/16 :goto_6

    .line 638
    .end local v0    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "paramUri":Landroid/net/Uri;
    .end local v6    # "startParams":Landroid/os/Bundle;
    :cond_1a
    move/from16 v0, v16

    goto/16 :goto_6

    .line 577
    .end local v21    # "hasPermission":Z
    .end local v22    # "apiRuleList":Ljava/util/List;
    .restart local v14    # "hasPermission":Z
    .restart local v15    # "apiRuleList":Ljava/util/List;
    :cond_1b
    move/from16 v21, v14

    move-object/from16 v22, v15

    .end local v14    # "hasPermission":Z
    .end local v15    # "apiRuleList":Ljava/util/List;
    .restart local v21    # "hasPermission":Z
    .restart local v22    # "apiRuleList":Ljava/util/List;
    goto :goto_5

    .line 646
    .end local v10    # "item":Ljava/lang/String;
    .end local v12    # "content":Ljava/lang/String;
    .end local v16    # "allowed":Z
    .end local v21    # "hasPermission":Z
    .end local v22    # "apiRuleList":Ljava/util/List;
    .restart local v14    # "hasPermission":Z
    :catchall_1
    move-exception v0

    move/from16 v21, v14

    .end local v14    # "hasPermission":Z
    .restart local v21    # "hasPermission":Z
    goto/16 :goto_7

    .line 576
    .end local v21    # "hasPermission":Z
    .restart local v10    # "item":Ljava/lang/String;
    .restart local v12    # "content":Ljava/lang/String;
    .restart local v14    # "hasPermission":Z
    .restart local v15    # "apiRuleList":Ljava/util/List;
    .restart local v16    # "allowed":Z
    :cond_1c
    move/from16 v21, v14

    move-object/from16 v22, v15

    .line 579
    .end local v14    # "hasPermission":Z
    .end local v15    # "apiRuleList":Ljava/util/List;
    .restart local v21    # "hasPermission":Z
    .restart local v22    # "apiRuleList":Ljava/util/List;
    :goto_5
    invoke-static {v13, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    move-object v14, v11

    .line 580
    .local v14, "reqUrl":Ljava/lang/String;
    move-object v14, v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v15, v11

    .line 581
    .local v15, "reqUri":Landroid/net/Uri;
    move-object v11, v5

    .end local v15    # "reqUri":Landroid/net/Uri;
    .local v11, "reqUri":Landroid/net/Uri;
    if-eqz v5, :cond_1f

    .line 582
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    .line 584
    const-string v5, "JSAPI_SP_Config_httpRequest_allowedDomain"

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v15

    .line 584
    invoke-virtual {v1, v9, v12, v5, v15}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v5

    move/from16 v16, v5

    .line 587
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 588
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 589
    :cond_1d
    if-eqz v16, :cond_1e

    .line 590
    invoke-virtual {v1, v4, v12}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->isDomainInBackList(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 592
    const/16 v16, 0x0

    move/from16 v0, v16

    goto :goto_6

    .line 595
    :cond_1e
    invoke-interface/range {p5 .. p5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "ignoreHttpReqPermission"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 597
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v5, 0x0

    .line 598
    .local v5, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v5, v0

    if-eqz v0, :cond_1f

    invoke-interface {v5, v14}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 599
    invoke-interface {v5, v14}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isSeriousAliDomains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {v5, v14}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 600
    const/16 v16, 0x1

    .line 606
    .end local v5    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v11    # "reqUri":Landroid/net/Uri;
    .end local v14    # "reqUrl":Ljava/lang/String;
    :cond_1f
    move/from16 v0, v16

    .line 638
    .end local v16    # "allowed":Z
    .local v0, "allowed":Z
    :goto_6
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "check content:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    if-nez v0, :cond_21

    .line 640
    if-eqz v3, :cond_20

    .line 641
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendNoRigHtToInvoke()V

    .line 643
    :cond_20
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " param: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 644
    const/4 v2, 0x0

    return v2

    .line 648
    .end local v0    # "allowed":Z
    .end local v10    # "item":Ljava/lang/String;
    .end local v12    # "content":Ljava/lang/String;
    .end local v22    # "apiRuleList":Ljava/util/List;
    :cond_21
    goto :goto_8

    .line 646
    :catchall_2
    move-exception v0

    goto :goto_7

    .end local v18    # "webviewAppId":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    .end local v21    # "hasPermission":Z
    .restart local v8    # "webviewAppId":Ljava/lang/String;
    .local v11, "tag":Ljava/lang/String;
    .local v14, "hasPermission":Z
    :catchall_3
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v21, v14

    .line 647
    .end local v8    # "webviewAppId":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v14    # "hasPermission":Z
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v18    # "webviewAppId":Ljava/lang/String;
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v21    # "hasPermission":Z
    :goto_7
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setPermission action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    const/4 v2, 0x1

    return v2

    .line 521
    .end local v13    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "webviewAppId":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    .end local v21    # "hasPermission":Z
    .restart local v8    # "webviewAppId":Ljava/lang/String;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v14    # "hasPermission":Z
    :cond_22
    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v21, v14

    const/4 v2, 0x1

    .line 524
    .end local v8    # "webviewAppId":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v14    # "hasPermission":Z
    .restart local v18    # "webviewAppId":Ljava/lang/String;
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v21    # "hasPermission":Z
    :goto_9
    return v2

    .line 474
    .end local v7    # "action":Ljava/lang/String;
    .end local v9    # "appId":Ljava/lang/String;
    .end local v18    # "webviewAppId":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    .end local v21    # "hasPermission":Z
    .restart local p2    # "appId":Ljava/lang/String;
    :cond_23
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public shouldInterceptJSApiCall(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;)I
    .locals 8

    .line 773
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 774
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 775
    const-string/jumbo v1, "request"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x2

    if-nez v1, :cond_1

    .line 776
    const-string v1, "httpRequest"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    .line 778
    if-eqz v1, :cond_1

    .line 779
    invoke-interface {v1, p2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->isInner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 780
    return v7

    .line 784
    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    .line 785
    if-eqz v1, :cond_4

    .line 786
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getWhiteJsApiJsonArray()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    sget-object p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "whiteJsApiJsonArray contain this "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->g:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 792
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 793
    const/4 p1, 0x1

    return p1

    .line 796
    :cond_3
    goto :goto_0

    .line 797
    :cond_4
    invoke-interface {p4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "isTinyApp"

    invoke-static {p1, p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    .line 799
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->enableTinyIgnorePermission()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 800
    sget-object p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    const-string p3, " is TinyApp but not has permissionFile"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object p1

    const-class p3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 804
    if-eqz v1, :cond_5

    .line 805
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 806
    const-string v2, "h5enableTinyIgnorePermission"

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_5
    nop

    .line 813
    :goto_0
    return v7

    .line 810
    :cond_6
    return v0
.end method

.method public shouldInterceptWebViewNaviJsApi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1264
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->e:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1265
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1266
    return v1

    .line 1264
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1271
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getWebviewJsapiWhitelist()Ljava/util/List;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_4

    .line 1273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1274
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1276
    sget-object p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldInterceptWebViewNaviJsApi...appId in white list:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    return v1

    .line 1279
    :cond_3
    goto :goto_1

    .line 1282
    :cond_4
    sget-object p1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldInterceptWebViewNaviJsApi...not allowed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const/4 p1, 0x1

    return p1
.end method
