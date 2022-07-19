.class public Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;
.super Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;
.source "AgreementClickableSpan.java"


# instance fields
.field private urlClickableSpanListener:Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;

.field private urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlPath"    # Ljava/lang/String;
    .param p3, "urlClickableSpanListener"    # Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;

    .line 18
    const v0, -0xef7117

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p2, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->urlPath:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->urlClickableSpanListener:Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;

    .line 21
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->onClick(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->urlPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->canClick:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->urlClickableSpanListener:Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;->urlPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;->onClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
