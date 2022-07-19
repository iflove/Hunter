.class public Lcom/mpaas/tinyapi/city/view/CityDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;,
        Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/content/Context;

.field private final c:Lcom/mpaas/tinyapi/city/view/City;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[I

.field private j:I

.field private k:Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mpaas/tinyapi/city/view/City;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locatedCity"    # Lcom/mpaas/tinyapi/city/view/City;
    .param p3, "hotCities"    # Ljava/util/List;
    .param p4, "cityInitialLetters"    # Ljava/util/List;
    .param p5, "cities"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mpaas/tinyapi/city/view/City;",
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->h:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->b:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    .line 65
    iput-object p3, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d:Ljava/util/List;

    .line 66
    iput-object p5, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f:Ljava/util/Map;

    .line 67
    iput-object p4, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->e:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->b()I

    move-result v0

    iput v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->j:I

    .line 69
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 70
    .local v0, "length":I
    if-eqz p2, :cond_0

    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 73
    :cond_0
    if-eqz p3, :cond_1

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 76
    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->i:[I

    .line 78
    invoke-direct {p0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c()V

    .line 79
    return-void
.end method

.method public static a()Landroid/content/res/Resources;
    .locals 2

    .line 283
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 285
    nop

    .line 286
    const-string v1, "com-mpaas-mpaasadapter-commonbiz"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 285
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)Landroid/view/View;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "cities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 243
    .local v2, "inflater":Landroid/view/LayoutInflater;
    move-object v2, v0

    sget v3, Lcom/mpaas/commonbiz/R$layout;->item_hotcities:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v3, v1

    .line 244
    .local v3, "convertView":Landroid/view/View;
    move-object v3, v0

    sget v5, Lcom/mpaas/commonbiz/R$id;->gridLayout:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    move-object v5, v1

    .line 245
    .local v5, "gridLayout":Landroid/widget/GridLayout;
    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 247
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    div-int/2addr v7, v6

    add-int/2addr v7, v0

    invoke-virtual {v5, v7}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 248
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mpaas/tinyapi/city/view/City;

    .line 249
    .local v6, "city":Lcom/mpaas/tinyapi/city/view/City;
    sget v7, Lcom/mpaas/commonbiz/R$layout;->item_hot_city:I

    invoke-virtual {v2, v7, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 251
    .local v1, "v":Landroid/view/View;
    move-object v1, v7

    new-instance v8, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$2;

    invoke-direct {v8, p0, v6}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$2;-><init>(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;Lcom/mpaas/tinyapi/city/view/City;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v7, Lcom/mpaas/commonbiz/R$id;->text:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 258
    .local v7, "tv":Landroid/widget/TextView;
    iget v8, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a:I

    if-eqz v8, :cond_0

    .line 259
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    :cond_0
    iget-object v8, v6, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v5, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 263
    .end local v1    # "v":Landroid/view/View;
    .end local v6    # "city":Lcom/mpaas/tinyapi/city/view/City;
    .end local v7    # "tv":Landroid/widget/TextView;
    goto :goto_0

    .line 264
    :cond_1
    return-object v3
.end method

.method private a(Lcom/mpaas/tinyapi/city/view/City;)V
    .locals 1
    .param p1, "city"    # Lcom/mpaas/tinyapi/city/view/City;

    .line 268
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->k:Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;->a(Lcom/mpaas/tinyapi/city/view/City;)V

    .line 271
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;Lcom/mpaas/tinyapi/city/view/City;)V
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CityDataAdapter;
    .param p1, "x1"    # Lcom/mpaas/tinyapi/city/view/City;

    .line 23
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(Lcom/mpaas/tinyapi/city/view/City;)V

    return-void
.end method

.method private b()I
    .locals 4

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "total":I
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x2

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 87
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 92
    .local v2, "cityList":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 93
    .end local v2    # "cityList":Ljava/util/List;
    goto :goto_0

    .line 95
    :cond_2
    return v0
.end method

.method private b(I)Z
    .locals 2
    .param p1, "pos"    # I

    .line 205
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .line 209
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mpaas/commonbiz/R$string;->current_city:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->h:Ljava/util/Map;

    invoke-static {}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mpaas/commonbiz/R$string;->current:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v0, v0, 0x2

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mpaas/commonbiz/R$string;->hot_city:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->h:Ljava/util/Map;

    invoke-static {}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mpaas/commonbiz/R$string;->hot:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v0, 0x2

    .line 110
    :cond_1
    const/4 v1, 0x0

    .line 111
    .local v1, "i":I
    iget-object v2, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "letter":Ljava/lang/String;
    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->i:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v0, v4, v1

    .line 116
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    move v1, v5

    .line 118
    .end local v3    # "letter":Ljava/lang/String;
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_2
    goto :goto_0

    .line 119
    :cond_3
    return-void
.end method

.method private d(I)Z
    .locals 3
    .param p1, "pos"    # I

    .line 213
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private e(I)Lcom/mpaas/tinyapi/city/view/City;
    .locals 6
    .param p1, "pos"    # I

    .line 220
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->i:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, 0x0

    .line 221
    .local v1, "p":I
    move v1, v0

    if-ltz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->i:[I

    neg-int v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 225
    .local v0, "section":I
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    .line 226
    .local v2, "idxInSection":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pos "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " section "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Adapter"

    invoke-static {v4, v3}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mpaas/tinyapi/city/view/City;

    return-object v3
.end method

.method private f(I)Z
    .locals 1
    .param p1, "pos"    # I

    .line 231
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "width"    # I

    .line 278
    iput p1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a:I

    .line 279
    return-void
.end method

.method public final a(Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;

    .line 274
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->k:Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;

    .line 275
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->j:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 133
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 194
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->getItemViewType(I)I

    move-result v0

    .line 143
    .local v0, "viewType":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_4

    .line 144
    iget-object v5, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 145
    .local v5, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_0

    .line 146
    sget v6, Lcom/mpaas/commonbiz/R$layout;->item_section:I

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 147
    new-instance v6, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;

    invoke-direct {v6, p0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;-><init>(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;)V

    .line 148
    .local v3, "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    move-object v3, v6

    sget v7, Lcom/mpaas/commonbiz/R$id;->text:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;->a:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    .end local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 151
    sget v6, Lcom/mpaas/commonbiz/R$layout;->item_city:I

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 152
    new-instance v6, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;

    invoke-direct {v6, p0}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;-><init>(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;)V

    .line 153
    .restart local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    move-object v3, v6

    sget v7, Lcom/mpaas/commonbiz/R$id;->city:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;->a:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .end local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    goto :goto_0

    .line 155
    :cond_1
    if-ne v0, v1, :cond_3

    .line 156
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    iget-object v6, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->d:Ljava/util/List;

    invoke-direct {p0, p3, v6}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(Landroid/view/ViewGroup;Ljava/util/List;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 159
    :cond_2
    iget-object v6, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(Landroid/view/ViewGroup;Ljava/util/List;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 155
    :cond_3
    :goto_0
    goto :goto_1

    .line 143
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    move-object v5, v3

    .line 163
    :goto_1
    if-nez v0, :cond_5

    .line 164
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;

    .line 166
    .restart local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    iget-object v2, v2, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v1    # "section":Ljava/lang/String;
    .end local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    goto :goto_3

    :cond_5
    if-ne v0, v2, :cond_6

    .line 168
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->e(I)Lcom/mpaas/tinyapi/city/view/City;

    move-result-object v1

    move-object v2, v5

    .line 169
    .local v2, "city":Lcom/mpaas/tinyapi/city/view/City;
    move-object v2, v1

    if-eqz v1, :cond_7

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;

    .line 171
    .restart local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    iget-object v1, v1, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;->a:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v1, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;

    invoke-direct {v1, p0, v2}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;-><init>(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;Lcom/mpaas/tinyapi/city/view/City;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 179
    .end local v2    # "city":Lcom/mpaas/tinyapi/city/view/City;
    .end local v3    # "vh":Lcom/mpaas/tinyapi/city/view/CityDataAdapter$VH;
    :cond_6
    if-ne v0, v1, :cond_7

    .line 180
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->f(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    sget v1, Lcom/mpaas/commonbiz/R$id;->gridLayout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout;

    move-object v2, v5

    .line 182
    .local v2, "gl":Landroid/widget/GridLayout;
    invoke-virtual {v1, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/mpaas/commonbiz/R$id;->text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->c:Lcom/mpaas/tinyapi/city/view/City;

    iget-object v3, v3, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 179
    .end local v2    # "gl":Landroid/widget/GridLayout;
    :cond_7
    :goto_2
    nop

    .line 185
    :cond_8
    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 201
    const/4 v0, 0x3

    return v0
.end method
