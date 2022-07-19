.class public Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
.super Ljava/lang/Object;
.source "H5SessionTabManager.java"


# instance fields
.field private a:I

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->a:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method

.method public clearTabFragments()V
    .locals 1

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->a:I

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    :cond_0
    return-void
.end method

.method public countTabFragments()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 57
    iget v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->a:I

    return v0
.end method

.method public getTabFragmentByIndex(I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 2
    .param p1, "index"    # I

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabFragments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->b:Ljava/util/Map;

    return-object v0
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "currentIndex"    # I

    .line 21
    iput p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->a:I

    .line 22
    return-void
.end method
