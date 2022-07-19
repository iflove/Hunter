.class final Lcom/alipay/mobile/antui/input/AUParagraphInputBox$1;
.super Ljava/lang/Object;
.source "AUParagraphInputBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/input/AUParagraphInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/input/AUParagraphInputBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/input/AUParagraphInputBox;

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUParagraphInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUParagraphInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->paraTextView:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->access$100(Lcom/alipay/mobile/antui/input/AUParagraphInputBox;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/antui/input/AUParagraphInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUParagraphInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->maxLength:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/input/AUParagraphInputBox;->access$000(Lcom/alipay/mobile/antui/input/AUParagraphInputBox;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 63
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 67
    return-void
.end method
