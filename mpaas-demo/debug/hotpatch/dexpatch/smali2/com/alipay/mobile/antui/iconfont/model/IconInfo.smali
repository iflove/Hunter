.class public Lcom/alipay/mobile/antui/iconfont/model/IconInfo;
.super Ljava/lang/Object;
.source "IconInfo.java"


# static fields
.field public static final TYPE_DRAWABLE:I = 0x3

.field public static final TYPE_ICONFONT:I = 0x2

.field public static final TYPE_URL:I = 0x1


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public icon:Ljava/lang/String;

.field public iconRes:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "iconRes"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 34
    iput p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->iconRes:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 23
    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    .line 25
    return-void
.end method
