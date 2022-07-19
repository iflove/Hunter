.class public Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AUIconDrawable.java"


# instance fields
.field private final ICONFONT_SCHEMA:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private size:I

.field private text:Ljava/lang/String;

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    const-string v0, "iconfont://"

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->ICONFONT_SCHEMA:Ljava/lang/String;

    .line 31
    const-string v0, "AUIconDrawable"

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->text:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->init(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    const-string v0, "iconfont://"

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->ICONFONT_SCHEMA:Ljava/lang/String;

    .line 31
    const-string v1, "AUIconDrawable"

    iput-object v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->TAG:Ljava/lang/String;

    .line 32
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    .line 33
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    .line 34
    const-string v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->text:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    .line 43
    .local v2, "uri":Landroid/net/Uri;
    move-object v2, v0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "iconSize":Ljava/lang/String;
    const-string v4, "color"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "iconColor":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {p1, v5}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 47
    .local v5, "tempSize":I
    new-instance v6, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7, v5, v0}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, p1, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->init(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "iconSize":Ljava/lang/String;
    .end local v4    # "iconColor":Ljava/lang/String;
    .end local v5    # "tempSize":I
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private getIconfontBundle()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "default"

    return-object v0
.end method

.method private getTTFFilePath()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->getIconfontBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "default.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    .line 60
    if-eqz p2, :cond_1

    .line 61
    iget v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resId:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resString:Ljava/lang/String;

    const-string/jumbo v1, "string"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/antui/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resId:I

    .line 64
    :cond_0
    iget v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->size:I

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->text:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->color:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->isBold:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->getIconfontBundle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->getTTFFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 77
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 78
    .local v1, "width":I
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    if-gez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 79
    .local v2, "height":I
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 80
    iget-object v3, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->text:Ljava/lang/String;

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 95
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 86
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 91
    return-void
.end method
