.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;
.super Ljava/lang/Object;
.source "H5ChooseLocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    .line 319
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    iget-object v0, v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->h(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V

    .line 323
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    iget-object v0, v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    new-instance v1, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    iget-object v2, v2, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    iget-object v3, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    iget-object v3, v3, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {v1, v2, v3}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;-><init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    .line 324
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;

    iget-object v0, v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$5;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void
.end method
