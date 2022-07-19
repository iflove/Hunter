.class final Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;
.super Landroid/widget/FrameLayout;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;->a:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;

    .line 333
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 338
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 340
    .local v1, "realLeft":I
    move v1, v0

    if-eq v0, p2, :cond_0

    .line 341
    sub-int v0, v1, p2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;->offsetLeftAndRight(I)V

    .line 343
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 344
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter$b;->a:Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/GridViewWithHeaderAndFooter;->getMeasuredWidth()I

    move-result v0

    .line 349
    nop

    .line 350
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 349
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 351
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 352
    return-void
.end method
