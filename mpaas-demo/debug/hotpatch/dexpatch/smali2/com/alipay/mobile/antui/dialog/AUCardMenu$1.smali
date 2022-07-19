.class final Lcom/alipay/mobile/antui/dialog/AUCardMenu$1;
.super Ljava/lang/Object;
.source "AUCardMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUCardMenu;->setOnClickListener(Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    .line 297
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$1;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 300
    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "OnItemClick: position = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$1;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$200(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$1;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$200(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;->onItemClick(I)V

    return-void

    .line 304
    :cond_0
    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnItemClick: mListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method
