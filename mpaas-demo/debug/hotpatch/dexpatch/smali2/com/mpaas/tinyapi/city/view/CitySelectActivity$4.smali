.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;
.super Ljava/lang/Object;
.source "CitySelectActivity.java"

# interfaces
.implements Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Ljava/util/Map;)V
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

    .line 255
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mpaas/tinyapi/city/view/City;)V
    .locals 3
    .param p1, "city"    # Lcom/mpaas/tinyapi/city/view/City;

    .line 258
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iget-object v0, v0, Lcom/mpaas/tinyapi/city/view/City;->adcode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    sget v2, Lcom/mpaas/commonbiz/R$string;->locate_in_progress:I

    invoke-virtual {v1, v2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->notifyDataSetChanged()V

    .line 261
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->e(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    .line 262
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->f(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 265
    .local v1, "response":Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;->b:Z

    .line 266
    iput-object p1, v1, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;->a:Lcom/mpaas/tinyapi/city/view/City;

    .line 267
    invoke-static {}, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a()Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a(Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;)V

    .line 268
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->finish()V

    .line 269
    return-void
.end method
