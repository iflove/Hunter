.class Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mKeyboard:Landroid/inputmethodservice/KeyboardView;

.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyboard()Landroid/view/View;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public isKeyboardShown()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHide()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 149
    .local v0, "visibility":I
    if-nez v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 152
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onRelease()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 48
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 52
    const/4 v1, 0x1

    return v1
.end method

.method public onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    sget v3, Lcom/alipay/mobile/nebulauc/R$xml;->h5_input_num:I

    invoke-direct {v0, p1, v3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 59
    .local v0, "numKeyboard":Landroid/inputmethodservice/Keyboard;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 60
    .local v3, "inflate":Landroid/view/LayoutInflater;
    sget v4, Lcom/alipay/mobile/nebulauc/R$layout;->h5_keyboard:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, "view":Landroid/view/View;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 65
    const/16 v6, 0x51

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 67
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_0
    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget v6, Lcom/alipay/mobile/nebulauc/R$id;->keyboard_view:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/KeyboardView;

    iput-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 75
    invoke-virtual {v6, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 76
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 77
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 78
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v7, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;

    invoke-direct {v7, p0, p2}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 135
    .end local v0    # "numKeyboard":Landroid/inputmethodservice/Keyboard;
    .end local v3    # "inflate":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 136
    .local v0, "visibility":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 140
    :cond_3
    return v1
.end method

.method public setTextChanged(Z)V
    .locals 0
    .param p1, "isEmpty"    # Z

    .line 168
    return-void
.end method
