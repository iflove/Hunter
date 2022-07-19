.class final Lcom/alipay/mobile/antui/input/AUInputBox$2;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/input/AUInputBox;->afterInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/input/AUInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/input/AUInputBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/input/AUInputBox;

    .line 221
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$000(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->requestFocus()Z

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->showSoftKeyboard()V

    .line 227
    const/4 v0, 0x0

    return v0
.end method
