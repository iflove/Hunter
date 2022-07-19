.class public final Lcom/abq/qba/e/n;
.super Lcom/abq/qba/e/m;
.source "ResourceValueImpl.java"


# instance fields
.field private final a:I

.field private final b:Lcom/abq/qba/e/m$a;

.field private c:I


# direct methods
.method constructor <init>(ILcom/abq/qba/e/m$a;I)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "type"    # Lcom/abq/qba/e/m$a;
    .param p3, "data"    # I

    .line 13
    invoke-direct {p0}, Lcom/abq/qba/e/m;-><init>()V

    .line 14
    iput p1, p0, Lcom/abq/qba/e/n;->a:I

    .line 15
    if-eqz p2, :cond_0

    .line 18
    iput-object p2, p0, Lcom/abq/qba/e/n;->b:Lcom/abq/qba/e/m$a;

    .line 19
    iput p3, p0, Lcom/abq/qba/e/n;->c:I

    .line 20
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/abq/qba/e/n;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "data"    # I

    .line 39
    iput p1, p0, Lcom/abq/qba/e/n;->c:I

    .line 40
    return-void
.end method

.method public final b()Lcom/abq/qba/e/m$a;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/abq/qba/e/n;->b:Lcom/abq/qba/e/m$a;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/abq/qba/e/n;->c:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 69
    iget v0, p0, Lcom/abq/qba/e/n;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 70
    mul-int v0, v0, v1

    .line 71
    iget-object v2, p0, Lcom/abq/qba/e/n;->b:Lcom/abq/qba/e/m$a;

    invoke-virtual {v2}, Lcom/abq/qba/e/m$a;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 72
    mul-int v0, v0, v1

    .line 73
    iget v1, p0, Lcom/abq/qba/e/n;->c:I

    xor-int/2addr v0, v1

    .line 74
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceValue{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/abq/qba/e/n;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/abq/qba/e/n;->b:Lcom/abq/qba/e/m$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/abq/qba/e/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
