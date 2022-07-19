.class final Lcom/abq/qba/e/e;
.super Lcom/abq/qba/e/d$a;
.source "LibraryChunkEntryImpl.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "packageId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/abq/qba/e/d$a;-><init>()V

    .line 12
    iput p1, p0, Lcom/abq/qba/e/e;->a:I

    .line 13
    if-eqz p2, :cond_0

    .line 16
    iput-object p2, p0, Lcom/abq/qba/e/e;->b:Ljava/lang/String;

    .line 17
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/abq/qba/e/e;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/abq/qba/e/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 40
    return v0

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/abq/qba/e/d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/abq/qba/e/d$a;

    .line 44
    .local v1, "that":Lcom/abq/qba/e/d$a;
    iget v3, p0, Lcom/abq/qba/e/e;->a:I

    invoke-virtual {v1}, Lcom/abq/qba/e/d$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/abq/qba/e/e;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Lcom/abq/qba/e/d$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    nop

    .line 44
    return v2

    .line 47
    .end local v1    # "that":Lcom/abq/qba/e/d$a;
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 54
    iget v0, p0, Lcom/abq/qba/e/e;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 55
    mul-int v0, v0, v1

    .line 56
    iget-object v1, p0, Lcom/abq/qba/e/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 57
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry{packageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/abq/qba/e/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/abq/qba/e/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
