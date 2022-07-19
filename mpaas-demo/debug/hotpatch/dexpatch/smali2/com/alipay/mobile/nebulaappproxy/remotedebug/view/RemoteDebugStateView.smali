.class public Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;
.super Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;
.source "RemoteDebugStateView.java"


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->setOutsideTouchable(Z)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 80
    const/4 v0, -0x2

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Landroid/view/View;
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 38
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v0

    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 39
    const/4 v0, 0x0

    const/16 v5, 0x1e

    invoke-virtual {v3, v0, v0, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 40
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    .line 41
    const-string/jumbo v6, "\u547d\u4e2d\u65ad\u70b9..."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 45
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v2

    .line 47
    .local v7, "button":Landroid/widget/TextView;
    move-object v7, v5

    const-string/jumbo v8, "\u9000\u51fa"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    const/16 v5, 0x19

    const/16 v8, 0x8

    invoke-virtual {v7, v5, v8, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v2

    .line 52
    .local v8, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v8, v5

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 53
    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54
    const/4 v5, 0x3

    invoke-virtual {v8, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 55
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v5, "container":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 69
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v6

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    return-object v5
.end method

.method public final a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    .line 117
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method protected final b()I
    .locals 1

    .line 85
    const/4 v0, -0x2

    return v0
.end method

.method public final c()V
    .locals 6

    .line 95
    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->showAtLocation(FLandroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteDebugStateView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 0

    .line 113
    return-void
.end method
