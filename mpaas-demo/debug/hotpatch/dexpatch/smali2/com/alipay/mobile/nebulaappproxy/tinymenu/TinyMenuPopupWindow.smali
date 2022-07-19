.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "TinyMenuPopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;,
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$ViewHolder;,
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;,
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;,
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;
    }
.end annotation


# static fields
.field private static final CHANNEL_TINY_LONG_PRESS:Ljava/lang/String; = "ch_tinylongpress"

.field private static final MAX_MENU_ITEM_COUNT_ROW:I = 0x5

.field private static final MENU_HORIZONTAL_MARGIN:I = 0x2

.field private static final PARAM_CHANNEL:Ljava/lang/String; = "chInfo"

.field private static final ROW_MARGIN_HORIZONTAL:I = 0x8

.field private static final ROW_MARGIN_TOP:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TinyMenuPopupWindow"


# instance fields
.field private isNeedMeasure:Z

.field private isShow:Z

.field private isShowRecentUseTinyAppArea:Z

.field private mActionContent:Landroid/widget/LinearLayout;

.field private mActionText:Landroid/widget/TextView;

.field private mAppId:Ljava/lang/String;

.field private mArrow:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mBlurMenuBg:Landroid/graphics/Bitmap;

.field private mClose:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCornerMarkingUIController:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

.field private mDensity:F

.field private mDoingDismissAnimation:Z

.field private mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

.field private mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private mInternalContent:Landroid/view/View;

.field private mMenuArea:Landroid/widget/LinearLayout;

.field private mMenuClickListener:Landroid/view/View$OnClickListener;

.field private mMenuContent:Landroid/view/View;

.field private mMenuHeight:I

.field private mMenuItemIconFont:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemViewByMid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuItemWidth:I

.field private mMenuTitle:Landroid/widget/TextView;

.field private mMenuWindowDismissListener:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;

.field private mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

.field private mMiniAboutDoubleClickLimitTime:J

.field private mMiniAboutOnClickListener:Landroid/view/View$OnClickListener;

.field private mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

.field private mOldWidth:I

.field mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mRecentAppArea:Landroid/widget/LinearLayout;

.field private mRecentTinyAppItemWidth:I

.field private mRecentUseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentUseTinyAppAdapter:Landroid/widget/BaseAdapter;

.field private mRecentUseTinyAppTitle:Landroid/view/View;

.field private mTinyAppDescStr:Ljava/lang/String;

.field private mTinyAppDescView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$style;->Tiny_Pop_Menu_Style:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowRecentUseTinyAppArea:Z

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isNeedMeasure:Z

    .line 111
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShow:Z

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    .line 114
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuHeight:I

    .line 115
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDoingDismissAnimation:Z

    .line 116
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutDoubleClickLimitTime:J

    .line 122
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mCornerMarkingUIController:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

    .line 144
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutOnClickListener:Landroid/view/View$OnClickListener;

    .line 323
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mOldWidth:I

    .line 325
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v1, v2

    .line 170
    .local v1, "resources":Landroid/content/res/Resources;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1001"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_about:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1004"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_add_to_desktop:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "BACK_TO_HOME"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->bar_back_to_home:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1011"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->title_bar_unfavorite_icon_font_unicode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1005"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_favorite_icon_font_unicode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1002"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_share:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1012"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_message:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1013"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_complaint:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1014"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_back_to_home:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "OPEN_PERFORMANCE_ID"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_performance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "CLOSE_PERFORMANCE_ID"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_performance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "OPEN_VCONSOLE_ID"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_debug:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "CLOSE_VCONSOLE_ID"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_debug:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1015"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_official_feedback:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "1016"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_my_favorite_tiny_app:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v2, "default"

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_item_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "TinyMenuPopupWindow"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->initScreenWidth()V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItems()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->internalShowMenu()V

    return-void
.end method

.method static synthetic access$1402(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mBlurMenuBg:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .param p2, "x2"    # Landroid/view/View;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    return v0
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentTinyAppItemWidth:I

    return v0
.end method

.method static synthetic access$2400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->startTinyAppAndCloseCurrent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-wide v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutDoubleClickLimitTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p1, "x1"    # J

    .line 71
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutDoubleClickLimitTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 71
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->generateNativeJsApiInvoke(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDoingDismissAnimation:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->startRecentTinyApp()V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 71
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mOldWidth:I

    return v0
.end method

.method private checkMenusEqual(Ljava/util/List;Z)Z
    .locals 8
    .param p1, "menus"    # Ljava/util/List;
    .param p2, "needCheckItemData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;Z)Z"
        }
    .end annotation

    .line 784
    const/4 v0, 0x1

    .line 785
    .local v0, "isEqual":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 787
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 788
    .local v1, "originalSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 790
    .local v3, "newSize":I
    if-eq v1, v3, :cond_1

    .line 791
    return v2

    .line 794
    :cond_1
    if-nez p2, :cond_2

    .line 795
    const/4 v2, 0x1

    return v2

    .line 798
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    if-ge v2, v3, :cond_5

    .line 799
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 800
    .local v4, "originalItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 801
    .local v5, "newItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 798
    .end local v4    # "originalItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v5    # "newItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    .restart local v4    # "originalItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .restart local v5    # "newItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 808
    .end local v2    # "i":I
    .end local v4    # "originalItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v5    # "newItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_5
    return v0

    .line 785
    .end local v1    # "originalSize":I
    .end local v3    # "newSize":I
    :cond_6
    :goto_2
    return v2
.end method

.method private deepCopy(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 2
    .param p1, "copy"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .param p2, "beCopied"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 769
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    .line 772
    iget v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->badgeType:I

    iput v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->badgeType:I

    .line 773
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->callback:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->callback:Ljava/lang/String;

    .line 774
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    .line 775
    iget-wide v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->latestMsgTime:J

    iput-wide v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->latestMsgTime:J

    .line 776
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 777
    iget v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->messageCount:I

    iput v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->messageCount:I

    .line 778
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    .line 779
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->params:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->params:Ljava/lang/String;

    .line 780
    iget-object v0, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    .line 781
    return-void

    .line 769
    :cond_1
    :goto_0
    return-void
.end method

.method private generateNativeJsApiInvoke(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 6
    .param p1, "jsInvokeModel"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v0, "TinyMenuPopupWindow"

    .line 1015
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_0

    .line 1016
    return-void

    .line 1015
    :cond_0
    const/4 v1, 0x0

    .line 1021
    .local v1, "INVOKE_JS":Ljava/lang/String;
    const-string v2, "javascript:(function(){function tinyApp_presetPopMenu_ready(callback){if(window.AlipayJSBridge){callback&&callback();}else{document.addEventListener(\'AlipayJSBridgeReady\',callback,false);}}tinyApp_presetPopMenu_ready(AlipayJSBridge.call(\'%s\', %s, %s));})();"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1022
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getParams()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1023
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getCallback()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1022
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "finalInvoke":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generateNativeJsApiInvoke finalInvoke "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1026
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    .end local v1    # "INVOKE_JS":Ljava/lang/String;
    .end local v2    # "finalInvoke":Ljava/lang/String;
    :cond_1
    return-void

    .line 1028
    :catchall_0
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1032
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V
    .locals 22
    .param p1, "menuItem"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .param p2, "menuItemView"    # Landroid/view/View;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "_"

    .line 861
    if-eqz v3, :cond_13

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 863
    :cond_0
    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 864
    .local v4, "menuItemText":Landroid/widget/TextView;
    sget v5, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_font_icon:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 865
    .local v5, "menuIconFont":Lcom/alipay/mobile/antui/iconfont/AUIconView;
    sget v6, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_img_icon:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 866
    .local v6, "menuImgIcon":Landroid/widget/ImageView;
    sget v7, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_badge:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 867
    .local v7, "badgeView":Lcom/alipay/mobile/antui/badge/AUBadgeView;
    if-eqz v4, :cond_1

    .line 868
    iget-object v8, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    :cond_1
    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 871
    iget-object v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_3

    .line 872
    invoke-virtual {v5, v10}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 873
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    iget-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    iget-object v12, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v12, v8

    .line 875
    .local v12, "menuIconFontUnicode":Ljava/lang/String;
    move-object v12, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 876
    iget-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemIconFont:Ljava/util/Map;

    const-string v13, "default"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 878
    :cond_2
    const-string v11, "iconfont"

    invoke-virtual {v5, v11}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 879
    const-string/jumbo v11, "tinyfont"

    invoke-virtual {v5, v11}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 880
    invoke-virtual {v5, v12}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 881
    const-string v11, "#3C4550"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 882
    const-string v11, "25dp"

    invoke-virtual {v5, v11}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 883
    .end local v12    # "menuIconFontUnicode":Ljava/lang/String;
    goto :goto_0

    :cond_3
    iget-object v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x4

    if-nez v11, :cond_4

    .line 884
    invoke-virtual {v5, v12}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 885
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    iget-object v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    new-instance v12, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;

    invoke-direct {v12, v1, v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$TinyAppImageLoader;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/widget/ImageView;)V

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    goto :goto_0

    .line 887
    :cond_4
    iget-object v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_5

    .line 888
    invoke-virtual {v5, v12}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 889
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    iget-object v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 893
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v11

    const-string v12, "1012"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 894
    iget-wide v11, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->latestMsgTime:J

    .line 896
    .local v11, "latestMsgTime":J
    if-eqz v7, :cond_11

    .line 897
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v8

    .line 898
    .local v14, "userId":Ljava/lang/String;
    move-object v14, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v13, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto/16 :goto_2

    .line 899
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_messageLatestClickTime"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 901
    .local v13, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    .local v0, "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const-string v9, ""

    move-object v15, v9

    .line 903
    .local v15, "temp":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 904
    :try_start_1
    invoke-virtual {v0, v13, v9}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    .line 906
    :cond_7
    const-wide/16 v17, 0x0

    .line 907
    .local v17, "clickTime":J
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 908
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 910
    :cond_8
    cmp-long v19, v17, v11

    if-gez v19, :cond_f

    const-wide/16 v19, 0x0

    cmp-long v21, v11, v19

    if-ltz v21, :cond_f

    .line 911
    iget v8, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->badgeType:I

    if-lez v8, :cond_e

    .line 912
    iget v8, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->badgeType:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_b

    .line 913
    iget v8, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->messageCount:I

    if-lez v8, :cond_a

    .line 914
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 915
    sget-object v8, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 916
    iget v8, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->messageCount:I

    invoke-virtual {v7, v8, v10}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMsgCount(IZ)V

    .line 917
    invoke-virtual {v7, v10}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMaxLines(I)V

    .line 918
    invoke-virtual {v7}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x0

    .line 919
    .local v9, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v9, v8

    if-eqz v8, :cond_9

    .line 920
    const/high16 v8, 0x42120000    # 36.5f

    iget v10, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v10, v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 921
    .local v8, "marginLeft":I
    iget v10, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v10, v10, v16

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 922
    .local v10, "marginTop":I
    move-object/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .local v21, "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    invoke-virtual {v9, v8, v10, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 923
    invoke-virtual {v7, v9}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 919
    .end local v8    # "marginLeft":I
    .end local v10    # "marginTop":I
    .end local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_9
    move-object/from16 v21, v0

    .line 925
    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .end local v9    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :goto_1
    return-void

    .line 926
    .end local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_a
    move-object/from16 v21, v0

    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    return-void

    .line 928
    .end local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_b
    move-object/from16 v21, v0

    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    iget v0, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->badgeType:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_11

    .line 929
    iget v0, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->messageCount:I

    if-lez v0, :cond_d

    .line 930
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 931
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v7, v0, v9}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v7}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, 0x0

    .line 933
    .local v8, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v8, v0

    if-eqz v0, :cond_c

    .line 934
    const/high16 v0, 0x42220000    # 40.5f

    iget v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v9, v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 935
    .local v0, "marginLeft":I
    const/high16 v9, 0x40f00000    # 7.5f

    iget v10, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v10, v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 936
    .local v9, "marginTop":I
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 937
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    .end local v0    # "marginLeft":I
    .end local v8    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "marginTop":I
    :cond_c
    return-void

    .line 940
    :cond_d
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    return-void

    .line 911
    .end local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .local v0, "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_e
    move-object/from16 v21, v0

    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    goto :goto_3

    .line 910
    .end local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_f
    move-object/from16 v21, v0

    .line 945
    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .restart local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 898
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "temp":Ljava/lang/String;
    .end local v17    # "clickTime":J
    .end local v21    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_10
    :goto_2
    return-void

    .line 948
    .end local v14    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Throwable;
    const-string v8, "TinyMenuPopupWindow"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 950
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_11
    :goto_3
    return-void

    .line 952
    .end local v11    # "latestMsgTime":J
    :cond_12
    :goto_4
    return-void

    .line 861
    .end local v4    # "menuItemText":Landroid/widget/TextView;
    .end local v5    # "menuIconFont":Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .end local v6    # "menuImgIcon":Landroid/widget/ImageView;
    .end local v7    # "badgeView":Lcom/alipay/mobile/antui/badge/AUBadgeView;
    :cond_13
    :goto_5
    return-void
.end method

.method private inflateMenuItems()V
    .locals 15

    .line 813
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "row":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 818
    .local v1, "rowLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 819
    .local v2, "rowMarginTop":I
    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v5, v5, v3

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 820
    .local v3, "rowMarginHorizontal":I
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 822
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemWidth:I

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 823
    .local v6, "itemLp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v8, v8, v7

    add-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 824
    .local v4, "marginHorizontal":I
    invoke-virtual {v6, v4, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 825
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 826
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 827
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_0
    if-ge v7, v8, :cond_4

    .line 828
    iget-object v13, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 829
    .local v10, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v10, v13

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 830
    rem-int/lit8 v13, v7, 0x5

    if-nez v13, :cond_0

    .line 831
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v14, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 832
    move-object v0, v13

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 833
    iget-object v13, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuArea:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    :cond_0
    if-eqz v0, :cond_3

    .line 837
    iget-object v13, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    sget v14, Lcom/alipay/mobile/nebulaappproxy/R$layout;->tiny_menu_item:I

    invoke-virtual {v13, v14, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 838
    .local v11, "menuItemView":Landroid/widget/RelativeLayout;
    move-object v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 840
    neg-int v13, v7

    int-to-float v13, v13

    invoke-static {v11, v13}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 841
    sget v13, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_corner_marking:I

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;

    .line 842
    .local v12, "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    move-object v12, v13

    if-eqz v13, :cond_1

    .line 843
    iget v13, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setTranslationX(F)V

    .line 845
    :cond_1
    invoke-direct {p0, v10, v11}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V

    .line 846
    iget-object v13, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuClickListener:Landroid/view/View$OnClickListener;

    if-eqz v13, :cond_2

    .line 847
    invoke-virtual {v11, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    :cond_2
    iget-object v13, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-virtual {v0, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    .end local v10    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v11    # "menuItemView":Landroid/widget/RelativeLayout;
    .end local v12    # "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 853
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mCornerMarkingUIController:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->syncCornerMarkingDataToUI()V

    .line 854
    .end local v0    # "row":Landroid/widget/LinearLayout;
    .end local v1    # "rowLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "rowMarginTop":I
    .end local v3    # "rowMarginHorizontal":I
    .end local v4    # "marginHorizontal":I
    .end local v6    # "itemLp":Landroid/widget/LinearLayout$LayoutParams;
    return-void

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 856
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 858
    return-void
.end method

.method private initScreenWidth()V
    .locals 6

    const-string v0, "TinyMenuPopupWindow"

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 304
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 305
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    .line 307
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 308
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 310
    .local v3, "width":I
    const/high16 v4, 0x42960000    # 75.0f

    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentTinyAppItemWidth:I

    .line 311
    const/high16 v4, 0x42100000    # 36.0f

    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDensity:F

    mul-float v5, v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemWidth:I

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initScreenWidth width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iput v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mOldWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "width":I
    return-void

    .line 317
    :catchall_0
    move-exception v1

    .line 318
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "init screen width "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private internalShowMenu()V
    .locals 7

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    const-string v1, "TinyMenuPopupWindow"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 578
    .local v2, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    const-string v3, "1012"

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "appId"

    if-eqz v3, :cond_1

    .line 579
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    const-string v5, "a192.b5743.c12614.d37333"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    invoke-static {v3, v5, v4, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppLoggerUtils;->markSpmExpose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_1
    const-string v3, "1015"

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    const-string v5, "a192.b5743.c12614.d37334"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    invoke-static {v3, v5, v4, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppLoggerUtils;->markSpmExpose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .end local v2    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_2
    goto :goto_0

    .line 584
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    return-void

    .line 585
    :catchall_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    return-void

    .line 572
    :cond_5
    :goto_1
    const-string v0, "internalShowMenu.. no valid item"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private showActionTips()V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mActionContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuUtils;->showActionIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 601
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getCurrentState(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    move-result-object v0

    const/4 v1, 0x0

    .line 603
    .local v1, "currentState":Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 606
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionStateResourceHelper;->getTips(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mActionContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method private startRecentTinyApp()V
    .locals 3

    .line 960
    const-string v0, "2018072560844004"

    const-string v1, "ch_popmenu"

    const-string/jumbo v2, "pages/converge/index"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->startTinyAppAndCloseCurrent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method private startTinyAppAndCloseCurrent(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 964
    const-string v0, "ch_tinylongpress"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->startTinyAppAndCloseCurrent(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method private startTinyAppAndCloseCurrent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "chInfo"    # Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->startTinyAppAndCloseCurrent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method private startTinyAppAndCloseCurrent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "chInfo"    # Ljava/lang/String;
    .param p3, "urlParam"    # Ljava/lang/String;

    .line 972
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 974
    :cond_0
    const/4 v0, 0x1

    .line 975
    .local v0, "CAN_FORCE_START_FROM_MAINUI":Z
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 976
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 977
    const-string v2, "KEY_CAN_FORCE_START_FROM_MAINUI"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 978
    .local v3, "canForceStartFromMainUi":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 979
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 982
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    const-string v4, "TinyMenuPopupWindow"

    if-nez v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v1, :cond_6

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startTinyAppAndCloseCurrent new "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1004
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v4, "chInfo"

    invoke-virtual {v1, v4, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "FORCE_START_LITE_APP_FROM_MAIN_UI"

    invoke-virtual {v2, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1007
    const-string/jumbo v1, "page"

    invoke-virtual {v2, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v1, v4, p1, v2, v5}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->startApp(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V

    goto :goto_1

    .line 983
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startTinyAppAndCloseCurrent old "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_5

    .line 985
    const-string v4, "exitSession"

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 987
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v1, :cond_6

    .line 988
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 989
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$7;

    invoke-direct {v4, p0, p2, p3, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$7;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1000
    .end local v2    # "handler":Landroid/os/Handler;
    return-void

    .line 1011
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public doDismissWithAnimation(Z)V
    .locals 3
    .param p1, "isAnimation"    # Z

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDoingDismissAnimation:Z

    .line 1036
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1037
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$anim;->tiny_menu_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    .line 1038
    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$8;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$8;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1058
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1059
    .end local v1    # "animation":Landroid/view/animation/Animation;
    return-void

    .line 1061
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    return-void

    .line 1062
    :catchall_0
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TinyMenuPopupWindow"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1066
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public isShowMenu()Z
    .locals 1

    .line 472
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShow:Z

    return v0
.end method

.method public isShowRecentUseTinyAppArea(Z)V
    .locals 0
    .param p1, "isShowRecentUseTinyAppArea"    # Z

    .line 649
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowRecentUseTinyAppArea:Z

    .line 650
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 455
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mCornerMarkingUIController:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

    .line 456
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->interceptClickEventForCornerMarking(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 455
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDoingDismissAnimation:Z

    if-nez v0, :cond_2

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->doDismissWithAnimation(Z)V

    .line 461
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "#747474"

    const-string/jumbo v1, "tinyfont"

    const-string v2, "iconfont"

    .line 196
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 197
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$layout;->tiny_menu_layout_xml:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    .line 198
    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mInternalContent:Landroid/view/View;

    .line 199
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->favorite_and_recent_tiny_app_list:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 200
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_area:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuArea:Landroid/widget/LinearLayout;

    .line 201
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->tiny_menu_arrow:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mArrow:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 202
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->close_menu:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mClose:Landroid/view/View;

    .line 203
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->recent_use_tiny_app_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppTitle:Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuTitle:Landroid/widget/TextView;

    .line 205
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->recent_app_area:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentAppArea:Landroid/widget/LinearLayout;

    .line 206
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->tiny_app_desc:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescView:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->about_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 209
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_action_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mActionContent:Landroid/widget/LinearLayout;

    .line 210
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_action_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mActionText:Landroid/widget/TextView;

    .line 213
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelector(I)V

    .line 214
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;

    invoke-direct {v3, p0, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$FavoriteAndRecentAppAdapter;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppAdapter:Landroid/widget/BaseAdapter;

    .line 215
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowRecentUseTinyAppArea:Z

    if-nez v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentAppArea:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    .line 219
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppTitle:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mClose:Landroid/view/View;

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->initScreenWidth()V

    .line 232
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 233
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mArrow:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mArrow:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 236
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mArrow:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 237
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mArrow:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v6, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_menu_arrow_icon_font:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 239
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const-string v1, "16dp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->menu_mini_about_icon:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    nop

    .end local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 249
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initWidth...e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyMenuPopupWindow"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->requestWindowFeature(I)Z

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setContentView(Landroid/view/View;)V

    .line 255
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    move-object v1, v3

    .line 256
    .local v1, "window":Landroid/view/Window;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    move-object v2, v5

    .line 258
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 259
    const/4 v0, -0x2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 260
    const/16 v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 261
    const v0, 0x3ecccccd    # 0.4f

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 262
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 263
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v3, v5

    .line 264
    .local v3, "decorView":Landroid/view/View;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 268
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "decorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 269
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppTitle:Landroid/view/View;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAboutOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isFoldingScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 299
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShow:Z

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mInternalContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 443
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->default_menu_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mBlurMenuBg:Landroid/graphics/Bitmap;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuWindowDismissListener:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;

    if-eqz v0, :cond_1

    .line 448
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;->onDismiss(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    .line 450
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 347
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->onStart()V

    .line 348
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItems()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mDoingDismissAnimation:Z

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mInternalContent:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 354
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mBlurMenuBg:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 355
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isNeedMeasure:Z

    if-eqz v2, :cond_1

    .line 357
    :try_start_0
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyMenuPopupWindow"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuHeight:I

    .line 362
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isNeedMeasure:Z

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mInternalContent:Landroid/view/View;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mBlurMenuBg:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuHeight:I

    invoke-direct {v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuBgDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 367
    :cond_2
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->default_menu_bg:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mContext:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$anim;->tiny_menu_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 370
    .local v1, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_3
    const/4 v1, 0x0

    .line 374
    .local v1, "aboutIsInWhiteList":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v2, :cond_4

    .line 375
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isShowTinyAppAboutMsgInMenu(Ljava/lang/String;)Z

    move-result v1

    .line 378
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 379
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 380
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 384
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 385
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    if-nez v2, :cond_7

    .line 390
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v2, :cond_9

    .line 391
    goto :goto_3

    .line 394
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v2, :cond_9

    .line 395
    if-eqz v1, :cond_8

    .line 396
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    goto :goto_4

    .line 398
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniTinyAppAboutIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 403
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 413
    :cond_a
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowRecentUseTinyAppArea:Z

    if-nez v2, :cond_d

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    if-eqz v0, :cond_b

    .line 415
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppTitle:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 418
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentAppArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 421
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 424
    :cond_d
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    if-eqz v2, :cond_e

    .line 425
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    .line 427
    :cond_e
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppTitle:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 428
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_f
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentAppArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_13

    .line 431
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 404
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mFavoriteAndRecentTinyAppList:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    if-eqz v0, :cond_11

    .line 405
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    .line 407
    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppTitle:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 408
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentAppArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 411
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    :cond_13
    :goto_6
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->showActionTips()V

    .line 436
    return-void
.end method

.method public setCurrentAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 464
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mAppId:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 468
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 469
    return-void
.end method

.method public setMenuClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 612
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuClickListener:Landroid/view/View$OnClickListener;

    .line 613
    return-void
.end method

.method public setMenus(Ljava/util/List;)V
    .locals 4
    .param p1, "menus"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;)V"
        }
    .end annotation

    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->checkMenusEqual(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isNeedMeasure:Z

    .line 623
    :cond_0
    if-eqz p1, :cond_2

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 626
    .local v1, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 627
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>()V

    .line 628
    .local v2, "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->deepCopy(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 629
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v1    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v2    # "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_1
    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    if-nez v0, :cond_3

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    .line 636
    :cond_3
    return-void
.end method

.method public setMiniAbout(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 0
    .param p1, "miniAbout"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 765
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMiniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 766
    return-void
.end method

.method public setOnMenuWindowDismissListener(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;

    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuWindowDismissListener:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;

    .line 617
    return-void
.end method

.method public setRecentUseTinyAppList(Ljava/util/List;)V
    .locals 1
    .param p1, "recentUseTinyAppList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;",
            ">;)V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;

    .line 640
    if-nez p1, :cond_0

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseList:Ljava/util/List;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mRecentUseTinyAppAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 646
    :cond_1
    return-void
.end method

.method public setTinyAppDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 761
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mTinyAppDescStr:Ljava/lang/String;

    .line 762
    return-void
.end method

.method public showMenu(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 476
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShow:Z

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShow:Z

    .line 478
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 568
    :cond_0
    return-void
.end method

.method public updateCornerMarking(Ljava/util/List;)V
    .locals 1
    .param p1, "cornerMarkingDataList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;)V"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mCornerMarkingUIController:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->setDataProvider(Ljava/util/List;)V

    .line 956
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mCornerMarkingUIController:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->syncCornerMarkingDataToUI()V

    .line 957
    return-void
.end method

.method public updateFavoriteMenuItem(ZLjava/util/List;)V
    .locals 8
    .param p1, "isFavorite"    # Z
    .param p2, "menus"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;)V"
        }
    .end annotation

    .line 659
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->checkMenusEqual(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 660
    const-string v1, "1011"

    const-string v2, "1005"

    const-string v3, ""

    if-eqz p1, :cond_3

    .line 661
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v4, v3, v3, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 662
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    if-eqz v4, :cond_8

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v5, v3, v3, v3, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 664
    const/4 v4, 0x0

    .line 665
    .local v4, "favoriteMenuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    const/4 v5, 0x0

    .line 666
    .local v5, "cancelFavoriteItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v7, v3, v3, v3, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v7, v0

    .line 667
    .local v7, "favoriteIndex":I
    move v7, v6

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_0

    .line 668
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 670
    :cond_0
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v6, v3, v3, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 671
    .local v0, "cancelFavoriteIndex":I
    move v0, v3

    if-ltz v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 672
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 674
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 675
    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->deepCopy(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 676
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 677
    .local v2, "favoriteItemView":Landroid/view/View;
    invoke-direct {p0, v5, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V

    .line 678
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    if-eqz v2, :cond_2

    .line 680
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_corner_marking:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;

    const/4 v3, 0x0

    .line 681
    .local v3, "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 682
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setVisibility(I)V

    .line 686
    .end local v0    # "cancelFavoriteIndex":I
    .end local v2    # "favoriteItemView":Landroid/view/View;
    .end local v3    # "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    .end local v4    # "favoriteMenuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v5    # "cancelFavoriteItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v7    # "favoriteIndex":I
    :cond_2
    return-void

    .line 689
    :cond_3
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v4, v3, v3, v3, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 690
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    if-eqz v4, :cond_8

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v5, v3, v3, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 692
    const/4 v4, 0x0

    .line 693
    .restart local v4    # "favoriteMenuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    const/4 v5, 0x0

    .line 694
    .restart local v5    # "cancelFavoriteItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v7, v3, v3, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v7, v0

    .line 695
    .local v7, "cancelFavoriteIndex":I
    move v7, v6

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_4

    .line 696
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 698
    :cond_4
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v6, v3, v3, v3, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 699
    .local v0, "favoriteIndex":I
    move v0, v3

    if-ltz v3, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 700
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 702
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 703
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->deepCopy(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 704
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 705
    .local v1, "favoriteItemView":Landroid/view/View;
    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V

    .line 706
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .end local v0    # "favoriteIndex":I
    .end local v1    # "favoriteItemView":Landroid/view/View;
    .end local v4    # "favoriteMenuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v5    # "cancelFavoriteItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v7    # "cancelFavoriteIndex":I
    :cond_6
    return-void

    .line 711
    :cond_7
    if-eqz p2, :cond_8

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isNeedMeasure:Z

    .line 714
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setMenus(Ljava/util/List;)V

    .line 715
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItems()V

    .line 717
    :cond_8
    return-void
.end method

.method public updateMessageMenuItem(Ljava/util/List;)V
    .locals 6
    .param p1, "menus"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;)V"
        }
    .end annotation

    .line 725
    if-eqz p1, :cond_6

    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v1, ""

    const-string v2, "1012"

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v3, v1, v1, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 728
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->checkMenusEqual(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "oldMessageItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    const/4 v1, 0x0

    .line 731
    .local v1, "newMessageItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 732
    .local v4, "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v4, v5

    if-eqz v5, :cond_0

    .line 733
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    move-object v0, v4

    .line 735
    goto :goto_1

    .line 738
    .end local v4    # "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_0
    goto :goto_0

    .line 739
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 740
    .restart local v4    # "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v4, v5

    if-eqz v5, :cond_2

    .line 741
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 742
    move-object v1, v4

    .line 743
    goto :goto_3

    .line 746
    .end local v4    # "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_2
    goto :goto_2

    .line 747
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 748
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->deepCopy(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 749
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V

    .line 751
    .end local v0    # "oldMessageItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v1    # "newMessageItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_4
    return-void

    .line 752
    :cond_5
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isNeedMeasure:Z

    .line 753
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setMenus(Ljava/util/List;)V

    .line 754
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItems()V

    .line 758
    :cond_6
    return-void
.end method
