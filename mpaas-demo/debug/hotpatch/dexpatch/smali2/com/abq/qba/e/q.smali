.class public final Lcom/abq/qba/e/q;
.super Lcom/abq/qba/e/o$b;
.source "StringPoolStyleImpl.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abq/qba/e/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "spans"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/o$a;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/abq/qba/e/o$b;-><init>()V

    .line 12
    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/abq/qba/e/q;->a:Ljava/util/List;

    .line 16
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null spans"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/abq/qba/e/o$a;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/abq/qba/e/q;->a:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 25
    if-ne p1, p0, :cond_0

    .line 26
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/abq/qba/e/o$b;

    if-eqz v0, :cond_1

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/abq/qba/e/o$b;

    .line 30
    .local v0, "that":Lcom/abq/qba/e/o$b;
    iget-object v1, p0, Lcom/abq/qba/e/q;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/abq/qba/e/o$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 32
    .end local v0    # "that":Lcom/abq/qba/e/o$b;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/abq/qba/e/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    .line 40
    return v0
.end method
