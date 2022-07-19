.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AUHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0

    .line 6396
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6396
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 6399
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 6401
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 6402
    .local v0, "position":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 6405
    .local v1, "adapter":Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    if-nez v1, :cond_0

    goto :goto_2

    .line 6410
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 6414
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 6415
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 6416
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    .line 6418
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6421
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6422
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6423
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 6426
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6427
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6428
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 6430
    :cond_4
    return-void

    .line 6411
    :cond_5
    :goto_1
    return-void

    .line 6406
    :cond_6
    :goto_2
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 6434
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6435
    return v1

    .line 6438
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 6439
    .local v0, "position":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 6442
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_c

    if-nez v2, :cond_1

    goto :goto_1

    .line 6447
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 6451
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 6453
    .local v5, "id":J
    const/4 v7, 0x4

    if-eq p2, v7, :cond_9

    const/16 v7, 0x8

    if-eq p2, v7, :cond_7

    const/16 v1, 0x10

    if-eq p2, v1, :cond_5

    const/16 v1, 0x20

    if-eq p2, v1, :cond_3

    .line 6481
    return v4

    .line 6475
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6476
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v1, p1, v0, v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$4000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;IJ)Z

    move-result v1

    return v1

    .line 6478
    :cond_4
    return v4

    .line 6469
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6470
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v1, p1, v0, v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    .line 6472
    :cond_6
    return v4

    .line 6455
    :cond_7
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v0, :cond_8

    .line 6456
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelection(I)V

    .line 6457
    return v1

    .line 6459
    :cond_8
    return v4

    .line 6462
    :cond_9
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v0, :cond_a

    .line 6463
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelection(I)V

    .line 6464
    return v1

    .line 6466
    :cond_a
    return v4

    .line 6448
    .end local v5    # "id":J
    :cond_b
    :goto_0
    return v4

    .line 6443
    :cond_c
    :goto_1
    return v4
.end method
