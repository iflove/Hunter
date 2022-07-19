.class final Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TinyMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$1;

    .line 498
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->access$600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    .locals 1
    .param p1, "position"    # I

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->access$600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    return-object v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->getItem(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 512
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 517
    if-nez p2, :cond_0

    .line 518
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;Landroid/content/Context;)V

    move-object p2, v0

    .line 520
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListAdapter;->getItem(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 521
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 522
    return-object p2
.end method
