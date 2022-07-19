.class final Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;
.super Ljava/lang/Object;
.source "AUImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    .line 795
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;->b:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    iput p2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 798
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;->b:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->itemListener:Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$700(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;->b:Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter;->this$0:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->itemListener:Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$700(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$ButtonListAdapter$1;->a:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog$OnItemClickListener;->onItemClick(I)V

    .line 801
    :cond_0
    return-void
.end method
