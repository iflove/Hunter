.class public Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
.super Ljava/lang/Object;
.source "AbsTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/view/AbsTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuData"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private contentDesc:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private iconType:Ljava/lang/String;

.field private redDot:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->icon:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->iconType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .param p1, "x1"    # I

    .line 368
    iput p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->redDot:I

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->contentDesc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;
    .param p1, "x1"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->color:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDesc()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->contentDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconType()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->iconType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedDot()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->redDot:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/AbsTitleView$MenuData;->title:Ljava/lang/String;

    return-object v0
.end method
