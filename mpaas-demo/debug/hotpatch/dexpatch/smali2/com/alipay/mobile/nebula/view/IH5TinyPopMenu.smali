.class public interface abstract Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
.super Ljava/lang/Object;
.source "IH5TinyPopMenu.java"


# virtual methods
.method public abstract containsFavoriteMenuItem()Z
.end method

.method public abstract init(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
.end method

.method public abstract onRelease()V
.end method

.method public abstract onSwitchToBlueTheme()V
.end method

.method public abstract onSwitchToWhiteTheme()V
.end method

.method public abstract requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;)V
.end method

.method public abstract setH5MenuList(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setH5OptionMenuTextFlag()V
.end method

.method public abstract setH5ShowOptionMenuFlag()V
.end method

.method public abstract showMenu()V
.end method
