.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;
.super Ljava/lang/Object;
.source "CitySelectActivity.java"

# interfaces
.implements Lcom/mpaas/tinyapi/FetchCurrentLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b()V
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

    .line 342
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;
    .param p3, "adCode"    # Ljava/lang/String;
    .param p4, "latitude"    # Ljava/lang/Double;
    .param p5, "longitude"    # Ljava/lang/Double;

    .line 345
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iput-object p3, v0, Lcom/mpaas/tinyapi/city/view/City;->adcode:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iput-object p1, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iput-object p4, v0, Lcom/mpaas/tinyapi/city/view/City;->latitude:Ljava/lang/Double;

    .line 348
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iput-object p5, v0, Lcom/mpaas/tinyapi/city/view/City;->longitude:Ljava/lang/Double;

    .line 349
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;Lcom/mpaas/tinyapi/city/view/City;)V

    .line 350
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->notifyDataSetChanged()V

    .line 351
    return-void
.end method

.method public final onLocationError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "locate error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CitySelectActivity"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    sget v2, Lcom/mpaas/commonbiz/R$string;->location_failure:I

    invoke-virtual {v1, v2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 357
    return-void
.end method
