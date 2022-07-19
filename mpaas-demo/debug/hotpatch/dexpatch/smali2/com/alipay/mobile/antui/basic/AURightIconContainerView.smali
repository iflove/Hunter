.class public Lcom/alipay/mobile/antui/basic/AURightIconContainerView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AURightIconContainerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private leftIconImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

.field private rightIconImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->view_right_icon_container:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    sget v0, Lcom/alipay/mobile/antui/R$id;->container_left_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->leftIconImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 41
    sget v0, Lcom/alipay/mobile/antui/R$id;->container_right_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->rightIconImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 42
    return-void
.end method

.method private setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V
    .locals 4
    .param p1, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "iconInfo"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 57
    const/4 v0, 0x4

    if-eqz p2, :cond_4

    .line 58
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 59
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getImageView()Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/api/OnLoadImageListener;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/antui/basic/AUImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->TAG:Ljava/lang/String;

    const-string v1, "The AURightIconContainerView\'s iconType is \'IconInfo.TYPE_URL\',AURightIconContainerView must be set OnLoadImageListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 66
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 67
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    return-void

    .line 68
    :cond_2
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 69
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 70
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-void

    .line 72
    :cond_3
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 75
    :cond_4
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public setLeftIconImage(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V
    .locals 1
    .param p1, "iconInfo"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->leftIconImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    .line 50
    return-void
.end method

.method public setOnLoadImageListener(Lcom/alipay/mobile/antui/api/OnLoadImageListener;)V
    .locals 0
    .param p1, "onLoadImageListener"    # Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->mOnLoadImageListener:Lcom/alipay/mobile/antui/api/OnLoadImageListener;

    .line 46
    return-void
.end method

.method public setRightIconImage(Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V
    .locals 1
    .param p1, "iconInfo"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->rightIconImageView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AURightIconContainerView;->setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    .line 54
    return-void
.end method
