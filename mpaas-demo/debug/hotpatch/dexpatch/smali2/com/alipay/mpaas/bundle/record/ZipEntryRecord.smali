.class public final Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
.super Lcom/squareup/wire/Message;
.source "ZipEntryRecord.java"


# static fields
.field public static final a:Lcom/alipay/mpaas/bundle/record/EntryType;

.field public static final b:Ljava/lang/Long;

.field public static final c:Ljava/lang/Long;

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Long;

.field public static final f:Ljava/lang/Long;

.field public static final g:Ljava/lang/Long;

.field public static final h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Integer;

.field public static final j:Ljava/lang/Integer;

.field public static final k:Lokio/ByteString;

.field public static final l:Lcom/alipay/mpaas/bundle/record/OpType;


# instance fields
.field public A:Lcom/alipay/mpaas/bundle/record/OpType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public m:Lcom/alipay/mpaas/bundle/record/EntryType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public p:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public q:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public r:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public s:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public t:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public u:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public v:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public w:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public x:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public y:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    sget-object v0, Lcom/alipay/mpaas/bundle/record/EntryType;->a:Lcom/alipay/mpaas/bundle/record/EntryType;

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->a:Lcom/alipay/mpaas/bundle/record/EntryType;

    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->b:Ljava/lang/Long;

    .line 34
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->c:Ljava/lang/Long;

    .line 35
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->d:Ljava/lang/Long;

    .line 36
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->e:Ljava/lang/Long;

    .line 37
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->f:Ljava/lang/Long;

    .line 38
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->g:Ljava/lang/Long;

    .line 39
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->h:Ljava/lang/Long;

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->i:Ljava/lang/Integer;

    .line 41
    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->j:Ljava/lang/Integer;

    .line 42
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->k:Lokio/ByteString;

    .line 44
    sget-object v0, Lcom/alipay/mpaas/bundle/record/OpType;->a:Lcom/alipay/mpaas/bundle/record/OpType;

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->l:Lcom/alipay/mpaas/bundle/record/OpType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 163
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 219
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 220
    :cond_0
    instance-of v1, p1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;

    .line 222
    .local v1, "o":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->n:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->n:Ljava/lang/String;

    .line 223
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->p:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->p:Ljava/lang/Long;

    .line 225
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->q:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->q:Ljava/lang/Long;

    .line 226
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->r:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->r:Ljava/lang/Long;

    .line 227
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->s:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->s:Ljava/lang/Long;

    .line 228
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    .line 229
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    .line 230
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->v:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->v:Ljava/lang/Long;

    .line 231
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    .line 232
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->x:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->x:Ljava/lang/Integer;

    .line 233
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->y:Lokio/ByteString;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->y:Lokio/ByteString;

    .line 234
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->z:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->z:Ljava/lang/String;

    .line 235
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    .line 236
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 241
    iget v0, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 242
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_f

    .line 243
    iget-object v0, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mpaas/bundle/record/EntryType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->n:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 245
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 246
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->p:Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 247
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->q:Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 248
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->r:Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    .line 249
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->s:Ljava/lang/Long;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 250
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v0, v3

    .line 251
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v0, v3

    .line 252
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->v:Ljava/lang/Long;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v0, v3

    .line 253
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v0, v3

    .line 254
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->x:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v0, v3

    .line 255
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->y:Lokio/ByteString;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lokio/ByteString;->hashCode()I

    move-result v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    add-int/2addr v0, v3

    .line 256
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->z:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    add-int/2addr v0, v3

    .line 257
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/alipay/mpaas/bundle/record/OpType;->hashCode()I

    move-result v1

    :cond_e
    add-int v2, v0, v1

    .line 258
    iput v2, p0, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->hashCode:I

    .line 260
    :cond_f
    return v2
.end method
