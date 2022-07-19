.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;
.super Ljava/lang/Object;
.source "H5ChooseLocationActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 252
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 260
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->h(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v1

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    new-instance v1, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {v1, v2, v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    .line 265
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$3;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 256
    return-void
.end method
