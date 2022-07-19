.class public Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# static fields
.field public static final FILE_CHOOSER_RESULT:Ljava/lang/String; = "FILE_CHOOSER_RESULT"

.field private static i:Lcom/alibaba/fastjson/JSONArray;


# instance fields
.field public TAG:Ljava/lang/String;

.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

.field private e:Landroid/os/Handler;

.field private f:I

.field private g:Z

.field private h:Z

.field public mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->i:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "H5WebChromeClient"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->g:Z

    .line 78
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 4
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "H5WebChromeClient"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->g:Z

    .line 78
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h:Z

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isPrerender"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preRender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 92
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 95
    const-string v1, "h5_asyncConsoleMessage"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "configAsyncConsoleMessage":Ljava/lang/String;
    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->g:Z

    .line 100
    :cond_1
    const-string v3, "h5_handleUncaughtJsError"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "handleUncaughtJsErrorValue":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h:Z

    .line 104
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    .line 172
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jserror:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 174
    .local v2, "jsErrorContent":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "name"

    const-string v4, "jsErrors"

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "value"

    invoke-virtual {v2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "lineno"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v3, v1

    .line 178
    .local v3, "dataContent":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v4, v1

    .line 180
    .local v4, "dataMsg":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    const-string v5, "data"

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 182
    .local v1, "fakePerformanceMsg":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v5, "func"

    const-string v6, "monitorH5Performance"

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "param"

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "msgType"

    const-string v5, "call"

    invoke-virtual {v1, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "clientId"

    const-string v5, "default_clientId"

    invoke-virtual {v1, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, ""

    .line 188
    .local v0, "token":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 192
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "h5container.message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .line 196
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "fakePerformanceMsg":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "jsErrorContent":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "dataContent":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "dataMsg":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "handleUncaughtJsError error : "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p1
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "finalDomain"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 453
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;

    .line 454
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 455
    .local v2, "dialogProvider":Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 456
    invoke-interface {v2, p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;->createLocationDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 457
    .local v1, "dialog":Landroid/app/AlertDialog;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 460
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void

    .line 461
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p2, v1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 463
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 202
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 204
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "content"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    if-eqz p2, :cond_0

    .line 206
    const-string v0, "func"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Landroid/os/Handler;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    return v1

    .line 229
    :cond_0
    nop

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 232
    return v2

    .line 235
    :cond_1
    nop

    .line 236
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, ""

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_2
    move-object v0, v3

    .line 240
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "h5container.message: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 243
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 242
    :cond_3
    move-object v3, v6

    .line 246
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 248
    const-string v2, "invokeJS msgType"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 249
    const-string v2, "load AlipayJSBridge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppId/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 251
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v3, "NBH5AppContentLog"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 257
    if-ltz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 260
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMsgFromJS token invalid! prefixStr = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "H5_BRIDGE_TOKEN_INVALID"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "bridgePrefix"

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    const-string v0, "messageFrom"

    const-string v2, "H5WebChromeClient"

    invoke-virtual {p1, v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 270
    :cond_5
    return v1

    .line 273
    :cond_6
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_3

    .line 278
    :cond_7
    const-string v3, "clientId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string v4, "func"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    const-string v5, "msgType"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    const-string v7, "keepCallback"

    invoke-static {v0, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    .line 282
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 285
    return v1

    .line 288
    :cond_8
    const-string p1, "param"

    invoke-static {v0, p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    .line 291
    if-nez v0, :cond_9

    .line 292
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v0, "bridge == null"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v1

    .line 295
    :cond_9
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 296
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object p1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object p1

    .line 297
    invoke-virtual {p1, v7}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 299
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object p1

    .line 301
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->g:Z

    if-eqz v1, :cond_d

    .line 302
    sget-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->i:Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_a

    .line 304
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 305
    if-eqz v1, :cond_a

    .line 306
    const-string v3, "h5_syncJsApi"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->i:Lcom/alibaba/fastjson/JSONArray;

    .line 310
    :cond_a
    sget-object v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->i:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 313
    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Landroid/os/Handler;

    if-nez v1, :cond_c

    .line 314
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Landroid/os/Handler;

    .line 316
    :cond_c
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 324
    :cond_d
    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 327
    :goto_2
    return v2

    .line 275
    :cond_e
    :goto_3
    return v1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 585
    const/4 v0, 0x5

    .line 586
    .local v0, "times":I
    const/4 v1, 0x0

    .line 588
    .local v1, "activity":Landroid/app/Activity;
    :goto_0
    if-eqz p0, :cond_3

    .line 592
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 593
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 594
    goto :goto_1

    .line 597
    :cond_0
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 598
    move-object v2, p0

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 600
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "times":I
    .local v2, "times":I
    if-gtz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    .line 601
    .end local v2    # "times":I
    .restart local v0    # "times":I
    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "getVideoLoadingProgressView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 479
    return-void
.end method

.method public onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 630
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)V

    .line 109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 110
    return v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    .line 115
    .local v2, "lineNumber":I
    iget v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I

    if-gtz v3, :cond_1

    .line 116
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v4, 0x0

    .line 117
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v3

    if-eqz v3, :cond_1

    .line 119
    :try_start_0
    const-string v3, "h5_log_chromeConsoleLength"

    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 121
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I

    .line 125
    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    :goto_0
    const-string v3, "onConsoleMessage "

    if-eqz v1, :cond_2

    iget v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 126
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->f:I

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".. lineNumber "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lineNumber "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_1
    move-object v3, v1

    .line 133
    .local v3, "tmpMessage":Ljava/lang/String;
    const-string v4, "[RENDER] setData"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    const-string v4, "main"

    const-string v5, "render_setData"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_3
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h:Z

    if-eqz v4, :cond_4

    .line 140
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    sget-object v5, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v4, v5, :cond_4

    .line 141
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result v4

    if-nez v4, :cond_5

    .line 145
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 147
    :cond_5
    return v0
.end method

.method public onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "b"    # Z
    .param p3, "b2"    # Z
    .param p4, "message"    # Landroid/os/Message;

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .line 468
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 9
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGeolocationPermissionsShowPrompt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 403
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 404
    return-void

    .line 406
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "finalDomain":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 409
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 410
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v3

    .line 411
    .local v3, "data":Lcom/alipay/mobile/h5container/api/H5Data;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "isH5app"

    invoke-static {v4, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 412
    .local v4, "isH5app":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Y"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_1
    if-nez v4, :cond_5

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 414
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->permitLocation(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 419
    :cond_2
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;

    invoke-direct {v5, p0, p2, p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v5, "listener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_3

    .line 437
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v7, "not H5Activity"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 439
    return-void

    .line 441
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/4 v7, 0x0

    .line 442
    .local v7, "activity":Landroid/app/Activity;
    move-object v7, v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 443
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v8, "isFinishing"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 445
    return-void

    .line 447
    :cond_4
    invoke-static {v7, v0, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 449
    return-void

    .line 415
    .end local v5    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_5
    :goto_0
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 416
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 615
    return-void
.end method

.method public onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 14
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 635
    move-object v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onJsAlert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v11, 0x1

    if-nez v1, :cond_0

    .line 638
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "h5Page == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 640
    return v11

    .line 643
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v3, v2

    .line 644
    .local v3, "activity":Landroid/app/Activity;
    move-object v12, v1

    .end local v3    # "activity":Landroid/app/Activity;
    .local v12, "activity":Landroid/app/Activity;
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v12}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 650
    :cond_1
    instance-of v1, v12, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_2

    .line 651
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "not H5Activity"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return v3

    .line 657
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 658
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    move-object v3, v2

    .line 659
    .local v3, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    move-object v13, v1

    .end local v3    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v13, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-nez v1, :cond_3

    .line 660
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 661
    .local v2, "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    move-object v2, v1

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$5;

    invoke-direct {v4, p0, v9, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$5;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 663
    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 673
    .end local v2    # "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    goto :goto_0

    .line 675
    :cond_3
    const/4 v3, 0x0

    .line 676
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 675
    move-object v1, v13

    move-object v2, v12

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 679
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;

    invoke-direct {v2, p0, v9, v13}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 680
    invoke-interface {v13, v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 691
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$7;

    invoke-direct {v2, p0, v9, v13}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$7;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 701
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 704
    .end local v1    # "dialog":Landroid/app/Dialog;
    :goto_0
    return v11

    .line 645
    .end local v13    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, " isFinishing"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 647
    return v3
.end method

.method public onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 383
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJsBeforeUnload [url] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [message] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 387
    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x0

    .line 388
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 389
    const-string v2, "h5_enableReturnTrueOnJsBeforeUnload"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v2, :cond_2

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v3, "onJsBeforeUnload h5page == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x1

    return v2

    .line 395
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 14
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "apJsResult"    # Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 710
    move-object v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onJsConfirm "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v11, 0x1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "h5Page == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 716
    return v11

    .line 719
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v3, v2

    .line 720
    .local v3, "activity":Landroid/app/Activity;
    move-object v12, v1

    .end local v3    # "activity":Landroid/app/Activity;
    .local v12, "activity":Landroid/app/Activity;
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v12}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 726
    :cond_1
    instance-of v1, v12, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_2

    .line 727
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "not  H5activity"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return v3

    .line 732
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 733
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    move-object v3, v2

    .line 734
    .local v3, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    move-object v13, v1

    .end local v3    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v13, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-nez v1, :cond_3

    .line 735
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 736
    .local v2, "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    move-object v2, v1

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;

    invoke-direct {v4, p0, v9, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 738
    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$8;

    invoke-direct {v4, p0, v9, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$8;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 746
    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v1

    .line 755
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 756
    .end local v2    # "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    goto :goto_0

    .line 758
    :cond_3
    const/4 v3, 0x0

    .line 759
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 760
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 758
    move-object v1, v13

    move-object v2, v12

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 762
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$10;

    invoke-direct {v2, p0, v9, v13}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$10;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 763
    invoke-interface {v13, v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 773
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$11;

    invoke-direct {v2, p0, v9, v13}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$11;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 774
    invoke-interface {v13, v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V

    .line 784
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;

    invoke-direct {v2, p0, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 793
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 797
    .end local v1    # "dialog":Landroid/app/Dialog;
    :goto_0
    return v11

    .line 721
    .end local v13    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v2, "  isFinishing"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-interface/range {p4 .. p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 723
    return v3
.end method

.method public onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
    .locals 18
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "apJsPromptResult"    # Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onJsPrompt\uff1a url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defaultValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    .line 807
    invoke-direct {v0, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const-string v1, "true"

    invoke-interface {v9, v1}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->confirm(Ljava/lang/String;)V

    .line 809
    return v11

    .line 812
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_1

    .line 814
    invoke-interface/range {p5 .. p5}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 815
    return v11

    .line 818
    :cond_1
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v12, 0x0

    move-object v2, v12

    .line 819
    .local v2, "activity":Landroid/app/Activity;
    move-object v13, v1

    .end local v2    # "activity":Landroid/app/Activity;
    .local v13, "activity":Landroid/app/Activity;
    const/4 v14, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 824
    :cond_2
    instance-of v1, v13, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_3

    .line 825
    return v14

    .line 828
    :cond_3
    const-string v1, "h5_jsPromptNewDialog"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v11

    move v15, v1

    .line 829
    .local v15, "useAntUIDialog":Z
    const/4 v1, 0x0

    .line 830
    .local v1, "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    if-eqz v15, :cond_4

    .line 831
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;

    move-object v6, v1

    goto :goto_0

    .line 830
    :cond_4
    move-object v6, v1

    .line 834
    .end local v1    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    .local v6, "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    :goto_0
    if-eqz v15, :cond_6

    if-eqz v6, :cond_6

    .line 835
    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 836
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 835
    move-object v1, v6

    move-object v2, v13

    move-object/from16 v4, p3

    move-object/from16 v17, v6

    .end local v6    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    .local v17, "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    move-object/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    move-object v2, v12

    .line 837
    .local v2, "dialog":Landroid/app/Dialog;
    move-object v2, v1

    if-nez v1, :cond_5

    .line 838
    return v14

    .line 840
    :cond_5
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 841
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;->getInputContent()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 842
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;

    invoke-direct {v1, v0, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    move-object/from16 v14, v17

    .end local v17    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    .local v14, "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    invoke-interface {v14, v1}, Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider$OnClickPositiveListener;)V

    .line 851
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;

    invoke-direct {v1, v0, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-interface {v14, v1}, Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;->setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider$OnClickNegativeListener;)V

    .line 861
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$15;

    invoke-direct {v1, v0, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$15;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 869
    .end local v2    # "dialog":Landroid/app/Dialog;
    goto :goto_1

    .line 834
    .end local v14    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    .restart local v6    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    :cond_6
    move-object v14, v6

    .line 870
    .end local v6    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    .restart local v14    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    new-instance v16, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    const/4 v3, 0x0

    .line 871
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 872
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v12

    .line 874
    .local v1, "h5PromptDialog":Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;
    move-object/from16 v1, v16

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->show()V

    .line 875
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getInputContent()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 877
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$16;

    invoke-direct {v2, v0, v9, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$16;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setPositiveListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;)V

    .line 886
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$17;

    invoke-direct {v2, v0, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$17;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setNegativeListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;)V

    .line 896
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$18;

    invoke-direct {v2, v0, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$18;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 905
    .end local v1    # "h5PromptDialog":Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;
    :goto_1
    return v11

    .line 820
    .end local v14    # "h5InputDialogProvider":Lcom/alipay/mobile/nebula/provider/H5InputDialogProvider;
    .end local v15    # "useAntUIDialog":Z
    :cond_7
    :goto_2
    invoke-interface/range {p5 .. p5}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 821
    return v14
.end method

.method public onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "newProgress"    # I

    .line 337
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressChanged [progress] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 343
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "progress"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageProgress"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 346
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method

.method public onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 366
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "title"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedTitle [title] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setTitle(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "javascript:{window.__alipayConsole__ = window.console}"

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 358
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "title"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageReceivedTitle"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 362
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .line 374
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedTouchIconUrl. [url] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [precomposed] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 911
    return-void
.end method

.method public onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 625
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 606
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 607
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Z)V
    .locals 1
    .param p1, "callback"    # Landroid/webkit/ValueCallback;
    .param p2, "array"    # Z

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;ZLcom/alipay/mobile/nebula/webview/APFileChooserParams;)V

    .line 483
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;ZLcom/alipay/mobile/nebula/webview/APFileChooserParams;)V
    .locals 15
    .param p1, "callback"    # Landroid/webkit/ValueCallback;
    .param p2, "array"    # Z
    .param p3, "fileChooserParams"    # Lcom/alipay/mobile/nebula/webview/APFileChooserParams;

    move-object v7, p0

    const-string v0, "appId"

    const-string v8, "exception detail"

    .line 489
    iget-object v1, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 492
    :cond_0
    iget-object v1, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 494
    .local v9, "ctx":Landroid/content/Context;
    :try_start_0
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const/4 v10, 0x0

    move-object v2, v10

    .line 495
    .local v2, "activity":Landroid/app/Activity;
    move-object v11, v1

    .end local v2    # "activity":Landroid/app/Activity;
    .local v11, "activity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 496
    return-void

    .line 499
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    move-object v12, v1

    .line 500
    .local v12, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v10

    .line 501
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v13, v1

    .end local v2    # "filter":Landroid/content/IntentFilter;
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v2, "FILE_CHOOSER_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    iget-object v1, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {v12, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    iput-object v10, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    .line 508
    :cond_2
    new-instance v14, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/app/Activity;Landroid/webkit/ValueCallback;Z)V

    iput-object v14, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    .line 553
    invoke-virtual {v12, v14, v13}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 555
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;

    invoke-direct {v1, v11, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_3

    .line 557
    const-string v2, "isCaptureEnabled"

    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/nebula/webview/APFileChooserParams;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    const-string v2, "acceptTypes"

    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/nebula/webview/APFileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :cond_3
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 561
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 562
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "yes"

    const-string v4, "h5_notSupportTinyChooseFile"

    .line 563
    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 564
    iget-object v3, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v10

    .line 565
    .local v4, "appId":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 567
    iget-object v3, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 569
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 570
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    .end local v4    # "appId":Ljava/lang/String;
    :cond_5
    invoke-virtual {v11, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v11    # "activity":Landroid/app/Activity;
    .end local v12    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    return-void

    .line 575
    :catch_1
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v1, v7, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    invoke-static {v1, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 490
    .end local v9    # "ctx":Landroid/content/Context;
    :cond_6
    :goto_1
    return-void
.end method
