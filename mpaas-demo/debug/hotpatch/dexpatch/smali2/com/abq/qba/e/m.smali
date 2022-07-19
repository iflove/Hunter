.class public abstract Lcom/abq/qba/e/m;
.super Ljava/lang/Object;
.source "ResourceValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abq/qba/e/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/abq/qba/e/m;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 108
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/abq/qba/e/m$a;->a(B)Lcom/abq/qba/e/m$a;

    move-result-object v1

    .line 110
    .local v1, "type":Lcom/abq/qba/e/m$a;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 111
    .local v2, "data":I
    new-instance v3, Lcom/abq/qba/e/n;

    invoke-direct {v3, v0, v1, v2}, Lcom/abq/qba/e/n;-><init>(ILcom/abq/qba/e/m$a;I)V

    return-object v3
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()Lcom/abq/qba/e/m$a;
.end method

.method public abstract c()I
.end method

.method public final d()[B
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/abq/qba/e/m;->e()[B

    move-result-object v0

    return-object v0
.end method

.method public final e()[B
    .locals 3

    .line 121
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/abq/qba/e/m;->a()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p0}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abq/qba/e/m$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {p0}, Lcom/abq/qba/e/m;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
