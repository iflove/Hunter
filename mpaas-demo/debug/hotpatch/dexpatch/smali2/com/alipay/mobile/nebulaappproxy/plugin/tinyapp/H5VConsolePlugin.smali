.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5VConsolePlugin.java"


# static fields
.field public static final CLEAR_STORAGE_FOR_DEBUG:Ljava/lang/String; = "clearStorage4Debug"

.field public static final DEBUG_PANEL_PACKAGE_APPID:Ljava/lang/String; = "68687029"

.field public static final ON_TINY_DEBUG_CONSOLE:Ljava/lang/String; = "onTinyDebugConsole"

.field public static final SHOULD_SHOW_VCONSOLE_BTN:Ljava/lang/String; = "shouldShowConsoleBtn"

.field public static final SHOW_TOGGLE_BUTTON:Ljava/lang/String; = "showToggleButton"

.field public static final TOGGLE_DEBUG_PANEL:Ljava/lang/String; = "toggleDebugPanel"

.field protected static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/h5container/api/H5Page;

.field private c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "level"    # Ljava/lang/String;

    .line 432
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "log"

    return-object v0

    .line 434
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :cond_1
    goto :goto_0

    :pswitch_0
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 451
    const-string p0, "log"

    goto :goto_1

    .line 448
    :cond_2
    const-string p0, "info"

    .line 449
    goto :goto_1

    .line 445
    :cond_3
    const-string p0, "debug"

    .line 446
    goto :goto_1

    .line 442
    :cond_4
    const-string p0, "error"

    .line 443
    goto :goto_1

    .line 439
    :cond_5
    const-string/jumbo p0, "warn"

    .line 440
    goto :goto_1

    .line 436
    :cond_6
    const-string p0, "log"

    .line 437
    nop

    .line 454
    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_lifestyle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .line 293
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 302
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 157
    if-nez p1, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    if-eqz v0, :cond_1

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setVisibility(I)V

    .line 163
    return-void

    .line 166
    :cond_1
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    .local v0, "rootView":Landroid/view/ViewGroup;
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    .line 168
    const-string v2, "#2A96E7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setBackgroundColor(I)V

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    const-string/jumbo v2, "\u8c03\u8bd5\u9762\u677f"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setTextSize(F)V

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setTextColor(I)V

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    const/16 v2, 0x12

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setPadding(IIII)V

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setViewContainer(Landroid/view/ViewGroup;)V

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setMaxTopMargin(I)V

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 183
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v1

    const/16 v3, 0x55

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    const/16 v1, 0xc8

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 185
    const/16 v1, 0x1e

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V

    .line 191
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preLoad"    # Z

    .line 242
    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 245
    .local v1, "containerView":Landroid/widget/FrameLayout;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    return-void

    .line 254
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;Landroid/app/Activity;Z)V

    .line 261
    .local v0, "mainRunnable":Ljava/lang/Runnable;
    const-string v2, "NORMAL"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$3;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v1, "clearTinyLocalStorage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    return-void

    .line 477
    :catchall_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearStorage4Debug...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 119
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "showBtn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    .local v0, "show":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "currentAppId":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showVConsoleBtn...show="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    .line 126
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 127
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {p2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "show"    # Z

    .line 139
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toggleButton...appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p3, :cond_0

    .line 141
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Landroid/app/Activity;)V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->setVConsoleVisible(Ljava/lang/String;Z)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b(Landroid/app/Activity;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->setVConsoleVisible(Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 199
    if-nez p1, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 203
    .local v0, "rootView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c:Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    .line 207
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 208
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setDebugContainerView(Landroid/widget/FrameLayout;)V

    .line 210
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugPanelH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v3, v2

    .line 211
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 212
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 213
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->onRelease()V

    .line 215
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setDebugPanelH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 217
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_3
    return-void
.end method

.method private b(Landroid/app/Activity;Z)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preLoad"    # Z

    .line 305
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 306
    .local v0, "rootView":Landroid/view/ViewGroup;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 307
    .local v3, "param":Landroid/os/Bundle;
    move-object v3, v1

    const-string v4, "appId"

    const-string v5, "68687029"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "createPageSence"

    const-string v5, "H5Activity"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "fragmentType"

    const-string/jumbo v5, "subtab"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "DEBUG_PANEL_PAGE_TAG"

    invoke-virtual {v3, v1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "parentAppId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v4, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v4}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    move-object v5, v2

    .line 313
    .local v5, "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    move-object v5, v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 314
    const-class v4, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 315
    invoke-virtual {v4, p1, v5}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    move-object v6, v2

    .line 316
    .local v6, "debugPanelH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v6, v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->applyParamsIfNeed()V

    .line 318
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 319
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->d(Landroid/app/Activity;)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v4, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v7, v2

    .line 320
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v7, v4

    const/16 v9, 0x50

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 321
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v4

    move-object v9, v2

    .line 322
    .local v9, "debugView":Landroid/view/View;
    move-object v9, v4

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 324
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v2

    .line 325
    .local v10, "debugContainerView":Landroid/widget/FrameLayout;
    move-object v10, v4

    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$5;

    invoke-direct {v11, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;Landroid/app/Activity;Z)V

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const-string v4, "#99191919"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 332
    invoke-virtual {v10, v9, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    if-eqz p2, :cond_0

    .line 336
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 339
    :cond_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    .local v2, "containerLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v4

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->e(Landroid/app/Activity;)I

    move-result v8

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 342
    invoke-virtual {v0, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6, v1, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setDebugContainerView(Landroid/widget/FrameLayout;)V

    .line 346
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setDebugPanelH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 347
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 483
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 484
    .local v2, "userId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    return-void

    .line 488
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    move-object v3, v1

    .line 489
    .local v3, "scs":Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 490
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v4, "appId"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    .line 493
    .local v5, "appId":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v6, v1

    .line 495
    .local v6, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v6, v0

    if-eqz v0, :cond_2

    .line 496
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 499
    .end local v6    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    return-void

    .line 502
    :cond_3
    invoke-static {v2, v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v3, v1, v0, v4}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 226
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    const-string/jumbo v1, "toggleDebugPanel..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V

    .line 230
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 231
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {p2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 233
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static c(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 357
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 360
    .local v0, "titleBarHeight":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 362
    iget v2, v1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .local v2, "statusBarHeight":I
    float-to-int v3, v0

    add-int/2addr v3, v2

    return v3

    .line 364
    .end local v0    # "titleBarHeight":F
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "statusBarHeight":I
    :catchall_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTitleAndStatusBarHeight...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x49

    return v1
.end method

.method private static d(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 377
    if-nez p0, :cond_0

    .line 378
    const/4 v0, -0x1

    return v0

    .line 380
    :cond_0
    nop

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 382
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static debugAllowed(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 458
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 460
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugPanelH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    .line 462
    return v2

    .line 465
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isDebugVersion(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getAssistantPanelSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    nop

    .line 465
    return v0
.end method

.method private static e(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 386
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->c(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static sendWebWorkerLog(Ljava/lang/Object;)V
    .locals 9
    .param p0, "result"    # Ljava/lang/Object;

    .line 395
    if-eqz p0, :cond_3

    instance-of v0, p0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getDebugPanelH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 401
    .local v2, "debugH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 403
    return-void

    .line 408
    :cond_1
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v1

    .line 409
    .local v3, "data":Ljava/util/HashMap;
    move-object v3, v0

    const-string/jumbo v4, "msg"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v1

    .line 410
    .local v4, "content":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendWebWorkerLog..content is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void

    .line 414
    :cond_2
    const-string v0, "event"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    .local v0, "event":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v1

    .line 418
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v5

    const-string/jumbo v7, "type"

    const-string v8, "level"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sendWebWorkerLog...event="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v5, "content"

    invoke-virtual {v6, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v1

    .line 424
    .local v7, "consoleData":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v5

    const-string v8, "data"

    invoke-virtual {v5, v8, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v5

    const-string/jumbo v8, "onTinyDebugConsole"

    invoke-interface {v5, v8, v7, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v0    # "event":Ljava/lang/String;
    .end local v3    # "data":Ljava/util/HashMap;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "consoleData":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 426
    :catchall_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendWebWorkerLog...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 396
    .end local v2    # "debugH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_3
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendWebWorkerLog..result type illegal"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 93
    :cond_0
    const-string/jumbo v1, "shouldShowConsoleBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 95
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a()V

    .line 96
    return v2

    .line 97
    :cond_1
    const-string/jumbo v1, "toggleDebugPanel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 99
    return v2

    .line 100
    :cond_2
    const-string/jumbo v1, "showToggleButton"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Landroid/app/Activity;)V

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a()V

    .line 103
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 104
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 106
    :cond_3
    const-string v1, "clearStorage4Debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_1

    .line 106
    :cond_4
    :goto_0
    nop

    .line 109
    :goto_1
    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 72
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 73
    const-string/jumbo v0, "shouldShowConsoleBtn"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "toggleDebugPanel"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "showToggleButton"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v0, "clearStorage4Debug"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5VConsolePlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setDebugContainerView(Landroid/widget/FrameLayout;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setDebugPanelH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 84
    return-void
.end method
