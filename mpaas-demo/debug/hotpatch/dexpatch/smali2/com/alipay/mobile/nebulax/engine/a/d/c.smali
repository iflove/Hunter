.class public Lcom/alipay/mobile/nebulax/engine/a/d/c;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# static fields
.field private static j:Lcom/alibaba/fastjson/JSONArray;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

.field private c:Lcom/alipay/mobile/h5container/api/H5Page;

.field private d:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Z

.field private k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private l:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private m:Lcom/alipay/mobile/nebulax/engine/a/d/d;

.field private n:Z

.field private o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->j:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/a/d/d;Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Z)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "NebulaXEngine.NXWebChromeClient"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->h:Z

    .line 84
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->i:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->n:Z

    .line 108
    iput-boolean p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->n:Z

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 110
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->m:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    .line 111
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 112
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->l:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    .line 115
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "isPrerender"

    invoke-static {p2, p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_preRender"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 119
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->f:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    .line 122
    const-string p1, "h5_asyncConsoleMessage"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string p2, "NO"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->h:Z

    .line 127
    :cond_1
    const-string p1, "h5_handleUncaughtJsError"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->i:Z

    .line 133
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .line 593
    nop

    .line 594
    nop

    .line 595
    const/4 v0, 0x5

    .line 597
    :goto_0
    if-nez p0, :cond_0

    .line 598
    goto :goto_1

    .line 601
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 602
    check-cast p0, Landroid/app/Activity;

    .line 603
    goto :goto_2

    .line 606
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 607
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 609
    :cond_2
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_3

    .line 610
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    .line 609
    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/c;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->e:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/c;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 204
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jserror:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 206
    const-string v1, "name"

    const-string v2, "jsErrors"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "lineno"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 210
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 212
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 214
    const-string v1, "func"

    const-string v2, "monitorH5Performance"

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "param"

    invoke-virtual {p2, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "msgType"

    const-string v1, "call"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "clientId"

    const-string v1, "default_clientId"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "h5container.message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 222
    :cond_0
    goto :goto_0

    .line 220
    :catchall_0
    move-exception p2

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v1, "handleUncaughtJsError error : "

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :goto_0
    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 475
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;

    .line 476
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;

    .line 477
    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;->createLocationDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 482
    :cond_0
    goto :goto_0

    .line 483
    :cond_1
    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-interface {p3, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 485
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 228
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 230
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz p2, :cond_0

    .line 232
    const-string p1, "func"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->g:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 236
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->g:Landroid/os/Handler;

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->g:Landroid/os/Handler;

    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;

    invoke-direct {p2, p0, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "h5container.message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 265
    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 298
    :cond_1
    const-string v2, "clientId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string v3, "func"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-string v5, "param"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 303
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v0, "clientId IS empty"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return v1

    .line 312
    :cond_2
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;-><init>()V

    .line 313
    nop

    .line 314
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->name(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    .line 315
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->params(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 316
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->m:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->nebulaXView(Lcom/alipay/mobile/nebulax/engine/api/NXView;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    move-result-object p1

    .line 320
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->h:Z

    if-eqz v0, :cond_6

    .line 321
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->j:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_3

    .line 323
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 324
    if-eqz v0, :cond_3

    .line 325
    const-string v1, "h5_syncJsApi"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->j:Lcom/alibaba/fastjson/JSONArray;

    .line 329
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->j:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->l:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V

    goto :goto_0

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->g:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 333
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->g:Landroid/os/Handler;

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/c$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$8;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->l:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V

    .line 346
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 295
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v0, "msgText json object is empty"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return v1

    .line 268
    :cond_8
    const-string v0, "invokeJS msgType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 269
    const-string v0, "load AlipayJSBridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppId/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->m:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NBH5AppContentLog"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_9
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 276
    if-ltz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_a

    .line 279
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMsgFromJS token invalid! prefixStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "H5_BRIDGE_TOKEN_INVALID"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "bridgePrefix"

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    const-string v0, "messageFrom"

    const-string v2, "NXWebChromeClient"

    invoke-virtual {p1, v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 289
    :cond_a
    return v1

    .line 258
    :cond_b
    :goto_2
    return v1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/a/d/c;)Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->l:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 881
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v1, "getVideoLoadingProgressView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 501
    return-void
.end method

.method public onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    .line 641
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8

    .line 139
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->f:Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)V

    .line 147
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    .line 150
    const/16 v3, 0x3e8

    .line 152
    :try_start_0
    const-string v4, "h5_log_chromeConsoleLength"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v4

    .line 156
    :goto_0
    const-string v4, " lineNumber "

    const-string v5, "onConsoleMessage "

    if-eqz v1, :cond_1

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 157
    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_1
    nop

    .line 164
    const-string v3, "[RENDER] setData"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    const-string v3, "main"

    const-string v4, "render_setData"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->i:Z

    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object p1

    sget-object v3, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne p1, v3, :cond_3

    .line 173
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result p1

    if-nez p1, :cond_4

    .line 177
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 179
    :cond_4
    return v0

    .line 140
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConsoleMessage input illegal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v0
.end method

.method public onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 630
    const/4 p1, 0x0

    return p1
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .line 490
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 7

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGeolocationPermissionsShowPrompt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 425
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 426
    return-void

    .line 428
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 431
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 432
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v3

    .line 433
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "isH5app"

    invoke-static {v4, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Y"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    if-nez v4, :cond_5

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 436
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->permitLocation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 441
    :cond_2
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/a/d/c$9;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/alipay/mobile/nebulax/engine/a/d/c$9;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v2, "not H5Activity"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 461
    return-void

    .line 463
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 464
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v2, "isFinishing"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 467
    return-void

    .line 469
    :cond_4
    invoke-direct {p0, v3, v0, v2}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 471
    return-void

    .line 437
    :cond_5
    :goto_0
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 438
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowCustomView [SDK Version] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 626
    return-void
.end method

.method public onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 7

    .line 646
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJsAlert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p3, "h5Page == null"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 651
    return p2

    .line 654
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .line 655
    const/4 p1, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->n:Z

    if-eqz v0, :cond_2

    .line 662
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p3, "not H5Activity"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return p1

    .line 668
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object p1

    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 669
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 670
    if-nez p1, :cond_3

    .line 671
    new-instance p1, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 672
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object p3

    sget v0, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;

    invoke-direct {v1, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$11;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 674
    invoke-virtual {p3, v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 684
    goto :goto_0

    .line 686
    :cond_3
    const/4 v2, 0x0

    .line 687
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 686
    move-object v0, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p3

    .line 690
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/c$12;

    invoke-direct {v0, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$12;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 691
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 702
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/c$13;

    invoke-direct {v0, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$13;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 712
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 715
    :goto_0
    return p2

    .line 656
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p3, " isFinishing"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 658
    return p1
.end method

.method public onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 1

    .line 414
    sget-boolean p1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onJsBeforeUnload [url] "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [message] "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 7

    .line 721
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJsConfirm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 725
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p3, "h5Page == null"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 727
    return p2

    .line 730
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .line 731
    const/4 p1, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 737
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->n:Z

    if-eqz v0, :cond_2

    .line 738
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p3, "not  H5activity"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return p1

    .line 743
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object p1

    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 744
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 745
    if-nez p1, :cond_3

    .line 746
    new-instance p1, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object p3

    sget v0, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/c$15;

    invoke-direct {v1, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$15;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 749
    invoke-virtual {p3, v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object p3

    sget v0, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/c$14;

    invoke-direct {v1, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$14;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 757
    invoke-virtual {p3, v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object p1

    .line 766
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 767
    goto :goto_0

    .line 769
    :cond_3
    const/4 v2, 0x0

    .line 770
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 769
    move-object v0, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p3

    .line 773
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/c$2;

    invoke-direct {v0, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$2;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 774
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 784
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/c$3;

    invoke-direct {v0, p0, p4, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$3;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 785
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V

    .line 795
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/c$4;

    invoke-direct {v0, p0, p4}, Lcom/alipay/mobile/nebulax/engine/a/d/c$4;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsResult;)V

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 804
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 808
    :goto_0
    return p2

    .line 732
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p3, "  isFinishing"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    .line 734
    return p1
.end method

.method public onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
    .locals 6

    .line 815
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJsPrompt\uff1a url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " message:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " defaultValue:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 818
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 819
    const-string p1, "true"

    invoke-interface {p5, p1}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->confirm(Ljava/lang/String;)V

    .line 820
    return p2

    .line 823
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez p1, :cond_1

    .line 825
    invoke-interface {p5}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 826
    return p2

    .line 829
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .line 830
    const/4 p1, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 835
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->n:Z

    if-eqz v0, :cond_3

    .line 836
    return p1

    .line 840
    :cond_3
    new-instance p1, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    const/4 v2, 0x0

    .line 841
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->show()V

    .line 845
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getInputContent()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 847
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;

    invoke-direct {p3, p0, p5, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/c$5;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setPositiveListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;)V

    .line 856
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/a/d/c$6;

    invoke-direct {p3, p0, p5}, Lcom/alipay/mobile/nebulax/engine/a/d/c$6;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setNegativeListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;)V

    .line 866
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/a/d/c$7;

    invoke-direct {p3, p0, p5}, Lcom/alipay/mobile/nebulax/engine/a/d/c$7;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 875
    return p2

    .line 831
    :cond_4
    :goto_0
    invoke-interface {p5}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    .line 832
    return p1
.end method

.method public onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged [progress] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 364
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageProgress"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v1, "invoke point PageProcessPoint"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageProcessPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageProcessPoint;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageProcessPoint;->onProgressChanged(Ljava/lang/String;I)V

    .line 371
    return-void
.end method

.method public onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 397
    sget-boolean p1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string p2, "onReceivedIcon"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTitle [title] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setTitle(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "javascript:{window.__alipayConsole__ = window.console}"

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 383
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageReceivedTitle"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->o:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->m:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    sget v1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(I)V

    .line 391
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedTitlePoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->k:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedTitlePoint;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/ReceivedTitlePoint;->onReceivedTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 2

    .line 405
    sget-boolean p1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedTouchIconUrl. [url] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [precomposed] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    return-void
.end method

.method public onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    .line 636
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 615
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowCustomView [SDK Version] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 617
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Z)V
    .locals 12

    .line 504
    const-string v0, "appId"

    const-string v1, "exception detail"

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 509
    :try_start_0
    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 510
    if-nez v2, :cond_1

    .line 511
    return-void

    .line 514
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v9

    .line 515
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 516
    const-string v3, "FILE_CHOOSER_RESULT"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->e:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_2

    .line 519
    invoke-virtual {v9, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 520
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->e:Landroid/content/BroadcastReceiver;

    .line 523
    :cond_2
    new-instance v11, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, v2

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/app/Activity;Landroid/webkit/ValueCallback;Z)V

    iput-object v11, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->e:Landroid/content/BroadcastReceiver;

    .line 568
    invoke-virtual {v9, v11, v10}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 569
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    const-class p2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 571
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 572
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    const-string v3, "yes"

    const-string v4, "h5_notSupportTinyChooseFile"

    .line 573
    invoke-interface {p2, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 574
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 575
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 577
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 579
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 580
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    :cond_4
    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception p1

    .line 587
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 584
    :catch_1
    move-exception p1

    .line 585
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    :goto_0
    nop

    .line 589
    :goto_1
    return-void

    .line 505
    :cond_5
    :goto_2
    return-void
.end method
