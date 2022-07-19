.class public final enum Lcom/abq/qba/e/m$a;
.super Ljava/lang/Enum;
.source "ResourceValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abq/qba/e/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/abq/qba/e/m$a;

.field public static final enum b:Lcom/abq/qba/e/m$a;

.field public static final enum c:Lcom/abq/qba/e/m$a;

.field public static final enum d:Lcom/abq/qba/e/m$a;

.field public static final enum e:Lcom/abq/qba/e/m$a;

.field public static final enum f:Lcom/abq/qba/e/m$a;

.field public static final enum g:Lcom/abq/qba/e/m$a;

.field public static final enum h:Lcom/abq/qba/e/m$a;

.field public static final enum i:Lcom/abq/qba/e/m$a;

.field public static final enum j:Lcom/abq/qba/e/m$a;

.field public static final enum k:Lcom/abq/qba/e/m$a;

.field public static final enum l:Lcom/abq/qba/e/m$a;

.field public static final enum m:Lcom/abq/qba/e/m$a;

.field public static final enum n:Lcom/abq/qba/e/m$a;

.field public static final enum o:Lcom/abq/qba/e/m$a;

.field public static final enum p:Lcom/abq/qba/e/m$a;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/abq/qba/e/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic s:[Lcom/abq/qba/e/m$a;


# instance fields
.field private final q:B


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 34
    new-instance v0, Lcom/abq/qba/e/m$a;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abq/qba/e/m$a;->a:Lcom/abq/qba/e/m$a;

    .line 36
    new-instance v1, Lcom/abq/qba/e/m$a;

    const-string v3, "REFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/abq/qba/e/m$a;->b:Lcom/abq/qba/e/m$a;

    .line 38
    new-instance v3, Lcom/abq/qba/e/m$a;

    const-string v5, "ATTRIBUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/abq/qba/e/m$a;->c:Lcom/abq/qba/e/m$a;

    .line 40
    new-instance v5, Lcom/abq/qba/e/m$a;

    const-string v7, "STRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/abq/qba/e/m$a;->d:Lcom/abq/qba/e/m$a;

    .line 42
    new-instance v7, Lcom/abq/qba/e/m$a;

    const-string v9, "FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/abq/qba/e/m$a;->e:Lcom/abq/qba/e/m$a;

    .line 44
    new-instance v9, Lcom/abq/qba/e/m$a;

    const-string v11, "DIMENSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/abq/qba/e/m$a;->f:Lcom/abq/qba/e/m$a;

    .line 46
    new-instance v11, Lcom/abq/qba/e/m$a;

    const-string v13, "FRACTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/abq/qba/e/m$a;->g:Lcom/abq/qba/e/m$a;

    .line 48
    new-instance v13, Lcom/abq/qba/e/m$a;

    const-string v15, "DYNAMIC_REFERENCE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/abq/qba/e/m$a;->h:Lcom/abq/qba/e/m$a;

    .line 50
    new-instance v15, Lcom/abq/qba/e/m$a;

    const-string v14, "DYNAMIC_ATTRIBUTE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/abq/qba/e/m$a;->i:Lcom/abq/qba/e/m$a;

    .line 52
    new-instance v14, Lcom/abq/qba/e/m$a;

    const-string v12, "INT_DEC"

    const/16 v10, 0x9

    const/16 v8, 0x10

    invoke-direct {v14, v12, v10, v8}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/abq/qba/e/m$a;->j:Lcom/abq/qba/e/m$a;

    .line 54
    new-instance v12, Lcom/abq/qba/e/m$a;

    const-string v10, "INT_HEX"

    const/16 v6, 0xa

    const/16 v4, 0x11

    invoke-direct {v12, v10, v6, v4}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/abq/qba/e/m$a;->k:Lcom/abq/qba/e/m$a;

    .line 56
    new-instance v4, Lcom/abq/qba/e/m$a;

    const-string v10, "INT_BOOLEAN"

    const/16 v6, 0xb

    const/16 v2, 0x12

    invoke-direct {v4, v10, v6, v2}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/abq/qba/e/m$a;->l:Lcom/abq/qba/e/m$a;

    .line 58
    new-instance v2, Lcom/abq/qba/e/m$a;

    const-string v10, "INT_COLOR_ARGB8"

    const/16 v6, 0xc

    const/16 v8, 0x1c

    invoke-direct {v2, v10, v6, v8}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/abq/qba/e/m$a;->m:Lcom/abq/qba/e/m$a;

    .line 60
    new-instance v8, Lcom/abq/qba/e/m$a;

    const-string v10, "INT_COLOR_RGB8"

    const/16 v6, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x1d

    invoke-direct {v8, v10, v6, v2}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/abq/qba/e/m$a;->n:Lcom/abq/qba/e/m$a;

    .line 62
    new-instance v2, Lcom/abq/qba/e/m$a;

    const-string v10, "INT_COLOR_ARGB4"

    const/16 v6, 0xe

    move-object/from16 v17, v8

    const/16 v8, 0x1e

    invoke-direct {v2, v10, v6, v8}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/abq/qba/e/m$a;->o:Lcom/abq/qba/e/m$a;

    .line 64
    new-instance v8, Lcom/abq/qba/e/m$a;

    const-string v10, "INT_COLOR_RGB4"

    const/16 v6, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0x1f

    invoke-direct {v8, v10, v6, v2}, Lcom/abq/qba/e/m$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/abq/qba/e/m$a;->p:Lcom/abq/qba/e/m$a;

    .line 32
    const/16 v2, 0x10

    new-array v2, v2, [Lcom/abq/qba/e/m$a;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v4, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    aput-object v8, v2, v6

    sput-object v2, Lcom/abq/qba/e/m$a;->s:[Lcom/abq/qba/e/m$a;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "map":Ljava/util/Map;
    invoke-static {}, Lcom/abq/qba/e/m$a;->values()[Lcom/abq/qba/e/m$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v10, v2, :cond_0

    aget-object v3, v1, v10

    .line 73
    .local v3, "type":Lcom/abq/qba/e/m$a;
    invoke-virtual {v3}, Lcom/abq/qba/e/m$a;->a()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v3    # "type":Lcom/abq/qba/e/m$a;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/abq/qba/e/m$a;->r:Ljava/util/Map;

    .line 76
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

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    int-to-long p1, p3

    invoke-static {p1, p2}, Lcom/abq/qba/d/c;->a(J)B

    move-result p1

    iput-byte p1, p0, Lcom/abq/qba/e/m$a;->q:B

    .line 80
    return-void
.end method

.method public static a(B)Lcom/abq/qba/e/m$a;
    .locals 2
    .param p0, "code"    # B

    .line 87
    sget-object v0, Lcom/abq/qba/e/m$a;->r:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown resource type: %s"

    invoke-static {v0, v1, p0}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/m$a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abq/qba/e/m$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/abq/qba/e/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/abq/qba/e/m$a;

    return-object v0
.end method

.method public static values()[Lcom/abq/qba/e/m$a;
    .locals 1

    .line 32
    sget-object v0, Lcom/abq/qba/e/m$a;->s:[Lcom/abq/qba/e/m$a;

    invoke-virtual {v0}, [Lcom/abq/qba/e/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/abq/qba/e/m$a;

    return-object v0
.end method


# virtual methods
.method public final a()B
    .locals 1

    .line 83
    iget-byte v0, p0, Lcom/abq/qba/e/m$a;->q:B

    return v0
.end method
