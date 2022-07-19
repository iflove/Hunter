.class public final Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
.super Lcom/squareup/wire/Message;
.source "ZipFileRecord.java"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public e:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->a:Ljava/lang/Integer;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 84
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 85
    .local v1, "o":Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->d:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->d:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->e:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->e:Ljava/lang/Integer;

    .line 87
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    .line 88
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 93
    iget v0, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 94
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 97
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 98
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    add-int v2, v0, v1

    .line 99
    iput v2, p0, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->hashCode:I

    .line 101
    :cond_4
    return v2
.end method
