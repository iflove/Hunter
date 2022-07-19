.class public abstract Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.super Ljava/lang/Object;
.source "H5PopMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PopMenu"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/PopupWindow;

.field d:Lcom/alipay/mobile/h5container/api/H5Page;

.field e:Z

.field f:Z

.field g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->g:Landroid/view/View$OnClickListener;

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->initMenu()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->e:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    .line 81
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 345
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 346
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "ppchatReportAbuse"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_complain:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 348
    :cond_0
    const-string v1, "ppchatShare"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "shareFriend"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 349
    :cond_2
    :goto_0
    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_share_friend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, "i":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 303
    .local v2, "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v2, v3

    iget-object v3, v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iput-object p2, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    if-eqz v1, :cond_2

    .line 306
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->refreshIcon(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 310
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
    :cond_1
    nop

    .end local v2    # "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    add-int/lit8 v0, v0, 0x1

    .line 311
    goto :goto_0

    .line 312
    :cond_2
    monitor-exit p0

    return-void

    .line 299
    .end local v0    # "i":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 297
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 316
    .local v1, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v1, v2

    iget-object v2, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 319
    .end local v1    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_0
    goto :goto_0

    .line 317
    .restart local v1    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 320
    .end local v1    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "menu"    # Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 328
    return-void

    .line 325
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract clearMenuList()V
.end method

.method public getMenuIcon()V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 273
    .local v1, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v1, v2

    iget-object v2, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconUrl:Ljava/lang/String;

    .line 274
    .local v2, "iconUrl":Ljava/lang/String;
    iget-boolean v3, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconDownloading:Z

    .line 275
    .local v3, "downloading":Z
    iget-object v4, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    .line 276
    .local v4, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 280
    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 281
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->byteToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 282
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 283
    goto :goto_0

    .line 287
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v5, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;

    invoke-direct {v5, p0, v4}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;-><init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 294
    .end local v1    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v3    # "downloading":Z
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_2
    return-void
.end method

.method public hasMenu(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "index":I
    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 105
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 106
    .local v3, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v3, v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    return v2

    .line 104
    .end local v3    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 110
    .end local v0    # "index":I
    :cond_2
    return v1

    .line 101
    :cond_3
    :goto_1
    return v1
.end method

.method public abstract initMenu()V
.end method

.method public abstract refreshIcon(I)V
.end method

.method public removeMenu(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 336
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 337
    .local v1, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v1, v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 339
    return-void

    .line 335
    .end local v1    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    .end local v0    # "index":I
    :cond_2
    return-void

    .line 332
    :cond_3
    :goto_1
    return-void
.end method

.method public resetMenu()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 357
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 358
    iget-boolean v2, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    .end local v0    # "index":I
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->e:Z

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->initMenu()V

    .line 366
    :cond_2
    return-void
.end method

.method public setIsShowPopMenu(Z)V
    .locals 0
    .param p1, "isShowPopMenu"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    .line 91
    return-void
.end method

.method public setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "temp"    # Z

    .line 114
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 115
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    const-string v5, "reset"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->resetMenu()V

    .line 118
    return-void

    .line 120
    :cond_0
    const-string v0, "menus"

    invoke-static {v4, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 121
    .local v5, "menus":Lcom/alibaba/fastjson/JSONArray;
    const-string v0, "override"

    iget-boolean v7, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    invoke-static {v4, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    :cond_1
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    :cond_3
    const-string v0, "H5PopMenu"

    const-string v3, "menu not set"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_4
    const/4 v0, 0x0

    .line 137
    .local v0, "tempCount":I
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    monitor-enter v7

    .line 138
    const/4 v8, 0x0

    move-object v9, v3

    move/from16 v16, v8

    move v8, v0

    move/from16 v0, v16

    .local v0, "index":I
    .local v8, "tempCount":I
    :goto_0
    :try_start_0
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_6

    .line 139
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 140
    .local v9, "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-boolean v10, v10, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    if-eqz v10, :cond_5

    .line 141
    add-int/lit8 v8, v8, 0x1

    .line 138
    .end local v9    # "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "index":I
    :cond_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 146
    const/16 v0, 0xb

    if-eqz v2, :cond_7

    if-lt v8, v0, :cond_7

    .line 147
    const-string v0, "H5PopMenu"

    const-string v3, "reach max temp count!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 151
    :cond_7
    if-eqz v5, :cond_8

    .line 152
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 153
    .local v7, "oriCount":I
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    .line 154
    .local v9, "addCount":I
    add-int v10, v7, v9

    if-lt v10, v0, :cond_8

    .line 155
    const-string v0, "H5PopMenu"

    const-string v3, "(oriCount + addCount) >= MAX_TEMP_COUNT!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 160
    .end local v7    # "oriCount":I
    .end local v9    # "addCount":I
    :cond_8
    rsub-int/lit8 v9, v8, 0xb

    .line 162
    .local v9, "availableTemp":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    .line 163
    const/4 v0, 0x0

    move-object/from16 v16, v3

    move v3, v0

    move-object/from16 v0, v16

    .local v3, "index":I
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_12

    .line 164
    const/4 v7, 0x0

    .line 166
    .local v7, "jsonobject":Lcom/alibaba/fastjson/JSONObject;
    :try_start_1
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    .line 169
    goto :goto_2

    .line 167
    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    const-string v10, "H5PopMenu"

    const-string v11, "menus.getJSONObject Exception : "

    invoke-static {v10, v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    const-string v0, "name"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "name":Ljava/lang/String;
    const-string v10, "tag"

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "tag":Ljava/lang/String;
    const-string v11, "icon"

    invoke-static {v7, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, "iconUrl":Ljava/lang/String;
    const-string v12, "redDot"

    invoke-static {v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "redDot":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto/16 :goto_3

    .line 179
    :cond_9
    invoke-direct {v1, v0, v10}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 180
    const-string v13, "H5PopMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "existed tag: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    goto/16 :goto_4

    .line 184
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x8

    if-le v13, v14, :cond_b

    .line 185
    invoke-virtual {v0, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_b
    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 188
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v14, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    if-eqz v14, :cond_c

    .line 189
    const/4 v13, 0x0

    .line 191
    :cond_c
    new-instance v14, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    invoke-direct {v14, v0, v10, v13, v2}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 192
    .local v14, "popupItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-boolean v15, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    if-eqz v15, :cond_d

    .line 193
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 194
    invoke-virtual {v14, v12}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->setRedDotNum(Ljava/lang/String;)V

    .line 197
    :cond_d
    iput-object v11, v14, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconUrl:Ljava/lang/String;

    .line 198
    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v9, :cond_10

    .line 202
    const-string v15, "ppchatShare"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 203
    iput-boolean v6, v14, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    .line 204
    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v15, v6, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 205
    :cond_e
    const-string v15, "ppchatReportAbuse"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 206
    iput-boolean v6, v14, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    .line 207
    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 209
    :cond_f
    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 198
    :cond_10
    move-object v0, v11

    goto :goto_5

    .line 175
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "popupItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_11
    :goto_3
    const-string v13, "H5PopMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "invalid tag: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    nop

    .line 163
    .end local v0    # "name":Ljava/lang/String;
    .end local v7    # "jsonobject":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "iconUrl":Ljava/lang/String;
    .end local v12    # "redDot":Ljava/lang/String;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v0, v11

    goto/16 :goto_1

    .line 213
    .end local v3    # "index":I
    :cond_12
    :goto_5
    const/4 v3, -0x1

    .line 214
    .local v3, "firstTemp":I
    const/4 v7, -0x1

    .line 215
    .local v7, "firstSys":I
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    monitor-enter v10

    .line 216
    const/4 v11, 0x0

    move/from16 v16, v11

    move v11, v7

    move/from16 v7, v16

    .local v7, "index":I
    .local v11, "firstSys":I
    :goto_6
    :try_start_2
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_16

    .line 217
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 218
    .local v0, "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v0, v12

    iget-boolean v12, v12, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    if-eqz v12, :cond_13

    .line 220
    if-gez v3, :cond_15

    .line 221
    move v3, v7

    goto :goto_7

    .line 225
    :cond_13
    if-gez v11, :cond_15

    if-nez v7, :cond_14

    const-string v12, "ppchatShare"

    iget-object v13, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    .line 227
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 228
    :cond_14
    move v11, v7

    .line 216
    .end local v0    # "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_15
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 232
    .end local v7    # "index":I
    :cond_16
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    const/4 v0, -0x1

    if-ne v3, v0, :cond_17

    .line 236
    const/4 v3, 0x0

    .line 238
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_17

    const-string v7, "ppchatShare"

    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    .line 239
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v12, v12, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 240
    const/4 v3, 0x1

    .line 244
    :cond_17
    if-ne v11, v0, :cond_18

    .line 245
    const/4 v11, 0x0

    .line 248
    :cond_18
    if-eqz v2, :cond_19

    .line 249
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v0, v3, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_8

    .line 251
    :cond_19
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->b:Ljava/util/List;

    invoke-interface {v0, v11, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 254
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->getMenuIcon()V

    .line 256
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    move-object v7, v10

    .line 257
    .local v7, "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    move-object v7, v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1b

    iget-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    if-nez v0, :cond_1b

    .line 258
    const-string v0, "H5SharePanelProviderImp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "param = "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "H5SharePanelProviderImp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "h5page = "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v7, v0, v6}, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;->addMenuList(ILjava/util/List;)V

    .line 261
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 262
    .local v6, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    const-string v10, "H5SharePanelProviderImp"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "### addMenuList ### menu : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " tag:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v6    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    goto :goto_9

    :cond_1a
    return-void

    .line 266
    :cond_1b
    const-string v0, "H5PopMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "h5SharePanelProvider null ? "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    if-nez v7, :cond_1c

    const/4 v13, 0x1

    goto :goto_a

    :cond_1c
    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "   h5Page null ? "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v13, :cond_1d

    const/4 v6, 0x1

    :cond_1d
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 232
    .end local v7    # "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 144
    .end local v3    # "firstTemp":I
    .end local v9    # "availableTemp":I
    .end local v11    # "firstSys":I
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 85
    return-void
.end method

.method public abstract showMenu(Landroid/view/View;)V
.end method
