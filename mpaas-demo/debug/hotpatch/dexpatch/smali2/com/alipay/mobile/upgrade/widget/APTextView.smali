.class public Lcom/alipay/mobile/upgrade/widget/APTextView;
.super Landroid/widget/TextView;
.source "APTextView.java"

# interfaces
.implements Lcom/alipay/mobile/upgrade/widget/APViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;,
        Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_ELLIPISE_WIDTH:I = 0x270f

.field private static final NOT_SINLE_LINE:I = 0x0

.field private static final SINGLE_LINE:I = 0x1

.field private static final UNKNOW_SINGLE_LINE:I = -0x1

.field private static parseEmotionListener:Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;

.field private static textSizeGearGetter:Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;


# instance fields
.field private attrHeight:Ljava/lang/String;

.field private defalutTextSize:F

.field private dynamicTextSize:Z

.field private ellipsizeWidth:I

.field private emojiSize:I

.field private hasEmotion:Z

.field private onTextChangeListener:Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;

.field private replaceCount:I

.field private supportEmoji:Z

.field private supportEmotion:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->emojiSize:I

    .line 39
    iput-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    .line 44
    const/16 p1, 0x270f

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->defalutTextSize:F

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setScaleSize()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->emojiSize:I

    .line 39
    iput-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    .line 44
    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 p3, 0x0

    iput p3, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->emojiSize:I

    .line 39
    iput-boolean p3, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    .line 44
    const/16 p3, 0x270f

    iput p3, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/upgrade/widget/APTextView;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->autoSplitText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private autoSplitText()Ljava/lang/String;
    .locals 15

    .line 298
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    instance-of v1, v0, Landroid/text/Spanned;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 300
    return-object v2

    .line 302
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 305
    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_1

    .line 306
    return-object v2

    .line 310
    :cond_1
    const-string v2, "\r"

    const-string v6, ""

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    array-length v8, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    aget-object v10, v2, v9

    .line 313
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    cmpg-float v11, v11, v4

    if-gtz v11, :cond_2

    .line 315
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 318
    :cond_2
    nop

    .line 319
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v11, v13, :cond_4

    .line 320
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 321
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    add-float/2addr v12, v14

    .line 322
    cmpg-float v14, v12, v4

    if-gtz v14, :cond_3

    .line 323
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 325
    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    nop

    .line 327
    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    .line 319
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 331
    :cond_4
    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 335
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 336
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 338
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParseEmotionListener()Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;
    .locals 1

    .line 363
    sget-object v0, Lcom/alipay/mobile/upgrade/widget/APTextView;->parseEmotionListener:Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;

    return-object v0
.end method

.method public static getTextSizeGearGetter()Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;
    .locals 1

    .line 372
    sget-object v0, Lcom/alipay/mobile/upgrade/widget/APTextView;->textSizeGearGetter:Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;

    return-object v0
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "layout_height"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->attrHeight:Ljava/lang/String;

    .line 97
    sget p2, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_supportEmoji:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmoji:Z

    .line 98
    sget p2, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_supportEmotion:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmotion:Z

    .line 99
    sget p2, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_emojiSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->emojiSize:I

    .line 100
    sget p2, Lcom/alipay/mobile/android/security/upgrade/R$styleable;->emojiAttr_dynamicTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getTextSize()F

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->defalutTextSize:F

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setScaleSize()V

    .line 104
    return-void
.end method

.method private isSingleLine()I
    .locals 2

    .line 255
    nop

    .line 257
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mSingleLine"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_2

    .line 259
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 262
    :goto_0
    if-eqz v0, :cond_0

    .line 263
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 268
    :catch_2
    move-exception v0

    goto :goto_1

    .line 267
    :catch_3
    move-exception v0

    .line 273
    :cond_0
    :goto_1
    nop

    .line 274
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static setParseEmotionListener(Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;)V
    .locals 0

    .line 368
    sput-object p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->parseEmotionListener:Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;

    .line 369
    return-void
.end method

.method private setScaleSize()V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/upgrade/widget/APTextView;->textSizeGearGetter:Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->defalutTextSize:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 146
    invoke-static {v1, v0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->getTextSize(FI)F

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 148
    invoke-static {v1, v0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    :cond_0
    return-void
.end method

.method public static setTextSizeGearGetter(Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;)V
    .locals 0

    .line 376
    sput-object p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->textSizeGearGetter:Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;

    .line 377
    return-void
.end method

.method private singeLineRender(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    int-to-float v1, v1

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    .line 242
    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 244
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 245
    return-void
.end method

.method private singleLineEllipsize(I)V
    .locals 4

    .line 128
    if-gez p1, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    nop

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    .line 132
    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/widget/APTextView;->updateEllipsizeWidth(I)V

    .line 138
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_2
    return-void
.end method

.method private updateEllipsizeWidth(I)V
    .locals 2

    .line 187
    iget v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    .line 188
    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    .line 192
    :goto_0
    return-void
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    .line 347
    iget v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->emojiSize:I

    if-gtz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 350
    :cond_0
    return v0
.end method

.method public getOnTextChangeListener()Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->onTextChangeListener:Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;

    return-object v0
.end method

.method public isDynamicTextSize()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 171
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 172
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setScaleSize()V

    .line 173
    iget-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmoji:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->replaceCount:I

    if-gtz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmotion:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->hasEmotion:Z

    if-eqz p1, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 174
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->isSingleLine()I

    move-result p1

    .line 175
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    .line 176
    return-void

    .line 178
    :cond_2
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getLeftPaddingOffset()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getRightPaddingOffset()I

    move-result p1

    sub-int/2addr p4, p1

    .line 179
    iget p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->ellipsizeWidth:I

    const/16 p2, 0x270f

    if-eq p1, p2, :cond_3

    .line 180
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 182
    :cond_3
    invoke-direct {p0, p4}, Lcom/alipay/mobile/upgrade/widget/APTextView;->singleLineEllipsize(I)V

    .line 184
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 156
    iget-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmoji:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmotion:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->isSingleLine()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->attrHeight:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    nop

    .line 158
    sget-object p2, Lcom/alipay/mobile/upgrade/widget/APTextView;->textSizeGearGetter:Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;

    if-eqz p2, :cond_1

    .line 159
    invoke-interface {p2}, Lcom/alipay/mobile/upgrade/widget/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v1

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p2, v0}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, v1}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->getTextSize(FI)F

    move-result p2

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getTextSize()F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 163
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 164
    goto :goto_0

    .line 165
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 167
    :goto_0
    return-void
.end method

.method public setAutoSplitText(Ljava/lang/String;)V
    .locals 2

    .line 278
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;-><init>(Lcom/alipay/mobile/upgrade/widget/APTextView;Lcom/alipay/mobile/upgrade/widget/APTextView$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 280
    return-void
.end method

.method public setDynamicTextSize(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->dynamicTextSize:Z

    .line 360
    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->emojiSize:I

    .line 121
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 108
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public setOnTextChangeListener(Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->onTextChangeListener:Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;

    .line 68
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmoji:Z

    .line 113
    return-void
.end method

.method public setSupportEmotion(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmotion:Z

    .line 117
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    .line 196
    iget-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmoji:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmotion:Z

    if-eqz v1, :cond_8

    :cond_0
    if-eqz p1, :cond_8

    .line 198
    if-eqz v0, :cond_2

    .line 199
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/text/SpannableString;

    if-nez v0, :cond_1

    .line 200
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getEmojiSize()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->replaceCount:I

    goto :goto_0

    .line 205
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->supportEmotion:Z

    if-eqz v1, :cond_3

    .line 208
    sget-object v1, Lcom/alipay/mobile/upgrade/widget/APTextView;->parseEmotionListener:Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getEmojiSize()I

    move-result v3

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alipay/mobile/upgrade/widget/emotion/OnParseEmotionListener;->parser(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->hasEmotion:Z

    .line 212
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->replaceCount:I

    if-gtz v1, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->hasEmotion:Z

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 213
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->isSingleLine()I

    move-result v1

    .line 214
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 215
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->singeLineRender(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 217
    :cond_5
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 219
    :goto_1
    goto :goto_2

    .line 220
    :cond_6
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 223
    :goto_2
    iget-object p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->onTextChangeListener:Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 224
    nop

    .line 225
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-interface {p2, p0, p1}, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 227
    :cond_7
    goto :goto_3

    .line 228
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 229
    iget-object p2, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->onTextChangeListener:Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 230
    nop

    .line 231
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 234
    :cond_9
    :goto_3
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView;->defalutTextSize:F

    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setScaleSize()V

    .line 91
    return-void
.end method
