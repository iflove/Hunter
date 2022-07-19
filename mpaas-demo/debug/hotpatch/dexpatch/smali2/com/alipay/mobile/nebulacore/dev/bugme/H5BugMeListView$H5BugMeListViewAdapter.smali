.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "H5BugMeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H5BugMeListViewAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->getLogDataList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->getLogDataList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->c(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 57
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .restart local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView$H5BugMeListViewAdapter;->a:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->getLogDataList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;

    .line 61
    .local v1, "log":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 62
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 67
    .local v2, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/16 v3, 0x32

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    return-object v0
.end method
