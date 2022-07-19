.class public Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "H5LinkMovementMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 42
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 43
    .local v2, "action":I
    move v2, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-nez v2, :cond_3

    .line 45
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 46
    .local v0, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 48
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    .line 49
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 51
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 55
    .local v7, "layout":Landroid/text/Layout;
    move-object v7, v5

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 56
    .local v5, "line":I
    int-to-float v8, v0

    invoke-virtual {v7, v5, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 58
    .local v8, "off":I
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v8, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ClickableSpan;

    .line 60
    .local v6, "link":[Landroid/text/style/ClickableSpan;
    move-object v6, v9

    array-length v9, v9

    if-eqz v9, :cond_2

    .line 61
    if-ne v2, v3, :cond_1

    .line 63
    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;

    aget-object v1, v6, v1

    check-cast v1, Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;->onLinkClick(Ljava/lang/String;)V

    .line 70
    :cond_1
    return v3

    .line 72
    :cond_2
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 75
    .end local v0    # "x":I
    .end local v4    # "y":I
    .end local v5    # "line":I
    .end local v6    # "link":[Landroid/text/style/ClickableSpan;
    .end local v7    # "layout":Landroid/text/Layout;
    .end local v8    # "off":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnLinkClickListener(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;)V
    .locals 0
    .param p1, "onLinkClickListener"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;

    .line 25
    return-void
.end method
