.class public Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;
.super Ljava/lang/Object;
.source "H5ViewStubUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/view/View;II)Ljava/lang/Object;
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "stubId"    # I
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "II)TT;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v1, 0x0

    .line 19
    .local v1, "viewStub":Landroid/view/ViewStub;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static isViewVisible(Landroid/view/View;II)Z
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "stubId"    # I
    .param p2, "targetId"    # I

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 31
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    return v1

    .line 34
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    .line 35
    .local v2, "targetView":Landroid/view/View;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static setViewVisibility(Landroid/view/View;III)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "stubId"    # I
    .param p2, "targetId"    # I
    .param p3, "visibility"    # I

    .line 52
    if-nez p0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 57
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v1, "targetView":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .end local v1    # "targetView":Landroid/view/View;
    :cond_1
    return-void

    .line 62
    :cond_2
    if-nez p3, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 64
    .local v1, "viewStub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .end local v1    # "viewStub":Landroid/view/ViewStub;
    :cond_3
    return-void
.end method
