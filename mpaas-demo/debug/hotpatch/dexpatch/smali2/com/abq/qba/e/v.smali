.class public final Lcom/abq/qba/e/v;
.super Lcom/abq/qba/e/u;
.source "XmlAttributeImpl.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Lcom/abq/qba/e/m;

.field private final e:Lcom/abq/qba/e/ac;


# direct methods
.method public constructor <init>(IIILcom/abq/qba/e/m;Lcom/abq/qba/e/ac;)V
    .locals 2
    .param p1, "namespaceIndex"    # I
    .param p2, "nameIndex"    # I
    .param p3, "rawValueIndex"    # I
    .param p4, "typedValue"    # Lcom/abq/qba/e/m;
    .param p5, "parent"    # Lcom/abq/qba/e/ac;

    .line 17
    invoke-direct {p0}, Lcom/abq/qba/e/u;-><init>()V

    .line 18
    iput p1, p0, Lcom/abq/qba/e/v;->a:I

    .line 19
    iput p2, p0, Lcom/abq/qba/e/v;->b:I

    .line 20
    iput p3, p0, Lcom/abq/qba/e/v;->c:I

    .line 21
    if-eqz p4, :cond_1

    .line 24
    iput-object p4, p0, Lcom/abq/qba/e/v;->d:Lcom/abq/qba/e/m;

    .line 25
    if-eqz p5, :cond_0

    .line 28
    iput-object p5, p0, Lcom/abq/qba/e/v;->e:Lcom/abq/qba/e/ac;

    .line 29
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null typedValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/abq/qba/e/v;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "namespaceIndex"    # I

    .line 38
    iput p1, p0, Lcom/abq/qba/e/v;->a:I

    .line 39
    return-void
.end method

.method public final b()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/abq/qba/e/v;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "nameIndex"    # I

    .line 48
    iput p1, p0, Lcom/abq/qba/e/v;->b:I

    .line 49
    return-void
.end method

.method public final c()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/abq/qba/e/v;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0
    .param p1, "rawValueIndex"    # I

    .line 58
    iput p1, p0, Lcom/abq/qba/e/v;->c:I

    .line 59
    return-void
.end method

.method public final d()Lcom/abq/qba/e/m;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/abq/qba/e/v;->d:Lcom/abq/qba/e/m;

    return-object v0
.end method

.method public final e()Lcom/abq/qba/e/ac;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/abq/qba/e/v;->e:Lcom/abq/qba/e/ac;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/abq/qba/e/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 77
    move-object v1, p1

    check-cast v1, Lcom/abq/qba/e/u;

    .line 78
    .local v1, "that":Lcom/abq/qba/e/u;
    iget v3, p0, Lcom/abq/qba/e/v;->a:I

    invoke-virtual {v1}, Lcom/abq/qba/e/u;->a()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/abq/qba/e/v;->b:I

    .line 79
    invoke-virtual {v1}, Lcom/abq/qba/e/u;->b()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/abq/qba/e/v;->c:I

    .line 80
    invoke-virtual {v1}, Lcom/abq/qba/e/u;->c()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/abq/qba/e/v;->d:Lcom/abq/qba/e/m;

    .line 81
    invoke-virtual {v1}, Lcom/abq/qba/e/u;->d()Lcom/abq/qba/e/m;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/abq/qba/e/v;->e:Lcom/abq/qba/e/ac;

    .line 82
    invoke-virtual {v1}, Lcom/abq/qba/e/u;->e()Lcom/abq/qba/e/ac;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    nop

    .line 78
    return v2

    .line 84
    .end local v1    # "that":Lcom/abq/qba/e/u;
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 91
    iget v0, p0, Lcom/abq/qba/e/v;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 92
    mul-int v0, v0, v1

    .line 93
    iget v2, p0, Lcom/abq/qba/e/v;->b:I

    xor-int/2addr v0, v2

    .line 94
    mul-int v0, v0, v1

    .line 95
    iget v2, p0, Lcom/abq/qba/e/v;->c:I

    xor-int/2addr v0, v2

    .line 96
    mul-int v0, v0, v1

    .line 97
    iget-object v2, p0, Lcom/abq/qba/e/v;->d:Lcom/abq/qba/e/m;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 98
    mul-int v0, v0, v1

    .line 99
    iget-object v1, p0, Lcom/abq/qba/e/v;->e:Lcom/abq/qba/e/ac;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 100
    return v0
.end method
