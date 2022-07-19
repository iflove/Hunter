.class Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
.super Ljava/lang/Object;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seiginonakama/res/utils/ManifestMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlAttributeWrapper"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameSpace:Ljava/lang/String;

.field private final rawValue:Ljava/lang/String;

.field private resId:I

.field private final typedString:Ljava/lang/String;

.field private final xmlAttribute:Lcom/abq/qba/e/u;


# direct methods
.method private constructor <init>(Lcom/abq/qba/e/u;I)V
    .locals 4
    .param p1, "xmlAttribute"    # Lcom/abq/qba/e/u;
    .param p2, "resId"    # I

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;

    .line 478
    iput p2, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I

    .line 479
    invoke-virtual {p1}, Lcom/abq/qba/e/u;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Lcom/abq/qba/e/u;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Lcom/abq/qba/e/u;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Lcom/abq/qba/e/u;->d()Lcom/abq/qba/e/m;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 483
    .local v2, "resourceValue":Lcom/abq/qba/e/m;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abq/qba/e/m$a;->a()B

    move-result v0

    sget-object v3, Lcom/abq/qba/e/m$a;->d:Lcom/abq/qba/e/m$a;

    invoke-virtual {v3}, Lcom/abq/qba/e/m$a;->a()B

    move-result v3

    if-ne v0, v3, :cond_0

    .line 484
    invoke-virtual {v2}, Lcom/abq/qba/e/m;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/abq/qba/e/u;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->typedString:Ljava/lang/String;

    return-void

    .line 486
    :cond_0
    iput-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->typedString:Ljava/lang/String;

    .line 488
    return-void
.end method

.method synthetic constructor <init>(Lcom/abq/qba/e/u;ILcom/seiginonakama/res/utils/ManifestMerger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/abq/qba/e/u;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/seiginonakama/res/utils/ManifestMerger$1;

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;-><init>(Lcom/abq/qba/e/u;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Lcom/abq/qba/e/u;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 468
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->xmlAttribute:Lcom/abq/qba/e/u;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 468
    iget v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I

    return v0
.end method

.method static synthetic access$1902(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;
    .param p1, "x1"    # I

    .line 468
    iput p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->resId:I

    return p1
.end method

.method static synthetic access$2000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 468
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 468
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->typedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 468
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;

    .line 468
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method name()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->name:Ljava/lang/String;

    return-object v0
.end method

.method nameSpace()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->nameSpace:Ljava/lang/String;

    return-object v0
.end method

.method rawValue()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlAttributeWrapper;->rawValue:Ljava/lang/String;

    return-object v0
.end method
