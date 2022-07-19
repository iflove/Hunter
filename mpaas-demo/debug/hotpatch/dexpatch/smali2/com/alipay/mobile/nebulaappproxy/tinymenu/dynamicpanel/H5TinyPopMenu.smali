.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;
.super Ljava/lang/Object;
.source "H5TinyPopMenu.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    }
.end annotation


# static fields
.field public static final DEVELOPER_CUSTOM_MENU:Ljava/lang/String; = "setCustomPopMenu"

.field public static final SHOW_BACK_TO_HOME_POP_MENU:Ljava/lang/String; = "showBackToHomeBackMenu"

.field public static final SHOW_BACK_TO_HOME_TITLE_BAR:Ljava/lang/String; = "showBackToHomeTitleBar"

.field public static final SHOW_DESKTOP_POP_MENU:Ljava/lang/String; = "showDesktopMenu"

.field public static final SHOW_FAVORITE_POP_MENU:Ljava/lang/String; = "showFavoriteMenu"

.field public static final SHOW_SHARE_POP_MENU:Ljava/lang/String; = "showShareMenu"

.field private static final TAG:Ljava/lang/String; = "H5TinyPopMenu"

.field public static final TAG_VIEW:Ljava/lang/Object;

.field public static final TAG_VIEW_KEY:I


# instance fields
.field private h5Menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mH5OptionMenuTextFlag:Z

.field private mH5ShowOptionMenu:Z

.field private mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

.field private mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

.field private mTitleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->TAG_VIEW:Ljava/lang/Object;

    .line 33
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->right_btn_container:I

    sput v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->TAG_VIEW_KEY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5ShowOptionMenu:Z

    .line 54
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5OptionMenuTextFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    return-object p1
.end method

.method private initRealMenu(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mTitleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onSwitchToWhiteTheme()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->onSwitchToWhiteTheme()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mTitleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onSwitchToBlueTheme()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->onSwitchToBlueTheme()V

    .line 209
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->h5Menus:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setH5MenuList(Ljava/util/List;Z)V

    goto :goto_1

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v1, :cond_5

    .line 213
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->setH5MenuList(Ljava/util/List;Z)V

    .line 217
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5ShowOptionMenu:Z

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_6

    .line 219
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setH5ShowOptionMenuFlag()V

    goto :goto_2

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_7

    .line 221
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->setH5ShowOptionMenuFlag()V

    .line 225
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5OptionMenuTextFlag:Z

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_8

    .line 227
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setH5OptionMenuTextFlag()V

    goto :goto_3

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_9

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->setH5OptionMenuTextFlag()V

    .line 233
    :cond_9
    :goto_3
    const-string v0, "0"

    const-string/jumbo v1, "ta_popmenu_init_gone"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 235
    if-eqz p1, :cond_b

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 238
    .local v1, "child":Landroid/view/View;
    move-object v1, v2

    if-eqz v2, :cond_a

    .line 239
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v1    # "child":Landroid/view/View;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    .end local v0    # "i":I
    :cond_b
    return-void

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5TinyPopMenu"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public containsFavoriteMenuItem()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->containsFavoriteMenuItem()Z

    move-result v0

    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->containsFavoriteMenuItem()Z

    move-result v0

    return v0

    .line 190
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "viewGroup"    # Landroid/view/ViewGroup;

    .line 84
    invoke-direct {p0, p4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->initRealMenu(Landroid/view/ViewGroup;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    const-string v1, "H5TinyPopMenu"

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->init(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    const-string/jumbo v0, "new tiny menu init failed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 93
    :try_start_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->init(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    return-void

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    const-string/jumbo v0, "old tiny menu init failed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onRelease()V

    .line 71
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->onRelease()V

    .line 74
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    .line 76
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mTitleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5OptionMenuTextFlag:Z

    .line 78
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5ShowOptionMenu:Z

    .line 79
    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->h5Menus:Ljava/util/List;

    .line 80
    return-void
.end method

.method public onSwitchToBlueTheme()V
    .locals 1

    .line 145
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mTitleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onSwitchToBlueTheme()V

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->onSwitchToBlueTheme()V

    .line 151
    :cond_1
    return-void
.end method

.method public onSwitchToWhiteTheme()V
    .locals 1

    .line 135
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mTitleBarTheme:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->onSwitchToWhiteTheme()V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->onSwitchToWhiteTheme()V

    .line 141
    :cond_1
    return-void
.end method

.method public requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;)V
    .locals 2
    .param p1, "h5SimpleRpcListener"    # Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "context"    # Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public setH5MenuList(Ljava/util/List;Z)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->h5Menus:Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setH5MenuList(Ljava/util/List;Z)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->setH5MenuList(Ljava/util/List;Z)V

    .line 161
    :cond_1
    return-void
.end method

.method public setH5OptionMenuTextFlag()V
    .locals 1

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5OptionMenuTextFlag:Z

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setH5OptionMenuTextFlag()V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->setH5OptionMenuTextFlag()V

    .line 181
    :cond_1
    return-void
.end method

.method public setH5ShowOptionMenuFlag()V
    .locals 1

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mH5ShowOptionMenu:Z

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->setH5ShowOptionMenuFlag()V

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->setH5ShowOptionMenuFlag()V

    .line 171
    :cond_1
    return-void
.end method

.method public showMenu()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mNewMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showMenu()V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu;->mOldMenu:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->showMenu()V

    .line 65
    :cond_1
    return-void
.end method
