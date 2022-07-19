.class public abstract Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "BaseClickableSpan.java"


# static fields
.field public static final CLICK_ENABLE_TIME:I = 0x15e


# instance fields
.field public canClick:Z

.field protected lastClickTime:J

.field public linkTextColor:I

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linkTextColor"    # I

    .line 25
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->canClick:Z

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->mContext:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->linkTextColor:I

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "widget"    # Landroid/view/View;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->lastClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x15e

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->canClick:Z

    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->canClick:Z

    .line 48
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->lastClickTime:J

    .line 49
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 35
    iget v0, p0, Lcom/alipay/mobile/antui/clickspan/BaseClickableSpan;->linkTextColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 37
    return-void
.end method
