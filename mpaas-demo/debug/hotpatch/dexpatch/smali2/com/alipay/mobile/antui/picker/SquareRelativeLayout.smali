.class public Lcom/alipay/mobile/antui/picker/SquareRelativeLayout;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "SquareRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 30
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/alipay/mobile/antui/picker/SquareRelativeLayout;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/picker/SquareRelativeLayout;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/antui/picker/SquareRelativeLayout;->setMeasuredDimension(II)V

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/SquareRelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 38
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 41
    invoke-super {p0, p1, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->onMeasure(II)V

    .line 42
    return-void
.end method
