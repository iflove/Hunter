.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CitySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;
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

    .line 65
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    const-string v0, "CitySelectActivity"

    const-string v1, "received setLocatedCity event"

    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "action":Ljava/lang/String;
    const-string v2, "com.mpaas.internal.setLocatedCity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const-string v2, "locatedCityId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 72
    .local v4, "id":Ljava/lang/String;
    move-object v4, v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    const-string v2, "locatedCityName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 74
    const-string v0, "locatedCityAdCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    .line 75
    .local v2, "adCode":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v0

    iput-object v2, v0, Lcom/mpaas/tinyapi/city/view/City;->adcode:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->notifyDataSetChanged()V

    .line 79
    return-void

    .line 81
    .end local v2    # "adCode":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid locatedCityId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v4    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method
