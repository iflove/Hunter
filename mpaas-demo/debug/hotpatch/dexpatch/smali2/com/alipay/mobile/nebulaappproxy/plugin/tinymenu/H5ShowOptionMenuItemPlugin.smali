.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ShowOptionMenuItemPlugin.java"


# static fields
.field public static final HIDE_DESKTOP_MENU:Ljava/lang/String; = "hideDesktopMenu"

.field public static final HIDE_FAVORITE_MENU:Ljava/lang/String; = "hideFavoriteMenu"

.field public static final SHOW_DESKTOP_MENU:Ljava/lang/String; = "showDesktopMenu"

.field public static final SHOW_FAVORITE_MENU:Ljava/lang/String; = "showFavoriteMenu"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "key"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a(ZLjava/lang/String;)V

    .line 82
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 83
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "key"    # Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    .line 70
    .local v1, "show":Z
    move v1, v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a(ZLjava/lang/String;)V

    .line 73
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldShowShare.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 51
    :cond_0
    const-string/jumbo v1, "showFavoriteMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v2, "hideFavoriteMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v1, "showDesktopMenu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v2, "hideDesktopMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 60
    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 33
    const-string/jumbo v0, "showFavoriteMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v0, "hideFavoriteMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "showDesktopMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v0, "hideDesktopMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinymenu/H5ShowOptionMenuItemPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 42
    return-void
.end method
