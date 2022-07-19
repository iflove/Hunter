.class public Lcom/alipay/mobile/antui/dialog/PopMenuItem;
.super Ljava/lang/Object;
.source "PopMenuItem.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private externParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/CharSequence;

.field private resId:I

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "resId"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    .line 23
    iput p2, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    .line 43
    iput p2, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExternParam()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->externParam:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->type:I

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method public setExternParam(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "externParam"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->externParam:Ljava/util/HashMap;

    .line 82
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->name:Ljava/lang/CharSequence;

    .line 58
    return-void
.end method

.method public setResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 65
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->resId:I

    .line 66
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 89
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/PopMenuItem;->type:I

    .line 90
    return-void
.end method
