.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
.super Ljava/lang/Object;
.source "H5ChooseLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:D

.field private g:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a:I

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b:Z

    .line 109
    iput v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->c:I

    .line 110
    iput v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->d:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;D)D
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .param p1, "x1"    # D

    .line 106
    iput-wide p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->g:D

    return-wide p1
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .param p1, "x1"    # I

    .line 106
    iput p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->d:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a:I

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b:Z

    .line 120
    iput v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->c:I

    .line 121
    iput v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->d:I

    .line 122
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    invoke-direct {p0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .param p1, "x1"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;D)D
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .param p1, "x1"    # D

    .line 106
    iput-wide p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->f:D

    return-wide p1
.end method

.method static synthetic b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->c:I

    return v0
.end method

.method static synthetic b(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .param p1, "x1"    # I

    .line 106
    iput p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->c:I

    return p1
.end method

.method static synthetic c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)D
    .locals 2
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget-wide v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->f:D

    return-wide v0
.end method

.method static synthetic c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;
    .param p1, "x1"    # I

    .line 106
    iput p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a:I

    return p1
.end method

.method static synthetic d(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)D
    .locals 2
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget-wide v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->g:D

    return-wide v0
.end method

.method static synthetic e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->d:I

    return v0
.end method

.method static synthetic g(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->a:I

    return v0
.end method

.method static synthetic h(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    .line 106
    iget-boolean v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->b:Z

    return v0
.end method
