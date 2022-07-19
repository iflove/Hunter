.class public final Lcom/abq/qba/e/c;
.super Lcom/abq/qba/e/r$a;
.source "EntryImpl.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private final d:Lcom/abq/qba/e/m;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/m;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:I

.field private final h:Lcom/abq/qba/e/r;


# direct methods
.method public constructor <init>(IIILcom/abq/qba/e/m;Ljava/util/Map;IILcom/abq/qba/e/r;)V
    .locals 2
    .param p1, "headerSize"    # I
    .param p2, "flags"    # I
    .param p3, "keyIndex"    # I
    .param p4, "value"    # Lcom/abq/qba/e/m;
    .param p5, "values"    # Ljava/util/Map;
    .param p6, "parentEntry"    # I
    .param p7, "index"    # I
    .param p8, "parent"    # Lcom/abq/qba/e/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/abq/qba/e/m;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/m;",
            ">;II",
            "Lcom/abq/qba/e/r;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/abq/qba/e/r$a;-><init>()V

    .line 25
    iput p1, p0, Lcom/abq/qba/e/c;->a:I

    .line 26
    iput p2, p0, Lcom/abq/qba/e/c;->b:I

    .line 27
    iput p3, p0, Lcom/abq/qba/e/c;->c:I

    .line 28
    iput-object p4, p0, Lcom/abq/qba/e/c;->d:Lcom/abq/qba/e/m;

    .line 32
    iput-object p5, p0, Lcom/abq/qba/e/c;->e:Ljava/util/Map;

    .line 33
    iput p6, p0, Lcom/abq/qba/e/c;->f:I

    .line 34
    iput p7, p0, Lcom/abq/qba/e/c;->g:I

    .line 35
    if-eqz p8, :cond_0

    .line 38
    iput-object p8, p0, Lcom/abq/qba/e/c;->h:Lcom/abq/qba/e/r;

    .line 39
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/abq/qba/e/c;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "keyIndex"    # I

    .line 58
    iput p1, p0, Lcom/abq/qba/e/c;->c:I

    .line 59
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .param p1, "values"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/m;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/abq/qba/e/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/abq/qba/e/c;->e:Ljava/util/Map;

    .line 77
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only complex entry can has values!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/abq/qba/e/c;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "parentEntry"    # I

    .line 86
    iput p1, p0, Lcom/abq/qba/e/c;->f:I

    .line 87
    return-void
.end method

.method public final c()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/abq/qba/e/c;->c:I

    return v0
.end method

.method public final d()Lcom/abq/qba/e/m;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/abq/qba/e/c;->d:Lcom/abq/qba/e/m;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abq/qba/e/m;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/abq/qba/e/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/abq/qba/e/r$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 105
    move-object v1, p1

    check-cast v1, Lcom/abq/qba/e/r$a;

    .line 106
    .local v1, "that":Lcom/abq/qba/e/r$a;
    iget v3, p0, Lcom/abq/qba/e/c;->a:I

    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/abq/qba/e/c;->b:I

    .line 107
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->b()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/abq/qba/e/c;->c:I

    .line 108
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->c()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/abq/qba/e/c;->d:Lcom/abq/qba/e/m;

    if-nez v3, :cond_1

    .line 109
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->d()Lcom/abq/qba/e/m;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->d()Lcom/abq/qba/e/m;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/abq/qba/e/c;->e:Ljava/util/Map;

    .line 110
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->e()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/abq/qba/e/c;->f:I

    .line 111
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->f()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/abq/qba/e/c;->g:I

    .line 112
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->g()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/abq/qba/e/c;->h:Lcom/abq/qba/e/r;

    .line 113
    invoke-virtual {v1}, Lcom/abq/qba/e/r$a;->h()Lcom/abq/qba/e/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 106
    return v2

    .line 115
    .end local v1    # "that":Lcom/abq/qba/e/r$a;
    :cond_3
    return v2
.end method

.method public final f()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/abq/qba/e/c;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/abq/qba/e/c;->g:I

    return v0
.end method

.method public final h()Lcom/abq/qba/e/r;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/abq/qba/e/c;->h:Lcom/abq/qba/e/r;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 122
    iget v0, p0, Lcom/abq/qba/e/c;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 123
    mul-int v0, v0, v1

    .line 124
    iget v2, p0, Lcom/abq/qba/e/c;->b:I

    xor-int/2addr v0, v2

    .line 125
    mul-int v0, v0, v1

    .line 126
    iget v2, p0, Lcom/abq/qba/e/c;->c:I

    xor-int/2addr v0, v2

    .line 127
    mul-int v0, v0, v1

    .line 128
    iget-object v2, p0, Lcom/abq/qba/e/c;->d:Lcom/abq/qba/e/m;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 129
    mul-int v0, v0, v1

    .line 130
    iget-object v2, p0, Lcom/abq/qba/e/c;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 131
    mul-int v0, v0, v1

    .line 132
    iget v2, p0, Lcom/abq/qba/e/c;->f:I

    xor-int/2addr v0, v2

    .line 133
    mul-int v0, v0, v1

    .line 134
    iget v2, p0, Lcom/abq/qba/e/c;->g:I

    xor-int/2addr v0, v2

    .line 135
    mul-int v0, v0, v1

    .line 136
    iget-object v1, p0, Lcom/abq/qba/e/c;->h:Lcom/abq/qba/e/r;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 137
    return v0
.end method
