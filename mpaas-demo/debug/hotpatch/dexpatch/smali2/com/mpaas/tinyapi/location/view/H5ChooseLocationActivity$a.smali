.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;
.super Landroid/os/AsyncTask;
.source "H5ChooseLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/amap/api/services/poisearch/PoiResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 131
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 132
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->b:Landroid/content/Context;

    .line 134
    return-void
.end method

.method private a()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 11

    .line 138
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    return-object v1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    move-object v2, v1

    .line 142
    .local v2, "param":Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;Z)Z

    .line 143
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    const-string v3, ""

    invoke-direct {v0, v3, v3, v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 144
    .local v3, "query":Lcom/amap/api/services/poisearch/PoiSearch$Query;
    move-object v3, v0

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageNum(I)V

    .line 145
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    .line 147
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch;

    iget-object v4, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->b:Landroid/content/Context;

    invoke-direct {v0, v4, v3}, Lcom/amap/api/services/poisearch/PoiSearch;-><init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    .line 148
    .local v0, "poiSearch":Lcom/amap/api/services/poisearch/PoiSearch;
    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)D

    move-result-wide v4

    .line 149
    .local v4, "latitude":D
    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->d(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)D

    move-result-wide v6

    .line 150
    .local v6, "longitude":D
    iput-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->b:Landroid/content/Context;

    .line 151
    new-instance v8, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    new-instance v9, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    const/16 v10, 0xc8

    invoke-direct {v8, v9, v10}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;-><init>(Lcom/amap/api/services/core/LatLonPoint;I)V

    invoke-virtual {v0, v8}, Lcom/amap/api/services/poisearch/PoiSearch;->setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    .line 153
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    move-exception v8

    .line 155
    .local v8, "e":Lcom/amap/api/services/core/AMapException;
    const-string v9, "H5ChooseLocation"

    const-string v10, "searchPOI exception"

    invoke-static {v9, v10, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    return-object v1
.end method

.method private a(Lcom/amap/api/services/poisearch/PoiResult;)V
    .locals 2
    .param p1, "poiResult"    # Lcom/amap/api/services/poisearch/PoiResult;

    .line 162
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getPageCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;I)I

    .line 165
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getPois()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;I)I

    .line 167
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I

    move-result v0

    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v1

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->d(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 171
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;Z)Z

    .line 173
    :cond_1
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Lcom/amap/api/services/poisearch/PoiResult;

    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$a;->a(Lcom/amap/api/services/poisearch/PoiResult;)V

    return-void
.end method
