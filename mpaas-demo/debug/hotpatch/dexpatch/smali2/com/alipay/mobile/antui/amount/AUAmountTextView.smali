.class public Lcom/alipay/mobile/antui/amount/AUAmountTextView;
.super Lcom/alipay/mobile/antui/basic/AUTextView;
.source "AUAmountTextView.java"


# instance fields
.field private mResBundle:Ljava/lang/String;

.field private mTTFFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "antui_res"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mResBundle:Ljava/lang/String;

    .line 19
    const-string v0, "AlipayNumber"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mTTFFilePath:Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string v0, "antui_res"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mResBundle:Ljava/lang/String;

    .line 19
    const-string v0, "AlipayNumber"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mTTFFilePath:Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string v0, "antui_res"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mResBundle:Ljava/lang/String;

    .line 19
    const-string v0, "AlipayNumber"

    iput-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mTTFFilePath:Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private getTTFFilePath()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mResBundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mTTFFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->mResBundle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->getTTFFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 38
    .local v0, "mTypeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/amount/AUAmountTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    return-void
.end method
