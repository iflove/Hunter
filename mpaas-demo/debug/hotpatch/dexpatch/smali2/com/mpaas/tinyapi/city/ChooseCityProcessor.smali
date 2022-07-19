.class public Lcom/mpaas/tinyapi/city/ChooseCityProcessor;
.super Lcom/mpaas/tinyapi/RequestProcessor;
.source "ChooseCityProcessor.java"


# static fields
.field private static a:Lcom/mpaas/tinyapi/city/ChooseCityProcessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mpaas/tinyapi/RequestProcessor;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcom/mpaas/tinyapi/city/ChooseCityProcessor;
    .locals 1

    .line 19
    sget-object v0, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a:Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    invoke-direct {v0}, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;-><init>()V

    sput-object v0, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a:Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    .line 22
    :cond_0
    sget-object v0, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a:Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;)V
    .locals 0
    .param p1, "response"    # Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;

    .line 53
    invoke-super {p0, p1}, Lcom/mpaas/tinyapi/RequestProcessor;->a(Lcom/mpaas/tinyapi/ResponseModel;)V

    .line 54
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestEntity;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/mpaas/tinyapi/RequestEntity;

    .line 31
    invoke-virtual {p2}, Lcom/mpaas/tinyapi/RequestEntity;->b()Lcom/mpaas/tinyapi/RequestType;

    move-result-object v0

    sget-object v1, Lcom/mpaas/tinyapi/RequestType;->CHOOSE_CITY:Lcom/mpaas/tinyapi/RequestType;

    if-eq v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/mpaas/tinyapi/RequestEntity;->c()Lcom/mpaas/tinyapi/RequestModel;

    move-result-object v0

    check-cast v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;

    .line 36
    .local v0, "requestModel":Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 37
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    invoke-virtual {p2}, Lcom/mpaas/tinyapi/RequestEntity;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "serviceId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-boolean v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->a:Z

    const-string v3, "showHotCities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    iget-boolean v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->b:Z

    const-string v3, "showLocatedCity"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    iget-object v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->c:Ljava/lang/String;

    const-string v3, "hotCities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->d:Ljava/lang/String;

    const-string v3, "cities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :cond_2
    iget-boolean v1, v0, Lcom/mpaas/tinyapi/city/ChooseCityRequestModel;->e:Z

    const-string v3, "setLocatedCity"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    const/4 v1, 0x1

    return v1
.end method
