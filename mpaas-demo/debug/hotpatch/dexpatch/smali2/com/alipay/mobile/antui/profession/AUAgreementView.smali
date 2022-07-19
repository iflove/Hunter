.class public Lcom/alipay/mobile/antui/profession/AUAgreementView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUAgreementView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;
    }
.end annotation


# instance fields
.field private mAgreeTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_agreement_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->setOrientation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->au_agreement_padding_v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 49
    .local v1, "padding_v":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->au_agreement_padding_h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 50
    .local v2, "padding_h":I
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->setPadding(IIII)V

    .line 52
    sget v3, Lcom/alipay/mobile/antui/R$id;->agree_check:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/common/AUCheckIcon;

    iput-object v3, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView;->mCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    .line 53
    sget v3, Lcom/alipay/mobile/antui/R$id;->agree_content:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v3, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView;->mAgreeTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 54
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 55
    iget-object v3, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView;->mAgreeTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setHighlightColor(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView;->mCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setAgreeText(Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p1, "agreeText"    # Landroid/text/SpannableStringBuilder;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView;->mAgreeTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 67
    :cond_0
    return-void
.end method
