.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
.super Ljava/lang/Object;
.source "TinyBlurMenu.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;
    }
.end annotation


# static fields
.field public static final ABOUT_ID:Ljava/lang/String; = "1001"

.field public static final ABOUT_MENU_NAME:Ljava/lang/String; = "\u5173\u4e8e"

.field public static final ADD_TO_DESKTOP_ID:Ljava/lang/String; = "1004"

.field public static final ADD_TO_DESKTOP_MENU_NAME:Ljava/lang/String; = "\u6dfb\u52a0\u5230\u684c\u9762"

.field public static final BACK_TO_ALIPAY_HOME_ID:Ljava/lang/String; = "1014"

.field public static final BACK_TO_ALIPAY_HOME_MENU_NAME:Ljava/lang/String; = "\u652f\u4ed8\u5b9d\u9996\u9875"

.field private static final BACK_TO_HOME:Ljava/lang/String; = "\u8fd4\u56de\u9996\u9875"

.field private static final BACK_TO_HOME_ACTION:Ljava/lang/String; = "onBackHomeClick"

.field public static final BACK_TO_HOME_ID:Ljava/lang/String; = "BACK_TO_HOME"

.field private static final CANCEL_FAVORITE:Ljava/lang/String; = "\u5df2\u6536\u85cf"

.field public static final CANCEL_FAVORITE_ID:Ljava/lang/String; = "1011"

.field public static final CLOSE_PERFORMANCE_ID:Ljava/lang/String; = "CLOSE_PERFORMANCE_ID"

.field public static final CLOSE_PERFORMANCE_PANEL:Ljava/lang/String; = "\u5173\u95ed\u6027\u80fd\u76d1\u63a7\u9762\u677f"

.field public static final CLOSE_VCONSOLE:Ljava/lang/String; = "\u5173\u95ed\u8c03\u8bd5"

.field public static final CLOSE_VCONSOLE_ID:Ljava/lang/String; = "CLOSE_VCONSOLE_ID"

.field private static final FAVORITE:Ljava/lang/String; = "\u6536\u85cf"

.field public static final FAVORITE_ID:Ljava/lang/String; = "1005"

.field public static final FEEDBACK_ID:Ljava/lang/String; = "1013"

.field private static final MAX_DEVELOPER_MENU:I = 0x3

.field public static final MESSAGE_ID:Ljava/lang/String; = "1012"

.field public static final MY_FAVORITE_TINY_APP:Ljava/lang/String; = "1016"

.field public static final OFFICIAL_FEEDBACK_ID:Ljava/lang/String; = "1015"

.field private static final ON_SHARE_EVENT:Ljava/lang/String; = "onShare"

.field public static final OPEN_PERFORMANCE_ID:Ljava/lang/String; = "OPEN_PERFORMANCE_ID"

.field public static final OPEN_PERFORMANCE_PANEL:Ljava/lang/String; = "\u6253\u5f00\u6027\u80fd\u76d1\u63a7\u9762\u677f"

.field public static final OPEN_VCONSOLE:Ljava/lang/String; = "\u6253\u5f00\u8c03\u8bd5"

.field public static final OPEN_VCONSOLE_ID:Ljava/lang/String; = "OPEN_VCONSOLE_ID"

.field private static final OPTION_MENU_ID:Ljava/lang/String; = "OPTION_MENU"

.field private static final POP_MENU_EXTRA_KEY:Ljava/lang/String; = "POP_MENU_EXTRA_KEY"

.field public static final SHARE_ID:Ljava/lang/String; = "1002"

.field private static final TAG:Ljava/lang/String; = "TinyBlurMenu"


# instance fields
.field private volatile appDesc:Ljava/lang/String;

.field private volatile appIcon:Ljava/lang/String;

.field private volatile appName:Ljava/lang/String;

.field private developerCustomMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private isFirstPage:Z

.field private volatile isMenuRpcSuccess:Z

.field private isPaused:Z

.field private volatile isRelease:Z

.field private isShowBackHome:Z

.field private isShowMenu:Z

.field private mAppId:Ljava/lang/String;

.field private mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private mContext:Landroid/content/Context;

.field private mCornerMarkings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;"
        }
    .end annotation
.end field

.field public mFavoriteJsInvokeModel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

.field private mH5OptionMenuTextFlag:Z

.field private mH5Plugin:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;

.field private mH5ShowOptionMenu:Z

.field private mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

.field private mMenusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

.field private mServiceAppId:Ljava/lang/String;

.field private mTinyPopMenuReceiver:Landroid/content/BroadcastReceiver;

.field private menuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private menuStr:Ljava/lang/String;

.field private volatile miniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private volatile publicId:Ljava/lang/String;

.field private rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

.field private volatile tinyDesc:Ljava/lang/String;

.field private titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->developerCustomMenu:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mCornerMarkings:Ljava/util/List;

    .line 154
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isPaused:Z

    .line 165
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isFirstPage:Z

    .line 167
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isRelease:Z

    .line 168
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowBackHome:Z

    .line 169
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowMenu:Z

    .line 177
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5ShowOptionMenu:Z

    .line 180
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5OptionMenuTextFlag:Z

    .line 194
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mTinyPopMenuReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onClickListener:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    .line 224
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 226
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 228
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mTinyPopMenuReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "broadcast_tiny_app_favorite"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "favoriteIntentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mTinyPopMenuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 231
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "hide_title_bar_back_to_home"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "hideTitleBarBackToHome":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mTinyPopMenuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 235
    .end local v1    # "favoriteIntentFilter":Landroid/content/IntentFilter;
    .end local v2    # "hideTitleBarBackToHome":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$1;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5Plugin:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->controlTitleBarBackToHome()V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->doMonitorLog(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->parseRpcData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->checkDebugAndPerformanceVisible()V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->registerExitSessionInterceptor()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getExternalMenuItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->updateCornerMarking()V

    return-void
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowBackHome:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowBackHome:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showCustomRightView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mCornerMarkings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mCornerMarkings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isRelease:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appDesc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appIcon:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5OptionMenuTextFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Landroid/view/View;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Landroid/view/View;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getMenuDataFromView(Landroid/view/View;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5ShowOptionMenu:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->asyncShowMenu()V

    return-void
.end method

.method static synthetic access$3200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRecentUseTinyAppList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/util/List;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->internalShowMenu(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowMenu:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->postShareEvent(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->developerCustomMenu:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->generateNativeJsApiInvoke(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getAppUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getPagePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addH5MenuList()V
    .locals 11

    .line 1638
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuItemList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1641
    const-string v0, "TinyBlurMenu"

    const-string v1, "addH5MenuList...transfer h5 to tiny not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    return-void

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 1646
    .local v2, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v2, v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1648
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1649
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v6

    iget-object v7, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    iget-object v6, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    const-string/jumbo v7, "tag"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    iget-object v6, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    const-string/jumbo v7, "title"

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    const-string/jumbo v6, "popMenuType"

    const-string/jumbo v7, "popmenu"

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    const/4 v6, 0x0

    .line 1655
    .local v6, "isContains":Z
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 1656
    .local v4, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v4, v8

    if-eqz v8, :cond_3

    .line 1657
    iget-object v8, v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    iget-object v9, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1658
    const/4 v6, 0x1

    .line 1659
    goto :goto_2

    .line 1662
    .end local v4    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_3
    goto :goto_1

    .line 1664
    :cond_4
    :goto_2
    if-nez v6, :cond_6

    .line 1667
    .local v4, "mid":Ljava/lang/String;
    .local v7, "action":Ljava/lang/String;
    iget-object v8, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    const-string/jumbo v9, "optionMenu"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1668
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1669
    .local v5, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "fromMenu"

    invoke-virtual {v8, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "index"

    invoke-virtual {v5, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    const-string v8, "data"

    invoke-virtual {v3, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    const-string/jumbo v7, "optionMenu"

    .line 1674
    const-string/jumbo v4, "optionMenu"

    .line 1675
    .end local v5    # "param":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_3

    .line 1676
    :cond_5
    const-string v7, "h5ToolbarMenuBt"

    .line 1677
    iget-object v4, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    .line 1679
    :goto_3
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 1680
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9, v1, v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    .local v5, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v5, v8

    iget-object v9, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1682
    iget-object v8, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    .line 1683
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    .end local v2    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "mid":Ljava/lang/String;
    .end local v5    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v6    # "isContains":Z
    .end local v7    # "action":Ljava/lang/String;
    :cond_6
    goto/16 :goto_0

    .line 1686
    :cond_7
    return-void

    .line 1638
    :cond_8
    :goto_4
    return-void
.end method

.method private asyncShowMenu()V
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1694
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowMenu:Z

    if-nez v0, :cond_1

    .line 1695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowMenu:Z

    .line 1696
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showMenu()V

    .line 1698
    :cond_1
    return-void
.end method

.method private checkCanShowAboutMenuItem()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v0, :cond_3

    .line 1108
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->allowedShowAboutMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->removeAboutMenuItem()V

    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1112
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const/4 v2, 0x0

    const-string v3, "1001"

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1113
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>()V

    move-object v1, v2

    .line 1114
    .local v1, "about":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v0

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    .line 1115
    const-string/jumbo v0, "\u5173\u4e8e"

    iput-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1116
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-ne v0, v2, :cond_2

    .line 1117
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->fillAboutMenuItemOnMPaaS(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    goto :goto_0

    .line 1119
    :cond_2
    const-string v0, "function(){}"

    iput-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->callback:Ljava/lang/String;

    .line 1120
    const-string/jumbo v0, "startApp"

    iput-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    .line 1121
    const-string/jumbo v0, "{ appId: \'66666718\', param: { url: \'/www/detail.html\', tinyAppId: \'{%APP_ID%}\', tinyAppVersion: \'{%APP_PACKAGE_NICK%}\', tinyAppScene: \'{%APP_SCENE%}\', appClearTop: false }, closeCurrentApp: false }"

    .line 1122
    .local v0, "options":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->replacePlaceholderInMenu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->params:Ljava/lang/String;

    .line 1124
    .end local v0    # "options":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v1    # "about":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_3
    return-void
.end method

.method private checkCanShowShareMenuItem()V
    .locals 5

    .line 1043
    const-string v0, "TinyBlurMenu"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->allowedShowShareMenu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->removeShareMenuItem()V

    .line 1046
    return-void

    .line 1050
    :cond_0
    const-string v2, "YES"

    const-string/jumbo v3, "mp_ta_showShareMenuItem"

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->removeShareMenuItem()V

    .line 1052
    return-void

    .line 1055
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v3, "showShareMenu"

    if-eqz v2, :cond_4

    .line 1056
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1057
    :goto_0
    if-eqz v2, :cond_3

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1059
    const-string v2, "checkCanShowShareMenuItem..mini service show share"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void

    .line 1063
    :cond_3
    const-string v2, "checkCanShowShareMenuItem..mini service does not show share"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->removeShareMenuItem()V

    .line 1065
    return-void

    .line 1068
    :cond_4
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 1069
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 1070
    if-nez v2, :cond_5

    .line 1072
    return-void

    .line 1075
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v2, :cond_6

    return-void

    .line 1077
    :cond_6
    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1078
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    .line 1079
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1080
    :cond_8
    const-string v2, "checkCanShowShareMenuItem...DONOT show share menu"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->removeShareMenuItem()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    return-void

    .line 1087
    :cond_9
    goto :goto_1

    .line 1085
    :catchall_0
    move-exception v2

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkCanShowShareMenuItem..e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v3, "1002"

    invoke-direct {v2, v1, v1, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1090
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 1091
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 1092
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->fillShareMenuItem(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 1093
    return-void

    .line 1094
    :cond_a
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>()V

    .line 1095
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->fillShareMenuItem(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 1096
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    return-void
.end method

.method private checkDebugAndPerformanceVisible()V
    .locals 6

    const-string v0, "TinyBlurMenu"

    .line 1332
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_2

    .line 1334
    :try_start_0
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1335
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v1

    .line 1336
    .local v2, "h5Pages":Ljava/util/Stack;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1337
    const-string v1, "checkDebugAndPerformanceVisible is First Page"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isFirstPage:Z

    .line 1341
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isFirstPage:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isRemoteDebug"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1342
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->checkToggleButtonVisible()V

    .line 1343
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->checkPerformancePanelVisible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    .end local v2    # "h5Pages":Ljava/util/Stack;
    .end local v3    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_1
    return-void

    .line 1345
    :catchall_0
    move-exception v1

    .line 1346
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkDebugAndPerformanceVisible...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private checkPerformancePanelVisible()V
    .locals 4

    .line 1372
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRealAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getPerformancePanelVisible(Ljava/lang/String;)Z

    move-result v0

    .line 1373
    .local v0, "currentState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkPerformancePanelVisible...state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyBlurMenu"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    if-eqz v0, :cond_0

    .line 1375
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$8;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    const-wide/16 v2, 0x1fe

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1383
    :cond_0
    return-void
.end method

.method private checkShowBackToAlipayHomeMenuItem()V
    .locals 4

    .line 1138
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v2, ""

    const-string v3, "1014"

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>()V

    const/4 v1, 0x0

    .line 1141
    .local v1, "backToAlipayHome":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v0

    const-string/jumbo v2, "\u652f\u4ed8\u5b9d\u9996\u9875"

    iput-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1142
    iput-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    .line 1143
    const-string/jumbo v0, "startApp"

    iput-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    .line 1144
    const-string v0, "function(){}"

    iput-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->callback:Ljava/lang/String;

    .line 1145
    const-string/jumbo v0, "{ appId: \'20000001\', param: { actionType: \'20000002\'}, closeCurrentApp: false }"

    iput-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->params:Ljava/lang/String;

    .line 1146
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    .end local v1    # "backToAlipayHome":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_1
    return-void
.end method

.method private checkToggleButtonVisible()V
    .locals 4

    .line 1355
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRealAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getVConsoleVisible(Ljava/lang/String;)Z

    move-result v0

    .line 1356
    .local v0, "currentState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkToggleButtonVisible...state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyBlurMenu"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isDebugVersion(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$7;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    const-wide/16 v2, 0xa

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1366
    :cond_0
    return-void
.end method

.method private configDebugMenu()V
    .locals 1

    .line 1266
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->shouldShowDebugMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->configDebugPanelMenu()V

    .line 1272
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->configPerformancePanelMenu()V

    .line 1274
    :cond_0
    return-void
.end method

.method private configDebugPanelMenu()V
    .locals 8

    .line 1280
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRealAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getVConsoleVisible(Ljava/lang/String;)Z

    move-result v0

    .line 1281
    .local v0, "currentState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show debug menu...vconsole="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyBlurMenu"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string/jumbo v1, "shouldShowConsoleBtn"

    const-string v2, "OPEN_VCONSOLE_ID"

    const-string v3, "CLOSE_VCONSOLE_ID"

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v0, :cond_0

    .line 1283
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v7, v5, v5, v5, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1284
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v6, v5, v5, v5, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1286
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string/jumbo v5, "{showBtn: false}"

    invoke-direct {v2, v1, v5, v4, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1288
    .local v1, "closeVConsole":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v2

    const-string/jumbo v3, "\u5173\u95ed\u8c03\u8bd5"

    iput-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1289
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    .end local v1    # "closeVConsole":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    return-void

    .line 1292
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v7, v4, v4, v4, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1293
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v6, v5, v5, v5, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1295
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string/jumbo v5, "{showBtn: true}"

    invoke-direct {v3, v1, v5, v4, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1297
    .local v1, "openVConsole":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v3

    const-string/jumbo v2, "\u6253\u5f00\u8c03\u8bd5"

    iput-object v2, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1298
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    .end local v1    # "openVConsole":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    return-void
.end method

.method private configPerformancePanelMenu()V
    .locals 6

    .line 1306
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    .line 1307
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRealAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getPerformancePanelVisible(Ljava/lang/String;)Z

    move-result v0

    .line 1308
    const-string/jumbo v1, "{}"

    const-string v2, "OPEN_PERFORMANCE_ID"

    const-string v3, "CLOSE_PERFORMANCE_ID"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v5, v4, v4, v4, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1311
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1312
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v2, "hidePerformancePanel"

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1314
    .local v1, "closePerformance":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v0

    const-string/jumbo v2, "\u5173\u95ed\u6027\u80fd\u76d1\u63a7\u9762\u677f"

    iput-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1315
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    .end local v1    # "closePerformance":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    return-void

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v5, v4, v4, v4, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1318
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v3, v4, v4, v4, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1320
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string/jumbo v3, "showPerformancePanel"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1322
    .local v1, "openPerformance":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v1, v0

    const-string/jumbo v2, "\u6253\u5f00\u6027\u80fd\u76d1\u63a7\u9762\u677f"

    iput-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v1    # "openPerformance":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    return-void
.end method

.method private controlTitleBarBackToHome()V
    .locals 6

    .line 1827
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isRelease:Z

    if-eqz v0, :cond_0

    return-void

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1831
    .local v0, "titleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 1832
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "leftTitlebarShow"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1833
    .local v1, "leftTitlebarShow":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "leftTitlebarShow "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TinyBlurMenu"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string v2, "back"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1836
    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackButton(Z)V

    .line 1837
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1838
    return-void

    .line 1841
    :cond_2
    const-string/jumbo v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1842
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackButton(Z)V

    .line 1843
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1844
    return-void

    .line 1848
    .end local v1    # "leftTitlebarShow":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 1849
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v1

    .line 1850
    .local v1, "appId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isUseOldMenuStyle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1851
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1852
    return-void

    .line 1856
    .end local v1    # "appId":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1858
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1859
    return-void

    .line 1862
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 1863
    const-string/jumbo v5, "showBackToHomeTitleBar"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1864
    .local v1, "backToHome":Ljava/lang/Object;
    move-object v1, v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1865
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1866
    return-void

    .line 1870
    .end local v1    # "backToHome":Ljava/lang/Object;
    :cond_6
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getShouldShowBackToHomeInTitleBar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1871
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1872
    return-void

    .line 1876
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_b

    .line 1877
    if-eqz v0, :cond_b

    .line 1878
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "redirectFromHomepage"

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 1881
    .local v1, "redirectFromHomepage":Z
    const/4 v2, 0x0

    .line 1883
    .local v2, "isHomePage":Z
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v3, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    move v2, v5

    .line 1886
    goto :goto_2

    .line 1884
    :catch_0
    move-exception v5

    .line 1887
    :goto_2
    if-nez v1, :cond_a

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowBackHome:Z

    if-eqz v5, :cond_9

    if-nez v2, :cond_a

    .line 1888
    :cond_9
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    return-void

    .line 1890
    :cond_a
    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackHome(Z)V

    .line 1905
    .end local v1    # "redirectFromHomepage":Z
    .end local v2    # "isHomePage":Z
    :cond_b
    return-void
.end method

.method private doMonitorLog(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 20
    .param p1, "jsInvokeModel"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    move-object/from16 v1, p0

    const-string v0, "^"

    const-string v2, "TinyBlurMenu"

    .line 376
    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->markSpmBehavor(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 381
    const/4 v3, 0x0

    .line 383
    .local v3, "seedId":Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 384
    .local v4, "panelType":Ljava/lang/String;
    const-string v5, "OPEN_VCONSOLE_ID"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "TINY_APP_ASSIST_PANEL"

    if-nez v5, :cond_3

    :try_start_1
    const-string v5, "CLOSE_VCONSOLE_ID"

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    const-string v5, "OPEN_PERFORMANCE_ID"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CLOSE_PERFORMANCE_ID"

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 390
    :cond_2
    move-object v3, v6

    .line 391
    const-string/jumbo v5, "performance"

    move-object v4, v5

    goto :goto_1

    .line 386
    :cond_3
    :goto_0
    move-object v3, v6

    .line 387
    const-string v5, "debug"

    move-object v4, v5

    .line 394
    :cond_4
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 395
    const-string v0, "doMonitorLog.. seedId is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void

    .line 400
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    const/4 v5, 0x0

    .line 401
    .local v5, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v5, v6

    if-eqz v6, :cond_7

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "extParams":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 404
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "panel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 406
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 408
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "scene="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v7}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getScene(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 409
    .end local v6    # "extParams":Ljava/lang/String;
    .local v15, "extParams":Ljava/lang/String;
    const-string v6, "H5behavior"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    move-object v7, v3

    invoke-interface/range {v5 .. v19}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .end local v3    # "seedId":Ljava/lang/String;
    .end local v4    # "panelType":Ljava/lang/String;
    .end local v5    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v15    # "extParams":Ljava/lang/String;
    :cond_7
    return-void

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doMonitorLog..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private doNativeShareAction()V
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    .line 355
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 356
    .local v0, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    const/4 v1, 0x0

    .line 357
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 358
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnShareData(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 360
    :cond_0
    if-nez v1, :cond_1

    .line 361
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v1, v2

    .line 363
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "useNativeShare"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "onShare"

    invoke-interface {v2, v4, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 368
    .end local v0    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void
.end method

.method private fillAboutMenuItemOnMPaaS(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 3
    .param p1, "about"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 1132
    const-string v0, "function(){}"

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->callback:Ljava/lang/String;

    .line 1133
    const-string v0, "alert"

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    .line 1134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "{ title: \'\u5173\u4e8e\', message: \'%s\', okButton: \'\u786e\u5b9a\' }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->params:Ljava/lang/String;

    .line 1135
    return-void
.end method

.method private fillShareMenuItem(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 1101
    const-string v0, "1002"

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    .line 1102
    const-string/jumbo v0, "\u5206\u4eab"

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1103
    const-string/jumbo v0, "startShare"

    iput-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    .line 1104
    return-void
.end method

.method private generateNativeJsApiInvoke(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 6
    .param p1, "jsInvokeModel"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v0, "TinyBlurMenu"

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_0

    .line 1020
    return-void

    .line 1019
    :cond_0
    const/4 v1, 0x0

    .line 1025
    .local v1, "INVOKE_JS":Ljava/lang/String;
    const-string v2, "javascript:(function(){function tinyApp_presetPopMenu_ready(callback){if(window.AlipayJSBridge){callback&&callback();}else{document.addEventListener(\'AlipayJSBridgeReady\',callback,false);}}tinyApp_presetPopMenu_ready(AlipayJSBridge.call(\'%s\', %s, %s));})();"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1026
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getParams()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 1027
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getCallback()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1026
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, "finalInvoke":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generateNativeJsApiInvoke finalInvoke "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1030
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .end local v1    # "INVOKE_JS":Ljava/lang/String;
    .end local v2    # "finalInvoke":Ljava/lang/String;
    :cond_1
    return-void

    .line 1032
    :catchall_0
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private getAppUrl()Ljava/lang/String;
    .locals 4

    .line 871
    const-string v0, ""

    .line 872
    .local v0, "appUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_1

    .line 873
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 874
    .local v2, "currentUrl":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "url"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    move-object v0, v1

    .line 877
    .end local v2    # "currentUrl":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getExternalMenuItems(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;"
        }
    .end annotation

    .line 615
    const-class v0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuProvider;

    .line 616
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/TinyPopMenuProvider;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, "menuItemDataList":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 618
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuProvider;->fetchMenuItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 619
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;

    .line 620
    .local v4, "item":Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>()V

    .line 621
    .local v3, "data":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v3, v5

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 622
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    .line 623
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->h5MenuIcon:Landroid/graphics/drawable/Drawable;

    .line 624
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->getCallback()Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->extraCallback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    .line 625
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->mid:Ljava/lang/String;

    .line 626
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v3    # "data":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v4    # "item":Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    goto :goto_0

    .line 629
    :cond_0
    return-object v1
.end method

.method private getMenuDataFromView(Landroid/view/View;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 241
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 242
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 245
    .local v2, "tag":Ljava/lang/Object;
    move-object v2, v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 246
    return-object v0

    .line 248
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    .local v0, "position":I
    const/4 v1, 0x0

    .line 251
    .local v1, "jsInvokeModel":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    if-ltz v0, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v3

    .line 255
    const-string v3, "TinyBlurMenu"

    const-string/jumbo v4, "tiny menu click problem"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_2
    :goto_0
    nop

    .line 257
    :goto_1
    return-object v1
.end method

.method private getPagePathFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pageUrl"    # Ljava/lang/String;

    .line 1003
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1005
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1006
    .local v2, "index":I
    move v2, v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 1007
    const-string v0, "?$"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1008
    .local v1, "endIndex":I
    move v1, v0

    if-eq v0, v3, :cond_1

    .line 1009
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_1
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1014
    .end local v1    # "endIndex":I
    :cond_2
    return-object p1
.end method

.method private getRealAppId()Ljava/lang/String;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mServiceAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mServiceAppId:Ljava/lang/String;

    return-object v0
.end method

.method private getRecentUseTinyAppList()Lcom/alibaba/fastjson/JSONArray;
    .locals 2

    .line 1391
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v0, :cond_0

    .line 1392
    nop

    .line 1393
    invoke-interface {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getRecentUserTinyAppList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    .line 1392
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/RecentUseTinyAppFilter;->filter(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0

    .line 1396
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5

    const-string v0, "TinyBlurMenu"

    .line 1803
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 1804
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v3, v1

    .line 1805
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 1806
    const-string v2, "getTopH5Page "

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    return-object v1

    .line 1810
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1811
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :catchall_0
    move-exception v2

    .line 1812
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTopH5Page...e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private initMenu(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuStr"    # Ljava/lang/String;

    .line 863
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuStr:Ljava/lang/String;

    .line 864
    return-void
.end method

.method private initTitleBarTheme()V
    .locals 3

    .line 1538
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    return-void

    .line 1541
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-eqz v1, :cond_1

    return-void

    .line 1543
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "titleBarColor"

    const/high16 v2, -0x1000000

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    .line 1544
    .local v0, "titleBarColor":I
    or-int v1, v0, v2

    .line 1545
    move v0, v1

    if-eq v1, v2, :cond_3

    .line 1547
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1548
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    return-void

    .line 1550
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 1553
    :cond_3
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 867
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mContext:Landroid/content/Context;

    .line 868
    return-void
.end method

.method private internalShowMenu(Ljava/util/List;)V
    .locals 3
    .param p1, "finalRecentUseApps"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;",
            ">;)V"
        }
    .end annotation

    .line 1741
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    .line 1742
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isRelease:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isPaused:Z

    if-nez v0, :cond_2

    .line 1743
    if-nez p1, :cond_0

    .line 1744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setCurrentAppId(Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1748
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setMenus(Ljava/util/List;)V

    .line 1749
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->tinyDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setTinyAppDesc(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->miniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setMiniAbout(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 1751
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setRecentUseTinyAppList(Ljava/util/List;)V

    .line 1752
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setMenuClickListener(Landroid/view/View$OnClickListener;)V

    .line 1753
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v0, :cond_1

    .line 1754
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isShowRecentAppAreaInMenu(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowRecentUseTinyAppArea(Z)V

    .line 1756
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$14;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$14;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->setOnMenuWindowDismissListener(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$OnMenuWindowDismissListener;)V

    .line 1762
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->showMenu(Landroid/content/Context;)V

    return-void

    .line 1764
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isShowMenu:Z

    .line 1766
    return-void
.end method

.method private isCanUseNativeShare()Z
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 345
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getAppxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v2, "1.7.4"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    invoke-interface {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isUseNativeShareSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2

    .line 350
    :cond_2
    return v1
.end method

.method private isTitleBarOptionMenuChildShow(Landroid/view/View;)Z
    .locals 5
    .param p1, "optionMenuView"    # Landroid/view/View;

    .line 1923
    if-eqz p1, :cond_1

    .line 1924
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1925
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1926
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1927
    .local v2, "optionMenuContainer":Landroid/view/ViewGroup;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1928
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1929
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1930
    .local v1, "child":Landroid/view/View;
    move-object v1, v4

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1931
    const/4 v4, 0x1

    return v4

    .line 1928
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1937
    .end local v0    # "childCount":I
    .end local v2    # "optionMenuContainer":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isTitleBarOptionMenuShow()Z
    .locals 6

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "option1IsShow":Z
    const/4 v1, 0x0

    .line 1910
    .local v1, "option2IsShow":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 1911
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    const/4 v5, 0x0

    .line 1912
    .local v5, "titleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    move-object v5, v2

    if-eqz v2, :cond_0

    .line 1913
    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer(I)Landroid/view/View;

    move-result-object v2

    .line 1914
    .local v2, "optionMenuView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isTitleBarOptionMenuChildShow(Landroid/view/View;)Z

    move-result v0

    .line 1915
    invoke-interface {v5, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer(I)Landroid/view/View;

    move-result-object v2

    .line 1916
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isTitleBarOptionMenuChildShow(Landroid/view/View;)Z

    move-result v1

    .line 1919
    .end local v2    # "optionMenuView":Landroid/view/View;
    .end local v5    # "titleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v4
.end method

.method private markSpmBehavor(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 3
    .param p1, "jsInvokeModel"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "seedId":Ljava/lang/String;
    :try_start_0
    const-string v1, "1005"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const-string v1, "a192.b5743.c12614.d23119"

    move-object v0, v1

    goto/16 :goto_0

    .line 429
    :cond_0
    const-string v1, "BACK_TO_HOME"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    const-string v1, "a192.b5743.c12614.d25586"

    move-object v0, v1

    goto/16 :goto_0

    .line 431
    :cond_1
    const-string v1, "1001"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    const-string v1, "a192.b5743.c12614.d23114"

    move-object v0, v1

    goto/16 :goto_0

    .line 433
    :cond_2
    const-string v1, "1004"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    const-string v1, "a192.b5743.c12614.d23120"

    move-object v0, v1

    goto :goto_0

    .line 435
    :cond_3
    const-string v1, "1002"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    const-string v1, "a192.b5743.c12614.d23118"

    move-object v0, v1

    goto :goto_0

    .line 437
    :cond_4
    const-string v1, "1012"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 438
    const-string v1, "a192.b5743.c12614.d37333"

    move-object v0, v1

    goto :goto_0

    .line 439
    :cond_5
    const-string v1, "1015"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 440
    const-string v1, "a192.b5743.c12614.d37334"

    move-object v0, v1

    goto :goto_0

    .line 441
    :cond_6
    const-string v1, "OPTION_MENU"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 442
    const-string v1, "a192.b5743.c20485.d37319"

    move-object v0, v1

    goto :goto_0

    .line 443
    :cond_7
    const-string v1, "1014"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 444
    const-string v1, "a192.b5743.c12614.d37335"

    move-object v0, v1

    goto :goto_0

    .line 445
    :cond_8
    const-string v1, "1011"

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 446
    const-string v1, "a192.b5743.c12614.d40051"

    move-object v0, v1

    .line 449
    :cond_9
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 450
    return-void

    .line 453
    :cond_a
    const-string v1, "appId"

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppLoggerUtils;->markSpmBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .end local v0    # "seedId":Ljava/lang/String;
    return-void

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "markSpmBehavor..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyBlurMenu"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private parseRpcData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 28
    .param p1, "menuStr"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;",
            ">;"
        }
    .end annotation

    .line 886
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v1, "menuList":Ljava/util/List;
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 888
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v4, v2

    if-eqz v2, :cond_13

    .line 889
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 890
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v5, :cond_0

    .line 891
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 894
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->setCurrentAppId(Ljava/lang/String;)V

    move-object v5, v3

    .line 897
    .local v5, "appUrl":Ljava/lang/String;
    const-string v7, ""

    .line 898
    .local v7, "currentUrl":Ljava/lang/String;
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v8, :cond_1

    .line 899
    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 901
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "url"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v7

    :goto_0
    move-object v5, v8

    .line 904
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 905
    const-string v6, ""

    .line 907
    .end local p2    # "appId":Ljava/lang/String;
    .local v6, "appId":Ljava/lang/String;
    :cond_3
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_4

    .line 908
    iput-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;

    .line 910
    :cond_4
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appDesc:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 911
    iput-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appDesc:Ljava/lang/String;

    .line 913
    :cond_5
    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appIcon:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 914
    iput-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appIcon:Ljava/lang/String;

    .line 916
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 917
    const-string v5, ""

    .line 920
    :cond_7
    nop

    .line 921
    const-string v8, "appVersion"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    .line 922
    .local v9, "scene":Ljava/lang/String;
    move-object v9, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 923
    const-string v9, ""

    .line 926
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 927
    const-string/jumbo v8, "{%APP_ID%}"

    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 928
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;

    const-string/jumbo v12, "{%APP_NAME%}"

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 929
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appIcon:Ljava/lang/String;

    const-string/jumbo v12, "{%APP_ICON%}"

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 930
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appDesc:Ljava/lang/String;

    const-string/jumbo v12, "{%APP_DESC%}"

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 931
    invoke-direct {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getPagePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "{%APP_URL%}"

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 932
    nop

    .line 933
    const-string/jumbo v11, "package_nick"

    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 932
    const-string/jumbo v12, "{%APP_PACKAGE_NICK%}"

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 934
    const-string/jumbo v11, "{%APP_SCENE%}"

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .end local p1    # "menuStr":Ljava/lang/String;
    .local v8, "menuStr":Ljava/lang/String;
    goto :goto_1

    .line 926
    .end local v8    # "menuStr":Ljava/lang/String;
    .restart local p1    # "menuStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v10, p1

    move-object v8, v10

    .line 936
    .end local p1    # "menuStr":Ljava/lang/String;
    .restart local v8    # "menuStr":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "menuStr is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TinyBlurMenu"

    invoke-static {v11, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 938
    .local v10, "menuData":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v0, v6, v10}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->refreshCornerMarking(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 939
    if-eqz v10, :cond_12

    .line 940
    const/4 v11, 0x0

    const-string/jumbo v12, "success"

    invoke-static {v10, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z

    .line 941
    const-string/jumbo v11, "result"

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    move-object v12, v3

    .line 942
    .local v12, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v12, v11

    if-eqz v11, :cond_11

    .line 943
    const-string v11, "developer"

    invoke-virtual {v12, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    move-object v13, v3

    .line 944
    .local v13, "developer":Lcom/alibaba/fastjson/JSONObject;
    move-object v13, v11

    const-string/jumbo v14, "mid"

    const-string v15, "callback"

    const-string v3, "action"

    move-object/from16 v17, v2

    .end local v2    # "bundle":Landroid/os/Bundle;
    .local v17, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "options"

    if-eqz v11, :cond_b

    .line 945
    const-string v11, "appDeveloper"

    invoke-static {v13, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->tinyDesc:Ljava/lang/String;

    .line 946
    const-string/jumbo v11, "menu"

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v18, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-static {v13, v11, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    move-object/from16 v16, v4

    .line 947
    .local v16, "menu":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 p1, v11

    .end local v16    # "menu":Lcom/alibaba/fastjson/JSONObject;
    .local p1, "menu":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_a

    .line 948
    move-object/from16 v11, p1

    .end local p1    # "menu":Lcom/alibaba/fastjson/JSONObject;
    .local v11, "menu":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, "action":Ljava/lang/String;
    move-object/from16 p2, v5

    .end local v5    # "appUrl":Ljava/lang/String;
    .local p2, "appUrl":Ljava/lang/String;
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 950
    .local v5, "paramsStr":Ljava/lang/String;
    move-object/from16 v19, v6

    .end local v6    # "appId":Ljava/lang/String;
    .local v19, "appId":Ljava/lang/String;
    invoke-virtual {v11, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 951
    .local v6, "callback":Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "currentUrl":Ljava/lang/String;
    .local v20, "currentUrl":Ljava/lang/String;
    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 952
    .local v7, "mid":Ljava/lang/String;
    move-object/from16 p1, v8

    .end local v8    # "menuStr":Ljava/lang/String;
    .local p1, "menuStr":Ljava/lang/String;
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->miniAbout:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    goto :goto_2

    .line 947
    .end local v4    # "action":Ljava/lang/String;
    .end local v11    # "menu":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v20    # "currentUrl":Ljava/lang/String;
    .end local p2    # "appUrl":Ljava/lang/String;
    .local v5, "appUrl":Ljava/lang/String;
    .local v6, "appId":Ljava/lang/String;
    .local v7, "currentUrl":Ljava/lang/String;
    .restart local v8    # "menuStr":Ljava/lang/String;
    .local p1, "menu":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    move-object/from16 v11, p1

    move-object/from16 p2, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 p1, v8

    .end local v5    # "appUrl":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "currentUrl":Ljava/lang/String;
    .end local v8    # "menuStr":Ljava/lang/String;
    .restart local v11    # "menu":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "appId":Ljava/lang/String;
    .restart local v20    # "currentUrl":Ljava/lang/String;
    .local p1, "menuStr":Ljava/lang/String;
    .restart local p2    # "appUrl":Ljava/lang/String;
    const/4 v5, 0x0

    goto :goto_2

    .line 944
    .end local v11    # "menu":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v20    # "currentUrl":Ljava/lang/String;
    .end local p1    # "menuStr":Ljava/lang/String;
    .end local p2    # "appUrl":Ljava/lang/String;
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v5    # "appUrl":Ljava/lang/String;
    .restart local v6    # "appId":Ljava/lang/String;
    .restart local v7    # "currentUrl":Ljava/lang/String;
    .restart local v8    # "menuStr":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v4

    move-object/from16 p2, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 p1, v8

    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v5    # "appUrl":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "currentUrl":Ljava/lang/String;
    .end local v8    # "menuStr":Ljava/lang/String;
    .restart local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v19    # "appId":Ljava/lang/String;
    .restart local v20    # "currentUrl":Ljava/lang/String;
    .restart local p1    # "menuStr":Ljava/lang/String;
    .restart local p2    # "appUrl":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 956
    :goto_2
    const-string/jumbo v4, "menus"

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    move-object v6, v11

    .line 957
    .local v6, "menuArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v4

    if-eqz v4, :cond_10

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 958
    const/4 v4, 0x0

    move-object v7, v5

    const/16 v16, 0x0

    move v5, v4

    const/4 v4, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_f

    .line 959
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 960
    .local v7, "itemObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v8

    if-eqz v8, :cond_e

    .line 962
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 964
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 965
    .local v11, "action":Ljava/lang/String;
    move-object/from16 v21, v3

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 966
    .local v3, "paramsStr":Ljava/lang/String;
    move-object/from16 v22, v6

    .end local v6    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .local v22, "menuArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v7, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 967
    .local v6, "callback":Ljava/lang/String;
    move-object/from16 v23, v9

    .end local v9    # "scene":Ljava/lang/String;
    .local v23, "scene":Ljava/lang/String;
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 968
    .local v9, "mid":Ljava/lang/String;
    move-object/from16 v24, v10

    .end local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .local v24, "menuData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "menuIconUrl"

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 969
    .local v10, "menuIconUrl":Ljava/lang/String;
    move-object/from16 v25, v12

    .end local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    .local v25, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 970
    .local v12, "options":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v26, v2

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v2, v11, v3, v6, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .local v16, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object/from16 v27, v2

    .end local v16    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .local v27, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    iput-object v8, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 973
    nop

    .end local v27    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .local v2, "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    iput-object v10, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    .line 974
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    move-object/from16 v27, v3

    .end local v3    # "paramsStr":Ljava/lang/String;
    .local v27, "paramsStr":Ljava/lang/String;
    const-string v3, "1005"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 977
    iput-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mFavoriteJsInvokeModel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    goto :goto_4

    .line 978
    :cond_c
    const-string v3, "1012"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 979
    if-eqz v12, :cond_d

    .line 980
    const-string/jumbo v3, "param"

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 981
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v3

    if-eqz v3, :cond_d

    .line 982
    const-string/jumbo v3, "publicId"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->publicId:Ljava/lang/String;

    .line 958
    .end local v2    # "menuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    .end local v4    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "callback":Ljava/lang/String;
    .end local v7    # "itemObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "mid":Ljava/lang/String;
    .end local v10    # "menuIconUrl":Ljava/lang/String;
    .end local v11    # "action":Ljava/lang/String;
    .end local v12    # "options":Lcom/alibaba/fastjson/JSONObject;
    .end local v27    # "paramsStr":Ljava/lang/String;
    :cond_d
    :goto_4
    move-object/from16 v16, v2

    goto :goto_5

    .line 960
    .end local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v23    # "scene":Ljava/lang/String;
    .end local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    .local v6, "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .local v9, "scene":Ljava/lang/String;
    .local v10, "menuData":Lcom/alibaba/fastjson/JSONObject;
    .local v12, "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    move-object/from16 v26, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .line 958
    .end local v6    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "scene":Ljava/lang/String;
    .end local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v23    # "scene":Ljava/lang/String;
    .restart local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move-object/from16 v2, v26

    goto/16 :goto_3

    .end local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v23    # "scene":Ljava/lang/String;
    .end local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v9    # "scene":Ljava/lang/String;
    .restart local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    move-object/from16 v22, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .end local v6    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "scene":Ljava/lang/String;
    .end local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v23    # "scene":Ljava/lang/String;
    .restart local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_6

    .line 957
    .end local v5    # "i":I
    .end local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v23    # "scene":Ljava/lang/String;
    .end local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v9    # "scene":Ljava/lang/String;
    .restart local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_10
    move-object/from16 v22, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .end local v6    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "scene":Ljava/lang/String;
    .end local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v23    # "scene":Ljava/lang/String;
    .restart local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_6

    .line 942
    .end local v13    # "developer":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "bundle":Landroid/os/Bundle;
    .end local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v20    # "currentUrl":Ljava/lang/String;
    .end local v22    # "menuArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v23    # "scene":Ljava/lang/String;
    .end local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local p1    # "menuStr":Ljava/lang/String;
    .end local p2    # "appUrl":Ljava/lang/String;
    .local v2, "bundle":Landroid/os/Bundle;
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v5, "appUrl":Ljava/lang/String;
    .local v6, "appId":Ljava/lang/String;
    .local v7, "currentUrl":Ljava/lang/String;
    .local v8, "menuStr":Ljava/lang/String;
    .restart local v9    # "scene":Ljava/lang/String;
    .restart local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_11
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 p2, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 p1, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v5    # "appUrl":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "currentUrl":Ljava/lang/String;
    .end local v8    # "menuStr":Ljava/lang/String;
    .end local v9    # "scene":Ljava/lang/String;
    .end local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "bundle":Landroid/os/Bundle;
    .restart local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v19    # "appId":Ljava/lang/String;
    .restart local v20    # "currentUrl":Ljava/lang/String;
    .restart local v23    # "scene":Ljava/lang/String;
    .restart local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local p1    # "menuStr":Ljava/lang/String;
    .restart local p2    # "appUrl":Ljava/lang/String;
    goto :goto_6

    .line 939
    .end local v17    # "bundle":Landroid/os/Bundle;
    .end local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v20    # "currentUrl":Ljava/lang/String;
    .end local v23    # "scene":Ljava/lang/String;
    .end local v24    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local p1    # "menuStr":Ljava/lang/String;
    .end local p2    # "appUrl":Ljava/lang/String;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v5    # "appUrl":Ljava/lang/String;
    .restart local v6    # "appId":Ljava/lang/String;
    .restart local v7    # "currentUrl":Ljava/lang/String;
    .restart local v8    # "menuStr":Ljava/lang/String;
    .restart local v9    # "scene":Ljava/lang/String;
    .restart local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    :cond_12
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 p2, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 p1, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    .line 992
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v5    # "appUrl":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "currentUrl":Ljava/lang/String;
    .end local v8    # "menuStr":Ljava/lang/String;
    .end local v9    # "scene":Ljava/lang/String;
    .end local v10    # "menuData":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v19    # "appId":Ljava/lang/String;
    .restart local p1    # "menuStr":Ljava/lang/String;
    :goto_6
    move-object/from16 v10, p1

    goto :goto_7

    .line 888
    .end local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v19    # "appId":Ljava/lang/String;
    .restart local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local p2, "appId":Ljava/lang/String;
    :cond_13
    move-object/from16 v10, p1

    move-object/from16 v6, p2

    move-object/from16 v18, v4

    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object/from16 v19, v6

    .line 992
    .end local p1    # "menuStr":Ljava/lang/String;
    .end local p2    # "appId":Ljava/lang/String;
    .local v10, "menuStr":Ljava/lang/String;
    .restart local v19    # "appId":Ljava/lang/String;
    :goto_7
    return-object v1
.end method

.method private postShareEvent(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V
    .locals 4
    .param p1, "jsInvokeModel"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 263
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getAppUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "page"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 265
    const-string/jumbo v2, "shareTinyAppMsg"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 267
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isCanUseNativeShare()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->action:Ljava/lang/String;

    const-string/jumbo v1, "startShare"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->doNativeShareAction()V

    return-void

    .line 271
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->generateNativeJsApiInvoke(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 273
    return-void
.end method

.method private refreshCornerMarking(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "rpcData"    # Lcom/alibaba/fastjson/JSONObject;

    .line 634
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;-><init>()V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;->getData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)V

    .line 645
    return-void
.end method

.method private registerExitSessionInterceptor()V
    .locals 5

    const-string v0, "TinyBlurMenu"

    .line 666
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isFirstPage:Z

    if-nez v1, :cond_0

    .line 667
    return-void

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_1

    .line 670
    return-void

    .line 673
    :cond_1
    const/4 v2, 0x0

    .line 674
    .local v2, "canRegister":Z
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "onlyOptionMenu"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    .line 675
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    const/4 v2, 0x1

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "nbsource"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "debug"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 680
    const/4 v2, 0x1

    .line 683
    :cond_3
    if-eqz v2, :cond_4

    .line 685
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v3, 0x0

    .line 686
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v1

    if-eqz v1, :cond_4

    .line 688
    :try_start_0
    const-string/jumbo v1, "registerExitSessionInterceptor..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v1, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppExitSessionInterceptPlugin"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 691
    .local v1, "h5Plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    nop

    .end local v1    # "h5Plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    return-void

    .line 692
    :catch_0
    move-exception v1

    .line 693
    const-string v1, "init...registerPlugin error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v3    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_4
    return-void
.end method

.method private registerPlugins(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1821
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5Plugin:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;

    if-eqz v0, :cond_0

    .line 1822
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5Plugin:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$H5EventInterceptPlugin;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1824
    :cond_0
    return-void
.end method

.method private removeAboutMenuItem()V
    .locals 4

    .line 1205
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const/4 v2, 0x0

    const-string v3, "1001"

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1206
    return-void
.end method

.method private removeShareMenuItem()V
    .locals 4

    .line 1198
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const/4 v2, 0x0

    const-string v3, "1002"

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1199
    return-void
.end method

.method private replacePlaceholderInMenu(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "orignal"    # Ljava/lang/String;

    const-string v0, ""

    .line 1770
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    const/4 v2, 0x0

    .line 1772
    .local v2, "appUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1773
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v4, v0

    .line 1774
    .local v4, "currentUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v5, :cond_0

    .line 1775
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    move-object v3, v5

    .line 1776
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1778
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "url"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    move-object v2, v5

    .line 1781
    nop

    .line 1782
    .local v0, "scene":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1783
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    const-string v6, "appVersion"

    .line 1784
    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1787
    :cond_2
    const-string/jumbo v5, "{%APP_ID%}"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1788
    move-object p1, v5

    const-string/jumbo v6, "{%APP_NAME%}"

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1789
    move-object p1, v5

    const-string/jumbo v6, "{%APP_ICON%}"

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appIcon:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1790
    move-object p1, v5

    const-string/jumbo v6, "{%APP_DESC%}"

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appDesc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1791
    move-object p1, v5

    const-string/jumbo v6, "{%APP_URL%}"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getPagePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1792
    move-object p1, v5

    const-string/jumbo v6, "{%APP_PACKAGE_NICK%}"

    const-string/jumbo v7, "package_nick"

    .line 1793
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1792
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1794
    move-object p1, v5

    const-string/jumbo v6, "{%APP_SCENE%}"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v5

    .line 1797
    .end local v0    # "scene":Ljava/lang/String;
    .end local v1    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v2    # "appUrl":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "currentUrl":Ljava/lang/String;
    goto :goto_1

    .line 1795
    :catchall_0
    move-exception v0

    .line 1796
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TinyBlurMenu"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1798
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object p1
.end method

.method private shouldShowAddToDesktopMenuItem()Z
    .locals 4

    .line 1212
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 1213
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 1214
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1216
    return v1

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v0, :cond_1

    .line 1220
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->allowedShowAddToDesktopMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    return v1

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_2

    return v1

    .line 1228
    :cond_2
    const-string/jumbo v2, "showDesktopMenu"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 1229
    .local v2, "showAddToDesktop":Ljava/lang/Object;
    move-object v2, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1230
    const-string v0, "TinyBlurMenu"

    const-string v3, "checkCanShowAddToDesktopMenuItem...DONOT show add2desktop menu"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return v1

    .line 1235
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getShouldShowAdd2Desktop(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1236
    return v1

    .line 1239
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private shouldShowBackToHome()V
    .locals 5

    .line 1559
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    return-void

    .line 1561
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    return-void

    .line 1566
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v1, "showBackToHomeBackMenu"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1567
    .local v2, "backToHome":Ljava/lang/Object;
    move-object v2, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1568
    const-string v0, "TinyBlurMenu"

    const-string v1, "checkCanShowBackToHomeItem...DONOT show back to home menu"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v3, ""

    const-string v4, "BACK_TO_HOME"

    invoke-direct {v1, v3, v3, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1570
    return-void

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v3, "showBackToHomepage"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1575
    .local v1, "showBackToHomepage":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1576
    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1577
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showBackToHome()V

    .line 1580
    :cond_3
    return-void
.end method

.method private showBackToHome()V
    .locals 4

    .line 1583
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string v2, ""

    const-string v3, "BACK_TO_HOME"

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const-string/jumbo v1, "\u8fd4\u56de\u9996\u9875"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    .local v2, "backToHome":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    move-object v2, v0

    iput-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1586
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    .end local v2    # "backToHome":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_0
    return-void
.end method

.method private showCustomRightView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1406
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1409
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1410
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1411
    if-eqz v1, :cond_1

    .line 1412
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1416
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->initTitleBarTheme()V

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init..optionContainer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyBlurMenu"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-class v0, Lcom/alipay/mobile/nebula/provider/TinyOptionMenuViewProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/TinyOptionMenuViewProvider;

    .line 1420
    if-eqz v0, :cond_3

    .line 1421
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/TinyOptionMenuViewProvider;->createView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/AbsTinyOptionMenuView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    .line 1423
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    if-nez v0, :cond_4

    .line 1424
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    .line 1426
    :cond_4
    const-string/jumbo v0, "mp_ta_showOptionMenu"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1427
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->hideOptionMenu()V

    .line 1429
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->setAppId(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1431
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$9;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->setOptionMenuOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$10;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$10;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1470
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$11;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Landroid/view/ViewGroup;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->setCloseButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1520
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getDensity(Landroid/content/Context;)F

    move-result p1

    .line 1521
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1523
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1524
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1525
    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1526
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->getView()Landroid/view/View;

    move-result-object p1

    .line 1527
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1528
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1530
    :cond_6
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1531
    sget-object p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->TAG_VIEW:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1532
    sget p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->TAG_VIEW_KEY:I

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1534
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->updateCornerMarking()V

    .line 1535
    return-void

    .line 1406
    :cond_7
    :goto_1
    return-void
.end method

.method private showDeveloperCustomMenu()V
    .locals 12

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_4

    .line 1157
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->developerCustomMenu:Ljava/util/List;

    .line 1158
    .local v1, "oldDeveloperMenu":Ljava/util/List;
    const-string/jumbo v2, "setCustomPopMenu"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->developerCustomMenu:Ljava/util/List;

    .line 1159
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 1161
    const-string/jumbo v0, "name"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 1163
    .local v3, "developerMenu":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1164
    .local v6, "menuName":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v9, v4, v4, v4, v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1165
    .local v7, "lastIndex":I
    move v7, v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1166
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1168
    .end local v3    # "developerMenu":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "menuName":Ljava/lang/String;
    .end local v7    # "lastIndex":I
    :cond_0
    goto :goto_0

    .line 1162
    :cond_1
    move-object v3, v6

    .line 1172
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->developerCustomMenu:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_1
    const/4 v7, 0x3

    if-ge v5, v7, :cond_4

    if-ge v5, v6, :cond_4

    .line 1173
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->developerCustomMenu:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 1174
    .restart local v3    # "developerMenu":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v7

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1175
    .local v7, "menuName":Ljava/lang/String;
    const-string/jumbo v8, "menuIconUrl"

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1176
    .local v8, "menuIconUrl":Ljava/lang/String;
    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    invoke-direct {v9, v4, v4, v4, v7}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .local v9, "developerMenuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1178
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 1179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x5

    invoke-virtual {v7, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 1183
    :cond_3
    iput-object v7, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->menuName:Ljava/lang/String;

    .line 1184
    iput-object v8, v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->iconUrl:Ljava/lang/String;

    .line 1185
    iget-object v10, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    nop

    .end local v3    # "developerMenu":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "menuName":Ljava/lang/String;
    .end local v8    # "menuIconUrl":Ljava/lang/String;
    .end local v9    # "developerMenuItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1191
    .end local v1    # "oldDeveloperMenu":Ljava/util/List;
    .end local v5    # "i":I
    .end local v6    # "size":I
    :cond_4
    return-void

    .line 1189
    :catchall_0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TinyBlurMenu"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1192
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private showPopMenu()V
    .locals 3

    .line 1701
    const/4 v0, 0x0

    .line 1702
    .local v0, "isNeedShowRecentAppArea":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v1, :cond_0

    .line 1703
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isShowRecentAppAreaInMenu(Ljava/lang/String;)Z

    move-result v0

    .line 1705
    :cond_0
    if-eqz v0, :cond_1

    .line 1706
    const-string v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1727
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1728
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->internalShowMenu(Ljava/util/List;)V

    return-void

    .line 1730
    :cond_2
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$13;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$13;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1738
    return-void
.end method

.method private updateCornerMarking()V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    if-nez v0, :cond_0

    .line 650
    return-void

    .line 652
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method


# virtual methods
.method public containsFavoriteMenuItem()Z
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mFavoriteJsInvokeModel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fireShareEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 1591
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1595
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1596
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 1597
    return-void

    .line 1599
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    .line 1600
    .local v1, "jsInvokeModel":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1601
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isCanUseNativeShare()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1602
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->doNativeShareAction()V

    goto :goto_1

    .line 1604
    :cond_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->generateNativeJsApiInvoke(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 1606
    :goto_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->doMonitorLog(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 1607
    return-void

    .line 1609
    .end local v1    # "jsInvokeModel":Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;
    :cond_3
    goto :goto_0

    .line 1610
    :cond_4
    return-void

    .line 1592
    :cond_5
    :goto_2
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 1593
    return-void
.end method

.method public init(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "rpcData"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "optionContainer"    # Landroid/view/ViewGroup;

    .line 525
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->initMenu(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->initView(Landroid/content/Context;)V

    .line 527
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "appId":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 530
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 531
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    const-string v3, "appId"

    if-eqz v2, :cond_0

    .line 533
    const-string/jumbo v2, "parentAppId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mServiceAppId:Ljava/lang/String;

    goto :goto_0

    .line 537
    :cond_0
    const-string v2, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mAppId:Ljava/lang/String;

    .line 545
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    move-object v5, v0

    .line 546
    .local v5, "finalAppId":Ljava/lang/String;
    const-string v1, "NORMAL"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v9, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mTinyPopMenuReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->doDismissWithAnimation(Z)V

    .line 507
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isRelease:Z

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 510
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 511
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    .line 512
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mContext:Landroid/content/Context;

    .line 513
    return-void
.end method

.method public onSwitchToBlueTheme()V
    .locals 1

    .line 847
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 848
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    if-eqz v0, :cond_1

    .line 851
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->switchToBlueTheme()V

    .line 853
    :cond_1
    return-void
.end method

.method public onSwitchToWhiteTheme()V
    .locals 1

    .line 837
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->titleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 838
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->rightButtonView:Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;

    if-eqz v0, :cond_1

    .line 841
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;->switchToWhiteTheme()V

    .line 843
    :cond_1
    return-void
.end method

.method public requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;)V
    .locals 2
    .param p1, "h5SimpleRpcListener"    # Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "context"    # Landroid/content/Context;

    .line 708
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->registerPlugins(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 709
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V

    const-string v1, "IO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method public setH5MenuList(Ljava/util/List;Z)V
    .locals 2
    .param p1, "menuItemList"    # Ljava/util/List;
    .param p2, "showPopMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .line 1613
    const-string v0, "TinyBlurMenu"

    const-string/jumbo v1, "setH5MenuList..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuItemList:Ljava/util/List;

    .line 1615
    if-eqz p2, :cond_0

    .line 1616
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->asyncShowMenu()V

    .line 1618
    :cond_0
    return-void
.end method

.method public setH5OptionMenuTextFlag()V
    .locals 2

    .line 1628
    const-string v0, "TinyBlurMenu"

    const-string/jumbo v1, "setH5OptionMenuTextFlag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5OptionMenuTextFlag:Z

    .line 1630
    return-void
.end method

.method public setH5ShowOptionMenuFlag()V
    .locals 2

    .line 1622
    const-string v0, "TinyBlurMenu"

    const-string/jumbo v1, "setH5ShowOptionMenuFlag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mH5ShowOptionMenu:Z

    .line 1624
    return-void
.end method

.method public setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 856
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 857
    if-eqz p1, :cond_0

    .line 858
    const-string v0, "POP_MENU_EXTRA_KEY"

    invoke-interface {p1, v0, p0}, Lcom/alipay/mobile/h5container/api/H5Page;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    :cond_0
    return-void
.end method

.method protected shouldShowDebugMenu()Z
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isDebugVersion(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getAssistantPanelSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRealAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1248
    return v0
.end method

.method public showMenu()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->isShowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenuPanel:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMenusList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->checkCanShowShareMenuItem()V

    .line 479
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->shouldShowBackToHome()V

    .line 481
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->addH5MenuList()V

    .line 486
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showDeveloperCustomMenu()V

    .line 488
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showPopMenu()V

    .line 492
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    const/4 v1, 0x0

    const-string v2, "OPTION_MENU"

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->markSpmBehavor(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;)V

    .line 493
    return-void
.end method
