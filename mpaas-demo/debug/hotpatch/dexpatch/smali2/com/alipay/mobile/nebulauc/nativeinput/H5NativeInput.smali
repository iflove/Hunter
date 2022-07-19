.class public Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;
.super Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;
.source "H5NativeInput.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setFocusable(Z)V

    .line 34
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setGravity(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setInputType(I)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setMaxLines(I)V

    .line 37
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 38
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setTextColor(I)V

    .line 39
    const/16 v1, 0xb0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setHintTextColor(I)V

    .line 40
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setTextSize(F)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setCursorVisible(Z)V

    .line 42
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;->setPadding(IIII)V

    .line 43
    return-void
.end method
