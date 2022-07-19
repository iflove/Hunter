.class public abstract Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5BaseTabBar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseTabBar"


# instance fields
.field a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

.field c:Landroid/widget/LinearLayout;

.field public context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->d:Ljava/lang/String;

    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab_large_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 364
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 15
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "iconArea"    # Landroid/widget/TextView;
    .param p3, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "drawableSize"    # I
    .param p6, "isCheckedState"    # Z
    .param p7, "startParams"    # Landroid/os/Bundle;

    .line 310
    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    const-string v1, "onlineHost"

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "onlineHost":Ljava/lang/String;
    const-string v1, "cdnBaseUrl"

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, "cdnBaseUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .end local p1    # "imageUrl":Ljava/lang/String;
    .local v0, "imageUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " after replace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5BaseTabBar"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_0

    .line 319
    .end local v0    # "imageUrl":Ljava/lang/String;
    .restart local p1    # "imageUrl":Ljava/lang/String;
    :cond_0
    move-object v11, v0

    .end local p1    # "imageUrl":Ljava/lang/String;
    .local v11, "imageUrl":Ljava/lang/String;
    :goto_0
    const-string v0, "http"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 321
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 322
    return-void

    .line 324
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v3, v1

    .line 325
    .local v3, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v3, v0

    const/4 v4, 0x0

    move/from16 v12, p5

    invoke-virtual {v0, v4, v4, v12, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 326
    if-eqz p6, :cond_2

    .line 327
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 329
    :cond_2
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 331
    :goto_1
    move-object/from16 v13, p2

    invoke-virtual {v13, v1, v7, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void

    .line 336
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    move-object/from16 v13, p2

    move/from16 v12, p5

    new-instance v14, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$2;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;)V

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 358
    return-void
.end method

.method public abstract addTabBar()V
.end method

.method public abstract addTabBarNoDisplay()V
.end method

.method public createTabBadge(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 13
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createTabBadge "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BaseTabBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-eqz v0, :cond_4

    .line 193
    const-string v0, "tag"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "tag":Ljava/lang/String;
    const-string v2, "redDot"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "value":Ljava/lang/String;
    const-string v3, "redDotSize"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 196
    .local v3, "redDotSize":I
    const-string v4, "redDotColor"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 197
    .local v4, "redDotColor":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createTabBadge value is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildCount()I

    move-result v1

    .line 199
    .local v1, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    .line 200
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 201
    .local v6, "rootView":Landroid/view/View;
    move-object v6, v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_badge:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 203
    .local v7, "badgeView":Landroid/widget/TextView;
    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_dotView:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/view/H5DotView;

    .line 204
    .local v8, "smallDotView":Lcom/alipay/mobile/nebula/view/H5DotView;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_0

    .line 205
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {v8, v10}, Lcom/alipay/mobile/nebula/view/H5DotView;->setVisibility(I)V

    return-void

    .line 208
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "realBadge":Ljava/lang/String;
    const-string v11, "-1"

    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 210
    const-string v11, "0"

    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 211
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    invoke-virtual {v8, v4}, Lcom/alipay/mobile/nebula/view/H5DotView;->setDotColor(I)V

    .line 213
    invoke-virtual {v8, v3}, Lcom/alipay/mobile/nebula/view/H5DotView;->setDotWidth(I)V

    .line 214
    invoke-virtual {v8, v12}, Lcom/alipay/mobile/nebula/view/H5DotView;->setVisibility(I)V

    return-void

    .line 216
    :cond_1
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {v8, v10}, Lcom/alipay/mobile/nebula/view/H5DotView;->setVisibility(I)V

    return-void

    .line 221
    :cond_2
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {v8, v10}, Lcom/alipay/mobile/nebula/view/H5DotView;->setVisibility(I)V

    .line 225
    .end local v9    # "realBadge":Ljava/lang/String;
    return-void

    .line 199
    .end local v6    # "rootView":Landroid/view/View;
    .end local v7    # "badgeView":Landroid/widget/TextView;
    .end local v8    # "smallDotView":Lcom/alipay/mobile/nebula/view/H5DotView;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "size":I
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "redDotSize":I
    .end local v4    # "redDotColor":I
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method public createTabBar(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)V
    .locals 25

    .line 69
    move-object/from16 v9, p0

    move-object/from16 v1, p1

    const-string v10, "H5BaseTabBar"

    const-string v0, "createTabBar"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "textColor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v11

    .line 71
    const-string v0, "selectedColor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v12

    .line 72
    const-string v0, "selectedIndex"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 73
    const-string v0, "display"

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    .line 75
    nop

    .line 76
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    const-string v0, "backgroundColor"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    move-object v0, v2

    .line 79
    :goto_0
    const-wide/32 v3, -0x70707

    .line 81
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v0, "tabBackgroundColor not long."

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_1
    long-to-int v0, v3

    .line 88
    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    .line 89
    const v3, -0x545452

    const-string v4, "shadowColor"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v8

    .line 90
    const-string v3, "iconSize"

    const-string v4, "default"

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->d:Ljava/lang/String;

    .line 91
    const-string v3, "items"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 92
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 93
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->c:Landroid/widget/LinearLayout;

    .line 94
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_tabrootview:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 95
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    new-instance v1, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    iget-object v2, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 97
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_tabhost:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setId(I)V

    .line 98
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    new-instance v2, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;

    move-object/from16 v3, p2

    invoke-direct {v2, v9, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setTabListener(Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;)V

    .line 117
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 118
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_7

    .line 119
    const/4 v1, 0x5

    if-ge v4, v1, :cond_6

    .line 123
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 125
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v3, "tag"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v14, "icon"

    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 128
    const-string v5, "activeIcon"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    move/from16 p2, v4

    const-string v4, "redDot"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v16, v6

    const-string v6, "createTabBar badge value is "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v6, Lcom/alipay/mobile/nebula/view/H5TabbarItem;

    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->setTag(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getIconAreaView()Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    nop

    .line 137
    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateTextColor(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 138
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateEmptyTopDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a()I

    move-result v1

    .line 142
    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 143
    iget-object v6, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const/16 v18, 0x1

    move/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object v2, v5

    move-object/from16 v21, v3

    move/from16 v22, p2

    move-object/from16 v23, v4

    move-object/from16 v4, v20

    move-object v5, v6

    move/from16 v6, v19

    move-object/from16 v24, v7

    move/from16 v7, v18

    move-object/from16 v18, v10

    move v10, v8

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 146
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 150
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, "-1"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    const-string v2, "0"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getSmallDotView()Lcom/alipay/mobile/nebula/view/H5DotView;

    move-result-object v1

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5DotView;->setVisibility(I)V

    .line 157
    goto :goto_3

    .line 159
    :cond_2
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getBadgeAreaView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 160
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 152
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 150
    :cond_4
    const/4 v2, 0x0

    .line 166
    :goto_3
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->addTab(Landroid/view/View;)V

    goto :goto_4

    .line 124
    :cond_5
    move/from16 v22, v4

    move/from16 v16, v6

    move-object/from16 v24, v7

    move-object/from16 v18, v10

    const/4 v2, 0x0

    move v10, v8

    .line 118
    :goto_4
    add-int/lit8 v4, v22, 0x1

    move v8, v10

    move/from16 v6, v16

    move-object/from16 v10, v18

    move-object/from16 v7, v24

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 119
    :cond_6
    move v10, v8

    goto :goto_5

    .line 118
    :cond_7
    move v10, v8

    .line 170
    :goto_5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    new-instance v3, Landroid/view/View;

    iget-object v4, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    iget-object v4, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1, v13}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 177
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setBackgroundColor(I)V

    .line 178
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->c:Landroid/widget/LinearLayout;

    iget-object v2, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    if-eqz v15, :cond_8

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->addTabBar()V

    return-void

    .line 184
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->addTabBarNoDisplay()V

    .line 187
    :cond_9
    return-void
.end method

.method public createTabIcon(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)V
    .locals 22
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .line 258
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createTabIcon "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BaseTabBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-eqz v0, :cond_5

    .line 260
    const-string v0, "tag"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "tag":Ljava/lang/String;
    const-string v0, "icon"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "iconURL":Ljava/lang/String;
    const-string v0, "activeIcon"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "activeIconURL":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v4

    .line 265
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 266
    :try_start_1
    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0

    .line 268
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 270
    :cond_0
    :goto_0
    move-object v14, v2

    goto :goto_2

    .line 268
    :catchall_1
    move-exception v0

    move-object v5, v4

    .line 269
    .local v5, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 272
    .end local v2    # "iconURL":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    .local v14, "iconURL":Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 274
    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v0

    .line 278
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v0, v3

    goto :goto_3

    .line 276
    :catchall_2
    move-exception v0

    move-object v0, v5

    .line 277
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 279
    .end local v3    # "activeIconURL":Ljava/lang/String;
    .local v0, "activeIconURL":Ljava/lang/String;
    :goto_3
    const-string v2, "text"

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, "iconText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createTabIcon iconURL is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", activeIconURL is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildCount()I

    move-result v8

    .line 282
    .local v8, "size":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_4
    if-ge v7, v8, :cond_4

    .line 283
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v4

    .line 284
    .local v2, "rootView":Landroid/view/View;
    move-object v6, v1

    .end local v2    # "rootView":Landroid/view/View;
    .local v6, "rootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    .line 287
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 289
    .local v5, "iconArea":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateEmptyTopDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    .line 290
    .local v4, "drawableState":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a()I

    move-result v3

    .line 291
    .local v3, "drawableSize":I
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v1, v3, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 292
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/content/Context;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v18, v3

    .end local v3    # "drawableSize":I
    .local v18, "drawableSize":I
    move-object v3, v5

    move-object/from16 v19, v4

    .end local v4    # "drawableState":Landroid/graphics/drawable/StateListDrawable;
    .local v19, "drawableState":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v20, v5

    .end local v5    # "iconArea":Landroid/widget/TextView;
    .local v20, "iconArea":Landroid/widget/TextView;
    move-object/from16 v5, v16

    move-object/from16 v16, v6

    .end local v6    # "rootView":Landroid/view/View;
    .local v16, "rootView":Landroid/view/View;
    move/from16 v6, v18

    move/from16 v21, v7

    .end local v7    # "i":I
    .local v21, "i":I
    move/from16 v7, v17

    move/from16 v17, v8

    .end local v8    # "size":I
    .local v17, "size":I
    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 295
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, v20

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 297
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    move-object/from16 v1, v20

    .end local v20    # "iconArea":Landroid/widget/TextView;
    .local v1, "iconArea":Landroid/widget/TextView;
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 297
    .end local v1    # "iconArea":Landroid/widget/TextView;
    .restart local v20    # "iconArea":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v1, v20

    .end local v20    # "iconArea":Landroid/widget/TextView;
    .restart local v1    # "iconArea":Landroid/widget/TextView;
    goto :goto_5

    .line 284
    .end local v1    # "iconArea":Landroid/widget/TextView;
    .end local v16    # "rootView":Landroid/view/View;
    .end local v17    # "size":I
    .end local v18    # "drawableSize":I
    .end local v19    # "drawableState":Landroid/graphics/drawable/StateListDrawable;
    .end local v21    # "i":I
    .restart local v6    # "rootView":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v8    # "size":I
    :cond_3
    move-object/from16 v16, v6

    move/from16 v21, v7

    move/from16 v17, v8

    .line 282
    .end local v6    # "rootView":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "size":I
    .restart local v17    # "size":I
    .restart local v21    # "i":I
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v4, v16

    .end local v21    # "i":I
    .restart local v7    # "i":I
    goto :goto_4

    .end local v17    # "size":I
    .restart local v8    # "size":I
    :cond_4
    move/from16 v21, v7

    move/from16 v17, v8

    .line 304
    .end local v0    # "activeIconURL":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "iconURL":Ljava/lang/String;
    .end local v15    # "iconText":Ljava/lang/String;
    :cond_5
    :goto_5
    return-void
.end method

.method public createTabTextColor(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 8
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createTabTextColor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BaseTabBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "tag"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "tag":Ljava/lang/String;
    const-string v2, "textColor"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 237
    .local v2, "textColor":I
    const-string v3, "selectedColor"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, "selectedColor":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createTabTextColor textColor is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", selectedColor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildCount()I

    move-result v1

    .line 240
    .local v1, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 241
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 242
    .local v5, "rootView":Landroid/view/View;
    move-object v5, v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    sget v6, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    .line 245
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 247
    .local v6, "iconArea":Landroid/widget/TextView;
    nop

    .line 248
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateTextColor(II)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 249
    .local v7, "textState":Landroid/content/res/ColorStateList;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    return-void

    .line 240
    .end local v5    # "rootView":Landroid/view/View;
    .end local v6    # "iconArea":Landroid/widget/TextView;
    .end local v7    # "textState":Landroid/content/res/ColorStateList;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "size":I
    .end local v2    # "textColor":I
    .end local v3    # "selectedColor":I
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public abstract setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
.end method
