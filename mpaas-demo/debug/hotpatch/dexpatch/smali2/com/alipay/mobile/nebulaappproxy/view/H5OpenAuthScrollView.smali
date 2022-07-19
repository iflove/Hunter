.class public Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthScrollView;
.super Landroid/widget/ScrollView;
.source "H5OpenAuthScrollView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthScrollView;->a:I

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 22
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthScrollView;->a:I

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$dimen;->h5_audialog_content_auth_content_maxheight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthScrollView;->a:I

    .line 25
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthScrollView;->a:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 27
    return-void
.end method
