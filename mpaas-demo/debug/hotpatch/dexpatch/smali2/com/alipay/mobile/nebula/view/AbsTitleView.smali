.class public abstract Lcom/alipay/mobile/nebula/view/AbsTitleView;
.super Ljava/lang/Object;
.source "AbsTitleView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TitleView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    }
.end annotation


# static fields
.field protected static final MP_TITLE_CHANGE:Ljava/lang/String; = "mpTitleChange"


# instance fields
.field protected h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field protected h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseMenuData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .locals 3
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 172
    new-instance v0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;-><init>()V

    const/4 v1, 0x0

    .line 173
    .local v1, "menuData":Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    move-object v1, v0

    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->title:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->access$002(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const-string v0, "icon"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->icon:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->access$102(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    const-string v0, "icontype"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->iconType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->access$202(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "redDot"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->redDot:I
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->access$302(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;I)I

    .line 177
    const-string v0, "contentDesc"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->contentDesc:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->access$402(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    const-string v0, "color"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->color:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->access$502(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    return-object v1
.end method

.method private parseOptionMenus(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;",
            ">;"
        }
    .end annotation

    .line 183
    const-string/jumbo v0, "menus"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 184
    .local v1, "menusJsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 185
    .local v0, "length":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "menus":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 187
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 188
    .local v4, "menuJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->parseMenuData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;

    move-result-object v5

    .line 189
    .local v5, "menuData":Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v4    # "menuJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "menuData":Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 192
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->parseMenuData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;

    move-result-object v3

    .line 193
    .local v3, "menuData":Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "menuData":Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public enableBackButtonBackground(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 135
    return-void
.end method

.method public enableTitleSegControl(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 77
    return-void
.end method

.method public abstract getBackgroundColor()I
.end method

.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5TinyPopMenu()Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    return-object v0
.end method

.method public getHdividerInTitle()Landroid/view/View;
    .locals 1

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMainTitleView()Landroid/widget/TextView;
.end method

.method public getOptionMenuContainer()Landroid/view/View;
    .locals 1

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->getOptionMenuContainer(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOptionMenuContainer(I)Landroid/view/View;
.end method

.method public abstract getPopAnchor()Landroid/view/View;
.end method

.method public abstract getSubTitleView()Landroid/widget/TextView;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public initTitleSegControl(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 72
    return-void
.end method

.method protected final invokeHomeClickEvent()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string/jumbo v1, "onBackHomeClick"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 348
    :cond_0
    return-void
.end method

.method protected final invokeOptionClickEvent(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fromMenu"    # Z

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 352
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 353
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p2, :cond_0

    .line 354
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fromMenu"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v2, "optionMenu"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 359
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method

.method protected final invokePageBackEvent()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 322
    const/4 v1, 0x0

    const-string v2, "h5ToolbarBack"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 324
    :cond_0
    return-void
.end method

.method protected final invokePageCloseEvent()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 328
    const/4 v1, 0x0

    const-string v2, "h5ToolbarClose"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 330
    :cond_0
    return-void
.end method

.method protected final invokeSubTitleClickEvent()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    const-string/jumbo v2, "subtitleClick"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 342
    :cond_0
    return-void
.end method

.method protected final invokeTitleClickEvent()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 334
    const/4 v1, 0x0

    const-string/jumbo v2, "titleClick"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 336
    :cond_0
    return-void
.end method

.method public final notifyTitleBarChanged()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 363
    const/4 v1, 0x0

    const-string/jumbo v2, "mpTitleChange"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 365
    :cond_0
    return-void
.end method

.method public openTranslucentStatusBarSupport(I)V
    .locals 0
    .param p1, "color"    # I

    .line 57
    return-void
.end method

.method public releaseViewList()V
    .locals 0

    .line 97
    return-void
.end method

.method public abstract resetTitle()V
.end method

.method public resetTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 200
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->resetTitle()V

    .line 201
    return-void
.end method

.method public setBackCloseBtnImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 112
    return-void
.end method

.method public abstract setBackgroundAlphaValue(I)V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public final setBtIcon(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "btIcon"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .line 216
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 42
    return-void
.end method

.method public setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V
    .locals 0
    .param p1, "tinyPopMenu"    # Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 62
    return-void
.end method

.method public final setIconBlueTheme()V
    .locals 0

    .line 221
    return-void
.end method

.method public final setIconWhiteTheme()V
    .locals 0

    .line 226
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->setTitleImage(Landroid/graphics/Bitmap;)V

    .line 82
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->setTitleImage(Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public final setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 160
    return-void
.end method

.method public setOptionMenu(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 164
    const-string/jumbo v0, "reset"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    .local v0, "reset":Z
    const-string/jumbo v2, "override"

    invoke-static {p2, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 166
    .local v1, "override":Z
    const-string v2, "bizType"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tiny"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 167
    .local v2, "isTinyApp":Z
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->parseOptionMenus(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, "menus":Ljava/util/List;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->setOptionMenu(ZZZLjava/util/List;)V

    .line 169
    return-void
.end method

.method public abstract setOptionMenu(ZZZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;",
            ">;)V"
        }
    .end annotation
.end method

.method public final setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 92
    return-void
.end method

.method public final setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .param p2, "index"    # I
    .param p3, "byIndex"    # Z

    .line 211
    return-void
.end method

.method public abstract setSubTitle(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleColorBlueTheme()V
    .locals 0

    .line 155
    return-void
.end method

.method public setTitleColorWhiteTheme()V
    .locals 0

    .line 150
    return-void
.end method

.method public setTitleImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .line 255
    return-void
.end method

.method public setTitleTxtColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 116
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 118
    .local v2, "tvTitle":Landroid/widget/TextView;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/AbsTitleView;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 122
    .local v1, "tvSubtitle":Landroid/widget/TextView;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :cond_1
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 130
    return-void
.end method

.method public abstract showBackButton(Z)V
.end method

.method public abstract showBackHome(Z)V
.end method

.method public abstract showCloseButton(Z)V
.end method

.method public abstract showOptionMenu(Z)V
.end method

.method public showTitleDisclaimer(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 37
    return-void
.end method

.method public abstract showTitleLoading(Z)V
.end method

.method public switchToBlueTheme()V
    .locals 0

    .line 52
    return-void
.end method

.method public switchToTitleBar()V
    .locals 0

    .line 102
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 0

    .line 47
    return-void
.end method
