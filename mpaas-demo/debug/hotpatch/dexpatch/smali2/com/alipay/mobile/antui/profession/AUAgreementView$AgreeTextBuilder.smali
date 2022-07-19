.class public Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;
.super Ljava/lang/Object;
.source "AUAgreementView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/profession/AUAgreementView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgreeTextBuilder"
.end annotation


# instance fields
.field spannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/alipay/mobile/antui/profession/AUAgreementView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/profession/AUAgreementView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/profession/AUAgreementView;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->this$0:Lcom/alipay/mobile/antui/profession/AUAgreementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 76
    return-void
.end method


# virtual methods
.method public appendClickText(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;

    iget-object v2, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->this$0:Lcom/alipay/mobile/antui/profession/AUAgreementView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/profession/AUAgreementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 90
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 91
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 89
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 94
    :cond_0
    return-object p0
.end method

.method public appendCommonText(Ljava/lang/CharSequence;)Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 82
    :cond_0
    return-object p0
.end method

.method public buildText()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUAgreementView$AgreeTextBuilder;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
