.class final Lcom/alipay/mobile/antui/basic/AUFilterMenuView$1;
.super Ljava/lang/Object;
.source "AUFilterMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->updateMenusFilte(Lcom/alipay/mobile/antui/model/FilterCategoryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$1;->a:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$1;->a:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->updateData()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->access$000(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V

    .line 130
    return-void
.end method
