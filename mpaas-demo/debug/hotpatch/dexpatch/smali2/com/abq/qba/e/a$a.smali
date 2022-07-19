.class public final enum Lcom/abq/qba/e/a$a;
.super Ljava/lang/Enum;
.source "Chunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abq/qba/e/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/abq/qba/e/a$a;

.field public static final enum b:Lcom/abq/qba/e/a$a;

.field public static final enum c:Lcom/abq/qba/e/a$a;

.field public static final enum d:Lcom/abq/qba/e/a$a;

.field public static final enum e:Lcom/abq/qba/e/a$a;

.field public static final enum f:Lcom/abq/qba/e/a$a;

.field public static final enum g:Lcom/abq/qba/e/a$a;

.field public static final enum h:Lcom/abq/qba/e/a$a;

.field public static final enum i:Lcom/abq/qba/e/a$a;

.field public static final enum j:Lcom/abq/qba/e/a$a;

.field public static final enum k:Lcom/abq/qba/e/a$a;

.field public static final enum l:Lcom/abq/qba/e/a$a;

.field public static final enum m:Lcom/abq/qba/e/a$a;

.field public static final enum n:Lcom/abq/qba/e/a$a;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/abq/qba/e/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic q:[Lcom/abq/qba/e/a$a;


# instance fields
.field private final o:S


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 37
    new-instance v0, Lcom/abq/qba/e/a$a;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abq/qba/e/a$a;->a:Lcom/abq/qba/e/a$a;

    .line 38
    new-instance v1, Lcom/abq/qba/e/a$a;

    const-string v3, "STRING_POOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/abq/qba/e/a$a;->b:Lcom/abq/qba/e/a$a;

    .line 39
    new-instance v3, Lcom/abq/qba/e/a$a;

    const-string v5, "TABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/abq/qba/e/a$a;->c:Lcom/abq/qba/e/a$a;

    .line 40
    new-instance v5, Lcom/abq/qba/e/a$a;

    const-string v7, "XML"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/abq/qba/e/a$a;->d:Lcom/abq/qba/e/a$a;

    .line 41
    new-instance v7, Lcom/abq/qba/e/a$a;

    const-string v9, "XML_START_NAMESPACE"

    const/4 v10, 0x4

    const/16 v11, 0x100

    invoke-direct {v7, v9, v10, v11}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/abq/qba/e/a$a;->e:Lcom/abq/qba/e/a$a;

    .line 42
    new-instance v9, Lcom/abq/qba/e/a$a;

    const-string v11, "XML_END_NAMESPACE"

    const/4 v12, 0x5

    const/16 v13, 0x101

    invoke-direct {v9, v11, v12, v13}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/abq/qba/e/a$a;->f:Lcom/abq/qba/e/a$a;

    .line 43
    new-instance v11, Lcom/abq/qba/e/a$a;

    const-string v13, "XML_START_ELEMENT"

    const/4 v14, 0x6

    const/16 v15, 0x102

    invoke-direct {v11, v13, v14, v15}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/abq/qba/e/a$a;->g:Lcom/abq/qba/e/a$a;

    .line 44
    new-instance v13, Lcom/abq/qba/e/a$a;

    const-string v15, "XML_END_ELEMENT"

    const/4 v14, 0x7

    const/16 v12, 0x103

    invoke-direct {v13, v15, v14, v12}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/abq/qba/e/a$a;->h:Lcom/abq/qba/e/a$a;

    .line 45
    new-instance v12, Lcom/abq/qba/e/a$a;

    const-string v15, "XML_CDATA"

    const/16 v14, 0x8

    const/16 v10, 0x104

    invoke-direct {v12, v15, v14, v10}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/abq/qba/e/a$a;->i:Lcom/abq/qba/e/a$a;

    .line 46
    new-instance v10, Lcom/abq/qba/e/a$a;

    const-string v15, "XML_RESOURCE_MAP"

    const/16 v14, 0x9

    const/16 v8, 0x180

    invoke-direct {v10, v15, v14, v8}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/abq/qba/e/a$a;->j:Lcom/abq/qba/e/a$a;

    .line 47
    new-instance v8, Lcom/abq/qba/e/a$a;

    const-string v15, "TABLE_PACKAGE"

    const/16 v14, 0xa

    const/16 v6, 0x200

    invoke-direct {v8, v15, v14, v6}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/abq/qba/e/a$a;->k:Lcom/abq/qba/e/a$a;

    .line 48
    new-instance v6, Lcom/abq/qba/e/a$a;

    const-string v15, "TABLE_TYPE"

    const/16 v14, 0xb

    const/16 v4, 0x201

    invoke-direct {v6, v15, v14, v4}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/abq/qba/e/a$a;->l:Lcom/abq/qba/e/a$a;

    .line 49
    new-instance v4, Lcom/abq/qba/e/a$a;

    const-string v15, "TABLE_TYPE_SPEC"

    const/16 v14, 0xc

    const/16 v2, 0x202

    invoke-direct {v4, v15, v14, v2}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/abq/qba/e/a$a;->m:Lcom/abq/qba/e/a$a;

    .line 50
    new-instance v2, Lcom/abq/qba/e/a$a;

    const-string v15, "TABLE_LIBRARY"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x203

    invoke-direct {v2, v15, v14, v4}, Lcom/abq/qba/e/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/abq/qba/e/a$a;->n:Lcom/abq/qba/e/a$a;

    .line 36
    const/16 v4, 0xe

    new-array v4, v4, [Lcom/abq/qba/e/a$a;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v14

    sput-object v4, Lcom/abq/qba/e/a$a;->q:[Lcom/abq/qba/e/a$a;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "map":Ljava/util/Map;
    invoke-static {}, Lcom/abq/qba/e/a$a;->values()[Lcom/abq/qba/e/a$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v15, v2, :cond_0

    aget-object v3, v1, v15

    .line 59
    .local v3, "type":Lcom/abq/qba/e/a$a;
    invoke-virtual {v3}, Lcom/abq/qba/e/a$a;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "type":Lcom/abq/qba/e/a$a;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/abq/qba/e/a$a;->p:Ljava/util/Map;

    .line 62
    .end local v0    # "map":Ljava/util/Map;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    int-to-long p1, p3

    invoke-static {p1, p2}, Lcom/abq/qba/d/b;->a(J)S

    move-result p1

    iput-short p1, p0, Lcom/abq/qba/e/a$a;->o:S

    .line 66
    return-void
.end method

.method public static a(S)Lcom/abq/qba/e/a$a;
    .locals 2
    .param p0, "code"    # S

    .line 73
    sget-object v0, Lcom/abq/qba/e/a$a;->p:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown chunk type: %s"

    invoke-static {v0, v1, p0}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abq/qba/e/a$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/abq/qba/e/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/a$a;

    return-object v0
.end method

.method public static values()[Lcom/abq/qba/e/a$a;
    .locals 1

    .line 36
    sget-object v0, Lcom/abq/qba/e/a$a;->q:[Lcom/abq/qba/e/a$a;

    invoke-virtual {v0}, [Lcom/abq/qba/e/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/abq/qba/e/a$a;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    .line 69
    iget-short v0, p0, Lcom/abq/qba/e/a$a;->o:S

    return v0
.end method
