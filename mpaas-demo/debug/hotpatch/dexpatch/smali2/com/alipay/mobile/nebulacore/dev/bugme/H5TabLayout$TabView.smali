.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

.field private final b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 4
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 551
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 552
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 553
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 554
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    .line 558
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v3

    .line 557
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 559
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setGravity(I)V

    .line 560
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a()V

    .line 561
    return-void
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .line 619
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 620
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 623
    .local v0, "colors":[I
    sget-object v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 624
    aput p1, v0, v3

    .line 628
    sget-object v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->EMPTY_STATE_SET:[I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 629
    aput p0, v0, v3

    .line 632
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 595
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 597
    .local v2, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 598
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 601
    .local v1, "textView":Landroid/widget/TextView;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->e(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 602
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 603
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 604
    nop

    .line 605
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->f(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v3

    .line 604
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 607
    const/4 v0, -0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->addView(Landroid/view/View;II)V

    .line 608
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    .line 610
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 613
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :cond_2
    return-void
.end method

.method public getTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->b:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 579
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 581
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 584
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    .line 583
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 588
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    .line 587
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 590
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .line 565
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 566
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 567
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 568
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 570
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 571
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 574
    :cond_1
    return-void
.end method
