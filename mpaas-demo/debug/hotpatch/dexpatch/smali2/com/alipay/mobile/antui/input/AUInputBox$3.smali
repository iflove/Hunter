.class final Lcom/alipay/mobile/antui/input/AUInputBox$3;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/input/AUInputBox;->addClearListener()V
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

    .line 241
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUInputBox$3;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$3;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mInputEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$000(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$3;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$200(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$3;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mCleanButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$300(Lcom/alipay/mobile/antui/input/AUInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUInputBox$3;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mCleanButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$300(Lcom/alipay/mobile/antui/input/AUInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUInputBox$3;->a:Lcom/alipay/mobile/antui/input/AUInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUInputBox;->mClearButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/input/AUInputBox;->access$200(Lcom/alipay/mobile/antui/input/AUInputBox;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 249
    :cond_0
    return-void
.end method
