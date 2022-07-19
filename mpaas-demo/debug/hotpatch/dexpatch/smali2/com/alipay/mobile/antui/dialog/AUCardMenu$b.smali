.class final Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUCardMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUCardMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

.field private b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 247
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    .line 248
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->a(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->view_btn_combined:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "layout":Landroid/view/View;
    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;-><init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;B)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    .line 255
    sget v2, Lcom/alipay/mobile/antui/R$id;->left_btn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v2, v1, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    sget v2, Lcom/alipay/mobile/antui/R$id;->right_btn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v2, v1, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 257
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "leftText"    # Ljava/lang/String;
    .param p2, "rightText"    # Ljava/lang/String;

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 267
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$b;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$e;->b:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 273
    return-void
.end method
