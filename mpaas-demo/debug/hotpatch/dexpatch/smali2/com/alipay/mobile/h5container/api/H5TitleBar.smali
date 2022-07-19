.class public Lcom/alipay/mobile/h5container/api/H5TitleBar;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;
.implements Lcom/alipay/mobile/nebula/view/H5TitleView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TitleBar"

.field private static final blueIconFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final whiteIconFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backContainer:Landroid/view/View;

.field public backToHomeContainer:Landroid/view/View;

.field public btBack:Landroid/widget/TextView;

.field public btBackToHome:Landroid/widget/TextView;

.field public btClose:Landroid/widget/TextView;

.field public btDotView:Landroid/view/View;

.field public btDotView1:Landroid/view/View;

.field public btDotViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public btIcon:Landroid/widget/ImageButton;

.field public btIcon1:Landroid/widget/ImageButton;

.field public btIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field public btMenu:Landroid/widget/TextView;

.field public btMenu1:Landroid/widget/TextView;

.field public btMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public btText:Landroid/widget/TextView;

.field public btText1:Landroid/widget/TextView;

.field public btTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

.field private currentTheme:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

.field public disClaimer:Landroid/widget/TextView;

.field public dotImage:Landroid/widget/ImageView;

.field public dotImage1:Landroid/widget/ImageView;

.field public dotImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public dotText:Landroid/widget/TextView;

.field public dotText1:Landroid/widget/TextView;

.field public dotTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public h5NavOptions:Landroid/view/View;

.field public h5NavOptions1:Landroid/view/View;

.field public h5NavOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

.field private h5TitleBarReLayout:Landroid/widget/RelativeLayout;

.field private hDivider:Landroid/view/View;

.field private iconfont:Landroid/graphics/Typeface;

.field private icontype:[Ljava/lang/String;

.field public ivImageTitle:Landroid/widget/ImageView;

.field public llTitle:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mTinyAppIconFont:Landroid/graphics/Typeface;

.field private mTrimTitleContent:Z

.field private optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field private progressBarLoadingDrawable:I

.field public rlTitle:Landroid/widget/RelativeLayout;

.field private searchPage:Z

.field private searchView:Lcom/alipay/mobile/nebula/search/H5SearchView;

.field private segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

.field private showCloseButton:Z

.field private statusBarAdjustView:Landroid/view/View;

.field private titleViewContainer:Landroid/view/ViewGroup;

.field public tvSubtitle:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;

.field private visibleOptionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->blueIconFontMap:Ljava/util/Map;

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5TitleBar;->whiteIconFontMap:Ljava/util/Map;

    .line 183
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->info:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "info"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->locate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "locate"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->plus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "add"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->richscan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v7, "scan"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->search:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v8, "search"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v9, "settings"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->help:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "help"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->filter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "filter"

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->mail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v12, "mail"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->h5_titlebar_more_normal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v13, "more"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->userw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->infow:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->locatew:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->plusw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->richscanw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->searchw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->settingsw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->helpw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->filterw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->mailw:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_white_titlebar_more_normal:I

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptionsList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 129
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->progressBarLoadingDrawable:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mTrimTitleContent:Z

    .line 176
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->BLUE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    iput-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->currentTheme:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, "parent":Landroid/view/ViewGroup;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 214
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    .line 217
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$layout;->h5_navigation_bar:I

    invoke-virtual {v3, v4, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    .line 218
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_title:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    .line 219
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_subtitle:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    .line 220
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_disclaimer:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    .line 221
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_title_img:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    .line 222
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_seg_group:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    .line 223
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setItemChangeListener(Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;)V

    .line 225
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_status_bar_adjust_view:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->statusBarAdjustView:Landroid/view/View;

    .line 226
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_nav_back:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    .line 233
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_back:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backContainer:Landroid/view/View;

    .line 234
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_close:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    .line 235
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_nav_back_to_home:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBackToHome:Landroid/widget/TextView;

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_nav_back_to_home:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    .line 238
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "h5iconfont"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "h5titlebar.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->iconfont:Landroid/graphics/Typeface;

    .line 239
    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    const v4, -0xef7117

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 241
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->iconfont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 243
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->iconfont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    const v5, -0x666667

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 246
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_h_divider_intitle:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->hDivider:Landroid/view/View;

    .line 248
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_rl_title:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->rlTitle:Landroid/widget/RelativeLayout;

    .line 249
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_ll_title:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->llTitle:Landroid/widget/LinearLayout;

    .line 251
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_nav_options:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    .line 252
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotView:Landroid/view/View;

    .line 253
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_image:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon:Landroid/widget/ImageButton;

    .line 254
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_text:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    .line 255
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_options:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    .line 256
    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->iconfont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_bg:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImage:Landroid/widget/ImageView;

    .line 259
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_number:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotText:Landroid/widget/TextView;

    .line 261
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_nav_options1:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions1:Landroid/view/View;

    .line 262
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot1:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotView1:Landroid/view/View;

    .line 263
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_image1:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon1:Landroid/widget/ImageButton;

    .line 264
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_text1:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    .line 265
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bt_options1:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    .line 266
    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->iconfont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 268
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_bg1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImage1:Landroid/widget/ImageView;

    .line 269
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_bt_dot_number1:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotText1:Landroid/widget/TextView;

    .line 272
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptionsList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptionsList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions1:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotView:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotView1:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon:Landroid/widget/ImageButton;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon1:Landroid/widget/ImageButton;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImage:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImage1:Landroid/widget/ImageView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotText:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotText1:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    .line 296
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->adView:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 297
    const-string v4, "adView"

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 300
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_custom_view:I

    .line 301
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 302
    const-string v4, "h5_custom_view"

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 304
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backContainer:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon1:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_title_bar_layout:I

    .line 315
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TitleBarReLayout:Landroid/widget/RelativeLayout;

    .line 317
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    .line 319
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v3, 0x0

    .line 320
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 321
    nop

    .line 322
    const-string v0, "h5_trimTitle"

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "no"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mTrimTitleContent:Z

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->updateBackToHome()V

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/nebula/view/H5SegmentGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/h5container/api/H5TitleBar;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private adjustBadgePosition(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "dotNum"    # I

    .line 785
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aget-object v0, v0, p1

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string v2, "H5TitleBar"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 786
    const-string v0, "adjust menu"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aget-object v0, v0, p1

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne v0, v1, :cond_1

    .line 788
    const-string v0, "adjust icon"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aget-object v0, v0, p1

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne v0, v1, :cond_2

    .line 790
    const-string v0, "adjust text"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    if-nez p2, :cond_2

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    const v2, 0x40f9999a    # 7.8f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 795
    :cond_2
    :goto_0
    const/16 v0, 0x8

    if-nez p2, :cond_3

    .line 796
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 798
    :cond_3
    if-lez p2, :cond_5

    .line 799
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    const/16 v0, 0x63

    if-le p2, v0, :cond_4

    const-string/jumbo v0, "\u00b7\u00b7\u00b7"

    goto :goto_1

    :cond_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "dt":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    .end local v0    # "dt":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private createIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .line 1340
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 1341
    const/4 v0, 0x0

    return-object v0

    .line 1343
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1344
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1345
    return-object v0
.end method

.method private ctrlbtDotView(II)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "visible"    # I

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private ctrlbtIcon(IIZ)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "visible"    # I
    .param p3, "byIndex"    # Z

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    if-eqz p3, :cond_1

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 416
    if-nez p2, :cond_3

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v1, v0, p1

    return-void

    .line 420
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 422
    if-nez p2, :cond_2

    .line 423
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v2, v1, p1

    .line 420
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private ctrlbtMenu(IIZ)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "visible"    # I
    .param p3, "byIndex"    # Z

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    return-void

    .line 433
    :cond_0
    if-eqz p3, :cond_1

    .line 434
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    if-nez p2, :cond_3

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v1, v0, p1

    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    if-nez p2, :cond_2

    .line 442
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v2, v1, p1

    .line 439
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private ctrlbtText(IIZ)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "visible"    # I
    .param p3, "byIndex"    # Z

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    return-void

    .line 395
    :cond_0
    if-eqz p3, :cond_1

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    if-nez p2, :cond_3

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v1, v0, p1

    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    if-nez p2, :cond_2

    .line 404
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->optionTypes:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v2, v1, p1

    .line 401
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private enableSetTitle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 355
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDownloadImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originUrl"    # Ljava/lang/String;

    .line 1406
    move-object v0, p1

    .line 1407
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 1408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1410
    .local v3, "entryUrl":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1411
    invoke-static {v3, p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    .end local v3    # "entryUrl":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private isOutOfBound(II)Z
    .locals 1
    .param p1, "num"    # I
    .param p2, "length"    # I

    .line 385
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 386
    return v0

    .line 388
    :cond_0
    if-ge p2, p1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private loadImageAsync(Ljava/lang/String;I)V
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 1363
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "H5TitleBar"

    if-nez v0, :cond_0

    .line 1364
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    .line 1365
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1366
    const-string v0, "loadImageAsync from base64"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1368
    return-void

    .line 1371
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1372
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getDownloadImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "finalImageUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "onlineHost"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "onlineHost":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadImageAsync originUrl "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", finalImageUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", onlineHost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1376
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/h5container/api/H5TitleBar$4;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar$4;-><init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;I)V

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    return-void

    .line 1391
    :cond_1
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5TitleBar$5;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar$5;-><init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;I)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 1403
    .end local v0    # "finalImageUrl":Ljava/lang/String;
    .end local v2    # "onlineHost":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setOptionImage(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .line 1349
    if-nez p1, :cond_0

    .line 1350
    return-void

    .line 1352
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;-><init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;ILandroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1360
    return-void
.end method

.method private setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 11
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "index"    # I

    .line 725
    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "title":Ljava/lang/String;
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "icon":Ljava/lang/String;
    const-string v2, "icontype"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "icontype":Ljava/lang/String;
    const-string/jumbo v3, "redDot"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "redDot":Ljava/lang/String;
    const-string v5, "contentDesc"

    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 730
    .local v5, "contentDesc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    :cond_0
    const-string v3, "color"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "colorText":Ljava/lang/String;
    const v6, -0xef7117

    .line 737
    .local v6, "color":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/high16 v9, -0x1000000

    if-nez v8, :cond_1

    .line 739
    :try_start_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v7

    .line 742
    goto :goto_0

    .line 740
    :catchall_0
    move-exception v7

    .line 743
    :goto_0
    or-int/2addr v6, v9

    .line 744
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 746
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v8

    .line 747
    .local v8, "currentColor":I
    or-int/2addr v8, v9

    .line 748
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setOptionMenuInternal currentColor is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "H5TitleBar"

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const v9, -0xeeeeef

    if-eq v8, v9, :cond_2

    .line 750
    iget-object v9, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    iget-object v9, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 753
    :cond_2
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    const v9, -0xef7117

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 754
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    .end local v8    # "currentColor":I
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x8

    if-nez v7, :cond_3

    .line 759
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 761
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const/4 v9, 0x1

    invoke-virtual {p0, v7, p2, v9}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 763
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 764
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 765
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 766
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 767
    iget-object v7, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 771
    :cond_5
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 772
    const/4 v7, -0x1

    .line 774
    .local v7, "dotNum":I
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v9

    .line 777
    goto :goto_3

    .line 775
    :catch_0
    move-exception v9

    .line 778
    :goto_3
    if-ltz v7, :cond_6

    const/4 v8, 0x0

    .line 779
    .local v8, "visibility":I
    :cond_6
    iget-object v9, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 780
    invoke-direct {p0, p2, v7}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->adjustBadgePosition(II)V

    .line 782
    .end local v7    # "dotNum":I
    .end local v8    # "visibility":I
    :cond_7
    return-void
.end method

.method private setTinyPopMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 655
    const-string/jumbo v0, "menus"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v2, v1

    .line 656
    .local v2, "menus":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    const-string/jumbo v3, "optionMenu"

    const-string/jumbo v4, "title"

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_3

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "menuItemList":Ljava/util/List;
    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v7

    .local v6, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 671
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 672
    .local v7, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v9, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v8, "title":Ljava/lang/String;
    move-object v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 674
    new-instance v9, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    invoke-direct {v9, v8, v3, v1, v5}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 675
    .local v9, "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v10, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v10}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->setH5OptionMenuTextFlag()V

    .line 670
    .end local v7    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 679
    .end local v6    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v1, v0, v5}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->setH5MenuList(Ljava/util/List;Z)V

    .line 682
    .end local v0    # "menuItemList":Ljava/util/List;
    :cond_3
    return-void

    .line 657
    :cond_4
    :goto_1
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 658
    .local v4, "title":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 659
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_5

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .restart local v0    # "menuItemList":Ljava/util/List;
    new-instance v6, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    invoke-direct {v6, v4, v3, v1, v5}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    move-object v1, v6

    .line 662
    .local v1, "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->setH5OptionMenuTextFlag()V

    .line 664
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v3, v0, v5}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->setH5MenuList(Ljava/util/List;Z)V

    .line 667
    .end local v0    # "menuItemList":Ljava/util/List;
    .end local v1    # "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    .end local v4    # "title":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setTitleMarginLeft(I)V
    .locals 3
    .param p1, "marginLeft"    # I

    .line 1304
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->rlTitle:Landroid/widget/RelativeLayout;

    .line 1305
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1306
    .local v1, "rlTitleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1307
    int-to-float v2, p1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1309
    :cond_0
    return-void
.end method

.method private updateBackToHome()V
    .locals 2

    .line 1312
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->updateBackToHomeTypeface()V

    .line 1313
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBackToHome:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebula/R$string;->bar_back_to_home:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1314
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5TitleBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar$2;-><init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    return-void
.end method

.method private updateBackToHomeTypeface()V
    .locals 2

    .line 1328
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mTinyAppIconFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "tinyfont/iconfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mTinyAppIconFont:Landroid/graphics/Typeface;

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mTinyAppIconFont:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBackToHome:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    :cond_1
    return-void

    .line 1334
    :catchall_0
    move-exception v0

    .line 1335
    const-string v0, "H5TitleBar"

    const-string v1, "iconfont failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method private updateOptionMenuIcon(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 12

    .line 1225
    const-string/jumbo v0, "override"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1227
    const-string v2, "bizType"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tiny"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1230
    const-string/jumbo v3, "menus"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 1231
    const-string/jumbo v4, "stupid"

    const v5, -0xeeeeef

    const/high16 v6, -0x1000000

    const-string v7, "icon"

    const-string v8, "icontype"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1232
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 1233
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-le p1, v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    .line 1234
    :goto_0
    new-array p1, v9, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    .line 1235
    nop

    :goto_1
    if-ge v1, v9, :cond_4

    .line 1236
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 1237
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1238
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->blueIconFontMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1239
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1240
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getMainTitleView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 1241
    or-int/2addr p1, v6

    .line 1242
    if-eq p1, v5, :cond_1

    .line 1243
    sget-object p1, Lcom/alipay/mobile/h5container/api/H5TitleBar;->whiteIconFontMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 1245
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1247
    goto :goto_2

    .line 1248
    :cond_2
    invoke-static {p1, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1250
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->loadImageAsync(Ljava/lang/String;I)V

    .line 1235
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1254
    :cond_4
    return-void

    .line 1255
    :cond_5
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 1256
    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    .line 1257
    aput-object v4, v0, v1

    .line 1258
    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 1259
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->blueIconFontMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object v1, v1, v10

    .line 1260
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1261
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getMainTitleView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 1262
    or-int/2addr p1, v6

    .line 1263
    if-eq p1, v5, :cond_6

    .line 1264
    sget-object p1, Lcom/alipay/mobile/h5container/api/H5TitleBar;->whiteIconFontMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v10}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    return-void

    .line 1266
    :cond_6
    iget-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object p1, p1, v10

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v10}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1268
    return-void

    .line 1269
    :cond_7
    invoke-static {p1, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1271
    invoke-direct {p0, p1, v10}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->loadImageAsync(Ljava/lang/String;I)V

    .line 1274
    :cond_8
    return-void

    .line 1276
    :cond_9
    new-array v0, v9, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    .line 1277
    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1278
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aput-object v4, v0, v10

    .line 1279
    nop

    .line 1280
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->blueIconFontMap:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 1281
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1282
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getMainTitleView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 1283
    or-int/2addr p1, v6

    .line 1284
    if-eq p1, v5, :cond_a

    .line 1285
    sget-object p1, Lcom/alipay/mobile/h5container/api/H5TitleBar;->whiteIconFontMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    return-void

    .line 1287
    :cond_a
    iget-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1289
    return-void

    .line 1290
    :cond_b
    invoke-static {p1, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1292
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->loadImageAsync(Ljava/lang/String;I)V

    .line 1296
    :cond_c
    return-void
.end method


# virtual methods
.method public enableBackButtonBackground(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1150
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->currentTheme:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->WHITE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    if-ne v0, v1, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->tiny_back_home_btn_bg_white:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1155
    return-void
.end method

.method public enableTitleSegControl(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1077
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setEnabled(Z)V

    .line 1078
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    return v0
.end method

.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchView:Lcom/alipay/mobile/nebula/search/H5SearchView;

    if-nez v0, :cond_0

    .line 1112
    const-class v0, Lcom/alipay/mobile/nebula/search/H5SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/search/H5SearchView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchView:Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 1113
    return-object v0

    .line 1115
    :cond_0
    return-object v0
.end method

.method public getH5TinyPopMenu()Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    return-object v0
.end method

.method public getHdividerInTitle()Landroid/view/View;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->hDivider:Landroid/view/View;

    return-object v0
.end method

.method public getMainTitleView()Landroid/widget/TextView;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOptionMenuContainer()Landroid/view/View;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    return-object v0
.end method

.method public getOptionMenuContainer(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 1027
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions1:Landroid/view/View;

    return-object v0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    return-object v0
.end method

.method public getPopAnchor()Landroid/view/View;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initTitleSegControl(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1082
    const-string/jumbo v0, "segSelectedIndex"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 1083
    .local v0, "segSelectedIndex":I
    const-string/jumbo v1, "segWidths"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1084
    .local v1, "jsonSegWidths":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v2, "segTitles"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1085
    .local v2, "jsonsegTitles":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v3, "segColorNormal"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 1086
    .local v3, "segColorNormal":I
    const-string/jumbo v4, "segColorActive"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 1087
    .local v4, "segColorActive":I
    const/4 v5, 0x0

    .line 1088
    .local v5, "widths":[Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 1090
    .local v6, "titles":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "H5TitleBar"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1092
    const/4 v9, 0x1

    :try_start_0
    new-array v10, v9, [Ljava/lang/Integer;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Integer;

    move-object v5, v10

    .line 1093
    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 1096
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v9

    .line 1095
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "segtitle or width is not right type"

    invoke-static {v8, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1097
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    array-length v8, v5

    array-length v9, v6

    if-ne v8, v9, :cond_1

    .line 1098
    iget-object v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v8, v3, v4}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setSegmentColor(II)V

    .line 1099
    iget-object v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v8, v6, v5}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->addItems([Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 1100
    iget-object v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setDefaultChecked(I)V

    .line 1101
    iget-object v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setVisibility(I)V

    goto :goto_1

    .line 1104
    :cond_0
    const-string v9, "SegWidth or  segTitles is empty)"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setEnabled(Z)V

    .line 1108
    return-void
.end method

.method public isSearchPage()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedIndex"    # I

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    if-ne p1, v0, :cond_0

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "segmentGroup checked index is :\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TitleBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 1132
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5TitleBar$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar$1;-><init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;)V

    const-string/jumbo v3, "segControlClick"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1145
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 583
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    .line 586
    .local v0, "eventName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 587
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const-string v0, "h5ToolbarBack"

    goto/16 :goto_4

    .line 589
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    const-string v0, "h5ToolbarClose"

    goto/16 :goto_4

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "index"

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 595
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 599
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 604
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 606
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 607
    const-string/jumbo v0, "subtitleClick"

    goto :goto_4

    .line 608
    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 609
    const-string v0, "disClaimerClick"

    goto :goto_4

    .line 605
    :cond_8
    :goto_0
    const-string/jumbo v0, "titleClick"

    goto :goto_4

    .line 600
    :cond_9
    :goto_1
    const-string/jumbo v0, "optionMenu"

    .line 601
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 602
    move-object v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "fromMenu"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 596
    :cond_a
    :goto_2
    const-string/jumbo v0, "optionMenu"

    .line 597
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 598
    move-object v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 592
    :cond_b
    :goto_3
    const-string/jumbo v0, "optionMenu"

    .line 593
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 594
    move-object v1, v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_c
    :goto_4
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    .line 614
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 615
    :cond_d
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_e
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIcon1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    .line 619
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 620
    :cond_f
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotView1:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 624
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 626
    :cond_11
    return-void
.end method

.method public openTranslucentStatusBarSupport(I)V
    .locals 4
    .param p1, "color"    # I

    .line 928
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 931
    .local v2, "statusBarHeight":I
    move v2, v0

    if-nez v0, :cond_0

    .line 932
    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->statusBarAdjustView:Landroid/view/View;

    .line 935
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    .line 936
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 937
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->statusBarAdjustView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->statusBarAdjustView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5TitleBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 946
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "statusBarHeight":I
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public releaseViewList()V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptionsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 900
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btDotViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 903
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 906
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btTextList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 909
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 911
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenuList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 912
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 914
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotImageList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 915
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 917
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->dotTextList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 918
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 920
    :cond_6
    return-void
.end method

.method public resetTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 823
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 825
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->setSearchBarColor(I)V

    .line 829
    :cond_0
    return-void
.end method

.method public setBackCloseBtnImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1001
    const-string/jumbo v0, "yellow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    const v1, -0x202f77

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1003
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1004
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress_gold:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->progressBarLoadingDrawable:I

    .line 1006
    :cond_0
    const-string v0, "black"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1008
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1009
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->progressBarLoadingDrawable:I

    .line 1011
    :cond_1
    return-void
.end method

.method public setBackgroundAlphaValue(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1165
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1166
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1170
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1171
    return-void
.end method

.method public setBtIcon(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "btIcon"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btIconList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 630
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 631
    return-void
.end method

.method public setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V
    .locals 0
    .param p1, "tinyPopMenu"    # Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 1039
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 1040
    return-void
.end method

.method public setIconBlueTheme()V
    .locals 4

    .line 1194
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1195
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1196
    aget-object v2, v2, v0

    .line 1197
    .local v1, "type":Ljava/lang/String;
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1198
    const-string/jumbo v2, "stupid"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5TitleBar;->blueIconFontMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1199
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1195
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1203
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setIconWhiteTheme()V
    .locals 4

    .line 1180
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1181
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->icontype:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1182
    aget-object v2, v2, v0

    .line 1183
    .local v1, "type":Ljava/lang/String;
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1184
    const-string/jumbo v2, "stupid"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5TitleBar;->whiteIconFontMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1185
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1181
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;

    .line 471
    if-eqz p1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imgTitle width "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgTitle height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string v1, "H5TitleBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ivImageTitle width "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    .line 479
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ivImageTitle height "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "imgTitle"    # Landroid/graphics/Bitmap;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .line 486
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setImgTitle(Landroid/graphics/Bitmap;)V

    .line 490
    return-void
.end method

.method public setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 686
    const-string/jumbo v0, "reset"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 687
    .local v0, "reset":Z
    const-string/jumbo v2, "override"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 688
    .local v2, "override":Z
    const-string v3, "bizType"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tiny"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 689
    .local v3, "isTinySence":Z
    const-string/jumbo v4, "menus"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 690
    .local v4, "menus":Lcom/alibaba/fastjson/JSONArray;
    const/4 v5, 0x1

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 691
    iget-object v6, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions1:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 692
    invoke-direct {p0, v5, v7}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ctrlbtDotView(II)V

    .line 693
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-virtual {p0, v6, v1, v5}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 694
    iput v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    .line 695
    return-void

    .line 697
    :cond_0
    const/4 v6, 0x2

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 698
    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    .line 699
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 700
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-le v1, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    :goto_0
    move v1, v6

    .line 701
    .local v1, "menuSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 703
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 704
    .local v7, "menusItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v7, v6}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 705
    iget v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    .line 701
    .end local v7    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 707
    .end local v1    # "menuSize":I
    .end local v6    # "i":I
    :cond_2
    return-void

    .line 708
    :cond_3
    iput v6, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    .line 710
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 711
    .local v1, "menusItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v1, v5}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 712
    .end local v1    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 714
    :cond_4
    if-eqz v3, :cond_5

    .line 715
    invoke-direct {p0, p1, v5}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 716
    iput v6, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    return-void

    .line 718
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 719
    iput v5, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    .line 722
    return-void
.end method

.method public setOptionMenu(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 635
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V

    .line 638
    :cond_0
    const-string v0, "bizType"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tiny"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 639
    .local v0, "isTinyScene":Z
    const/4 v1, 0x0

    const-string/jumbo v2, "reset"

    invoke-static {p2, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 640
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 643
    return-void

    .line 646
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->updateOptionMenuIcon(Lcom/alibaba/fastjson/JSONObject;)V

    .line 648
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-direct {p0, p2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setTinyPopMenu(Lcom/alibaba/fastjson/JSONObject;)V

    .line 651
    :cond_2
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;)V
    .locals 2
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 363
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 364
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V
    .locals 6
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .param p2, "num"    # I
    .param p3, "byIndex"    # Z

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "icon":Z
    const/4 v1, 0x0

    .line 370
    .local v1, "text":Z
    const/4 v2, 0x0

    .line 371
    .local v2, "menu":Z
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_0

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_1

    .line 374
    const/4 v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_2

    .line 376
    const/4 v2, 0x1

    .line 378
    :cond_2
    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    invoke-direct {p0, p2, v4, p3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ctrlbtText(IIZ)V

    .line 379
    const/4 v4, 0x4

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    :goto_2
    invoke-direct {p0, p2, v5, p3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ctrlbtIcon(IIZ)V

    .line 380
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x4

    :goto_3
    invoke-direct {p0, p2, v3, p3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ctrlbtMenu(IIZ)V

    .line 381
    return-void
.end method

.method public setSearchPage(Z)V
    .locals 0
    .param p1, "searchPage"    # Z

    .line 1124
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    .line 1125
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/String;

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .local v0, "showSub":Z
    goto :goto_0

    .line 463
    .end local v0    # "showSub":Z
    :cond_0
    const/4 v0, 0x1

    .line 464
    .restart local v0    # "showSub":Z
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 342
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->enableSetTitle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mTrimTitleContent:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->ivImageTitle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    :cond_1
    return-void
.end method

.method public setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    .line 969
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 970
    const-string/jumbo v0, "navSearchBar_type"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "navSearchBar_type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/search/H5SearchView;->switchToWhiteTheme()V

    .line 972
    const-string v2, "entrance"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->llTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 974
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search_stub:I

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search:I

    invoke-static {v2, v3, v5, v4}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 976
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search_stub:I

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_embed_title_search:I

    invoke-static {v2, v3, v5}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->getView(Landroid/view/View;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 978
    .local v1, "searchInput":Landroid/widget/LinearLayout;
    move-object v1, v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 979
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->showSearch(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/os/Bundle;)V

    .line 980
    const-string/jumbo v2, "transparentTitle"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 983
    :cond_0
    return-object v1

    .line 985
    .end local v1    # "searchInput":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TitleBarReLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 986
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar_stub:I

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar:I

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 988
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar_stub:I

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar:I

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->getView(Landroid/view/View;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 990
    .local v1, "searchBar":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->showSearch(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/os/Bundle;)V

    .line 991
    return-object v1

    .line 995
    .end local v0    # "navSearchBar_type":Ljava/lang/String;
    .end local v1    # "searchBar":Landroid/widget/LinearLayout;
    :cond_2
    return-object v1
.end method

.method public setTitleColorBlueTheme()V
    .locals 1

    .line 1175
    const v0, -0xeeeeef

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setTitleTxtColor(I)V

    .line 1176
    return-void
.end method

.method public setTitleColorWhiteTheme()V
    .locals 1

    .line 1300
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setTitleTxtColor(I)V

    .line 1301
    return-void
.end method

.method public setTitleTxtColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1015
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 1016
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1017
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1018
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 1049
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1051
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1052
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->llTitle:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1053
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1054
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    return-void

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    const/4 v2, -0x2

    if-nez v1, :cond_1

    .line 1058
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    .line 1059
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1060
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v0, v1

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1061
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->rlTitle:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 1063
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1065
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1066
    .local v0, "viewParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v0, v1

    if-nez v1, :cond_2

    .line 1067
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1069
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->titleViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->llTitle:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    .end local v0    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method public showBackButton(Z)V
    .locals 6
    .param p1, "show"    # Z

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backContainer:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->showCloseButton:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 508
    .local v0, "isAddMarginLeft":Z
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->rlTitle:Landroid/widget/RelativeLayout;

    .line 509
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 510
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 511
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 512
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_4
    return-void
.end method

.method public showBackHome(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1207
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_1

    .line 1208
    if-eqz p1, :cond_0

    .line 1209
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1210
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    invoke-direct {p0, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setTitleMarginLeft(I)V

    return-void

    .line 1216
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setTitleMarginLeft(I)V

    .line 1222
    :cond_1
    return-void
.end method

.method public showCloseButton(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 494
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->showCloseButton:Z

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->backToHomeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :cond_1
    return-void
.end method

.method public showOptionMenu(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 518
    if-eqz p1, :cond_2

    .line 519
    iget v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->visibleOptionNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 522
    return-void

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5NavOptions1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    return-void
.end method

.method public showTitleDisclaimer(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 551
    if-eqz p1, :cond_0

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 554
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    :cond_1
    return-void
.end method

.method public showTitleLoading(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 536
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading_stub:I

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading:I

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->getView(Landroid/view/View;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 539
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->progressBarLoadingDrawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 540
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 541
    .local v3, "dimen":I
    invoke-virtual {v2, v0, v0, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 542
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    .end local v1    # "progressBar":Landroid/widget/ProgressBar;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "dimen":I
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading_stub:I

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 546
    return-void
.end method

.method public switchToBlueTheme()V
    .locals 4

    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const/4 v1, -0x1

    const v2, -0xef7117

    if-ne v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 875
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 876
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 880
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->progressBarLoadingDrawable:I

    .line 882
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 883
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/search/H5SearchView;->switchToOriginal()V

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBackToHome:Landroid/widget/TextView;

    const/16 v1, 0x1e

    const/16 v2, 0x90

    const/16 v3, 0xe6

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->onSwitchToBlueTheme()V

    .line 893
    :cond_3
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->BLUE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->currentTheme:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    .line 895
    return-void
.end method

.method public switchToTitleBar()V
    .locals 4

    .line 951
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar_stub:I

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_full_search_bar:I

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;->setViewVisibility(Landroid/view/View;III)V

    .line 953
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TitleBarReLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 957
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    .line 958
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    nop

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5TitleBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const v1, -0xef7117

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 839
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBack:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 843
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btClose:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 845
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btMenu1:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 846
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->disClaimer:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 848
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_title_bar_progress_white:I

    iput v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->progressBarLoadingDrawable:I

    .line 850
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->searchPage:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 851
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->getH5SearchView()Lcom/alipay/mobile/nebula/search/H5SearchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/search/H5SearchView;->switchToWhiteTheme()V

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_3

    .line 855
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->btBackToHome:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->onSwitchToWhiteTheme()V

    .line 860
    :cond_3
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->WHITE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar;->currentTheme:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    .line 862
    return-void
.end method
