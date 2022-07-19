.class public abstract Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;
.super Ljava/lang/Object;
.source "AbsTinyOptionMenuView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
.implements Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;
    }
.end annotation


# instance fields
.field protected appId:Ljava/lang/String;

.field protected h5Page:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onStateChanged(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;)V
.end method

.method protected onTitleChange(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
    .locals 0
    .param p1, "title"    # Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 66
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;->appId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public abstract setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setCloseButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->registerStateListener(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$TitleChangePlugin;-><init>(Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView$1;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public abstract setOptionMenuOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public switchToBlueTheme()V
    .locals 0

    .line 53
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 0

    .line 58
    return-void
.end method
