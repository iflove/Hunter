.class public Lcom/mpaas/nebula/provider/H5SharePanelProviderImpl;
.super Ljava/lang/Object;
.source "H5SharePanelProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMenuList(ILjava/util/List;)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/view/H5NavMenuItem;>;"
    return-void
.end method

.method public removeMenuList(I)V
    .locals 0
    .param p1, "i"    # I

    .line 20
    return-void
.end method

.method public showSharePanel(Lcom/alipay/mobile/h5container/api/H5Page;Z)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "b"    # Z

    .line 25
    return-void
.end method
