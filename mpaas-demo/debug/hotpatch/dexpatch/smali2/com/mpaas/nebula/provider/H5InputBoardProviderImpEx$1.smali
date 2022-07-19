.class Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpEx.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mKeyboard:Landroid/inputmethodservice/KeyboardView;

.field final synthetic this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    .line 54
    iput-object p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyboard()Landroid/view/View;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method public isKeyboardShown()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

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

    .line 160
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 164
    .local v0, "visibility":I
    if-nez v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 167
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onRelease()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 63
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 67
    const/4 v1, 0x1

    return v1
.end method

.method public onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 72
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    sget v3, Lcom/mpaas/nebula/adapter/R$xml;->mpadapter_h5_input_num:I

    invoke-direct {v0, p1, v3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 74
    .local v0, "numKeyboard":Landroid/inputmethodservice/Keyboard;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 75
    .local v3, "inflate":Landroid/view/LayoutInflater;
    sget v4, Lcom/mpaas/nebula/adapter/R$layout;->h5_keyboard:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "view":Landroid/view/View;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 80
    const/16 v6, 0x51

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 82
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_0
    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    sget v6, Lcom/mpaas/nebula/adapter/R$id;->keyboard_view:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/KeyboardView;

    iput-object v6, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 90
    invoke-virtual {v6, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 91
    iget-object v6, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 92
    iget-object v6, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 93
    iget-object v6, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v7, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;

    invoke-direct {v7, p0, p2}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 150
    .end local v0    # "numKeyboard":Landroid/inputmethodservice/Keyboard;
    .end local v3    # "inflate":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    .line 151
    .local v0, "visibility":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->mKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 155
    :cond_3
    return v1
.end method

.method public setTextChanged(Z)V
    .locals 0
    .param p1, "isEmpty"    # Z

    .line 183
    return-void
.end method
