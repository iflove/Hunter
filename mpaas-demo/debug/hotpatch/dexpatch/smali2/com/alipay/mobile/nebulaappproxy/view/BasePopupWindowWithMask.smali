.class public abstract Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;
.super Lcom/alipay/mobile/antui/basic/AUPopupWindow;
.source "BasePopupWindowWithMask.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field private c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a:Landroid/content/Context;

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setWidth(I)V

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setHeight(I)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setOutsideTouchable(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setTouchable(Z)V

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method private a(F)V
    .locals 4
    .param p1, "alpha"    # F

    .line 63
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    .line 64
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->d()V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/Object;)Landroid/view/View;
.end method

.method protected abstract b()I
.end method

.method protected d()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 84
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c()V

    .line 96
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->dismiss()V

    .line 97
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 47
    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c:Landroid/view/ViewGroup;

    .line 50
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a(F)V

    .line 51
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public showAtLocation(FLandroid/view/View;III)V
    .locals 0
    .param p1, "alpha"    # F
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a(F)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->c:Landroid/view/ViewGroup;

    .line 59
    :cond_0
    invoke-super {p0, p2, p3, p4, p5}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 60
    return-void
.end method
