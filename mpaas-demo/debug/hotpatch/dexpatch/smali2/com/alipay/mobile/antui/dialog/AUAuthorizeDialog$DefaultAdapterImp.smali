.class public Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$DefaultAdapterImp;
.super Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;
.source "AUAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAdapterImp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthDetailLayoutID()I
    .locals 1

    .line 213
    sget v0, Lcom/alipay/mobile/antui/R$layout;->part_authorize_auth_details:I

    return v0
.end method

.method public getAuthProtocolsLayoutID()I
    .locals 1

    .line 234
    sget v0, Lcom/alipay/mobile/antui/R$layout;->part_authorize_auth_protocols:I

    return v0
.end method

.method public inflateAuthDetail(Landroid/view/LayoutInflater;Landroid/view/View;[Ljava/lang/String;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layout"    # Landroid/view/View;
    .param p3, "authDetails"    # [Ljava/lang/String;

    .line 218
    sget v0, Lcom/alipay/mobile/antui/R$id;->auth_ll_auth_details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 220
    .local v0, "llAuthDetails":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_1

    .line 221
    sget v3, Lcom/alipay/mobile/antui/R$layout;->item_auth_detail:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 222
    .local v2, "view":Landroid/view/View;
    move-object v2, v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 223
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 226
    :cond_0
    sget v4, Lcom/alipay/mobile/antui/R$id;->auth_tv_auth_detail:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 227
    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public inflateAuthProtocols(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layout"    # Landroid/view/View;
    .param p3, "spannedString"    # Ljava/lang/CharSequence;

    .line 239
    sget v0, Lcom/alipay/mobile/antui/R$id;->auth_tv_protocols:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 240
    .local v1, "tvAuthProtocols":Landroid/widget/TextView;
    move-object v1, v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 241
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 242
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 243
    return-void
.end method
