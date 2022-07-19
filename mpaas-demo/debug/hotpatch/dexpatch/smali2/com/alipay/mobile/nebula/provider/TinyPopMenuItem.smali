.class public Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
.super Ljava/lang/Object;
.source "TinyPopMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;,
        Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$Builder;
    }
.end annotation


# instance fields
.field private callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$1;

    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;)Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    .line 8
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->iconUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->name:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCallback()Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->callback:Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem$TinyPopMenuItemClickListener;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebula/provider/TinyPopMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method
