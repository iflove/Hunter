.class final Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;
.super Ljava/lang/Object;
.source "TextButtonListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;->b:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    iput p2, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;->b:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    # getter for: Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->itemListener:Lcom/alipay/mobile/antui/api/OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->access$000(Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;)Lcom/alipay/mobile/antui/api/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;->b:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    # getter for: Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->itemListener:Lcom/alipay/mobile/antui/api/OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->access$000(Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;)Lcom/alipay/mobile/antui/api/OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter$1;->a:I

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/antui/api/OnItemClickListener;->onClick(Landroid/view/View;I)V

    .line 69
    :cond_0
    return-void
.end method
