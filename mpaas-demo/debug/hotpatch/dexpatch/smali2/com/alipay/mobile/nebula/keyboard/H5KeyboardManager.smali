.class public Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;
.super Ljava/lang/Object;
.source "H5KeyboardManager.java"


# static fields
.field public static final ACTION_HIDE_IN_PAGE_RENDER_KEYBOARD:Ljava/lang/String; = "alipay.intent.action.HIDE_IN_PAGE_RENDER_KEYBOARD"

.field private static final ACTION_HIDE_NATIVE_INPUT:Ljava/lang/String; = "hideCustomKeyBoard"

.field private static sInstance:Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;


# instance fields
.field private mIsInPageRenderInputShowing:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->mIsInPageRenderInputShowing:Z

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->sInstance:Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->sInstance:Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    .line 27
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->sInstance:Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public hideInPageRenderInput()V
    .locals 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "alipay.intent.action.HIDE_IN_PAGE_RENDER_KEYBOARD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 42
    return-void
.end method

.method public hideNativeInput()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 46
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v3, v1

    .line 48
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "hideCustomKeyBoard"

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 52
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    return-void
.end method

.method public isInPageRenderInputShowing()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->mIsInPageRenderInputShowing:Z

    return v0
.end method

.method public setInPageRenderInputShowing(Z)V
    .locals 0
    .param p1, "inPageRenderInputShowing"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->mIsInPageRenderInputShowing:Z

    .line 36
    return-void
.end method
