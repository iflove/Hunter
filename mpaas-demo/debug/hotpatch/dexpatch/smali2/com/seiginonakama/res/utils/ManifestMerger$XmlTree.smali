.class Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
.super Ljava/lang/Object;
.source "ManifestMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seiginonakama/res/utils/ManifestMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlTree"
.end annotation


# instance fields
.field private endNameSpaces:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/z;",
            ">;"
        }
    .end annotation
.end field

.field private resourceMapChunk:Lcom/abq/qba/e/ad;

.field private root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

.field private startNameSpaces:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/z;",
            ">;"
        }
    .end annotation
.end field

.field private stringPoolChunk:Lcom/abq/qba/e/o;


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/abq/qba/e/o;Lcom/abq/qba/e/ad;Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)V
    .locals 0
    .param p1, "startNameSpaces"    # Ljava/util/LinkedHashMap;
    .param p2, "endNameSpaces"    # Ljava/util/LinkedHashMap;
    .param p3, "stringPoolChunk"    # Lcom/abq/qba/e/o;
    .param p4, "resourceMapChunk"    # Lcom/abq/qba/e/ad;
    .param p5, "root"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/z;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/abq/qba/e/z;",
            ">;",
            "Lcom/abq/qba/e/o;",
            "Lcom/abq/qba/e/ad;",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;",
            ")V"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;

    .line 300
    iput-object p2, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;

    .line 301
    iput-object p5, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    .line 302
    iput-object p3, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->stringPoolChunk:Lcom/abq/qba/e/o;

    .line 303
    iput-object p4, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->resourceMapChunk:Lcom/abq/qba/e/ad;

    .line 304
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/abq/qba/e/o;Lcom/abq/qba/e/ad;Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Lcom/seiginonakama/res/utils/ManifestMerger$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/LinkedHashMap;
    .param p2, "x1"    # Ljava/util/LinkedHashMap;
    .param p3, "x2"    # Lcom/abq/qba/e/o;
    .param p4, "x3"    # Lcom/abq/qba/e/ad;
    .param p5, "x4"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .param p6, "x5"    # Lcom/seiginonakama/res/utils/ManifestMerger$1;

    .line 288
    invoke-direct/range {p0 .. p5}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/abq/qba/e/o;Lcom/abq/qba/e/ad;Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)V

    return-void
.end method

.method static synthetic access$000(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;
    .param p1, "x1"    # Ljava/util/Map;

    .line 288
    invoke-direct {p0, p1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->collectResIds(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    .line 288
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->startNameSpaces:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/abq/qba/e/o;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    .line 288
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->stringPoolChunk:Lcom/abq/qba/e/o;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/abq/qba/e/ad;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    .line 288
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->resourceMapChunk:Lcom/abq/qba/e/ad;

    return-object v0
.end method

.method static synthetic access$200(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    .line 288
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->endNameSpaces:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;)Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;
    .locals 1
    .param p0, "x0"    # Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;

    .line 288
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    return-object v0
.end method

.method private collectResIds(Ljava/util/Map;)V
    .locals 2
    .param p1, "attrResIdMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$AttrKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->resourceMapChunk:Lcom/abq/qba/e/ad;

    # invokes: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->collectResIds(Ljava/util/Map;Lcom/abq/qba/e/ad;)V
    invoke-static {v0, p1, v1}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$1500(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;Ljava/util/Map;Lcom/abq/qba/e/ad;)V

    .line 314
    :cond_0
    return-void
.end method


# virtual methods
.method public getRootChildren()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;",
            ">;>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ManifestMerger$XmlTree;->root:Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;

    # getter for: Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->children:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;->access$300(Lcom/seiginonakama/res/utils/ManifestMerger$XmlNode;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
