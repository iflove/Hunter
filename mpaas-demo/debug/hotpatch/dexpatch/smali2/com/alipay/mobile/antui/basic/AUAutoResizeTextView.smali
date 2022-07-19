.class public Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;
.super Lcom/alipay/mobile/antui/basic/AUTextView;
.source "AUAutoResizeTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mOriginTextSize:F

.field private mPaint:Landroid/graphics/Paint;

.field private needRemeasure:Z

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->width:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->needRemeasure:Z

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->width:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->needRemeasure:Z

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->width:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->needRemeasure:Z

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mOriginTextSize:F

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    return-void
.end method

.method private reSizeText(FF)V
    .locals 5
    .param p1, "viewWidth"    # F
    .param p2, "textWidth"    # F

    .line 70
    const-string v0, "AUAutoResizeTextView"

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, " reSizeText viewWidth : 0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->needRemeasure:Z

    .line 73
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p2, p1

    if-lez v2, :cond_1

    .line 76
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mOriginTextSize:F

    mul-float v2, v2, p1

    div-float/2addr v2, p2

    .line 77
    .local v2, "resultSize":F
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " resultSize : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->setTextSize(IF)V

    .line 79
    .end local v2    # "resultSize":F
    return-void

    .line 80
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mOriginTextSize:F

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->setTextSize(IF)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mOriginTextSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mOriginTextSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 62
    .local v0, "textWidth":F
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->width:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 63
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->reSizeText(FF)V

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->reSizeText(FF)V

    .line 67
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 87
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->onMeasure(II)V

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->needRemeasure:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "AUAutoResizeTextView"

    const-string/jumbo v1, "onMeasure needRemeasure"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->reSizeText(FF)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->needRemeasure:Z

    .line 93
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 57
    return-void
.end method

.method public setTextWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .line 48
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUAutoResizeTextView;->width:F

    .line 49
    return-void
.end method
