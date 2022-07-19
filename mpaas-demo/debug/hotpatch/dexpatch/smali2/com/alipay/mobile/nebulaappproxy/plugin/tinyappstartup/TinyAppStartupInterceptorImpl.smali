.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;
.super Ljava/lang/Object;
.source "TinyAppStartupInterceptorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;


# static fields
.field public static final INSTANCE:Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->INSTANCE:Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a:Z

    .line 46
    return-void
.end method

.method private static a(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "startupParams"    # Landroid/os/Bundle;

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v0

    .line 121
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->addStartupParamsForTemplateApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "startupParams"    # Landroid/os/Bundle;

    const-string v0, "TinyAppStartupInterceptor"

    .line 312
    if-nez p1, :cond_0

    return-void

    .line 315
    :cond_0
    :try_start_0
    const-string v1, "appId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getCompsPermissionWhiteList()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 317
    .local v4, "compsPermissionWhiteList":Ljava/util/Set;
    move-object v4, v2

    if-eqz v2, :cond_1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const-string v2, "handleComponentPermission..white list"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getCompsNeedCheckSet()Ljava/util/Set;

    move-result-object v2

    move-object v5, v3

    .line 323
    .local v5, "compsNeedCheckPer":Ljava/util/Set;
    move-object v5, v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 328
    :cond_2
    const-class v2, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 329
    .local v3, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v3, v2

    if-nez v2, :cond_3

    .line 330
    const-string v2, "handleComponentPermission...api manager is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void

    .line 334
    :cond_3
    invoke-interface {v3, v1, p0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 335
    return-void

    .line 338
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 339
    .local v2, "compsObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 340
    .local v7, "compsName":Ljava/lang/String;
    const-string v8, "JSAPI_List"

    invoke-interface {v3, v1, v7, v8, p0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v8

    .line 342
    .local v8, "hasCompsPermission":Z
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    nop

    .end local v7    # "compsName":Ljava/lang/String;
    .end local v8    # "hasCompsPermission":Z
    goto :goto_0

    .line 344
    :cond_5
    const-string v6, "componentsPermissionCfg"

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "compsObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v4    # "compsPermissionWhiteList":Ljava/util/Set;
    .end local v5    # "compsNeedCheckPer":Ljava/util/Set;
    return-void

    .line 325
    .restart local v1    # "appId":Ljava/lang/String;
    .restart local v4    # "compsPermissionWhiteList":Ljava/util/Set;
    .restart local v5    # "compsNeedCheckPer":Ljava/util/Set;
    :cond_6
    :goto_1
    return-void

    .line 345
    .end local v1    # "appId":Ljava/lang/String;
    .end local v4    # "compsPermissionWhiteList":Ljava/util/Set;
    .end local v5    # "compsNeedCheckPer":Ljava/util/Set;
    :catchall_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleComponentPermission..e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 164
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->c(Landroid/os/Bundle;)V

    .line 165
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->d(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TinyAppStartupInterceptor"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method private static c(Landroid/os/Bundle;)V
    .locals 13
    .param p0, "bundle"    # Landroid/os/Bundle;

    const-string v0, "appId"

    const-string v1, "TinyAppStartupInterceptor"

    .line 184
    :try_start_0
    const-string v2, ""

    .line 185
    .local v2, "channel":Ljava/lang/String;
    const-string/jumbo v3, "tiny_apiMessageChannel"

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 186
    .local v5, "v":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 187
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object v7, v4

    .line 189
    .local v7, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v3

    if-eqz v3, :cond_2

    .line 191
    const-string v3, "enableConsole"

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v8, v4

    .line 192
    .local v8, "enableConsole":Ljava/lang/Boolean;
    move-object v8, v3

    if-eqz v3, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const-string v3, "appIds"

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v4, "appIds":Ljava/lang/String;
    move-object v4, v3

    const-string v9, "*"

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "console"

    if-eqz v3, :cond_0

    .line 195
    move-object v2, v9

    goto :goto_1

    .line 196
    :cond_0
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 198
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "curAppId":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    array-length v10, v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    aget-object v12, v3, v11

    .line 203
    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 204
    move-object v2, v9

    .line 205
    goto :goto_1

    .line 202
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "curAppId":Ljava/lang/String;
    .end local v4    # "appIds":Ljava/lang/String;
    .end local v7    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "enableConsole":Ljava/lang/Boolean;
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "apiMessageChannel"

    if-nez v0, :cond_3

    .line 213
    :try_start_2
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "injectStartParams:%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    const/4 v3, 0x1

    aput-object v2, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .end local v2    # "channel":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method private static d(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 227
    const-string v0, "android-phone-wallet-canvas"

    .line 229
    .local v0, "canvasBundleName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 230
    .local v1, "hasNativeBundle":Z
    const/4 v2, 0x0

    .line 231
    .local v2, "enableNative":Z
    const-string v3, ""

    .line 232
    .local v3, "bundleVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 234
    .local v5, "canvasBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v5, v4

    if-eqz v4, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 236
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->e(Landroid/os/Bundle;)Z

    move-result v2

    .line 237
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 240
    .end local v5    # "canvasBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_0
    const-string v4, "hasNativeCanvas"

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string/jumbo v4, "nativeCanvasVersion"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, "useCompactProtocol":Z
    if-eqz v2, :cond_3

    .line 246
    const-string/jumbo v5, "tiny_nativeCanvasCompactProtocol"

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "v":Ljava/lang/String;
    const-string/jumbo v6, "true"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "TRUE"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "1"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    :cond_1
    const/4 v4, 0x1

    .line 250
    :cond_2
    const-string/jumbo v6, "nativeCanvasCompactProtocol"

    invoke-virtual {p0, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    .end local v5    # "v":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 256
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 254
    const-string v7, "injectCanvasStartParams:hasNativeCanvas=%s(%s),nativeCanvasVersion=%s,nativeCanvasCompactProtocol=%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 253
    const-string v7, "TinyAppStartupInterceptor"

    invoke-interface {v5, v7, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private static e(Landroid/os/Bundle;)Z
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 264
    const-string/jumbo v0, "tiny_nativeCanvasSwitch"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 265
    .local v2, "v":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 266
    return v3

    .line 268
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 269
    .local v0, "jo":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const-string/jumbo v6, "nativeCanvasSwitch json:%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TinyAppStartupInterceptor"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-nez v0, :cond_1

    .line 271
    return v3

    .line 274
    :cond_1
    const-string v4, "appId"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "curAppId":Ljava/lang/String;
    const-string/jumbo v5, "useNativeCanvas"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    move-object v6, v1

    .line 278
    .local v6, "enable":Ljava/lang/Boolean;
    move-object v6, v5

    const-string v7, ","

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 279
    const/4 v5, 0x1

    .line 280
    .local v5, "result":Z
    const-string v8, "blackList"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v1, "blackList":Ljava/lang/String;
    move-object v1, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 282
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 284
    array-length v8, v7

    :goto_0
    if-ge v3, v8, :cond_3

    aget-object v9, v7, v3

    .line 285
    invoke-static {v9, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 286
    const/4 v5, 0x0

    .line 287
    goto :goto_2

    .line 284
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "blackList":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 292
    .end local v5    # "result":Z
    :cond_4
    const/4 v5, 0x0

    .line 293
    .restart local v5    # "result":Z
    const-string/jumbo v8, "whiteList"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v1, "whiteList":Ljava/lang/String;
    move-object v1, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 295
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 297
    array-length v8, v7

    :goto_1
    if-ge v3, v8, :cond_6

    aget-object v9, v7, v3

    .line 298
    invoke-static {v9, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 299
    const/4 v5, 0x1

    .line 300
    goto :goto_2

    .line 297
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 305
    .end local v1    # "whiteList":Ljava/lang/String;
    :cond_6
    :goto_2
    return v5
.end method


# virtual methods
.method public handleStartupParams(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->doUpdateSceneForChannel(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Z)V

    .line 104
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a:Z

    if-nez v1, :cond_0

    .line 106
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->retriveThirdPartAppParams(Landroid/os/Bundle;)V

    .line 110
    :cond_0
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V

    .line 113
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getInstance()Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->registerLimitControlPlugin(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public handlerAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 50
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "pageParams":Landroid/os/Bundle;
    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    return-object p2

    .line 57
    :cond_1
    const/4 v1, 0x1

    .line 58
    .local v1, "sureTinyApp":Z
    const-string v2, "isTinyApp"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    const/4 v1, 0x0

    .line 61
    :cond_2
    const-string v2, "TinyAppStartupInterceptor"

    const-string v3, "handler startup params for app resume"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p1, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->doUpdateSceneForChannel(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Z)V

    .line 64
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->retriveThirdPartAppParams(Landroid/os/Bundle;)V

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a:Z

    .line 66
    return-object p2

    .line 52
    .end local v1    # "sureTinyApp":Z
    :cond_3
    :goto_0
    return-object p2
.end method

.method public handlerStartParamsReady(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 126
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "appId"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 130
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    return-void

    .line 133
    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;

    .line 134
    .local v1, "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;->onAppStartup(Ljava/lang/String;)V

    .line 137
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 138
    return-void

    .line 140
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 141
    .local v0, "h5Activity":Landroid/app/Activity;
    const-string v3, "deviceOrientation"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "landscape"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;Landroid/app/Activity;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 155
    :cond_4
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->b(Landroid/os/Bundle;)V

    .line 156
    return-void

    .line 127
    .end local v0    # "h5Activity":Landroid/app/Activity;
    .end local v1    # "h5TinyAppInnerProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppInnerProvider;
    .end local v2    # "appId":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method

.method public handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 71
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string v1, "isTinyApp"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "pageParams":Landroid/os/Bundle;
    if-eqz p1, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    const-string v2, "TinyAppStartupInterceptor"

    const-string v3, "handler startup params for js bridge"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->doUpdateSceneForChannel(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Z)V

    .line 82
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a:Z

    if-nez v0, :cond_2

    .line 84
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->retriveThirdPartAppParams(Landroid/os/Bundle;)V

    .line 88
    :cond_2
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V

    .line 91
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->a(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getInstance()Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->registerLimitControlPlugin(Landroid/os/Bundle;)V

    .line 96
    return-object p2

    .line 77
    :cond_3
    :goto_0
    return-object p2
.end method
