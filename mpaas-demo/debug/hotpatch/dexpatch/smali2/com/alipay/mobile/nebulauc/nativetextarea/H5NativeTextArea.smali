.class public Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;
.super Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;
.source "H5NativeTextArea.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setFocusable(Z)V

    .line 30
    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setGravity(I)V

    .line 31
    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setInputType(I)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setSingleLine(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setHorizontallyScrolling(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setMinLines(I)V

    .line 35
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setTextColor(I)V

    .line 36
    const/16 v2, 0xb0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setHintTextColor(I)V

    .line 37
    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setTextSize(F)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setCursorVisible(Z)V

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;->setPadding(IIII)V

    .line 40
    return-void
.end method
