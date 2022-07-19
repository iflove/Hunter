.class public Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
.super Landroid/widget/RelativeLayout;
.source "H5FragmentRootView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "H5FragmentRootView@"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    .line 33
    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->d:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->e:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "H5FragmentRootView@"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    .line 33
    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->d:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->e:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-string v0, "H5FragmentRootView@"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    .line 33
    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->d:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->e:I

    .line 47
    return-void
.end method

.method private a()V
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->requestApplyInsets()V

    return-void

    .line 114
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->requestFitSystemWindows()V

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    .line 51
    const-string v0, "fullscreen"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    const-string v4, "disable mEnableNewAdjustInput by fullScreen."

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object v0, v3

    .local v0, "value":Ljava/lang/String;
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    goto :goto_0

    .line 57
    .end local v0    # "value":Ljava/lang/String;
    .end local v3    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v4, v3

    .line 58
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "h5_enableNewAdjustInput"

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v3, "value":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string v0, "NO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v3

    move-object v3, v4

    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v0    # "value":Ljava/lang/String;
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_0
    move-object v4, v3

    move-object v3, v0

    .end local v0    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    .restart local v4    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    .line 66
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mEnableNewAdjustInput: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    if-eqz v0, :cond_3

    .line 72
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->e:I

    .line 73
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setFitsSystemWindows(Z)V

    .line 74
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    move-object v1, v4

    .line 76
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 79
    .end local v1    # "window":Landroid/view/Window;
    :cond_3
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    move-object v0, p1

    .line 131
    .local v0, "afterTransform":Landroid/view/WindowInsets;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 134
    .local v3, "top":I
    move v3, v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v1, v2

    .line 135
    .end local v3    # "top":I
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 136
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 137
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 138
    .local v4, "bottom":I
    iput v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->d:I

    .line 139
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 141
    .end local v1    # "top":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onApplyWindowInsets, before: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAttachedToWindow mNeedRestoreWindowInsets: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    .line 95
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 99
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 100
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->b:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDetachedFromWindow mWindowInsetBottom: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->d:I

    if-lez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->c:Z

    .line 106
    :cond_0
    return-void
.end method
