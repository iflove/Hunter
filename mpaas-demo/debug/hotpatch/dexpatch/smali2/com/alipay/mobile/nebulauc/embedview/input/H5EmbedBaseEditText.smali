.class public Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
.super Landroid/widget/EditText;
.source "H5EmbedBaseEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$H5EmbedEditTextInputConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5EmbedBaseEditText"


# instance fields
.field private inputFilter:Landroid/text/InputFilter;

.field private mOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private convertRGBStr2Color(Ljava/lang/String;)I
    .locals 6
    .param p1, "rgbStr"    # Ljava/lang/String;

    .line 181
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 182
    .local v0, "length":I
    const/4 v1, 0x4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "subStr":Ljava/lang/String;
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "rgb":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 185
    .end local v0    # "length":I
    .end local v1    # "subStr":Ljava/lang/String;
    .end local v2    # "rgb":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5EmbedBaseEditText"

    const-string v2, "convertRGBStr2Color, "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getTextSizeInPx(Ljava/lang/String;)F
    .locals 4
    .param p1, "sizeStr"    # Ljava/lang/String;

    .line 120
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 122
    .local v0, "length":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 123
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x2

    .line 124
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 123
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    return v1

    .line 129
    .end local v0    # "length":I
    :cond_0
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5EmbedBaseEditText"

    const-string v2, "getTextSizeInPx "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private safeSetSelection(I)V
    .locals 3
    .param p1, "length"    # I

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5EmbedBaseEditText"

    const-string v2, "safeSetSelection "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 206
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$H5EmbedEditTextInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$H5EmbedEditTextInputConnection;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyPreIme keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedBaseEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 195
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->mOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;->onKeyPreIme()V

    .line 201
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setCursor(II)V
    .locals 1
    .param p1, "textLength"    # I
    .param p2, "cursor"    # I

    .line 106
    if-gez p2, :cond_1

    .line 107
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 108
    move p2, p1

    goto :goto_0

    .line 110
    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    .line 112
    :cond_1
    if-le p2, p1, :cond_2

    .line 113
    move p2, p1

    .line 115
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->safeSetSelection(I)V

    .line 116
    return-void
.end method

.method public setHintTextColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "colorStr"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->convertRGBStr2Color(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "colorInt":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setHintTextColor(I)V

    .line 60
    return-void
.end method

.method public setImeOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnType"    # Ljava/lang/String;

    .line 164
    const-string v0, "send"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOptions(I)V

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "search"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOptions(I)V

    goto :goto_0

    .line 168
    :cond_1
    const-string v0, "next"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOptions(I)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "go"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOptions(I)V

    goto :goto_0

    .line 172
    :cond_3
    const-string v0, "done"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOptions(I)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setImeOptions(I)V

    .line 177
    :goto_0
    return-void
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxLength"    # I

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->inputFilter:Landroid/text/InputFilter;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$1;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->inputFilter:Landroid/text/InputFilter;

    .line 83
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    .line 84
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->inputFilter:Landroid/text/InputFilter;

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 87
    :cond_1
    new-array v1, v1, [Landroid/text/InputFilter;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->inputFilter:Landroid/text/InputFilter;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 89
    :goto_0
    return-void
.end method

.method public setOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->mOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;

    .line 50
    return-void
.end method

.method public setSelection(III)V
    .locals 1
    .param p1, "textLength"    # I
    .param p2, "selectStart"    # I
    .param p3, "selectEnd"    # I

    .line 142
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eq p3, v0, :cond_7

    .line 143
    :cond_0
    if-ne p2, v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->safeSetSelection(I)V

    goto :goto_2

    .line 146
    :cond_1
    if-gez p2, :cond_2

    .line 147
    const/4 p2, 0x0

    .line 149
    :cond_2
    if-eq p3, v0, :cond_4

    if-le p3, p1, :cond_3

    goto :goto_0

    .line 151
    :cond_3
    if-gez p3, :cond_5

    .line 152
    const/4 p3, 0x0

    goto :goto_1

    .line 150
    :cond_4
    :goto_0
    move p3, p1

    .line 154
    :cond_5
    :goto_1
    if-lt p2, p3, :cond_6

    .line 155
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->safeSetSelection(I)V

    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setSelection(II)V

    .line 161
    :cond_7
    :goto_2
    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 1
    .param p1, "textAlign"    # Ljava/lang/String;

    .line 92
    const-string v0, "center"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setGravity(I)V

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "right"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setGravity(I)V

    goto :goto_0

    .line 97
    :cond_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setGravity(I)V

    .line 99
    :goto_0
    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "rgbStr"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->convertRGBStr2Color(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "colorInt":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTextColor(I)V

    .line 55
    return-void
.end method

.method public setTextSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "sizeInPx"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getTextSizeInPx(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTextSize(IF)V

    .line 103
    return-void
.end method
