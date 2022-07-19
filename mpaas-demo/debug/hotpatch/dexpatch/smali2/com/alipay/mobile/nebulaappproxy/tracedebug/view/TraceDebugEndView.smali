.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;
.super Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;
.source "TraceDebugEndView.java"


# instance fields
.field private c:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->setFocusable(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->setOutsideTouchable(Z)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->c:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 65
    const/4 v0, -0x2

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Landroid/view/View;
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 30
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v0

    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    const/4 v0, 0x0

    const/16 v5, 0x1e

    invoke-virtual {v3, v0, v0, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 32
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v6, v2

    .line 33
    .local v6, "button":Landroid/widget/TextView;
    move-object v6, v5

    const-string/jumbo v7, "\u70b9\u51fb\u9000\u51fa\u6027\u80fd\u8c03\u8bd5"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    const/4 v5, -0x1

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    const/16 v7, 0x19

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v2

    .line 38
    .local v8, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v8, v7

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40
    const/4 v7, 0x3

    invoke-virtual {v8, v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 41
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->a:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v5, "container":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 55
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v7

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    return-object v5
.end method

.method public final a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->c:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    .line 94
    return-void
.end method

.method protected final b()I
    .locals 1

    .line 70
    const/4 v0, -0x2

    return v0
.end method

.method public final c()V
    .locals 6

    .line 75
    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->showAtLocation(FLandroid/view/View;III)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 0

    .line 90
    return-void
.end method
