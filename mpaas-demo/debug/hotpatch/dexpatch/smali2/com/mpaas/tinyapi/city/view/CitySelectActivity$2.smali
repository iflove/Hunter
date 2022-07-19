.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;
.super Ljava/lang/Object;
.source "CitySelectActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 95
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    .line 99
    .local v1, "width":I
    move v1, v0

    iget-object v2, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->d(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;I)I

    .line 103
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iget-object v2, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-virtual {v2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 104
    .local v0, "margin":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x3

    .line 105
    .local v2, "cellMaxWidth":I
    iget-object v3, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v3}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v3}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(I)V

    .line 107
    iget-object v3, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v3}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v4}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    :cond_1
    return-void
.end method
