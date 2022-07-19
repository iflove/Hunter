.class final Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;
.super Ljava/lang/Object;
.source "AUCardMenu.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUCardMenu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;

    iput p2, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "btnCount"    # I

    .line 88
    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "OptionBtnClick: position = %d, btnCount = %d "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$200(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;->b:Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c;->a:Lcom/alipay/mobile/antui/dialog/AUCardMenu;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->mListener:Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$200(Lcom/alipay/mobile/antui/dialog/AUCardMenu;)Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/dialog/AUCardMenu$c$1;->a:I

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/dialog/AUCardMenu$OnMessageItemClickListener;->onItemOptionsClick(II)V

    return-void

    .line 92
    :cond_0
    # getter for: Lcom/alipay/mobile/antui/dialog/AUCardMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUCardMenu;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionBtnClick: mListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
