.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;
.super Ljava/lang/Object;
.source "AUHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0

    .line 6271
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6271
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 6274
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6275
    return-void

    .line 6278
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6280
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 6281
    .local v3, "child":Landroid/view/View;
    move-object v3, v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6282
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v4, 0x0

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I
    invoke-static {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6284
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_4

    .line 6285
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 6286
    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6288
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3600(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    .line 6289
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v1

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3700(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;ILandroid/view/View;)V

    .line 6290
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->refreshDrawableState()V

    .line 6292
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I

    move-result v1

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3700(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;ILandroid/view/View;)V

    .line 6293
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->refreshDrawableState()V

    .line 6295
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isLongClickable()Z

    move-result v0

    .line 6297
    .local v0, "longClickable":Z
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6298
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6300
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v1, :cond_2

    instance-of v1, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2

    .line 6301
    if-eqz v0, :cond_1

    .line 6302
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 6303
    .local v1, "longPressTimeout":I
    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 6304
    .end local v1    # "longPressTimeout":I
    goto :goto_0

    .line 6305
    :cond_1
    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 6310
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 6311
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->triggerCheckForLongPress()V
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$3900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void

    .line 6313
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v1, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6315
    .end local v0    # "longClickable":Z
    return-void

    .line 6316
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 6319
    :cond_5
    return-void
.end method
