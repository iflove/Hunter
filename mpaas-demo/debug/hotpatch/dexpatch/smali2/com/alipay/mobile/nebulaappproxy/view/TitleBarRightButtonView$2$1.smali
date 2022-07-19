.class Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;
.super Ljava/lang/Object;
.source "TitleBarRightButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    .line 400
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iput p2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->a:I

    iput p3, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 403
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->a:I

    if-lez v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 405
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->a:I

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 406
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->b:I

    if-lez v0, :cond_6

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    sget-object v5, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$500(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v2, :cond_0

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMsgCount(IZ)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMsgCount(IZ)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v4

    .line 414
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 416
    .local v0, "density":F
    const/high16 v3, 0x41b80000    # 23.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    .line 417
    .local v3, "badgeMarginLeft":I
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 418
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 419
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    .end local v0    # "density":F
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "badgeMarginLeft":I
    :cond_1
    return-void

    .line 422
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 424
    .restart local v0    # "density":F
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v4

    .line 426
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 427
    const/high16 v1, 0x41e40000    # 28.5f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 428
    .local v1, "badgeMarginLeft":I
    const/high16 v3, 0x41480000    # 12.5f

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 429
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 430
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    .end local v0    # "density":F
    .end local v1    # "badgeMarginLeft":I
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$100(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->syncCornerMarkingDataToUI()V

    return-void

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2$1;->c:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$100(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->syncCornerMarkingDataToUI()V

    .line 438
    :cond_6
    return-void
.end method
