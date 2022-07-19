.class final Lcom/abq/qba/e/p;
.super Lcom/abq/qba/e/o$a;
.source "StringPoolSpanImpl.java"


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private d:Lcom/abq/qba/e/o;


# direct methods
.method constructor <init>(IIILcom/abq/qba/e/o;)V
    .locals 2
    .param p1, "nameIndex"    # I
    .param p2, "start"    # I
    .param p3, "stop"    # I
    .param p4, "parent"    # Lcom/abq/qba/e/o;

    .line 16
    invoke-direct {p0}, Lcom/abq/qba/e/o$a;-><init>()V

    .line 17
    iput p1, p0, Lcom/abq/qba/e/p;->a:I

    .line 18
    iput p2, p0, Lcom/abq/qba/e/p;->b:I

    .line 19
    iput p3, p0, Lcom/abq/qba/e/p;->c:I

    .line 20
    if-eqz p4, :cond_0

    .line 23
    iput-object p4, p0, Lcom/abq/qba/e/p;->d:Lcom/abq/qba/e/o;

    .line 24
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/abq/qba/e/p;->a:I

    return v0
.end method

.method public final a(I)I
    .locals 0
    .param p1, "index"    # I

    .line 33
    iput p1, p0, Lcom/abq/qba/e/p;->a:I

    return p1
.end method

.method public final a(Lcom/abq/qba/e/o;)V
    .locals 0
    .param p1, "stringPoolChunk"    # Lcom/abq/qba/e/o;

    .line 49
    iput-object p1, p0, Lcom/abq/qba/e/p;->d:Lcom/abq/qba/e/o;

    .line 50
    return-void
.end method

.method public final b()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/abq/qba/e/p;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/abq/qba/e/p;->c:I

    return v0
.end method

.method public final d()Lcom/abq/qba/e/o;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/abq/qba/e/p;->d:Lcom/abq/qba/e/o;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 77
    iget v0, p0, Lcom/abq/qba/e/p;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 78
    mul-int v0, v0, v1

    .line 79
    iget v2, p0, Lcom/abq/qba/e/p;->b:I

    xor-int/2addr v0, v2

    .line 80
    mul-int v0, v0, v1

    .line 81
    iget v2, p0, Lcom/abq/qba/e/p;->c:I

    xor-int/2addr v0, v2

    .line 82
    mul-int v0, v0, v1

    .line 83
    iget-object v1, p0, Lcom/abq/qba/e/p;->d:Lcom/abq/qba/e/o;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 84
    return v0
.end method
