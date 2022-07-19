.class public Lcom/alipay/mobile/antui/basic/AUTextView;
.super Landroid/widget/TextView;
.source "AUTextView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUTextView$a;,
        Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;,
        Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_ELLIPISE_WIDTH:I = 0x270f

.field private static parseEmotionListener:Lcom/alipay/mobile/antui/api/OnParseEmotionListener;


# instance fields
.field private attrHeight:Ljava/lang/String;

.field private attrs:Landroid/util/AttributeSet;

.field private defalutTextSize:F

.field private dynamicTextSize:Z

.field private ellipsizeWidth:I

.field private emojiSize:I

.field private hasEmotion:Z

.field private isAP:Ljava/lang/Boolean;

.field private onTextChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;

.field private onVisibilityChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;

.field private replaceCount:I

.field private supportEmoji:Z

.field private supportEmotion:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->emojiSize:I

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    .line 50
    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->defalutTextSize:F

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setScaleSize()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->emojiSize:I

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    .line 50
    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 98
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->emojiSize:I

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    .line 50
    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->autoSplitText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private autoSplitText()Ljava/lang/String;
    .locals 14

    .line 348
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 349
    .local v2, "content":Ljava/lang/CharSequence;
    move-object v2, v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 350
    return-object v1

    .line 352
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "rawText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 354
    .local v4, "tvPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    move v7, v6

    .line 355
    .local v7, "tvWidth":F
    move v7, v5

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 356
    return-object v1

    .line 360
    :cond_1
    const-string v1, "\r"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "rawTextLines":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v6, "sbNewText":Ljava/lang/StringBuilder;
    array-length v8, v1

    :goto_0
    if-ge v3, v8, :cond_5

    aget-object v9, v1, v3

    .line 363
    .local v9, "rawTextLine":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    cmpg-float v10, v10, v7

    if-gtz v10, :cond_2

    .line 365
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 368
    :cond_2
    const/4 v10, 0x0

    .line 369
    .local v10, "lineWidth":F
    const/4 v11, 0x0

    .local v11, "cnt":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 370
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 371
    .local v12, "ch":C
    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v13, v10

    .line 372
    move v10, v13

    cmpg-float v13, v13, v7

    if-gtz v13, :cond_3

    .line 373
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 375
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/4 v10, 0x0

    .line 377
    add-int/lit8 v11, v11, -0x1

    .line 369
    .end local v12    # "ch":C
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 381
    .end local v10    # "lineWidth":F
    .end local v11    # "cnt":I
    :cond_4
    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .end local v9    # "rawTextLine":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 386
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 388
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getParseEmotionListener()Lcom/alipay/mobile/antui/api/OnParseEmotionListener;
    .locals 1

    .line 413
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUTextView;->parseEmotionListener:Lcom/alipay/mobile/antui/api/OnParseEmotionListener;

    return-object v0
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 122
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->attrs:Landroid/util/AttributeSet;

    .line 123
    if-nez p2, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_height"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->attrHeight:Ljava/lang/String;

    .line 130
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_supportEmoji:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmoji:Z

    .line 131
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_supportEmotion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmotion:Z

    .line 132
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_emojiSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->emojiSize:I

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->TextAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->TextAttr_dynamicTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setApTextSize(Landroid/util/AttributeSet;)V

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->defalutTextSize:F

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setScaleSize()V

    .line 141
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 144
    :cond_1
    return-void
.end method

.method private isSingleLine()Z
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setApTextSize(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->handleAttrs(Landroid/util/AttributeSet;)Ljava/util/Map;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "textSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .local v1, "textSizeStr":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 151
    .local v3, "textSize":I
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v0

    .end local v3    # "textSize":I
    .local v0, "textSize":I
    goto :goto_0

    .line 154
    .end local v0    # "textSize":I
    .restart local v3    # "textSize":I
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 157
    .end local v3    # "textSize":I
    .restart local v0    # "textSize":I
    :goto_0
    int-to-float v3, v0

    invoke-super {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    .end local v0    # "textSize":I
    .end local v1    # "textSizeStr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setParseEmotionListener(Lcom/alipay/mobile/antui/api/OnParseEmotionListener;)V
    .locals 0
    .param p0, "parseEmotionListener"    # Lcom/alipay/mobile/antui/api/OnParseEmotionListener;

    .line 418
    sput-object p0, Lcom/alipay/mobile/antui/basic/AUTextView;->parseEmotionListener:Lcom/alipay/mobile/antui/api/OnParseEmotionListener;

    .line 419
    return-void
.end method

.method private setScaleSize()V
    .locals 3

    .line 197
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 199
    .local v0, "gear":I
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->defalutTextSize:F

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getTextSize(FI)F

    move-result v1

    .line 200
    .local v1, "scaleSize":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const/4 v2, 0x0

    invoke-super {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    .end local v0    # "gear":I
    .end local v1    # "scaleSize":F
    :cond_0
    return-void
.end method

.method private singeLineRender(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 292
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    int-to-float v1, v1

    .line 293
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    .line 292
    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 294
    .local v0, "formatStr":Ljava/lang/CharSequence;
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 295
    return-void
.end method

.method private singleLineEllipsize(I)V
    .locals 6
    .param p1, "width"    # I

    .line 182
    if-gez p1, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 186
    .local v2, "sourceText":Ljava/lang/CharSequence;
    move-object v2, v0

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v4, p1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    .line 186
    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    .local v1, "formatStr":Ljava/lang/CharSequence;
    move-object v1, v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->updateEllipsizeWidth(I)V

    .line 192
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2
    return-void
.end method

.method private updateEllipsizeWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 238
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    .line 239
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    return-void

    .line 241
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    .line 243
    return-void
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    .line 397
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->emojiSize:I

    if-gtz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 400
    :cond_0
    return v0
.end method

.method public getOnTextChangeListener()Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onTextChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;

    return-object v0
.end method

.method public getOnVisibilityChangeListener()Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onVisibilityChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;

    return-object v0
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDynamicTextSize()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 223
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setScaleSize()V

    .line 225
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmoji:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->replaceCount:I

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmotion:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->hasEmotion:Z

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 226
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->isSingleLine()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    return-void

    .line 229
    :cond_2
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getLeftPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getRightPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 230
    .local v0, "width":I
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->ellipsizeWidth:I

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_3

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 233
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->singleLineEllipsize(I)V

    .line 235
    .end local v0    # "width":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 208
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmoji:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmotion:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->isSingleLine()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->attrHeight:Ljava/lang/String;

    const-string v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "gear":I
    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getTextSize(FI)F

    move-result v1

    .line 214
    .local v1, "scaleSize":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 215
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, p1, v3}, Landroid/widget/TextView;->onMeasure(II)V

    .line 216
    .end local v0    # "gear":I
    .end local v1    # "scaleSize":F
    .end local v2    # "size":I
    return-void

    .line 217
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 219
    return-void
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 438
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->isAP:Ljava/lang/Boolean;

    .line 439
    return-void
.end method

.method public setAutoSplitText(Ljava/lang/String;)V
    .locals 3
    .param p1, "rawText"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUTextView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUTextView;B)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 310
    return-void
.end method

.method public setBoldAutoSplitText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 313
    if-nez p1, :cond_0

    .line 314
    const-string p1, ""

    .line 316
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 317
    .local v1, "spannableString":Landroid/text/SpannableString;
    move-object v1, v0

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 318
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/antui/basic/AUTextView$a;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/antui/basic/AUTextView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUTextView;B)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 320
    return-void
.end method

.method public setBoldText(Ljava/lang/String;)V
    .locals 5
    .param p1, "boldText"    # Ljava/lang/String;

    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string p1, ""

    .line 327
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 328
    .local v1, "spannableString":Landroid/text/SpannableString;
    move-object v1, v0

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method public setDynamicTextSize(Z)V
    .locals 0
    .param p1, "dynamicTextSize"    # Z

    .line 409
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->dynamicTextSize:Z

    .line 410
    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0
    .param p1, "emojiSize"    # I

    .line 175
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->emojiSize:I

    .line 176
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 163
    invoke-static {p1}, Lcom/alipay/mobile/antui/basic/AUViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public setOnTextChangeListener(Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;)V
    .locals 0
    .param p1, "onTextChangeListener"    # Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onTextChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;

    .line 84
    return-void
.end method

.method public setOnVisibilityChangeListener(Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;)V
    .locals 0
    .param p1, "onVisibilityChangeListener"    # Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onVisibilityChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;

    .line 71
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0
    .param p1, "isEmoji"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmoji:Z

    .line 168
    return-void
.end method

.method public setSupportEmotion(Z)V
    .locals 0
    .param p1, "isSupportEmotion"    # Z

    .line 171
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmotion:Z

    .line 172
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 247
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmoji:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmotion:Z

    if-eqz v1, :cond_8

    :cond_0
    if-eqz p1, :cond_8

    .line 249
    if-eqz v0, :cond_2

    .line 250
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/text/SpannableString;

    if-nez v0, :cond_1

    .line 251
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getEmojiSize()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->replaceCount:I

    goto :goto_0

    .line 256
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 258
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->supportEmotion:Z

    if-eqz v1, :cond_3

    .line 259
    sget-object v1, Lcom/alipay/mobile/antui/basic/AUTextView;->parseEmotionListener:Lcom/alipay/mobile/antui/api/OnParseEmotionListener;

    if-eqz v1, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getEmojiSize()I

    move-result v3

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alipay/mobile/antui/api/OnParseEmotionListener;->parser(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->hasEmotion:Z

    .line 263
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->replaceCount:I

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->hasEmotion:Z

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 264
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->isSingleLine()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->singeLineRender(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 267
    :cond_5
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 270
    :cond_6
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 273
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onTextChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 274
    nop

    .line 275
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-interface {v1, p0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 277
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_7
    return-void

    .line 278
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onTextChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 280
    nop

    .line 281
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 284
    :cond_9
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->attrs:Landroid/util/AttributeSet;

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v0

    int-to-float p2, v0

    .line 113
    const/4 p1, 0x0

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->defalutTextSize:F

    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setScaleSize()V

    .line 119
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 423
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView;->onVisibilityChangeListener:Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;

    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;->onChange(I)V

    .line 427
    :cond_0
    return-void
.end method
