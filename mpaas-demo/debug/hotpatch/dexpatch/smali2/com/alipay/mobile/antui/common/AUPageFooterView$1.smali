.class final Lcom/alipay/mobile/antui/common/AUPageFooterView$1;
.super Ljava/lang/Object;
.source "AUPageFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/common/AUPageFooterView;->addLinkerView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/common/AUPageFooterView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/common/AUPageFooterView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/common/AUPageFooterView;

    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;->b:Lcom/alipay/mobile/antui/common/AUPageFooterView;

    iput p2, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;->b:Lcom/alipay/mobile/antui/common/AUPageFooterView;

    # getter for: Lcom/alipay/mobile/antui/common/AUPageFooterView;->linkClickListener:Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->access$000(Lcom/alipay/mobile/antui/common/AUPageFooterView;)Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;->b:Lcom/alipay/mobile/antui/common/AUPageFooterView;

    # getter for: Lcom/alipay/mobile/antui/common/AUPageFooterView;->linkClickListener:Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUPageFooterView;->access$000(Lcom/alipay/mobile/antui/common/AUPageFooterView;)Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/common/AUPageFooterView$1;->a:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/common/AUPageFooterView$OnLinkClickListener;->OnLinkClick(I)V

    .line 109
    :cond_0
    return-void
.end method
