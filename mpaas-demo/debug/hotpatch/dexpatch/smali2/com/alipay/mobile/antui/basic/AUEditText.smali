.class public Lcom/alipay/mobile/antui/basic/AUEditText;
.super Landroid/widget/EditText;
.source "AUEditText.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;
    }
.end annotation


# instance fields
.field private defalutTextSize:F

.field private dynamicTextSize:Z

.field private emojiMaxRenderLength:I

.field private emojiSize:I

.field private isAP:Ljava/lang/Boolean;

.field public listener:Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;

.field private supportEmoji:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    .line 28
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiSize:I

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->dynamicTextSize:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->defalutTextSize:F

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setScaleSize()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    .line 28
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiSize:I

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->dynamicTextSize:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUEditText;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    .line 28
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiSize:I

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->dynamicTextSize:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUEditText;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_supportEmoji:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    .line 85
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_emojiSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiSize:I

    .line 86
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->EmojiAttr_emojiMaxRenderLength:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->TextAttr:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->TextAttr_dynamicTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->dynamicTextSize:Z

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->defalutTextSize:F

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setScaleSize()V

    .line 93
    return-void
.end method

.method private setScaleSize()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->dynamicTextSize:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 98
    .local v0, "gear":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->defalutTextSize:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 99
    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getTextSize(FI)F

    move-result v1

    .line 100
    .local v1, "scaleSize":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v2

    .line 101
    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const/4 v2, 0x2

    invoke-super {p0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 105
    .end local v0    # "gear":I
    .end local v1    # "scaleSize":F
    :cond_0
    return-void
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    .line 168
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiSize:I

    if-gtz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 171
    :cond_0
    return v0
.end method

.method public getUbbStr()Ljava/lang/String;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "source":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-object v1

    .line 127
    :catch_0
    move-exception v1

    .line 129
    return-object v0
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 143
    move-object v0, p0

    if-eqz p1, :cond_6

    iget-boolean v1, v0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    if-nez v1, :cond_0

    goto :goto_3

    .line 147
    :cond_0
    if-lez p3, :cond_1

    if-nez p4, :cond_1

    .line 148
    const-string v1, "APEditText"

    const-string v2, "lengthBefore > 0 && lengthAfter == 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    :cond_1
    const/4 v1, -0x1

    if-nez p3, :cond_3

    if-lez p4, :cond_3

    .line 150
    sub-int v8, p4, p3

    .line 151
    .local v8, "textLength":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getEmojiSize()I

    move-result v4

    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    if-lez v5, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    :goto_0
    move/from16 v5, p2

    move v6, v8

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;IIII)V

    .line 153
    .end local v8    # "textLength":I
    goto :goto_2

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    .line 155
    .local v3, "tempText":Landroid/text/Spannable;
    move-object v10, v2

    .end local v3    # "tempText":Landroid/text/Spannable;
    .local v10, "tempText":Landroid/text/Spannable;
    if-eqz v2, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getEmojiSize()I

    move-result v11

    const/4 v12, 0x0

    .line 157
    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v13

    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    if-lez v2, :cond_4

    move v14, v2

    goto :goto_1

    :cond_4
    const/4 v14, -0x1

    .line 156
    :goto_1
    invoke-static/range {v9 .. v14}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;IIII)V

    .line 161
    .end local v10    # "tempText":Landroid/text/Spannable;
    :cond_5
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 162
    return-void

    .line 144
    :cond_6
    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 145
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 177
    const v0, 0x1020022

    if-ne p1, v0, :cond_1

    .line 178
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->listener:Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;->onPaste()V

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->isAP:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method public setEmojiMaxRenderLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 116
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiMaxRenderLength:I

    .line 117
    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0
    .param p1, "emojiSize"    # I

    .line 108
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->emojiSize:I

    .line 109
    return-void
.end method

.method public setPasteListener(Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->listener:Lcom/alipay/mobile/antui/basic/AUEditText$OnPasteListener;

    .line 55
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0
    .param p1, "isSupport"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    .line 113
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 134
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->supportEmoji:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 138
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUEditText;->defalutTextSize:F

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUEditText;->setScaleSize()V

    .line 80
    return-void
.end method
