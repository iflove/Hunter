.class final Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;
.super Ljava/lang/Object;
.source "AUCardOptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setChildView(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

.field final synthetic b:Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

.field final synthetic c:Lcom/alipay/mobile/antui/basic/AUCardOptionView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUCardOptionView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUCardOptionView;

    .line 305
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->c:Lcom/alipay/mobile/antui/basic/AUCardOptionView;

    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->a:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    iput-object p3, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->b:Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->c:Lcom/alipay/mobile/antui/basic/AUCardOptionView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mListner:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->access$100(Lcom/alipay/mobile/antui/basic/AUCardOptionView;)Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->c:Lcom/alipay/mobile/antui/basic/AUCardOptionView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mListner:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->access$100(Lcom/alipay/mobile/antui/basic/AUCardOptionView;)Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->a:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;->b:Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    iget v2, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->d:I

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;->onCardOptionClick(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;I)V

    return-void

    .line 311
    :cond_0
    # getter for: Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mListner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method
