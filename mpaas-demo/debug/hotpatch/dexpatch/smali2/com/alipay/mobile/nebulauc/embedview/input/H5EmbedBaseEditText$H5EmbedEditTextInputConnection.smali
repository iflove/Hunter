.class Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$H5EmbedEditTextInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "H5EmbedBaseEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H5EmbedEditTextInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$H5EmbedEditTextInputConnection;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    .line 210
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 211
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteSurroundingText : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedBaseEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 255
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 256
    invoke-super {p0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedBaseEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_4

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText$H5EmbedEditTextInputConnection;->this$0:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    .line 218
    .local v0, "editText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 219
    .local v1, "editable":Landroid/text/Editable;
    if-eqz v1, :cond_4

    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 222
    .local v3, "contentLength":I
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getSelectionStart()I

    move-result v4

    .line 223
    .local v4, "selectionStart":I
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getSelectionEnd()I

    move-result v5

    .line 224
    .local v5, "selectionEnd":I
    if-le v4, v5, :cond_0

    .line 225
    move v5, v3

    move v4, v3

    .line 227
    :cond_0
    if-lez v4, :cond_1

    if-ne v4, v5, :cond_1

    .line 228
    add-int/lit8 v4, v4, -0x1

    .line 230
    :cond_1
    if-gez v4, :cond_2

    .line 231
    move v4, v3

    .line 233
    :cond_2
    if-gez v5, :cond_3

    .line 234
    move v5, v3

    .line 236
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "startHalf":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "endHalf":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "finalStr":Ljava/lang/String;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-interface {v1, v6, v10, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 241
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 242
    return v6

    .line 245
    .end local v0    # "editText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "contentLength":I
    .end local v4    # "selectionStart":I
    .end local v5    # "selectionEnd":I
    .end local v7    # "startHalf":Ljava/lang/String;
    .end local v8    # "endHalf":Ljava/lang/String;
    .end local v9    # "finalStr":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
