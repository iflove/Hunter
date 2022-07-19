.class public final enum Lcom/linearallocpatch/e;
.super Ljava/lang/Enum;
.source "PatchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linearallocpatch/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/linearallocpatch/e;

.field public static final enum b:Lcom/linearallocpatch/e;

.field public static final enum c:Lcom/linearallocpatch/e;

.field public static final enum d:Lcom/linearallocpatch/e;

.field public static final enum e:Lcom/linearallocpatch/e;

.field public static final enum f:Lcom/linearallocpatch/e;

.field public static final enum g:Lcom/linearallocpatch/e;

.field public static final enum h:Lcom/linearallocpatch/e;

.field public static final enum i:Lcom/linearallocpatch/e;

.field public static final enum j:Lcom/linearallocpatch/e;

.field public static final enum k:Lcom/linearallocpatch/e;

.field public static final enum l:Lcom/linearallocpatch/e;

.field public static final enum m:Lcom/linearallocpatch/e;

.field public static final enum n:Lcom/linearallocpatch/e;

.field public static final enum o:Lcom/linearallocpatch/e;

.field public static final enum p:Lcom/linearallocpatch/e;

.field public static final enum q:Lcom/linearallocpatch/e;

.field public static final enum r:Lcom/linearallocpatch/e;

.field public static final enum s:Lcom/linearallocpatch/e;

.field public static final enum t:Lcom/linearallocpatch/e;

.field private static final synthetic w:[Lcom/linearallocpatch/e;


# instance fields
.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 7
    new-instance v0, Lcom/linearallocpatch/e;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/linearallocpatch/e;->a:Lcom/linearallocpatch/e;

    .line 8
    new-instance v1, Lcom/linearallocpatch/e;

    const-string v3, "SUCCESS_VERSION_NO_NEED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5, v3}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/linearallocpatch/e;->b:Lcom/linearallocpatch/e;

    .line 9
    new-instance v3, Lcom/linearallocpatch/e;

    const-string v5, "SUCCESS_SIZE_NO_NEED"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v3, v5, v6, v7, v5}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/linearallocpatch/e;->c:Lcom/linearallocpatch/e;

    .line 10
    new-instance v5, Lcom/linearallocpatch/e;

    const-string v7, "LOAD_SO_FAILED"

    const/4 v8, 0x3

    const/4 v9, -0x3

    invoke-direct {v5, v7, v8, v9, v7}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/linearallocpatch/e;->d:Lcom/linearallocpatch/e;

    .line 12
    new-instance v7, Lcom/linearallocpatch/e;

    const-string v9, "LAST_FAILED"

    const/4 v10, 0x4

    const/4 v11, -0x4

    invoke-direct {v7, v9, v10, v11, v9}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/linearallocpatch/e;->e:Lcom/linearallocpatch/e;

    .line 13
    new-instance v9, Lcom/linearallocpatch/e;

    const-string v11, "FAIL_READING_SELF_MMAP"

    const/4 v12, 0x5

    const/4 v13, -0x5

    invoke-direct {v9, v11, v12, v13, v11}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/linearallocpatch/e;->f:Lcom/linearallocpatch/e;

    .line 14
    new-instance v11, Lcom/linearallocpatch/e;

    const-string v13, "FAIL_FIND_HEAP"

    const/4 v14, 0x6

    const/4 v15, -0x6

    invoke-direct {v11, v13, v14, v15, v13}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/linearallocpatch/e;->g:Lcom/linearallocpatch/e;

    .line 15
    new-instance v13, Lcom/linearallocpatch/e;

    const-string v15, "FAIL_FIND_LINEAR_ALLOC"

    const/4 v2, 0x7

    const/4 v14, -0x7

    invoke-direct {v13, v15, v2, v14, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/linearallocpatch/e;->h:Lcom/linearallocpatch/e;

    .line 17
    new-instance v14, Lcom/linearallocpatch/e;

    const-string v15, "SWITCH_OFF"

    const/16 v2, 0x8

    const/4 v12, -0x8

    invoke-direct {v14, v15, v2, v12, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/linearallocpatch/e;->i:Lcom/linearallocpatch/e;

    .line 18
    new-instance v12, Lcom/linearallocpatch/e;

    const-string v15, "PRECHECK_SUCCESS"

    const/16 v2, 0x9

    const/16 v10, -0x9

    invoke-direct {v12, v15, v2, v10, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/linearallocpatch/e;->j:Lcom/linearallocpatch/e;

    .line 20
    new-instance v10, Lcom/linearallocpatch/e;

    const-string v15, "ERR_NOT_FIND_HDR"

    const/16 v2, 0xa

    invoke-direct {v10, v15, v2, v4, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/linearallocpatch/e;->k:Lcom/linearallocpatch/e;

    .line 21
    new-instance v15, Lcom/linearallocpatch/e;

    const-string v2, "ERR_ASHMEM_CREATE_REGION"

    const/16 v4, 0xb

    invoke-direct {v15, v2, v4, v6, v2}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Lcom/linearallocpatch/e;->l:Lcom/linearallocpatch/e;

    .line 22
    new-instance v2, Lcom/linearallocpatch/e;

    const-string v4, "ERR_MMAP"

    const/16 v6, 0xc

    move-object/from16 v16, v15

    const-string v15, "ERR_MMAP"

    invoke-direct {v2, v4, v6, v8, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/linearallocpatch/e;->m:Lcom/linearallocpatch/e;

    .line 23
    new-instance v4, Lcom/linearallocpatch/e;

    const-string v6, "ERR_MMAP_ASHMEM"

    const/16 v15, 0xd

    const-string v8, "ERR_MMAP_ASHMEM"

    move-object/from16 v17, v2

    const/4 v2, 0x4

    invoke-direct {v4, v6, v15, v2, v8}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/linearallocpatch/e;->n:Lcom/linearallocpatch/e;

    .line 24
    new-instance v2, Lcom/linearallocpatch/e;

    const-string v6, "ERR_MPROTECT"

    const/16 v8, 0xe

    const-string v15, "ERR_MPROTECT"

    move-object/from16 v18, v4

    const/4 v4, 0x5

    invoke-direct {v2, v6, v8, v4, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/linearallocpatch/e;->o:Lcom/linearallocpatch/e;

    .line 25
    new-instance v4, Lcom/linearallocpatch/e;

    const-string v6, "ERR_SYSTEM_BUFFER_NO_NEED"

    const/16 v8, 0xf

    const-string v15, "ERR_SYSTEM_BUFFER_NO_NEED"

    move-object/from16 v19, v2

    const/4 v2, 0x6

    invoke-direct {v4, v6, v8, v2, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/linearallocpatch/e;->p:Lcom/linearallocpatch/e;

    .line 26
    new-instance v2, Lcom/linearallocpatch/e;

    const-string v6, "ERR_NOT_FIND_LIBDVM"

    const/16 v8, 0x10

    const-string v15, "ERR_NOT_FIND_LIBDVM"

    move-object/from16 v20, v4

    const/4 v4, 0x7

    invoke-direct {v2, v6, v8, v4, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/linearallocpatch/e;->q:Lcom/linearallocpatch/e;

    .line 27
    new-instance v4, Lcom/linearallocpatch/e;

    const-string v6, "ERR_NOT_FIND_GDVM"

    const/16 v8, 0x11

    const-string v15, "ERR_NOT_FIND_GDVM"

    move-object/from16 v21, v2

    const/16 v2, 0x8

    invoke-direct {v4, v6, v8, v2, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/linearallocpatch/e;->r:Lcom/linearallocpatch/e;

    .line 28
    new-instance v2, Lcom/linearallocpatch/e;

    const-string v6, "ERR_CALLOC"

    const/16 v8, 0x12

    const-string v15, "ERR_CALLOC"

    move-object/from16 v22, v4

    const/16 v4, 0x9

    invoke-direct {v2, v6, v8, v4, v15}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/linearallocpatch/e;->s:Lcom/linearallocpatch/e;

    .line 31
    new-instance v4, Lcom/linearallocpatch/e;

    const-string v6, "UNKNOWN"

    const/16 v8, 0x13

    const/high16 v15, -0x80000000

    move-object/from16 v23, v2

    const-string v2, "UNKNOWN"

    invoke-direct {v4, v6, v8, v15, v2}, Lcom/linearallocpatch/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/linearallocpatch/e;->t:Lcom/linearallocpatch/e;

    .line 5
    const/16 v2, 0x14

    new-array v2, v2, [Lcom/linearallocpatch/e;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v14, v2, v0

    const/16 v0, 0x9

    aput-object v12, v2, v0

    const/16 v0, 0xa

    aput-object v10, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v4, v2, v0

    sput-object v2, Lcom/linearallocpatch/e;->w:[Lcom/linearallocpatch/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "error"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/linearallocpatch/e;->u:I

    .line 38
    iput-object p4, p0, Lcom/linearallocpatch/e;->v:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(I)Lcom/linearallocpatch/e;
    .locals 5
    .param p0, "error"    # I

    .line 42
    invoke-static {}, Lcom/linearallocpatch/e;->values()[Lcom/linearallocpatch/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 43
    .local v2, "result":Lcom/linearallocpatch/e;
    move-object v2, v4

    iget v4, v4, Lcom/linearallocpatch/e;->u:I

    if-ne v4, p0, :cond_0

    .line 44
    return-object v2

    .line 42
    .end local v2    # "result":Lcom/linearallocpatch/e;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/linearallocpatch/e;->t:Lcom/linearallocpatch/e;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linearallocpatch/e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/linearallocpatch/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linearallocpatch/e;

    return-object v0
.end method

.method public static values()[Lcom/linearallocpatch/e;
    .locals 1

    .line 5
    sget-object v0, Lcom/linearallocpatch/e;->w:[Lcom/linearallocpatch/e;

    invoke-virtual {v0}, [Lcom/linearallocpatch/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linearallocpatch/e;

    return-object v0
.end method
